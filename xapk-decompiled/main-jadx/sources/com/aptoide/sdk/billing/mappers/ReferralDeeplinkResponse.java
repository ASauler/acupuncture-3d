package com.aptoide.sdk.billing.mappers;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReferralDeeplinkResponseMapper.kt */
/* JADX INFO: loaded from: classes.dex */
@kotlin.Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003J2\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0012J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\t¨\u0006\u0018"}, d2 = {"Lcom/aptoide/sdk/billing/mappers/ReferralDeeplinkResponse;", "", "responseCode", "", "storeDeeplink", "", "fallbackDeeplink", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V", "getFallbackDeeplink", "()Ljava/lang/String;", InAppPurchaseConstants.METHOD_GET_RESPONSE_CODE, "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getStoreDeeplink", "component1", "component2", "component3", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/aptoide/sdk/billing/mappers/ReferralDeeplinkResponse;", "equals", "", "other", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class ReferralDeeplinkResponse {
    private final String fallbackDeeplink;
    private final Integer responseCode;
    private final String storeDeeplink;

    public static /* synthetic */ ReferralDeeplinkResponse copy$default(ReferralDeeplinkResponse referralDeeplinkResponse, Integer num, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            num = referralDeeplinkResponse.responseCode;
        }
        if ((i & 2) != 0) {
            str = referralDeeplinkResponse.storeDeeplink;
        }
        if ((i & 4) != 0) {
            str2 = referralDeeplinkResponse.fallbackDeeplink;
        }
        return referralDeeplinkResponse.copy(num, str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getResponseCode() {
        return this.responseCode;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getStoreDeeplink() {
        return this.storeDeeplink;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getFallbackDeeplink() {
        return this.fallbackDeeplink;
    }

    public final ReferralDeeplinkResponse copy(Integer responseCode, String storeDeeplink, String fallbackDeeplink) {
        return new ReferralDeeplinkResponse(responseCode, storeDeeplink, fallbackDeeplink);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ReferralDeeplinkResponse)) {
            return false;
        }
        ReferralDeeplinkResponse referralDeeplinkResponse = (ReferralDeeplinkResponse) other;
        return Intrinsics.areEqual(this.responseCode, referralDeeplinkResponse.responseCode) && Intrinsics.areEqual(this.storeDeeplink, referralDeeplinkResponse.storeDeeplink) && Intrinsics.areEqual(this.fallbackDeeplink, referralDeeplinkResponse.fallbackDeeplink);
    }

    public int hashCode() {
        Integer num = this.responseCode;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.storeDeeplink;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.fallbackDeeplink;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "ReferralDeeplinkResponse(responseCode=" + this.responseCode + ", storeDeeplink=" + this.storeDeeplink + ", fallbackDeeplink=" + this.fallbackDeeplink + ")";
    }

    public ReferralDeeplinkResponse(Integer num, String str, String str2) {
        this.responseCode = num;
        this.storeDeeplink = str;
        this.fallbackDeeplink = str2;
    }

    public /* synthetic */ ReferralDeeplinkResponse(Integer num, String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(num, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : str2);
    }

    public final Integer getResponseCode() {
        return this.responseCode;
    }

    public final String getStoreDeeplink() {
        return this.storeDeeplink;
    }

    public final String getFallbackDeeplink() {
        return this.fallbackDeeplink;
    }
}
