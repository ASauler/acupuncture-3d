package com.aptoide.sdk.billing.mappers;

import com.aptoide.sdk.core.analytics.events.SdkQueryPurchasesLabels;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PurchasesResponseMapper.kt */
/* JADX INFO: loaded from: classes.dex */
@kotlin.Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J#\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/aptoide/sdk/billing/mappers/PurchasesResponse;", "", "responseCode", "", SdkQueryPurchasesLabels.PURCHASES, "", "Lcom/aptoide/sdk/billing/mappers/Purchase;", "(ILjava/util/List;)V", "getPurchases", "()Ljava/util/List;", InAppPurchaseConstants.METHOD_GET_RESPONSE_CODE, "()I", "component1", "component2", "copy", "equals", "", "other", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class PurchasesResponse {
    private final List<Purchase> purchases;
    private final int responseCode;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PurchasesResponse copy$default(PurchasesResponse purchasesResponse, int i, List list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = purchasesResponse.responseCode;
        }
        if ((i2 & 2) != 0) {
            list = purchasesResponse.purchases;
        }
        return purchasesResponse.copy(i, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getResponseCode() {
        return this.responseCode;
    }

    public final List<Purchase> component2() {
        return this.purchases;
    }

    public final PurchasesResponse copy(int responseCode, List<Purchase> purchases) {
        Intrinsics.checkNotNullParameter(purchases, "purchases");
        return new PurchasesResponse(responseCode, purchases);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PurchasesResponse)) {
            return false;
        }
        PurchasesResponse purchasesResponse = (PurchasesResponse) other;
        return this.responseCode == purchasesResponse.responseCode && Intrinsics.areEqual(this.purchases, purchasesResponse.purchases);
    }

    public int hashCode() {
        return (Integer.hashCode(this.responseCode) * 31) + this.purchases.hashCode();
    }

    public String toString() {
        return "PurchasesResponse(responseCode=" + this.responseCode + ", purchases=" + this.purchases + ")";
    }

    public PurchasesResponse(int i, List<Purchase> purchases) {
        Intrinsics.checkNotNullParameter(purchases, "purchases");
        this.responseCode = i;
        this.purchases = purchases;
    }

    public final int getResponseCode() {
        return this.responseCode;
    }

    public /* synthetic */ PurchasesResponse(int i, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i2 & 2) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final List<Purchase> getPurchases() {
        return this.purchases;
    }
}
