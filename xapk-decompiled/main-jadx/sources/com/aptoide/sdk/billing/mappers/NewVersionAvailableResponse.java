package com.aptoide.sdk.billing.mappers;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: NewVersionAvailableResponseMapper.kt */
/* JADX INFO: loaded from: classes.dex */
@kotlin.Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\tJ\t\u0010\f\u001a\u00020\u0005HÆ\u0003J$\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001¢\u0006\u0002\u0010\u000eJ\u0013\u0010\u000f\u001a\u00020\u00052\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0007R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\b\u0010\t¨\u0006\u0014"}, d2 = {"Lcom/aptoide/sdk/billing/mappers/NewVersionAvailableResponse;", "", "responseCode", "", "isNewVersionAvailable", "", "(Ljava/lang/Integer;Z)V", "()Z", InAppPurchaseConstants.METHOD_GET_RESPONSE_CODE, "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "component2", "copy", "(Ljava/lang/Integer;Z)Lcom/aptoide/sdk/billing/mappers/NewVersionAvailableResponse;", "equals", "other", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class NewVersionAvailableResponse {
    private final boolean isNewVersionAvailable;
    private final Integer responseCode;

    public static /* synthetic */ NewVersionAvailableResponse copy$default(NewVersionAvailableResponse newVersionAvailableResponse, Integer num, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            num = newVersionAvailableResponse.responseCode;
        }
        if ((i & 2) != 0) {
            z = newVersionAvailableResponse.isNewVersionAvailable;
        }
        return newVersionAvailableResponse.copy(num, z);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getResponseCode() {
        return this.responseCode;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getIsNewVersionAvailable() {
        return this.isNewVersionAvailable;
    }

    public final NewVersionAvailableResponse copy(Integer responseCode, boolean isNewVersionAvailable) {
        return new NewVersionAvailableResponse(responseCode, isNewVersionAvailable);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof NewVersionAvailableResponse)) {
            return false;
        }
        NewVersionAvailableResponse newVersionAvailableResponse = (NewVersionAvailableResponse) other;
        return Intrinsics.areEqual(this.responseCode, newVersionAvailableResponse.responseCode) && this.isNewVersionAvailable == newVersionAvailableResponse.isNewVersionAvailable;
    }

    public int hashCode() {
        Integer num = this.responseCode;
        return ((num == null ? 0 : num.hashCode()) * 31) + Boolean.hashCode(this.isNewVersionAvailable);
    }

    public String toString() {
        return "NewVersionAvailableResponse(responseCode=" + this.responseCode + ", isNewVersionAvailable=" + this.isNewVersionAvailable + ")";
    }

    public NewVersionAvailableResponse(Integer num, boolean z) {
        this.responseCode = num;
        this.isNewVersionAvailable = z;
    }

    public /* synthetic */ NewVersionAvailableResponse(Integer num, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(num, (i & 2) != 0 ? false : z);
    }

    public final Integer getResponseCode() {
        return this.responseCode;
    }

    public final boolean isNewVersionAvailable() {
        return this.isNewVersionAvailable;
    }
}
