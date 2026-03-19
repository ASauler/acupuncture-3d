package com.aptoide.sdk.billing.payflow.models;

import com.aptoide.sdk.core.analytics.matomo.models.MatomoDetails;
import com.aptoide.sdk.core.analytics.severity.AnalyticsFlowSeverityLevel;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PayflowMethodResponse.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BQ\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u001a\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001`\u0007\u0012\u001a\u0010\b\u001a\u0016\u0012\u0004\u0012\u00020\t\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\t\u0018\u0001`\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\fJ\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0013J\u001d\u0010\u0016\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001`\u0007HÆ\u0003J\u001d\u0010\u0017\u001a\u0016\u0012\u0004\u0012\u00020\t\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\t\u0018\u0001`\u0007HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u000bHÆ\u0003Jb\u0010\u0019\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u001c\b\u0002\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001`\u00072\u001c\b\u0002\u0010\b\u001a\u0016\u0012\u0004\u0012\u00020\t\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\t\u0018\u0001`\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bHÆ\u0001¢\u0006\u0002\u0010\u001aJ\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001f\u001a\u00020 HÖ\u0001R%\u0010\b\u001a\u0016\u0012\u0004\u0012\u00020\t\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\t\u0018\u0001`\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R%\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001`\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0012\u0010\u0013¨\u0006!"}, d2 = {"Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;", "", "responseCode", "", "paymentFlowList", "Ljava/util/ArrayList;", "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;", "Lkotlin/collections/ArrayList;", "analyticsFlowSeverityLevels", "Lcom/aptoide/sdk/core/analytics/severity/AnalyticsFlowSeverityLevel;", "matomoDetails", "Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;", "(Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;)V", "getAnalyticsFlowSeverityLevels", "()Ljava/util/ArrayList;", "getMatomoDetails", "()Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;", "getPaymentFlowList", InAppPurchaseConstants.METHOD_GET_RESPONSE_CODE, "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;)Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;", "equals", "", "other", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class PayflowMethodResponse {
    private final ArrayList<AnalyticsFlowSeverityLevel> analyticsFlowSeverityLevels;
    private final MatomoDetails matomoDetails;
    private final ArrayList<PaymentFlowMethod> paymentFlowList;
    private final Integer responseCode;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PayflowMethodResponse copy$default(PayflowMethodResponse payflowMethodResponse, Integer num, ArrayList arrayList, ArrayList arrayList2, MatomoDetails matomoDetails, int i, Object obj) {
        if ((i & 1) != 0) {
            num = payflowMethodResponse.responseCode;
        }
        if ((i & 2) != 0) {
            arrayList = payflowMethodResponse.paymentFlowList;
        }
        if ((i & 4) != 0) {
            arrayList2 = payflowMethodResponse.analyticsFlowSeverityLevels;
        }
        if ((i & 8) != 0) {
            matomoDetails = payflowMethodResponse.matomoDetails;
        }
        return payflowMethodResponse.copy(num, arrayList, arrayList2, matomoDetails);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getResponseCode() {
        return this.responseCode;
    }

    public final ArrayList<PaymentFlowMethod> component2() {
        return this.paymentFlowList;
    }

    public final ArrayList<AnalyticsFlowSeverityLevel> component3() {
        return this.analyticsFlowSeverityLevels;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final MatomoDetails getMatomoDetails() {
        return this.matomoDetails;
    }

    public final PayflowMethodResponse copy(Integer responseCode, ArrayList<PaymentFlowMethod> paymentFlowList, ArrayList<AnalyticsFlowSeverityLevel> analyticsFlowSeverityLevels, MatomoDetails matomoDetails) {
        return new PayflowMethodResponse(responseCode, paymentFlowList, analyticsFlowSeverityLevels, matomoDetails);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PayflowMethodResponse)) {
            return false;
        }
        PayflowMethodResponse payflowMethodResponse = (PayflowMethodResponse) other;
        return Intrinsics.areEqual(this.responseCode, payflowMethodResponse.responseCode) && Intrinsics.areEqual(this.paymentFlowList, payflowMethodResponse.paymentFlowList) && Intrinsics.areEqual(this.analyticsFlowSeverityLevels, payflowMethodResponse.analyticsFlowSeverityLevels) && Intrinsics.areEqual(this.matomoDetails, payflowMethodResponse.matomoDetails);
    }

    public int hashCode() {
        Integer num = this.responseCode;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        ArrayList<PaymentFlowMethod> arrayList = this.paymentFlowList;
        int iHashCode2 = (iHashCode + (arrayList == null ? 0 : arrayList.hashCode())) * 31;
        ArrayList<AnalyticsFlowSeverityLevel> arrayList2 = this.analyticsFlowSeverityLevels;
        int iHashCode3 = (iHashCode2 + (arrayList2 == null ? 0 : arrayList2.hashCode())) * 31;
        MatomoDetails matomoDetails = this.matomoDetails;
        return iHashCode3 + (matomoDetails != null ? matomoDetails.hashCode() : 0);
    }

    public String toString() {
        return "PayflowMethodResponse(responseCode=" + this.responseCode + ", paymentFlowList=" + this.paymentFlowList + ", analyticsFlowSeverityLevels=" + this.analyticsFlowSeverityLevels + ", matomoDetails=" + this.matomoDetails + ")";
    }

    public PayflowMethodResponse(Integer num, ArrayList<PaymentFlowMethod> arrayList, ArrayList<AnalyticsFlowSeverityLevel> arrayList2, MatomoDetails matomoDetails) {
        this.responseCode = num;
        this.paymentFlowList = arrayList;
        this.analyticsFlowSeverityLevels = arrayList2;
        this.matomoDetails = matomoDetails;
    }

    public final Integer getResponseCode() {
        return this.responseCode;
    }

    public final ArrayList<PaymentFlowMethod> getPaymentFlowList() {
        return this.paymentFlowList;
    }

    public final ArrayList<AnalyticsFlowSeverityLevel> getAnalyticsFlowSeverityLevels() {
        return this.analyticsFlowSeverityLevels;
    }

    public final MatomoDetails getMatomoDetails() {
        return this.matomoDetails;
    }
}
