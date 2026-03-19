package com.aptoide.sdk.billing.helpers;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.appcoins.billing.AppcoinsBilling;
import com.aptoide.sdk.billing.ResponseCode;
import com.aptoide.sdk.billing.managers.ProductV2Manager;
import com.aptoide.sdk.billing.mappers.PurchasesBundleMapper;
import com.aptoide.sdk.billing.utils.AptoideBillingConstants;
import com.aptoide.sdk.core.analytics.SdkAnalyticsUtils;
import com.aptoide.sdk.core.logger.Logger;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
class AptoideBillingWrapper implements AppcoinsBilling, Serializable {
    final AppcoinsBilling billingService;
    private final String walletId;

    AptoideBillingWrapper(AppcoinsBilling appcoinsBilling, String str) {
        this.billingService = appcoinsBilling;
        this.walletId = str;
    }

    @Override // com.appcoins.billing.AppcoinsBilling
    public int isBillingSupported(int i, String str, String str2) throws RemoteException {
        pingConnection(i, str, str2);
        return this.billingService.isBillingSupported(i, str, str2);
    }

    @Override // com.appcoins.billing.AppcoinsBilling
    public Bundle getSkuDetails(int i, String str, String str2, Bundle bundle) throws RemoteException {
        return this.billingService.getSkuDetails(i, str, str2, bundle);
    }

    @Override // com.appcoins.billing.AppcoinsBilling
    public Bundle getBuyIntent(int i, String str, String str2, String str3, String str4, String str5, String str6) throws RemoteException {
        SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendWalletPaymentStartEvent();
        Bundle buyIntent = this.billingService.getBuyIntent(i, str, str2, str3, str4, str5, str6);
        if (buyIntent == null) {
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendWalletPaymentEmptyDataEvent();
            buyIntent = new Bundle();
            buyIntent.putInt(AptoideBillingConstants.RESPONSE_CODE, ResponseCode.SERVICE_UNAVAILABLE.getValue());
        }
        return WalletUtils.INSTANCE.startWalletPayment(buyIntent, str3);
    }

    @Override // com.appcoins.billing.AppcoinsBilling
    public Bundle getPurchases(int i, String str, String str2, String str3) throws RemoteException {
        Bundle purchases = this.billingService.getPurchases(i, str, str2, str3);
        if (this.walletId == null) {
            return purchases;
        }
        ArrayList<String> stringArrayList = purchases.getStringArrayList(AptoideBillingConstants.INAPP_PURCHASE_ID_LIST);
        ArrayList<String> stringArrayList2 = purchases.getStringArrayList(AptoideBillingConstants.INAPP_PURCHASE_ITEM_LIST);
        ArrayList<String> stringArrayList3 = purchases.getStringArrayList(AptoideBillingConstants.INAPP_PURCHASE_DATA_LIST);
        ArrayList<String> stringArrayList4 = purchases.getStringArrayList(AptoideBillingConstants.INAPP_DATA_SIGNATURE_LIST);
        return new PurchasesBundleMapper().mapGuestPurchases(purchases, ProductV2Manager.INSTANCE.getPurchasesSync(str, this.walletId, str2), stringArrayList, stringArrayList2, stringArrayList3, stringArrayList4);
    }

    @Override // com.appcoins.billing.AppcoinsBilling
    public int consumePurchase(int i, String str, String str2) throws RemoteException {
        if (this.billingService.consumePurchase(i, str, str2) == ResponseCode.OK.getValue()) {
            return ResponseCode.OK.getValue();
        }
        if (consumeGuestPurchase(this.walletId, i, str, str2) == ResponseCode.OK.getValue()) {
            return ResponseCode.OK.getValue();
        }
        return ResponseCode.ERROR.getValue();
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.billingService.asBinder();
    }

    private int consumeGuestPurchase(String str, int i, String str2, String str3) {
        int value = ResponseCode.ERROR.getValue();
        return (str == null || i != 3) ? value : ProductV2Manager.INSTANCE.consumePurchase(this.walletId, str2, str3);
    }

    private void pingConnection(final int i, final String str, final String str2) {
        Executors.newSingleThreadScheduledExecutor().scheduleWithFixedDelay(new Runnable() { // from class: com.aptoide.sdk.billing.helpers.AptoideBillingWrapper$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$pingConnection$0(i, str, str2);
            }
        }, 0L, 60L, TimeUnit.SECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$pingConnection$0(int i, String str, String str2) {
        try {
            this.billingService.isBillingSupported(i, str, str2);
        } catch (RemoteException e) {
            Logger.logWarning("Failed to ping Billing connection: " + e);
        }
    }
}
