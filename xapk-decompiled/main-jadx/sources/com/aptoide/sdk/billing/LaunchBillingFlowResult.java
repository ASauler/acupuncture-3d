package com.aptoide.sdk.billing;

import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
public class LaunchBillingFlowResult {
    private final Intent buyIntent;
    private final int responseCode;

    public LaunchBillingFlowResult(int i, Intent intent) {
        this.responseCode = i;
        this.buyIntent = intent;
    }

    public int getResponseCode() {
        return this.responseCode;
    }

    public Intent getBuyIntent() {
        return this.buyIntent;
    }
}
