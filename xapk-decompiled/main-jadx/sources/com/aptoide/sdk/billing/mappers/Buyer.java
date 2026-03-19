package com.aptoide.sdk.billing.mappers;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: InappPurchaseResponseMapper.kt */
/* JADX INFO: loaded from: classes.dex */
@kotlin.Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\u000b\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\u000b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/aptoide/sdk/billing/mappers/Buyer;", "", "type", "", "reference", "(Ljava/lang/String;Ljava/lang/String;)V", "getReference", "()Ljava/lang/String;", "getType", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class Buyer {
    private final String reference;
    private final String type;

    /* JADX WARN: Multi-variable type inference failed */
    public Buyer() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ Buyer copy$default(Buyer buyer, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = buyer.type;
        }
        if ((i & 2) != 0) {
            str2 = buyer.reference;
        }
        return buyer.copy(str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getReference() {
        return this.reference;
    }

    public final Buyer copy(String type, String reference) {
        return new Buyer(type, reference);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Buyer)) {
            return false;
        }
        Buyer buyer = (Buyer) other;
        return Intrinsics.areEqual(this.type, buyer.type) && Intrinsics.areEqual(this.reference, buyer.reference);
    }

    public int hashCode() {
        String str = this.type;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.reference;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "Buyer(type=" + this.type + ", reference=" + this.reference + ")";
    }

    public Buyer(String str, String str2) {
        this.type = str;
        this.reference = str2;
    }

    public /* synthetic */ Buyer(String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2);
    }

    public final String getType() {
        return this.type;
    }

    public final String getReference() {
        return this.reference;
    }
}
