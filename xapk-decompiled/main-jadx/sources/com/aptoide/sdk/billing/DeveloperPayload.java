package com.aptoide.sdk.billing;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class DeveloperPayload implements Serializable {
    private final String developerPayload;
    private final Boolean freeTrial;
    private final String obfuscatedAccountId;
    private final String rawPayload;

    public DeveloperPayload(String str, String str2, String str3, Boolean bool) {
        this.rawPayload = str;
        this.developerPayload = str2;
        this.obfuscatedAccountId = str3;
        this.freeTrial = bool;
    }

    public String getRawPayload() {
        return this.rawPayload;
    }

    public String getDeveloperPayload() {
        return this.developerPayload;
    }

    public String getObfuscatedAccountId() {
        return this.obfuscatedAccountId;
    }

    public Boolean getFreeTrial() {
        return this.freeTrial;
    }
}
