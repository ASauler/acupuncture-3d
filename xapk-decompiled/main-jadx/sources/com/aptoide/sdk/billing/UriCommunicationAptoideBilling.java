package com.aptoide.sdk.billing;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.appcoins.billing.AppcoinsBilling;
import com.aptoide.communication.SyncIpcMessageRequester;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class UriCommunicationAptoideBilling implements AppcoinsBilling, Serializable {
    private final SyncIpcMessageRequester messageRequester;

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return null;
    }

    public UriCommunicationAptoideBilling(SyncIpcMessageRequester syncIpcMessageRequester) {
        this.messageRequester = syncIpcMessageRequester;
    }

    @Override // com.appcoins.billing.AppcoinsBilling
    public int isBillingSupported(int i, String str, String str2) throws RemoteException {
        Bundle bundle = new Bundle();
        bundle.putInt("API_VERSION", i);
        bundle.putString("PACKAGE_NAME", str);
        bundle.putString("BILLING_TYPE", str2);
        return callMethod(0, bundle).getInt("RESULT_VALUE");
    }

    @Override // com.appcoins.billing.AppcoinsBilling
    public Bundle getSkuDetails(int i, String str, String str2, Bundle bundle) throws RemoteException {
        Bundle bundle2 = new Bundle();
        bundle2.putInt("API_VERSION", i);
        bundle2.putString("PACKAGE_NAME", str);
        bundle2.putString("BILLING_TYPE", str2);
        bundle2.putParcelable("SKUS_BUNDLE", bundle);
        return callMethod(1, bundle2).getBundle("RESULT_VALUE");
    }

    @Override // com.appcoins.billing.AppcoinsBilling
    public Bundle getBuyIntent(int i, String str, String str2, String str3, String str4, String str5, String str6) throws RemoteException {
        Bundle bundle = new Bundle();
        bundle.putInt("API_VERSION", i);
        bundle.putString("PACKAGE_NAME", str);
        bundle.putString("BILLING_SKU", str2);
        bundle.putString("BILLING_TYPE", str3);
        bundle.putString("DEVELOPER_PAYLOAD", str4);
        bundle.putString("OEMID", str5);
        bundle.putString("GUEST_WALLET_ID", str6);
        return callMethod(3, bundle).getBundle("RESULT_VALUE");
    }

    @Override // com.appcoins.billing.AppcoinsBilling
    public Bundle getPurchases(int i, String str, String str2, String str3) throws RemoteException {
        Bundle bundle = new Bundle();
        bundle.putInt("API_VERSION", i);
        bundle.putString("PACKAGE_NAME", str);
        bundle.putString("BILLING_TYPE", str2);
        bundle.putString("CONTINUATION_TOKEN", str3);
        return callMethod(2, bundle).getBundle("RESULT_VALUE");
    }

    @Override // com.appcoins.billing.AppcoinsBilling
    public int consumePurchase(int i, String str, String str2) throws RemoteException {
        Bundle bundle = new Bundle();
        bundle.putInt("API_VERSION", i);
        bundle.putString("PACKAGE_NAME", str);
        bundle.putString("PURCHASE_TOKEN", str2);
        return callMethod(4, bundle).getInt("RESULT_VALUE");
    }

    private Bundle callMethod(int i, Bundle bundle) throws RemoteException {
        try {
            return (Bundle) this.messageRequester.sendMessage(i, bundle);
        } catch (Exception e) {
            throw handleRemoteExceptionThrow(e);
        }
    }

    private RemoteException handleRemoteExceptionThrow(Exception exc) {
        return new RemoteException(exc.getLocalizedMessage());
    }
}
