package com.aptoide.sdk.billing.mappers;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TransactionResponseMapper.kt */
/* JADX INFO: loaded from: classes.dex */
@kotlin.Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u000b\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003J&\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00032\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0005HÖ\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/aptoide/sdk/billing/mappers/Metadata;", "", "renewal", "", "purchaseUid", "", "(Ljava/lang/Boolean;Ljava/lang/String;)V", "getPurchaseUid", "()Ljava/lang/String;", "getRenewal", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "component1", "component2", "copy", "(Ljava/lang/Boolean;Ljava/lang/String;)Lcom/aptoide/sdk/billing/mappers/Metadata;", "equals", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class Metadata {
    private final String purchaseUid;
    private final Boolean renewal;

    /* JADX WARN: Multi-variable type inference failed */
    public Metadata() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ Metadata copy$default(Metadata metadata, Boolean bool, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            bool = metadata.renewal;
        }
        if ((i & 2) != 0) {
            str = metadata.purchaseUid;
        }
        return metadata.copy(bool, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Boolean getRenewal() {
        return this.renewal;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getPurchaseUid() {
        return this.purchaseUid;
    }

    public final Metadata copy(Boolean renewal, String purchaseUid) {
        return new Metadata(renewal, purchaseUid);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Metadata)) {
            return false;
        }
        Metadata metadata = (Metadata) other;
        return Intrinsics.areEqual(this.renewal, metadata.renewal) && Intrinsics.areEqual(this.purchaseUid, metadata.purchaseUid);
    }

    public int hashCode() {
        Boolean bool = this.renewal;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        String str = this.purchaseUid;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "Metadata(renewal=" + this.renewal + ", purchaseUid=" + this.purchaseUid + ")";
    }

    public Metadata(Boolean bool, String str) {
        this.renewal = bool;
        this.purchaseUid = str;
    }

    public /* synthetic */ Metadata(Boolean bool, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : bool, (i & 2) != 0 ? null : str);
    }

    public final Boolean getRenewal() {
        return this.renewal;
    }

    public final String getPurchaseUid() {
        return this.purchaseUid;
    }
}
