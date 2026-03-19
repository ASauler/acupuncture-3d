package com.aptoide.sdk.billing.service;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.appcoins.billing.AppcoinsBilling;
import com.aptoide.sdk.billing.helpers.AptoideBillingStubHelper;

/* JADX INFO: loaded from: classes.dex */
public class WalletBillingService implements AppcoinsBilling {
    private final AppcoinsBilling service;

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return null;
    }

    public WalletBillingService(IBinder iBinder, String str) {
        this.service = AptoideBillingStubHelper.Stub.asInterface(iBinder);
    }

    @Override // com.appcoins.billing.AppcoinsBilling
    public Bundle getSkuDetails(int i, String str, String str2, Bundle bundle) throws RemoteException {
        return this.service.getSkuDetails(i, str, str2, bundle);
    }

    @Override // com.appcoins.billing.AppcoinsBilling
    public int isBillingSupported(int i, String str, String str2) throws RemoteException {
        return this.service.isBillingSupported(i, str, str2);
    }

    @Override // com.appcoins.billing.AppcoinsBilling
    public Bundle getBuyIntent(int i, String str, String str2, String str3, String str4, String str5, String str6) throws RemoteException {
        return this.service.getBuyIntent(i, str, str2, str3, str4, str5, str6);
    }

    @Override // com.appcoins.billing.AppcoinsBilling
    public Bundle getPurchases(int i, String str, String str2, String str3) throws RemoteException {
        return this.service.getPurchases(i, str, str2, str3);
    }

    @Override // com.appcoins.billing.AppcoinsBilling
    public int consumePurchase(int i, String str, String str2) throws RemoteException {
        return this.service.consumePurchase(i, str, str2);
    }
}
