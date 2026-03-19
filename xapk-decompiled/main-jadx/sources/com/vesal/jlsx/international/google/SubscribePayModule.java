package com.vesal.jlsx.international.google;

import android.util.Log;
import android.widget.Toast;
import com.android.billingclient.api.AcknowledgePurchaseParams;
import com.android.billingclient.api.AcknowledgePurchaseResponseListener;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingClientStateListener;
import com.android.billingclient.api.BillingFlowParams;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.PendingPurchasesParams;
import com.android.billingclient.api.ProductDetails;
import com.android.billingclient.api.ProductDetailsResponseListener;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchasesResponseListener;
import com.android.billingclient.api.PurchasesUpdatedListener;
import com.android.billingclient.api.QueryProductDetailsParams;
import com.android.billingclient.api.QueryPurchasesParams;
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
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class SubscribePayModule extends ReactContextBaseJavaModule {
    private final int PAY_CANCEL;
    private final int PAY_FAIL;
    private final int PAY_SUCCESS;
    private final String TAG;
    private BillingClient billingClient;
    private ProductDetails currentProduct;
    private PurchasesUpdatedListener purchasesUpdatedListener;
    private ReactApplicationContext reactContext;

    @Override // com.facebook.react.bridge.NativeModule
    public String getName() {
        return "SubscribePayModule";
    }

    SubscribePayModule(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
        this.TAG = "google_pay";
        this.PAY_FAIL = 0;
        this.PAY_CANCEL = -1;
        this.PAY_SUCCESS = 1;
        this.purchasesUpdatedListener = new PurchasesUpdatedListener() { // from class: com.vesal.jlsx.international.google.SubscribePayModule.1
            @Override // com.android.billingclient.api.PurchasesUpdatedListener
            public void onPurchasesUpdated(BillingResult billingResult, List<Purchase> list) {
                Log.d("google_pay", "onPurchasesUpdated() called with: billingResult = [" + billingResult + "], purchases = [" + list + "]");
                if (billingResult.getResponseCode() != 0 || list == null) {
                    try {
                        RNEventEmitter.onPayLogRecord(billingResult.toString() + "&oid=" + ((list == null || list.size() <= 0) ? "" : list.get(0).getOrderId()) + new DeviceInfo().getInfo(SubscribePayModule.this.getReactApplicationContext()));
                    } catch (Exception e) {
                        RNEventEmitter.onPayLogRecord(billingResult.toString() + new DeviceInfo().getInfo(SubscribePayModule.this.getReactApplicationContext()));
                        e.printStackTrace();
                    }
                }
                if (billingResult.getResponseCode() == 0 && list != null) {
                    Purchase purchase = null;
                    for (Purchase purchase2 : list) {
                        if (purchase == null) {
                            purchase = purchase2;
                        }
                        Log.e("google_pay", "buy success == " + purchase2.toString());
                    }
                    if (purchase != null) {
                        SubscribePayModule.this.payFinish(1, purchase.getOriginalJson());
                        SubscribePayModule.this.consume(purchase);
                        return;
                    }
                    return;
                }
                if (billingResult.getResponseCode() == 1) {
                    SubscribePayModule.this.payFinish(-1);
                } else {
                    SubscribePayModule.this.payFinish(0);
                }
            }
        };
        this.reactContext = reactApplicationContext;
        this.billingClient = BillingClient.newBuilder(reactApplicationContext).setListener(this.purchasesUpdatedListener).enablePendingPurchases(PendingPurchasesParams.newBuilder().enableOneTimeProducts().build()).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void consume(final Purchase purchase) {
        if (purchase.getPurchaseState() != 1 || purchase.isAcknowledged()) {
            return;
        }
        this.billingClient.acknowledgePurchase(AcknowledgePurchaseParams.newBuilder().setPurchaseToken(purchase.getPurchaseToken()).build(), new AcknowledgePurchaseResponseListener() { // from class: com.vesal.jlsx.international.google.SubscribePayModule.2
            @Override // com.android.billingclient.api.AcknowledgePurchaseResponseListener
            public void onAcknowledgePurchaseResponse(BillingResult billingResult) {
                Log.i("google_pay", "onAcknowledgePurchaseResponse: " + billingResult.getResponseCode() + " & msg=" + billingResult.getDebugMessage());
                RNEventEmitter.onPayLogRecord("hexiao____" + billingResult.toString() + " & " + purchase.getOriginalJson());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void payFinish(int i) {
        payFinish(i, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void payFinish(int i, String str) {
        RNEventEmitter.onGooglePayCallback(new Gson().toJson(new PayResult(i, str), new TypeToken<PayResult>() { // from class: com.vesal.jlsx.international.google.SubscribePayModule.3
        }.getType()));
    }

    @ReactMethod
    public void query(final String str, final Callback callback) {
        BillingResult billingResultIsFeatureSupported = this.billingClient.isFeatureSupported(BillingClient.FeatureType.SUBSCRIPTIONS);
        Log.d("google_pay", "query: billingClient.isFeatureSupported: " + billingResultIsFeatureSupported);
        if (billingResultIsFeatureSupported.getResponseCode() != 0) {
            callback.invoke("-2");
        } else {
            this.billingClient.startConnection(new BillingClientStateListener() { // from class: com.vesal.jlsx.international.google.SubscribePayModule.4
                @Override // com.android.billingclient.api.BillingClientStateListener
                public void onBillingSetupFinished(BillingResult billingResult) {
                    Log.d("google_pay", "onBillingSetupFinished() called with: billingResult = [" + billingResult + "]");
                    SubscribePayModule.this.onGoogleQuery(str, callback);
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
    public void onGoogleQuery(String str, final Callback callback) {
        this.currentProduct = null;
        this.billingClient.queryProductDetailsAsync(QueryProductDetailsParams.newBuilder().setProductList(ImmutableList.of(QueryProductDetailsParams.Product.newBuilder().setProductId(str).setProductType("subs").build())).build(), new ProductDetailsResponseListener() { // from class: com.vesal.jlsx.international.google.SubscribePayModule.5
            @Override // com.android.billingclient.api.ProductDetailsResponseListener
            public void onProductDetailsResponse(BillingResult billingResult, List<ProductDetails> list) {
                Log.d("google_pay", "onProductDetailsResponse() called with: billingResult = [" + billingResult + "], productDetailsList = [" + list + "]");
                if (billingResult.getResponseCode() == 0) {
                    if (list.size() > 0) {
                        SubscribePayModule.this.currentProduct = list.get(0);
                        List<ProductDetails.PricingPhase> pricingPhaseList = list.get(0).getSubscriptionOfferDetails().get(0).getPricingPhases().getPricingPhaseList();
                        ArrayList arrayList = new ArrayList();
                        for (int i = 0; i < pricingPhaseList.size(); i++) {
                            ProductDetails.PricingPhase pricingPhase = pricingPhaseList.get(i);
                            arrayList.add(new GooglePricingPhase(pricingPhase.getPriceCurrencyCode(), pricingPhase.getPriceAmountMicros(), pricingPhase.getFormattedPrice(), pricingPhase.getBillingPeriod(), pricingPhase.getRecurrenceMode(), pricingPhase.getBillingCycleCount()));
                        }
                        callback.invoke(new Gson().toJson(arrayList));
                        return;
                    }
                    callback.invoke("-1");
                    return;
                }
                callback.invoke("");
                Toast.makeText(SubscribePayModule.this.reactContext, billingResult.toString(), 0).show();
            }
        });
    }

    @ReactMethod
    public void buy(String str) {
        ProductDetails productDetails = this.currentProduct;
        if (productDetails == null) {
            return;
        }
        try {
            Log.e("google_pay", "buy req res" + this.billingClient.launchBillingFlow(getCurrentActivity(), BillingFlowParams.newBuilder().setObfuscatedProfileId(str).setObfuscatedAccountId(str).setProductDetailsParamsList(ImmutableList.of(BillingFlowParams.ProductDetailsParams.newBuilder().setProductDetails(this.currentProduct).setOfferToken(productDetails.getSubscriptionOfferDetails().get(0).getOfferToken()).build())).setIsOfferPersonalized(true).build()).toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @ReactMethod
    public void queryFailOrder() {
        Log.e("google_pay", "query order");
        BillingClient billingClient = this.billingClient;
        if (billingClient != null) {
            billingClient.startConnection(new BillingClientStateListener() { // from class: com.vesal.jlsx.international.google.SubscribePayModule.6
                @Override // com.android.billingclient.api.BillingClientStateListener
                public void onBillingSetupFinished(BillingResult billingResult) {
                    Log.e("google_pay", "billingResult = " + billingResult.toString());
                    SubscribePayModule.this.billingClient.queryPurchasesAsync(QueryPurchasesParams.newBuilder().setProductType("subs").build(), new PurchasesResponseListener() { // from class: com.vesal.jlsx.international.google.SubscribePayModule.6.1
                        @Override // com.android.billingclient.api.PurchasesResponseListener
                        public void onQueryPurchasesResponse(BillingResult billingResult2, List<Purchase> list) {
                            Log.e("google_pay", "query order res == " + list.size() + " " + billingResult2.toString());
                            if (billingResult2.getResponseCode() == 0) {
                                for (Purchase purchase : list) {
                                    if (purchase.getPurchaseState() == 1) {
                                        RNEventEmitter.onGooglePayConsumeCallback(purchase.getOriginalJson());
                                        SubscribePayModule.this.consume(purchase);
                                    }
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
