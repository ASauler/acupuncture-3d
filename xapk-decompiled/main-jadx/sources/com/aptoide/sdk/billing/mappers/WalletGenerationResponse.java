package com.aptoide.sdk.billing.mappers;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WalletGenerationMapper.kt */
/* JADX INFO: loaded from: classes.dex */
@kotlin.Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0007\b\u0016¢\u0006\u0002\u0010\u0002B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\t\u0010\u0010\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0013\u001a\u00020\bHÆ\u0003J1\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0015\u001a\u00020\b2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\u0006\u0010\u0017\u001a\u00020\bJ\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0004HÖ\u0001R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000b¨\u0006\u001b"}, d2 = {"Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;", "", "()V", "address", "", "signature", "ewt", "error", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V", "getAddress", "()Ljava/lang/String;", "getError", "()Z", "getEwt", "getSignature", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hasError", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class WalletGenerationResponse {
    private final String address;
    private final boolean error;
    private final String ewt;
    private final String signature;

    public static /* synthetic */ WalletGenerationResponse copy$default(WalletGenerationResponse walletGenerationResponse, String str, String str2, String str3, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = walletGenerationResponse.address;
        }
        if ((i & 2) != 0) {
            str2 = walletGenerationResponse.signature;
        }
        if ((i & 4) != 0) {
            str3 = walletGenerationResponse.ewt;
        }
        if ((i & 8) != 0) {
            z = walletGenerationResponse.error;
        }
        return walletGenerationResponse.copy(str, str2, str3, z);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAddress() {
        return this.address;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getSignature() {
        return this.signature;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getEwt() {
        return this.ewt;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getError() {
        return this.error;
    }

    public final WalletGenerationResponse copy(String address, String signature, String ewt, boolean error) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(signature, "signature");
        Intrinsics.checkNotNullParameter(ewt, "ewt");
        return new WalletGenerationResponse(address, signature, ewt, error);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof WalletGenerationResponse)) {
            return false;
        }
        WalletGenerationResponse walletGenerationResponse = (WalletGenerationResponse) other;
        return Intrinsics.areEqual(this.address, walletGenerationResponse.address) && Intrinsics.areEqual(this.signature, walletGenerationResponse.signature) && Intrinsics.areEqual(this.ewt, walletGenerationResponse.ewt) && this.error == walletGenerationResponse.error;
    }

    public int hashCode() {
        return (((((this.address.hashCode() * 31) + this.signature.hashCode()) * 31) + this.ewt.hashCode()) * 31) + Boolean.hashCode(this.error);
    }

    public String toString() {
        return "WalletGenerationResponse(address=" + this.address + ", signature=" + this.signature + ", ewt=" + this.ewt + ", error=" + this.error + ")";
    }

    public WalletGenerationResponse(String address, String signature, String ewt, boolean z) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(signature, "signature");
        Intrinsics.checkNotNullParameter(ewt, "ewt");
        this.address = address;
        this.signature = signature;
        this.ewt = ewt;
        this.error = z;
    }

    public final String getAddress() {
        return this.address;
    }

    public final String getSignature() {
        return this.signature;
    }

    public final String getEwt() {
        return this.ewt;
    }

    public final boolean getError() {
        return this.error;
    }

    public WalletGenerationResponse() {
        this("", "", "", true);
    }

    public final boolean hasError() {
        return this.error;
    }
}
