package com.aptoide.sdk.billing.mappers;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AttributionResponseMapper.kt */
/* JADX INFO: loaded from: classes.dex */
@kotlin.Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b \n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001Bo\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\rJ\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0012J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0005HÆ\u0003Jz\u0010#\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010$J\u0013\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010(\u001a\u00020\u0003HÖ\u0001J\t\u0010)\u001a\u00020\u0005HÖ\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000fR\u0013\u0010\f\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000fR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u000fR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u000fR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u000fR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u000f¨\u0006*"}, d2 = {"Lcom/aptoide/sdk/billing/mappers/AttributionResponse;", "", "responseCode", "", "packageName", "", "oemId", "walletId", "utmSource", "utmMedium", "utmCampaign", "utmTerm", "utmContent", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getOemId", "()Ljava/lang/String;", "getPackageName", InAppPurchaseConstants.METHOD_GET_RESPONSE_CODE, "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getUtmCampaign", "getUtmContent", "getUtmMedium", "getUtmSource", "getUtmTerm", "getWalletId", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aptoide/sdk/billing/mappers/AttributionResponse;", "equals", "", "other", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class AttributionResponse {
    private final String oemId;
    private final String packageName;
    private final Integer responseCode;
    private final String utmCampaign;
    private final String utmContent;
    private final String utmMedium;
    private final String utmSource;
    private final String utmTerm;
    private final String walletId;

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getResponseCode() {
        return this.responseCode;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getPackageName() {
        return this.packageName;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getOemId() {
        return this.oemId;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getWalletId() {
        return this.walletId;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getUtmSource() {
        return this.utmSource;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getUtmMedium() {
        return this.utmMedium;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getUtmCampaign() {
        return this.utmCampaign;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getUtmTerm() {
        return this.utmTerm;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getUtmContent() {
        return this.utmContent;
    }

    public final AttributionResponse copy(Integer responseCode, String packageName, String oemId, String walletId, String utmSource, String utmMedium, String utmCampaign, String utmTerm, String utmContent) {
        return new AttributionResponse(responseCode, packageName, oemId, walletId, utmSource, utmMedium, utmCampaign, utmTerm, utmContent);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AttributionResponse)) {
            return false;
        }
        AttributionResponse attributionResponse = (AttributionResponse) other;
        return Intrinsics.areEqual(this.responseCode, attributionResponse.responseCode) && Intrinsics.areEqual(this.packageName, attributionResponse.packageName) && Intrinsics.areEqual(this.oemId, attributionResponse.oemId) && Intrinsics.areEqual(this.walletId, attributionResponse.walletId) && Intrinsics.areEqual(this.utmSource, attributionResponse.utmSource) && Intrinsics.areEqual(this.utmMedium, attributionResponse.utmMedium) && Intrinsics.areEqual(this.utmCampaign, attributionResponse.utmCampaign) && Intrinsics.areEqual(this.utmTerm, attributionResponse.utmTerm) && Intrinsics.areEqual(this.utmContent, attributionResponse.utmContent);
    }

    public int hashCode() {
        Integer num = this.responseCode;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.packageName;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.oemId;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.walletId;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.utmSource;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.utmMedium;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.utmCampaign;
        int iHashCode7 = (iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.utmTerm;
        int iHashCode8 = (iHashCode7 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.utmContent;
        return iHashCode8 + (str8 != null ? str8.hashCode() : 0);
    }

    public String toString() {
        return "AttributionResponse(responseCode=" + this.responseCode + ", packageName=" + this.packageName + ", oemId=" + this.oemId + ", walletId=" + this.walletId + ", utmSource=" + this.utmSource + ", utmMedium=" + this.utmMedium + ", utmCampaign=" + this.utmCampaign + ", utmTerm=" + this.utmTerm + ", utmContent=" + this.utmContent + ")";
    }

    public AttributionResponse(Integer num, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        this.responseCode = num;
        this.packageName = str;
        this.oemId = str2;
        this.walletId = str3;
        this.utmSource = str4;
        this.utmMedium = str5;
        this.utmCampaign = str6;
        this.utmTerm = str7;
        this.utmContent = str8;
    }

    public /* synthetic */ AttributionResponse(Integer num, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(num, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? null : str4, (i & 32) != 0 ? null : str5, (i & 64) != 0 ? null : str6, (i & 128) != 0 ? null : str7, (i & 256) == 0 ? str8 : null);
    }

    public final Integer getResponseCode() {
        return this.responseCode;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final String getOemId() {
        return this.oemId;
    }

    public final String getWalletId() {
        return this.walletId;
    }

    public final String getUtmSource() {
        return this.utmSource;
    }

    public final String getUtmMedium() {
        return this.utmMedium;
    }

    public final String getUtmCampaign() {
        return this.utmCampaign;
    }

    public final String getUtmTerm() {
        return this.utmTerm;
    }

    public final String getUtmContent() {
        return this.utmContent;
    }
}
