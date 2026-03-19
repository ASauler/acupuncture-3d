package com.aptoide.sdk.billing;

import com.aptoide.sdk.billing.listeners.AptoideBillingClientStateListener;

/* JADX INFO: loaded from: classes.dex */
public interface RepositoryConnection {
    void endConnection();

    void startConnection(AptoideBillingClientStateListener aptoideBillingClientStateListener);
}
