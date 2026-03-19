package com.vesal.jlsx.international.module;

import android.util.Log;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingClientStateListener;
import com.android.billingclient.api.BillingFlowParams;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.ConsumeParams;
import com.android.billingclient.api.ConsumeResponseListener;
import com.android.billingclient.api.ProductDetails;
import com.android.billingclient.api.ProductDetailsResponseListener;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchaseHistoryRecord;
import com.android.billingclient.api.PurchaseHistoryResponseListener;
import com.android.billingclient.api.PurchasesResponseListener;
import com.android.billingclient.api.PurchasesUpdatedListener;
import com.android.billingclient.api.QueryProductDetailsParams;
import com.android.billingclient.api.QueryPurchaseHistoryParams;
import com.android.billingclient.api.QueryPurchasesParams;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.facebook.react.bridge.Callback;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.google.common.collect.ImmutableList;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.vesal.jlsx.international.bean.PayResult;
import com.vesal.jlsx.international.utils.DeviceInfo;
import com.vesal.jlsx.international.utils.RNEventEmitter;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class PayModule extends ReactContextBaseJavaModule {
    private final int PAY_CANCEL;
    private final int PAY_FAIL;
    private final int PAY_SUCCESS;
    private final String TAG;
    private BillingClient billingClient;
    private PurchasesUpdatedListener purchasesUpdatedListener;
    private ReactApplicationContext reactContext;

    @ReactMethod(isBlockingSynchronousMethod = true)
    public String getDisplayHeight() {
        return "";
    }

    @Override // com.facebook.react.bridge.NativeModule
    public String getName() {
        return "PayModule";
    }

    PayModule(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
        this.TAG = "google_pay";
        this.PAY_FAIL = 0;
        this.PAY_CANCEL = -1;
        this.PAY_SUCCESS = 1;
        this.purchasesUpdatedListener = new PurchasesUpdatedListener() { // from class: com.vesal.jlsx.international.module.PayModule.1
            @Override // com.android.billingclient.api.PurchasesUpdatedListener
            public void onPurchasesUpdated(BillingResult billingResult, List<Purchase> list) {
                Log.d("google_pay", "onPurchasesUpdated() called with: billingResult = [" + billingResult + "], purchases = [" + list + "]");
                if (billingResult.getResponseCode() != 0 || list == null) {
                    try {
                        RNEventEmitter.onPayLogRecord(billingResult.toString() + "&oid=" + ((list == null || list.size() <= 0) ? "" : list.get(0).getOrderId()) + new DeviceInfo().getInfo(PayModule.this.getReactApplicationContext()));
                    } catch (Exception e) {
                        RNEventEmitter.onPayLogRecord(billingResult.toString() + new DeviceInfo().getInfo(PayModule.this.getReactApplicationContext()));
                        e.printStackTrace();
                    }
                }
                if (billingResult.getResponseCode() == 0 && list != null) {
                    for (Purchase purchase : list) {
                        PayModule.this.payFinish(1, purchase.getOriginalJson());
                        Log.e("google_pay", "buy success == " + purchase.toString());
                        PayModule.this.consume(purchase);
                    }
                    return;
                }
                if (billingResult.getResponseCode() == 1) {
                    PayModule.this.payFinish(-1);
                } else {
                    PayModule.this.payFinish(0);
                }
            }
        };
        this.reactContext = reactApplicationContext;
        this.billingClient = BillingClient.newBuilder(reactApplicationContext).setListener(this.purchasesUpdatedListener).enablePendingPurchases().build();
    }

    @ReactMethod
    public void connect() {
        this.billingClient.startConnection(new BillingClientStateListener() { // from class: com.vesal.jlsx.international.module.PayModule.2
            @Override // com.android.billingclient.api.BillingClientStateListener
            public void onBillingSetupFinished(BillingResult billingResult) {
                Log.d("google_pay", "onBillingSetupFinished() called with: billingResult = [" + billingResult + "]");
                if (billingResult.getResponseCode() == 0) {
                    RNEventEmitter.onGoogleServiceConnected(AppEventsConstants.EVENT_PARAM_VALUE_YES);
                } else {
                    RNEventEmitter.onGoogleServiceConnected(AppEventsConstants.EVENT_PARAM_VALUE_NO);
                }
            }

            @Override // com.android.billingclient.api.BillingClientStateListener
            public void onBillingServiceDisconnected() {
                Log.d("google_pay", "onBillingServiceDisconnected() called");
                RNEventEmitter.onGoogleServiceConnected(AppEventsConstants.EVENT_PARAM_VALUE_NO);
            }
        });
    }

    @ReactMethod
    public void query(final String str, final String str2, final Callback callback) {
        BillingResult billingResultIsFeatureSupported = this.billingClient.isFeatureSupported(BillingClient.FeatureType.IN_APP_MESSAGING);
        Log.d("google_pay", "query: billingClient.isFeatureSupported: " + billingResultIsFeatureSupported);
        if (billingResultIsFeatureSupported.getResponseCode() != 0) {
            callback.invoke("-2");
        } else {
            this.billingClient.startConnection(new BillingClientStateListener() { // from class: com.vesal.jlsx.international.module.PayModule.3
                @Override // com.android.billingclient.api.BillingClientStateListener
                public void onBillingSetupFinished(BillingResult billingResult) {
                    Log.d("google_pay", "onBillingSetupFinished() called with: billingResult = [" + billingResult + "]");
                    PayModule.this.onGoogleQuery(str, str2, callback);
                }

                @Override // com.android.billingclient.api.BillingClientStateListener
                public void onBillingServiceDisconnected() {
                    Log.d("google_pay", "onBillingServiceDisconnected() called");
                    callback.invoke("-2");
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onGoogleQuery(String str, final String str2, final Callback callback) {
        this.billingClient.queryProductDetailsAsync(QueryProductDetailsParams.newBuilder().setProductList(ImmutableList.of(QueryProductDetailsParams.Product.newBuilder().setProductId(str).setProductType("inapp").build())).build(), new ProductDetailsResponseListener() { // from class: com.vesal.jlsx.international.module.PayModule.4
            @Override // com.android.billingclient.api.ProductDetailsResponseListener
            public void onProductDetailsResponse(BillingResult billingResult, List<ProductDetails> list) {
                Log.d("google_pay", "onProductDetailsResponse() called with: billingResult = [" + billingResult + "], productDetailsList = [" + list + "]");
                if (billingResult.getResponseCode() == 0) {
                    if (list.size() > 0) {
                        Log.d("google_pay", InAppPurchaseConstants.METHOD_ON_PRODUCT_DETAILS_RESPONSE + list.get(0));
                        PayModule.this.buy(list.get(0), str2);
                        return;
                    } else {
                        callback.invoke("-1");
                        return;
                    }
                }
                callback.invoke(billingResult.toString());
            }
        });
    }

    public void buy(ProductDetails productDetails, String str) {
        Log.e("google_pay", "buy req res" + this.billingClient.launchBillingFlow(getCurrentActivity(), BillingFlowParams.newBuilder().setObfuscatedProfileId(str).setObfuscatedAccountId(str).setProductDetailsParamsList(ImmutableList.of(BillingFlowParams.ProductDetailsParams.newBuilder().setProductDetails(productDetails).build())).build()).toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void consume(final Purchase purchase) {
        this.billingClient.consumeAsync(ConsumeParams.newBuilder().setPurchaseToken(purchase.getPurchaseToken()).build(), new ConsumeResponseListener() { // from class: com.vesal.jlsx.international.module.PayModule.5
            @Override // com.android.billingclient.api.ConsumeResponseListener
            public void onConsumeResponse(BillingResult billingResult, String str) {
                RNEventEmitter.onPayLogRecord("hexiao____" + billingResult.toString() + " & " + purchase.getOriginalJson());
                Log.e("google_pay", "consume res== " + billingResult.toString());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void payFinish(int i) {
        payFinish(i, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void payFinish(int i, String str) {
        RNEventEmitter.onGooglePayCallback(new Gson().toJson(new PayResult(i, str), new TypeToken<PayResult>() { // from class: com.vesal.jlsx.international.module.PayModule.6
        }.getType()));
    }

    @ReactMethod
    public void test() {
        this.billingClient.queryPurchaseHistoryAsync(QueryPurchaseHistoryParams.newBuilder().setProductType("inapp").build(), new PurchaseHistoryResponseListener() { // from class: com.vesal.jlsx.international.module.PayModule.7
            @Override // com.android.billingclient.api.PurchaseHistoryResponseListener
            public void onPurchaseHistoryResponse(BillingResult billingResult, List<PurchaseHistoryRecord> list) {
                Log.e("google_pay", "query == " + billingResult.toString());
                Log.e("google_pay", "query size" + list.size());
            }
        });
    }

    @ReactMethod
    public void queryFailOrder() {
        Log.e("google_pay", "query order");
        BillingClient billingClient = this.billingClient;
        if (billingClient != null) {
            billingClient.startConnection(new BillingClientStateListener() { // from class: com.vesal.jlsx.international.module.PayModule.8
                @Override // com.android.billingclient.api.BillingClientStateListener
                public void onBillingSetupFinished(BillingResult billingResult) {
                    Log.e("google_pay", "billingResult = " + billingResult.toString());
                    PayModule.this.billingClient.queryPurchasesAsync(QueryPurchasesParams.newBuilder().setProductType("inapp").build(), new PurchasesResponseListener() { // from class: com.vesal.jlsx.international.module.PayModule.8.1
                        @Override // com.android.billingclient.api.PurchasesResponseListener
                        public void onQueryPurchasesResponse(BillingResult billingResult2, List<Purchase> list) {
                            Log.e("google_pay", "query order res == " + list.size() + " " + billingResult2.toString());
                            if (billingResult2.getResponseCode() == 0) {
                                for (Purchase purchase : list) {
                                    RNEventEmitter.onGooglePayConsumeCallback(purchase.getOriginalJson());
                                    PayModule.this.consume(purchase);
                                }
                            }
                        }
                    });
                }

                @Override // com.android.billingclient.api.BillingClientStateListener
                public void onBillingServiceDisconnected() {
                    Log.e("google_pay", "onBillingServiceDisconnected = ");
                }
            });
        }
    }
}
