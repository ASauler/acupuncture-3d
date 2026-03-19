package com.aptoide.sdk.billing.service;

import android.os.Bundle;
import android.os.IBinder;
import com.appcoins.billing.AppcoinsBilling;
import com.aptoide.sdk.billing.ResponseCode;
import com.aptoide.sdk.billing.helpers.WalletUtils;
import com.aptoide.sdk.billing.payflow.models.PaymentFlowMethod;
import com.aptoide.sdk.billing.utils.AptoideBillingConstants;
import com.aptoide.sdk.core.analytics.events.SdkInitializationLabels;
import com.aptoide.sdk.core.analytics.events.SdkPurchaseFlowLabels;
import com.aptoide.sdk.core.logger.Logger;
import java.io.Serializable;
import java.util.Collection;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UnavailableBillingService.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000e\u0018\u0000 \u00192\u00020\u00012\u00020\u0002:\u0001\u0019B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0002J \u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH\u0016JF\u0010\u000e\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\f2\b\u0010\u0011\u001a\u0004\u0018\u00010\f2\b\u0010\u0012\u001a\u0004\u0018\u00010\f2\b\u0010\u0013\u001a\u0004\u0018\u00010\fH\u0016J*\u0010\u0014\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\f2\b\u0010\u0015\u001a\u0004\u0018\u00010\fH\u0016J(\u0010\u0016\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u0007H\u0016J \u0010\u0018\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\fH\u0016¨\u0006\u001a"}, d2 = {"Lcom/aptoide/sdk/billing/service/UnavailableBillingService;", "Lcom/appcoins/billing/AppcoinsBilling;", "Ljava/io/Serializable;", "()V", "asBinder", "Landroid/os/IBinder;", "buildErrorBundle", "Landroid/os/Bundle;", "consumePurchase", "", "apiVersion", "packageName", "", "purchaseToken", "getBuyIntent", SdkPurchaseFlowLabels.SKU, "type", "developerPayload", SdkInitializationLabels.OEMID, "guestWalletId", "getPurchases", "continuationToken", "getSkuDetails", "skusBundle", "isBillingSupported", "Companion", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UnavailableBillingService implements AppcoinsBilling, Serializable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static UnavailableBillingService unavailableBillingServiceInstance;

    public /* synthetic */ UnavailableBillingService(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return null;
    }

    private UnavailableBillingService() {
        unavailableBillingServiceInstance = this;
    }

    @Override // com.appcoins.billing.AppcoinsBilling
    public int isBillingSupported(int apiVersion, String packageName, String type) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(type, "type");
        return ResponseCode.SERVICE_UNAVAILABLE.getValue();
    }

    @Override // com.appcoins.billing.AppcoinsBilling
    public Bundle getSkuDetails(int apiVersion, String packageName, String type, Bundle skusBundle) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(skusBundle, "skusBundle");
        Logger.logInfo("Getting SKU Details.");
        return buildErrorBundle();
    }

    @Override // com.appcoins.billing.AppcoinsBilling
    public Bundle getBuyIntent(int apiVersion, String packageName, String sku, String type, String developerPayload, String oemid, String guestWalletId) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(sku, "sku");
        Intrinsics.checkNotNullParameter(type, "type");
        Logger.logInfo("Getting Buy Intent. [apiVersion: " + apiVersion + " | packageName: " + packageName + " | sku: " + sku + " | type: " + type + " ]");
        Logger.logDebug("Debuggable properties: [developerPayload: " + developerPayload + " | oemid: " + oemid + " | guestWalletId: " + guestWalletId + " ]");
        return WalletUtils.INSTANCE.startServiceUnavailableDialog(PaymentFlowMethod.INSTANCE.getUnavailableBillingMessage(CollectionsKt.toMutableList((Collection) WalletUtils.INSTANCE.getPaymentFlowMethods())));
    }

    @Override // com.appcoins.billing.AppcoinsBilling
    public Bundle getPurchases(int apiVersion, String packageName, String type, String continuationToken) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(type, "type");
        Logger.logInfo("Getting Purchases of type: " + type);
        return buildErrorBundle();
    }

    @Override // com.appcoins.billing.AppcoinsBilling
    public int consumePurchase(int apiVersion, String packageName, String purchaseToken) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(purchaseToken, "purchaseToken");
        Logger.logInfo("Consuming Purchase.");
        Logger.logDebug("Purchase Token: " + purchaseToken);
        return ResponseCode.ERROR.getValue();
    }

    private final Bundle buildErrorBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(AptoideBillingConstants.RESPONSE_CODE, ResponseCode.SERVICE_UNAVAILABLE.getValue());
        return bundle;
    }

    /* JADX INFO: compiled from: UnavailableBillingService.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/aptoide/sdk/billing/service/UnavailableBillingService$Companion;", "", "()V", "instance", "Lcom/aptoide/sdk/billing/service/UnavailableBillingService;", "getInstance", "()Lcom/aptoide/sdk/billing/service/UnavailableBillingService;", "unavailableBillingServiceInstance", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final UnavailableBillingService getInstance() {
            if (UnavailableBillingService.unavailableBillingServiceInstance == null) {
                UnavailableBillingService.unavailableBillingServiceInstance = new UnavailableBillingService(null);
            }
            return UnavailableBillingService.unavailableBillingServiceInstance;
        }
    }
}
