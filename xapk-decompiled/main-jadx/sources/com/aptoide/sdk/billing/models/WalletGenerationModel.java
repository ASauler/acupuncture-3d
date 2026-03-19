package com.aptoide.sdk.billing.models;

/* JADX INFO: loaded from: classes.dex */
public class WalletGenerationModel {
    private final boolean error;
    private final String ewt;
    private final String signature;
    private final String walletAddress;

    public WalletGenerationModel(String str, String str2, String str3, boolean z) {
        this.walletAddress = str;
        this.signature = str2;
        this.ewt = str3;
        this.error = z;
    }

    private WalletGenerationModel() {
        this.walletAddress = "";
        this.signature = "";
        this.ewt = "";
        this.error = true;
    }

    public static WalletGenerationModel createErrorWalletGenerationModel() {
        return new WalletGenerationModel();
    }

    public String getWalletAddress() {
        return this.walletAddress;
    }

    public String getSignature() {
        return this.signature;
    }

    public String getEwt() {
        return this.ewt;
    }

    public boolean hasError() {
        return this.error;
    }
}
