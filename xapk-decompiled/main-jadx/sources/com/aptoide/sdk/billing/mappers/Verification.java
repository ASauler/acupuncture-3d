package com.aptoide.sdk.billing.mappers;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PurchasesResponseMapper.kt */
/* JADX INFO: loaded from: classes.dex */
@kotlin.Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J'\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u0015"}, d2 = {"Lcom/aptoide/sdk/billing/mappers/Verification;", "", "type", "", "data", "signature", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getData", "()Ljava/lang/String;", "getSignature", "getType", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class Verification {
    private final String data;
    private final String signature;
    private final String type;

    public static /* synthetic */ Verification copy$default(Verification verification, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = verification.type;
        }
        if ((i & 2) != 0) {
            str2 = verification.data;
        }
        if ((i & 4) != 0) {
            str3 = verification.signature;
        }
        return verification.copy(str, str2, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getData() {
        return this.data;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getSignature() {
        return this.signature;
    }

    public final Verification copy(String type, String data, String signature) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(signature, "signature");
        return new Verification(type, data, signature);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Verification)) {
            return false;
        }
        Verification verification = (Verification) other;
        return Intrinsics.areEqual(this.type, verification.type) && Intrinsics.areEqual(this.data, verification.data) && Intrinsics.areEqual(this.signature, verification.signature);
    }

    public int hashCode() {
        return (((this.type.hashCode() * 31) + this.data.hashCode()) * 31) + this.signature.hashCode();
    }

    public String toString() {
        return "Verification(type=" + this.type + ", data=" + this.data + ", signature=" + this.signature + ")";
    }

    public Verification(String type, String data, String signature) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(signature, "signature");
        this.type = type;
        this.data = data;
        this.signature = signature;
    }

    public final String getType() {
        return this.type;
    }

    public final String getData() {
        return this.data;
    }

    public final String getSignature() {
        return this.signature;
    }
}
