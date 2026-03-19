package com.vesal.jlsx.international.aptoide;

import android.app.Activity;
import android.util.Log;
import com.aptoide.sdk.billing.AptoideBillingClient;
import com.aptoide.sdk.billing.BillingFlowParams;
import com.aptoide.sdk.billing.BillingResult;
import com.aptoide.sdk.billing.ConsumeParams;
import com.aptoide.sdk.billing.ProductDetails;
import com.aptoide.sdk.billing.ProductDetailsResponseListener;
import com.aptoide.sdk.billing.Purchase;
import com.aptoide.sdk.billing.PurchasesResponseListener;
import com.aptoide.sdk.billing.PurchasesUpdatedListener;
import com.aptoide.sdk.billing.QueryProductDetailsParams;
import com.aptoide.sdk.billing.QueryProductDetailsResult;
import com.aptoide.sdk.billing.QueryPurchasesParams;
import com.aptoide.sdk.billing.listeners.AptoideBillingClientStateListener;
import com.aptoide.sdk.billing.listeners.ConsumeResponseListener;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.google.gson.Gson;
import com.vesal.jlsx.international.utils.RNEventEmitter;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class CatappultModule extends ReactContextBaseJavaModule {
    private final String TAG;
    private String base64EncodedPublicKey;
    AptoideBillingClient billingClient;
    AptoideBillingClientStateListener clientStateListener;
    ConsumeResponseListener consumeResponseListener;
    PurchasesUpdatedListener purchasesUpdatedListener;
    private ReactApplicationContext reactContext;

    @Override // com.facebook.react.bridge.NativeModule
    public String getName() {
        return "CatappultModule";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(BillingResult billingResult, List list) {
        Log.d("CatappultModule_tag", "purchasesUpdatedListener1 == " + billingResult.toString());
        Log.d("CatappultModule_tag", "purchasesUpdatedListener2 == " + new Gson().toJson(list));
        if (billingResult.getResponseCode() == 0) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Purchase purchase = (Purchase) it.next();
                Log.d("CatappultModule_tag", "purchase.getAccountIdentifiers() == " + new Gson().toJson(purchase.getAccountIdentifiers()));
                Log.d("CatappultModule_tag", "purchase.getDeveloperPayload() == " + new Gson().toJson(purchase.getDeveloperPayload()));
                RNEventEmitter.onAptoideConsumeCallback(new Gson().toJson(purchase));
                this.billingClient.consumeAsync(ConsumeParams.newBuilder().setPurchaseToken(purchase.getPurchaseToken()).build(), this.consumeResponseListener);
            }
        }
    }

    public CatappultModule(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
        this.TAG = "CatappultModule_tag";
        this.base64EncodedPublicKey = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAs2CAoFbCGJxqhG68JJBrNQomDuXtURN9zdEp5X4/EzkAU9QnVzGrpAKx1D53r2VIKmIav9kxXaCzr/vjrqqISV0UXjnrMnbwfwCNd6+TEpJYP4ChCiKCqVFw4xyIcDzywnXAoD4qyQpct52RDiPyHRjvCEG8FQIF0xP/OYcHF0K8kSC9kz2/N4hLVbfeAaGdFcuWXYpy+rLJIfRiz9LL5RKtAxw/kUKXofAycEIKElgbiVheTywHuLWrUy7xjvbJmvjGzRHGJKEp8vXkNdnoTtBdjOlsVvZNjIZqdO2+656Orgy3XDP5JYIh38NESMc7Bhyr+oQbX+dHIVU/TVYQeQIDAQAB";
        this.clientStateListener = new AptoideBillingClientStateListener() { // from class: com.vesal.jlsx.international.aptoide.CatappultModule.1
            @Override // com.aptoide.sdk.billing.listeners.AptoideBillingClientStateListener
            public void onBillingSetupFinished(BillingResult billingResult) {
                Log.d("CatappultModule_tag", "Problem setting up in-app billing: " + billingResult.toString());
                if (billingResult.getResponseCode() != 0) {
                    Log.d("CatappultModule_tag", "Problem setting up in-app billing: " + billingResult.getResponseCode());
                } else {
                    CatappultModule.this.checkPurchases();
                    Log.d("CatappultModule_tag", "Setup successful. Querying inventory.");
                }
            }

            @Override // com.aptoide.sdk.billing.listeners.AptoideBillingClientStateListener
            public void onBillingServiceDisconnected() {
                Log.d("CatappultModule_tag", "onBillingServiceDisconnected Disconnected");
            }
        };
        this.consumeResponseListener = new ConsumeResponseListener() { // from class: com.vesal.jlsx.international.aptoide.CatappultModule.2
            @Override // com.aptoide.sdk.billing.listeners.ConsumeResponseListener
            public void onConsumeResponse(BillingResult billingResult, String str) {
                Log.d("CatappultModule_tag", "Consumption finished. Purchase: " + str + ", result: " + billingResult.getResponseCode());
                if (billingResult.getResponseCode() == 0) {
                    Log.d("CatappultModule_tag", "Consumption successful. Provisioning.");
                    Log.d("CatappultModule_tag", "Consumption successful." + billingResult.toString());
                }
                Log.d("CatappultModule_tag", "End consumption flow.");
            }
        };
        this.purchasesUpdatedListener = new PurchasesUpdatedListener() { // from class: com.vesal.jlsx.international.aptoide.CatappultModule$$ExternalSyntheticLambda3
            @Override // com.aptoide.sdk.billing.PurchasesUpdatedListener
            public final void onPurchasesUpdated(BillingResult billingResult, List list) {
                this.f$0.lambda$new$0(billingResult, list);
            }
        };
        this.reactContext = reactApplicationContext;
    }

    @ReactMethod
    public void init() {
        AptoideBillingClient aptoideBillingClientBuild = AptoideBillingClient.newBuilder(this.reactContext).setListener(this.purchasesUpdatedListener).setPublicKey(this.base64EncodedPublicKey).build();
        this.billingClient = aptoideBillingClientBuild;
        aptoideBillingClientBuild.startConnection(this.clientStateListener);
    }

    @ReactMethod
    public void buy(final String str, String str2) {
        if (!this.billingClient.isReady()) {
            Log.d("CatappultModule_tag", "Billing service is not ready yet to make purchases.");
        } else {
            this.billingClient.queryProductDetailsAsync(QueryProductDetailsParams.newBuilder().setProductList(CatappultModule$$ExternalSyntheticBackport0.m(new Object[]{QueryProductDetailsParams.Product.newBuilder().setProductId(str2).setProductType("subs").build()})).build(), new ProductDetailsResponseListener() { // from class: com.vesal.jlsx.international.aptoide.CatappultModule$$ExternalSyntheticLambda5
                @Override // com.aptoide.sdk.billing.ProductDetailsResponseListener
                public final void onProductDetailsResponse(BillingResult billingResult, QueryProductDetailsResult queryProductDetailsResult) {
                    this.f$0.lambda$buy$2(str, billingResult, queryProductDetailsResult);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buy$2(final String str, BillingResult billingResult, QueryProductDetailsResult queryProductDetailsResult) {
        Log.d("CatappultModule_tag", "Billing queryProductDetailsAsync. == " + billingResult.toString());
        Log.d("CatappultModule_tag", "Billing queryProductDetailsAsync2. == " + new Gson().toJson(queryProductDetailsResult.getProductDetailsList()));
        if (billingResult.getResponseCode() == 0 && queryProductDetailsResult.getProductDetailsList().size() > 0) {
            for (final ProductDetails productDetails : queryProductDetailsResult.getProductDetailsList()) {
                final Activity currentActivity = getCurrentActivity();
                new Thread(new Runnable() { // from class: com.vesal.jlsx.international.aptoide.CatappultModule$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$buy$1(productDetails, str, currentActivity);
                    }
                }).start();
            }
            return;
        }
        RNEventEmitter.onAptoideConsumeCallback("-1");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buy$1(ProductDetails productDetails, String str, Activity activity) {
        BillingFlowParams billingFlowParamsBuild = BillingFlowParams.newBuilder().setProductDetailsParamsList(CatappultModule$$ExternalSyntheticBackport0.m(new Object[]{BillingFlowParams.ProductDetailsParams.newBuilder().setProductDetails(productDetails).build()})).setObfuscatedAccountId(str).setDeveloperPayload(str).build();
        Log.d("CatappultModule_tag", "Billing getObfuscatedAccountId. == " + billingFlowParamsBuild.getObfuscatedAccountId());
        this.billingClient.launchBillingFlow(activity, billingFlowParamsBuild);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkPurchases() {
        new Thread(new Runnable() { // from class: com.vesal.jlsx.international.aptoide.CatappultModule$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$checkPurchases$4();
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkPurchases$4() {
        this.billingClient.queryPurchasesAsync(QueryPurchasesParams.newBuilder().setProductType("inapp").build(), new PurchasesResponseListener() { // from class: com.vesal.jlsx.international.aptoide.CatappultModule$$ExternalSyntheticLambda6
            @Override // com.aptoide.sdk.billing.PurchasesResponseListener
            public final void onQueryPurchasesResponse(BillingResult billingResult, List list) {
                this.f$0.lambda$checkPurchases$3(billingResult, list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkPurchases$3(BillingResult billingResult, List list) {
        Log.d("CatappultModule_tag", "Billing queryPurchasesAsync. == " + billingResult.toString());
        Log.d("CatappultModule_tag", "Billing queryPurchasesAsync1. == " + new Gson().toJson(list));
        if (billingResult.getResponseCode() != 0 || list.size() <= 0) {
            return;
        }
        this.billingClient.consumeAsync(ConsumeParams.newBuilder().setPurchaseToken(((Purchase) list.get(0)).getPurchaseToken()).build(), this.consumeResponseListener);
    }

    private void queryInapps() {
        this.billingClient.queryProductDetailsAsync(QueryProductDetailsParams.newBuilder().setProductList(CatappultModule$$ExternalSyntheticBackport0.m(new Object[]{QueryProductDetailsParams.Product.newBuilder().setProductId("your_product_id").setProductType("inapp").build()})).build(), new ProductDetailsResponseListener() { // from class: com.vesal.jlsx.international.aptoide.CatappultModule$$ExternalSyntheticLambda2
            @Override // com.aptoide.sdk.billing.ProductDetailsResponseListener
            public final void onProductDetailsResponse(BillingResult billingResult, QueryProductDetailsResult queryProductDetailsResult) {
                CatappultModule.lambda$queryInapps$5(billingResult, queryProductDetailsResult);
            }
        });
    }

    static /* synthetic */ void lambda$queryInapps$5(BillingResult billingResult, QueryProductDetailsResult queryProductDetailsResult) {
        if (billingResult.getResponseCode() == 0) {
            for (ProductDetails productDetails : queryProductDetailsResult.getProductDetailsList()) {
            }
        }
    }

    private void querySubs() {
        this.billingClient.queryProductDetailsAsync(QueryProductDetailsParams.newBuilder().setProductList(CatappultModule$$ExternalSyntheticBackport0.m(new Object[]{QueryProductDetailsParams.Product.newBuilder().setProductId("your_product_id").setProductType("subs").build()})).build(), new ProductDetailsResponseListener() { // from class: com.vesal.jlsx.international.aptoide.CatappultModule$$ExternalSyntheticLambda7
            @Override // com.aptoide.sdk.billing.ProductDetailsResponseListener
            public final void onProductDetailsResponse(BillingResult billingResult, QueryProductDetailsResult queryProductDetailsResult) {
                CatappultModule.lambda$querySubs$6(billingResult, queryProductDetailsResult);
            }
        });
    }

    static /* synthetic */ void lambda$querySubs$6(BillingResult billingResult, QueryProductDetailsResult queryProductDetailsResult) {
        if (billingResult.getResponseCode() == 0) {
            for (ProductDetails productDetails : queryProductDetailsResult.getProductDetailsList()) {
            }
        }
    }
}
