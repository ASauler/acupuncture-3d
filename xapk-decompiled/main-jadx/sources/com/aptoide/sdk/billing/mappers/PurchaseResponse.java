package com.aptoide.sdk.billing.mappers;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PurchaseResponseMapper.kt */
/* JADX INFO: loaded from: classes.dex */
@kotlin.Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/aptoide/sdk/billing/mappers/PurchaseResponse;", "", "responseCode", "", FirebaseAnalytics.Event.PURCHASE, "Lcom/aptoide/sdk/billing/mappers/Purchase;", "(ILcom/aptoide/sdk/billing/mappers/Purchase;)V", "getPurchase", "()Lcom/aptoide/sdk/billing/mappers/Purchase;", InAppPurchaseConstants.METHOD_GET_RESPONSE_CODE, "()I", "component1", "component2", "copy", "equals", "", "other", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class PurchaseResponse {
    private final Purchase purchase;
    private final int responseCode;

    public static /* synthetic */ PurchaseResponse copy$default(PurchaseResponse purchaseResponse, int i, Purchase purchase, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = purchaseResponse.responseCode;
        }
        if ((i2 & 2) != 0) {
            purchase = purchaseResponse.purchase;
        }
        return purchaseResponse.copy(i, purchase);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getResponseCode() {
        return this.responseCode;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Purchase getPurchase() {
        return this.purchase;
    }

    public final PurchaseResponse copy(int responseCode, Purchase purchase) {
        return new PurchaseResponse(responseCode, purchase);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PurchaseResponse)) {
            return false;
        }
        PurchaseResponse purchaseResponse = (PurchaseResponse) other;
        return this.responseCode == purchaseResponse.responseCode && Intrinsics.areEqual(this.purchase, purchaseResponse.purchase);
    }

    public int hashCode() {
        int iHashCode = Integer.hashCode(this.responseCode) * 31;
        Purchase purchase = this.purchase;
        return iHashCode + (purchase == null ? 0 : purchase.hashCode());
    }

    public String toString() {
        return "PurchaseResponse(responseCode=" + this.responseCode + ", purchase=" + this.purchase + ")";
    }

    public PurchaseResponse(int i, Purchase purchase) {
        this.responseCode = i;
        this.purchase = purchase;
    }

    public /* synthetic */ PurchaseResponse(int i, Purchase purchase, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i2 & 2) != 0 ? null : purchase);
    }

    public final int getResponseCode() {
        return this.responseCode;
    }

    public final Purchase getPurchase() {
        return this.purchase;
    }
}
