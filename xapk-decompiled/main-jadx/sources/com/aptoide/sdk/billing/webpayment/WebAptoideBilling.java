package com.aptoide.sdk.billing.webpayment;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import com.appcoins.billing.AppcoinsBilling;
import com.aptoide.sdk.billing.BuyItemProperties;
import com.aptoide.sdk.billing.DeveloperPayload;
import com.aptoide.sdk.billing.ResponseCode;
import com.aptoide.sdk.billing.SkuDetailsResultV2;
import com.aptoide.sdk.billing.SkuDetailsV2;
import com.aptoide.sdk.billing.helpers.PayloadHelper;
import com.aptoide.sdk.billing.helpers.WalletUtils;
import com.aptoide.sdk.billing.managers.ProductV2Manager;
import com.aptoide.sdk.billing.mappers.PurchasesBundleMapper;
import com.aptoide.sdk.billing.mappers.SkuDetailsResponse;
import com.aptoide.sdk.billing.payflow.models.PaymentFlowMethod;
import com.aptoide.sdk.billing.sharedpreferences.AttributionSharedPreferences;
import com.aptoide.sdk.billing.utils.AptoideBillingConstants;
import com.aptoide.sdk.core.analytics.SdkAnalyticsUtils;
import com.aptoide.sdk.core.analytics.events.SdkInitializationLabels;
import com.aptoide.sdk.core.analytics.events.SdkPurchaseFlowLabels;
import com.aptoide.sdk.core.logger.Logger;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: WebAptoideBilling.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0003\u0018\u0000 ,2\u00020\u00012\u00020\u0002:\u0001,B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\n\u0010\b\u001a\u0004\u0018\u00010\tH\u0016J\b\u0010\n\u001a\u00020\u000bH\u0002J \u0010\f\u001a\u0012\u0012\u0004\u0012\u00020\u00050\rj\b\u0012\u0004\u0012\u00020\u0005`\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J \u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0005H\u0002J \u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0005H\u0016JF\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u00052\b\u0010\u001a\u001a\u0004\u0018\u00010\u00052\b\u0010\u001b\u001a\u0004\u0018\u00010\u00052\b\u0010\u001c\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u00052\b\u0010\u001e\u001a\u0004\u0018\u00010\u0005H\u0016J(\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u000bH\u0016J \u0010!\u001a\u00020\"2\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u000b2\u0006\u0010#\u001a\u00020\u000bH\u0002J\u001a\u0010$\u001a\u00020%2\u0006\u0010\u0019\u001a\u00020\u00052\b\u0010\u0018\u001a\u0004\u0018\u00010\u0005H\u0002J \u0010&\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0005H\u0016J\u0018\u0010'\u001a\u00020%2\u0006\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0012H\u0002J.\u0010(\u001a\u0012\u0012\u0004\u0012\u00020)0\rj\b\u0012\u0004\u0012\u00020)`\u000e2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00050*2\u0006\u0010\u0013\u001a\u00020\u0005H\u0002J2\u0010+\u001a\u00020\"2\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u00052\b\u0010\u001a\u001a\u0004\u0018\u00010\u0005H\u0002R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006-"}, d2 = {"Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;", "Lcom/appcoins/billing/AppcoinsBilling;", "Ljava/io/Serializable;", "()V", "walletId", "", "getWalletId", "()Ljava/lang/String;", "asBinder", "Landroid/os/IBinder;", "buildEmptyBundle", "Landroid/os/Bundle;", "buildResponse", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "skuDetailsResultV2", "Lcom/aptoide/sdk/billing/SkuDetailsResultV2;", "consumeGuestPurchase", "", "packageName", "purchaseToken", "consumePurchase", "apiVersion", "getBuyIntent", SdkPurchaseFlowLabels.SKU, "type", "developerPayload", SdkInitializationLabels.OEMID, "guestWalletId", "getPurchases", "continuationToken", "getSkuDetails", "skusBundle", "getSkuDetailsFromService", "", "responseWs", "hasRequiredFields", "", "isBillingSupported", "isTypeSupported", "requestSkuDetails", "Lcom/aptoide/sdk/billing/SkuDetailsV2;", "", "setBuyItemPropertiesForPayflow", "Companion", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class WebAptoideBilling implements AppcoinsBilling, Serializable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final int MAX_SKUS_SEND_WS = 49;
    private static final int SUPPORTED_API_VERSION = 3;
    private static BuyItemProperties buyItemProperties;
    private static WebAptoideBilling webAptoideBillingInstance;

    public /* synthetic */ WebAptoideBilling(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return null;
    }

    private WebAptoideBilling() {
        webAptoideBillingInstance = this;
    }

    @Override // com.appcoins.billing.AppcoinsBilling
    public int isBillingSupported(int apiVersion, String packageName, String type) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(type, "type");
        return isTypeSupported(type, apiVersion) ? ResponseCode.OK.getValue() : ResponseCode.SERVICE_UNAVAILABLE.getValue();
    }

    @Override // com.appcoins.billing.AppcoinsBilling
    public Bundle getSkuDetails(int apiVersion, final String packageName, String type, final Bundle skusBundle) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(skusBundle, "skusBundle");
        Logger.logInfo("Getting SKU Details.");
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final Bundle bundle = new Bundle();
        if (Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper())) {
            new Thread(new Runnable() { // from class: com.aptoide.sdk.billing.webpayment.WebAptoideBilling$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    WebAptoideBilling.getSkuDetails$lambda$0(this.f$0, packageName, skusBundle, bundle, countDownLatch);
                }
            }).start();
            try {
                countDownLatch.await();
            } catch (InterruptedException e) {
                Logger.logError("Failed to get SkuDetails: " + e);
                bundle.putInt(AptoideBillingConstants.RESPONSE_CODE, ResponseCode.SERVICE_UNAVAILABLE.getValue());
            }
        } else {
            getSkuDetailsFromService(packageName, skusBundle, bundle);
        }
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getSkuDetails$lambda$0(WebAptoideBilling this$0, String packageName, Bundle skusBundle, Bundle responseWs, CountDownLatch latch) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(packageName, "$packageName");
        Intrinsics.checkNotNullParameter(skusBundle, "$skusBundle");
        Intrinsics.checkNotNullParameter(responseWs, "$responseWs");
        Intrinsics.checkNotNullParameter(latch, "$latch");
        this$0.getSkuDetailsFromService(packageName, skusBundle, responseWs);
        latch.countDown();
    }

    @Override // com.appcoins.billing.AppcoinsBilling
    public Bundle getBuyIntent(int apiVersion, String packageName, String sku, String type, String developerPayload, String oemid, String guestWalletId) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(sku, "sku");
        Intrinsics.checkNotNullParameter(type, "type");
        Logger.logInfo("Getting Buy Intent.");
        Logger.logDebug("BuyItemProperties = [" + buyItemProperties + "]");
        if (hasRequiredFields(type, sku) && (!WalletUtils.INSTANCE.getPaymentFlowMethods().isEmpty())) {
            Bundle bundleStartWebFirstPayment = null;
            for (PaymentFlowMethod paymentFlowMethod : WalletUtils.INSTANCE.getPaymentFlowMethods()) {
                Logger.logInfo("Payment Method " + paymentFlowMethod.getName() + ".");
                if (paymentFlowMethod instanceof PaymentFlowMethod.WebPayment) {
                    Logger.logInfo("Billing App is NOT installed. Starting WebPayment.");
                    new WebPaymentManager(packageName).getWebPaymentUrl(sku, PayloadHelper.getPayload(developerPayload), PayloadHelper.getObfuscatedAccountId(developerPayload), PayloadHelper.getFreeTrial(developerPayload));
                    bundleStartWebFirstPayment = WalletUtils.INSTANCE.startWebFirstPayment(sku, type, ((PaymentFlowMethod.WebPayment) paymentFlowMethod).getWebViewDetails());
                }
                if (bundleStartWebFirstPayment != null) {
                    return bundleStartWebFirstPayment;
                }
            }
        }
        SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendLaunchPurchaseTypeNotSupportedFailureEvent(type);
        Logger.logInfo("Failed to find available Payflow Method. Using fallback of install Wallet.");
        setBuyItemPropertiesForPayflow(packageName, apiVersion, sku, type, developerPayload);
        return WalletUtils.INSTANCE.startInstallFlow(buyItemProperties);
    }

    private final void setBuyItemPropertiesForPayflow(String packageName, int apiVersion, String sku, String type, String developerPayload) {
        Logger.logDebug("Saving Buy Item Properties: packageName: " + packageName + " apiVersion: " + apiVersion + " sku: " + sku + " type: " + type + " developerPayload: " + developerPayload);
        buyItemProperties = new BuyItemProperties(apiVersion, packageName, sku, type, new DeveloperPayload(developerPayload, PayloadHelper.getPayload(developerPayload), PayloadHelper.getObfuscatedAccountId(developerPayload), PayloadHelper.getFreeTrial(developerPayload)));
    }

    @Override // com.appcoins.billing.AppcoinsBilling
    public Bundle getPurchases(int apiVersion, String packageName, String type, String continuationToken) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(type, "type");
        Logger.logInfo("Getting Purchases of type: " + type);
        Bundle bundleBuildEmptyBundle = buildEmptyBundle();
        String walletId = getWalletId();
        if (walletId != null && StringsKt.equals(type, "INAPP", true)) {
            return PurchasesBundleMapper.mapGuestPurchases$default(new PurchasesBundleMapper(), bundleBuildEmptyBundle, ProductV2Manager.INSTANCE.getPurchasesSync(packageName, walletId, type), null, null, null, null, 60, null);
        }
        SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendQueryPurchasesTypeNotSupportedErrorEvent(type);
        Logger.logError("Purchases type not available in WebPayments.");
        return bundleBuildEmptyBundle;
    }

    @Override // com.appcoins.billing.AppcoinsBilling
    public int consumePurchase(int apiVersion, String packageName, String purchaseToken) {
        int value;
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(purchaseToken, "purchaseToken");
        Logger.logInfo("Consuming Purchase.");
        Logger.logDebug("Purchase Token: " + purchaseToken);
        String walletId = getWalletId();
        if (walletId != null && apiVersion == 3) {
            value = consumeGuestPurchase(walletId, packageName, purchaseToken);
        } else {
            value = ResponseCode.ERROR.getValue();
        }
        Logger.logInfo("Result of Consume: " + value);
        return value;
    }

    private final int consumeGuestPurchase(String walletId, String packageName, String purchaseToken) {
        return ProductV2Manager.INSTANCE.consumePurchase(walletId, packageName, purchaseToken);
    }

    private final Bundle buildEmptyBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(AptoideBillingConstants.RESPONSE_CODE, ResponseCode.OK.getValue());
        bundle.putStringArrayList(AptoideBillingConstants.INAPP_PURCHASE_ITEM_LIST, new ArrayList<>());
        bundle.putStringArrayList(AptoideBillingConstants.INAPP_PURCHASE_DATA_LIST, new ArrayList<>());
        bundle.putStringArrayList(AptoideBillingConstants.INAPP_DATA_SIGNATURE_LIST, new ArrayList<>());
        return bundle;
    }

    private final void getSkuDetailsFromService(String packageName, Bundle skusBundle, Bundle responseWs) {
        ArrayList<SkuDetailsV2> arrayListRequestSkuDetails;
        ArrayList<String> stringArrayList = skusBundle.getStringArrayList(AptoideBillingConstants.GET_SKU_DETAILS_ITEM_LIST);
        SkuDetailsResultV2 skuDetailsResultV2 = new SkuDetailsResultV2((stringArrayList == null || (arrayListRequestSkuDetails = requestSkuDetails(stringArrayList, packageName)) == null) ? CollectionsKt.emptyList() : arrayListRequestSkuDetails, 0);
        responseWs.putInt(AptoideBillingConstants.RESPONSE_CODE, 0);
        responseWs.putStringArrayList(AptoideBillingConstants.DETAILS_LIST, buildResponse(skuDetailsResultV2));
    }

    private final ArrayList<SkuDetailsV2> requestSkuDetails(List<String> sku, String packageName) {
        List<SkuDetailsV2> listEmptyList;
        ArrayList<SkuDetailsV2> arrayList = new ArrayList<>();
        ArrayList<String> arrayList2 = new ArrayList<>();
        int size = sku.size();
        int i = 1;
        if (1 <= size) {
            while (true) {
                arrayList2.add(sku.get(i - 1));
                if (i % 49 == 0 || i == sku.size()) {
                    SkuDetailsResponse skuDetails = ProductV2Manager.INSTANCE.getSkuDetails(packageName, arrayList2, PaymentFlowMethod.INSTANCE.getPaymentFlowFromPayflowMethod(CollectionsKt.toMutableList((Collection) WalletUtils.INSTANCE.getPaymentFlowMethods())));
                    if (skuDetails == null || (listEmptyList = skuDetails.getItems()) == null) {
                        listEmptyList = CollectionsKt.emptyList();
                    }
                    arrayList.addAll(listEmptyList);
                    arrayList2.clear();
                }
                if (i == size) {
                    break;
                }
                i++;
            }
        }
        return arrayList;
    }

    private final ArrayList<String> buildResponse(SkuDetailsResultV2 skuDetailsResultV2) {
        List<SkuDetailsV2> skuDetailsList = skuDetailsResultV2.getSkuDetailsList();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(skuDetailsList, 10));
        Iterator<T> it = skuDetailsList.iterator();
        while (it.hasNext()) {
            arrayList.add(((SkuDetailsV2) it.next()).toSkuDetailsResponseString());
        }
        return new ArrayList<>(arrayList);
    }

    private final boolean hasRequiredFields(String type, String sku) {
        if (StringsKt.equals(type, "inapp", true)) {
            String str = sku;
            if (!(str == null || str.length() == 0)) {
                return true;
            }
        }
        return false;
    }

    private final String getWalletId() {
        return new AttributionSharedPreferences(WalletUtils.INSTANCE.getContext()).getWalletId();
    }

    private final boolean isTypeSupported(String type, int apiVersion) {
        return StringsKt.equals(type, "inapp", true) && apiVersion == 3;
    }

    /* JADX INFO: compiled from: WebAptoideBilling.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0013\u0010\b\u001a\u0004\u0018\u00010\t8F¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0010\u0010\f\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling$Companion;", "", "()V", "MAX_SKUS_SEND_WS", "", "SUPPORTED_API_VERSION", "buyItemProperties", "Lcom/aptoide/sdk/billing/BuyItemProperties;", "instance", "Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;", "getInstance", "()Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;", "webAptoideBillingInstance", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final WebAptoideBilling getInstance() {
            if (WebAptoideBilling.webAptoideBillingInstance == null) {
                WebAptoideBilling.webAptoideBillingInstance = new WebAptoideBilling(null);
            }
            return WebAptoideBilling.webAptoideBillingInstance;
        }
    }
}
