package com.aptoide.sdk.billing.webpayment;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WebPaymentResponseMapper.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\bJ\u000b\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003J&\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0005HÖ\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/aptoide/sdk/billing/webpayment/WebPaymentResponse;", "", "responseCode", "", "webPaymentUrl", "", "(Ljava/lang/Integer;Ljava/lang/String;)V", InAppPurchaseConstants.METHOD_GET_RESPONSE_CODE, "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getWebPaymentUrl", "()Ljava/lang/String;", "component1", "component2", "copy", "(Ljava/lang/Integer;Ljava/lang/String;)Lcom/aptoide/sdk/billing/webpayment/WebPaymentResponse;", "equals", "", "other", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class WebPaymentResponse {
    private final Integer responseCode;
    private final String webPaymentUrl;

    public static /* synthetic */ WebPaymentResponse copy$default(WebPaymentResponse webPaymentResponse, Integer num, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            num = webPaymentResponse.responseCode;
        }
        if ((i & 2) != 0) {
            str = webPaymentResponse.webPaymentUrl;
        }
        return webPaymentResponse.copy(num, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getResponseCode() {
        return this.responseCode;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getWebPaymentUrl() {
        return this.webPaymentUrl;
    }

    public final WebPaymentResponse copy(Integer responseCode, String webPaymentUrl) {
        return new WebPaymentResponse(responseCode, webPaymentUrl);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof WebPaymentResponse)) {
            return false;
        }
        WebPaymentResponse webPaymentResponse = (WebPaymentResponse) other;
        return Intrinsics.areEqual(this.responseCode, webPaymentResponse.responseCode) && Intrinsics.areEqual(this.webPaymentUrl, webPaymentResponse.webPaymentUrl);
    }

    public int hashCode() {
        Integer num = this.responseCode;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.webPaymentUrl;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "WebPaymentResponse(responseCode=" + this.responseCode + ", webPaymentUrl=" + this.webPaymentUrl + ")";
    }

    public WebPaymentResponse(Integer num, String str) {
        this.responseCode = num;
        this.webPaymentUrl = str;
    }

    public /* synthetic */ WebPaymentResponse(Integer num, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(num, (i & 2) != 0 ? null : str);
    }

    public final Integer getResponseCode() {
        return this.responseCode;
    }

    public final String getWebPaymentUrl() {
        return this.webPaymentUrl;
    }
}
