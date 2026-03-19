package com.aptoide.sdk.billing;

import android.content.ComponentName;
import android.os.IBinder;
import com.aptoide.sdk.billing.listeners.AptoideBillingClientStateListener;

/* JADX INFO: loaded from: classes.dex */
public interface ConnectionLifeCycle {
    void onConnect(ComponentName componentName, IBinder iBinder, AptoideBillingClientStateListener aptoideBillingClientStateListener);

    void onDisconnect(AptoideBillingClientStateListener aptoideBillingClientStateListener);
}
