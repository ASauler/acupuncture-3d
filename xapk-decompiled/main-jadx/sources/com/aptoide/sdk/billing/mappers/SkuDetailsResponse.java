package com.aptoide.sdk.billing.mappers;

import com.aptoide.sdk.billing.SkuDetailsV2;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SkuDetailsResponseMapper.kt */
/* JADX INFO: loaded from: classes.dex */
@kotlin.Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J#\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/aptoide/sdk/billing/mappers/SkuDetailsResponse;", "", "responseCode", "", FirebaseAnalytics.Param.ITEMS, "", "Lcom/aptoide/sdk/billing/SkuDetailsV2;", "(ILjava/util/List;)V", "getItems", "()Ljava/util/List;", InAppPurchaseConstants.METHOD_GET_RESPONSE_CODE, "()I", "component1", "component2", "copy", "equals", "", "other", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class SkuDetailsResponse {
    private final List<SkuDetailsV2> items;
    private final int responseCode;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SkuDetailsResponse copy$default(SkuDetailsResponse skuDetailsResponse, int i, List list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = skuDetailsResponse.responseCode;
        }
        if ((i2 & 2) != 0) {
            list = skuDetailsResponse.items;
        }
        return skuDetailsResponse.copy(i, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getResponseCode() {
        return this.responseCode;
    }

    public final List<SkuDetailsV2> component2() {
        return this.items;
    }

    public final SkuDetailsResponse copy(int responseCode, List<SkuDetailsV2> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        return new SkuDetailsResponse(responseCode, items);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SkuDetailsResponse)) {
            return false;
        }
        SkuDetailsResponse skuDetailsResponse = (SkuDetailsResponse) other;
        return this.responseCode == skuDetailsResponse.responseCode && Intrinsics.areEqual(this.items, skuDetailsResponse.items);
    }

    public int hashCode() {
        return (Integer.hashCode(this.responseCode) * 31) + this.items.hashCode();
    }

    public String toString() {
        return "SkuDetailsResponse(responseCode=" + this.responseCode + ", items=" + this.items + ")";
    }

    public SkuDetailsResponse(int i, List<SkuDetailsV2> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        this.responseCode = i;
        this.items = items;
    }

    public final int getResponseCode() {
        return this.responseCode;
    }

    public /* synthetic */ SkuDetailsResponse(int i, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i2 & 2) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final List<SkuDetailsV2> getItems() {
        return this.items;
    }
}
