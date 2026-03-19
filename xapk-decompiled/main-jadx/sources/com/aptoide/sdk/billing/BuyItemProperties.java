package com.aptoide.sdk.billing;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class BuyItemProperties implements Serializable {
    private final int apiVersion;
    private final DeveloperPayload developerPayload;
    private final String packageName;
    private final String sku;
    private final String type;

    public BuyItemProperties(int i, String str, String str2, String str3, DeveloperPayload developerPayload) {
        this.apiVersion = i;
        this.packageName = str;
        this.sku = str2;
        this.type = str3;
        this.developerPayload = developerPayload;
    }

    public DeveloperPayload getDeveloperPayload() {
        return this.developerPayload;
    }

    public int getApiVersion() {
        return this.apiVersion;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getSku() {
        return this.sku;
    }

    public String getType() {
        return this.type;
    }

    public BillingFlowParams toBillingFlowParams() {
        return new BillingFlowParams(this.sku, this.type, this.developerPayload.getDeveloperPayload(), this.developerPayload.getObfuscatedAccountId(), this.developerPayload.getFreeTrial());
    }
}
