package com.aptoide.sdk.billing.payflow;

import com.aptoide.sdk.billing.AptoideBillingClient;
import com.aptoide.sdk.billing.payflow.models.PayflowMethodResponse;
import com.aptoide.sdk.billing.service.RequestResponse;
import com.aptoide.sdk.billing.utils.ServiceUtils;
import com.aptoide.sdk.core.analytics.SdkAnalyticsUtils;
import com.aptoide.sdk.core.analytics.events.SdkBackendRequestType;
import com.aptoide.sdk.core.analytics.matomo.models.CustomProperty;
import com.aptoide.sdk.core.analytics.matomo.models.MatomoDetails;
import com.aptoide.sdk.core.analytics.severity.AnalyticsFlowSeverityLevel;
import com.aptoide.sdk.core.logger.Logger;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: PayflowResponseMapper.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ$\u0010\f\u001a\u0016\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rj\n\u0012\u0004\u0012\u00020\u000e\u0018\u0001`\u000f2\u0006\u0010\n\u001a\u00020\u000bH\u0002J$\u0010\u0010\u001a\u0016\u0012\u0004\u0012\u00020\u0011\u0018\u00010\rj\n\u0012\u0004\u0012\u00020\u0011\u0018\u0001`\u000f2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\n\u001a\u00020\u000bH\u0002J \u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u00150\rj\b\u0012\u0004\u0012\u00020\u0015`\u000f2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u001c\u0010\u0016\u001a\t\u0018\u00010\u0017¢\u0006\u0002\b\u00182\u0006\u0010\u0019\u001a\u00020\u0017H\u0002¢\u0006\u0002\u0010\u001a¨\u0006\u001b"}, d2 = {"Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper;", "", "()V", "getMatomoApiKey", "", "matomoDetailsJsonObject", "Lorg/json/JSONObject;", "getMatomoUrl", "map", "Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;", "response", "Lcom/aptoide/sdk/billing/service/RequestResponse;", "mapAnalyticsFlowSeverityLevels", "Ljava/util/ArrayList;", "Lcom/aptoide/sdk/core/analytics/severity/AnalyticsFlowSeverityLevel;", "Lkotlin/collections/ArrayList;", "mapMatomoCustomProperties", "Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;", "mapMatomoDetails", "Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;", "mapPaymentFlowMethods", "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;", "mapToFeatureType", "", "Lorg/jetbrains/annotations/NotNull;", "featureTypeInt", "(I)Ljava/lang/Integer;", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PayflowResponseMapper {
    public final PayflowMethodResponse map(RequestResponse response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (!ServiceUtils.isSuccess(response.getResponseCode()) || response.getResponse() == null) {
            Logger.logError("Failed to obtain Payflow Response. ResponseCode: " + response.getResponseCode() + " | Cause: " + response.getException());
            return new PayflowMethodResponse(Integer.valueOf(response.getResponseCode()), new ArrayList(), null, null);
        }
        return new PayflowMethodResponse(Integer.valueOf(response.getResponseCode()), mapPaymentFlowMethods(response), mapAnalyticsFlowSeverityLevels(response), mapMatomoDetails(response));
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x003e A[Catch: all -> 0x0048, TryCatch #0 {all -> 0x0048, blocks: (B:2:0x0000, B:4:0x0016, B:8:0x0043, B:7:0x003e), top: B:18:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.ArrayList<com.aptoide.sdk.billing.payflow.models.PaymentFlowMethod> mapPaymentFlowMethods(com.aptoide.sdk.billing.service.RequestResponse r5) {
        /*
            r4 = this;
            kotlin.Result$Companion r0 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L48
            r0 = r4
            com.aptoide.sdk.billing.payflow.PayflowResponseMapper r0 = (com.aptoide.sdk.billing.payflow.PayflowResponseMapper) r0     // Catch: java.lang.Throwable -> L48
            org.json.JSONObject r0 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L48
            java.lang.String r1 = r5.getResponse()     // Catch: java.lang.Throwable -> L48
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L48
            java.lang.String r1 = "payment_methods"
            org.json.JSONObject r0 = r0.optJSONObject(r1)     // Catch: java.lang.Throwable -> L48
            if (r0 == 0) goto L3e
            java.util.Iterator r1 = r0.keys()     // Catch: java.lang.Throwable -> L48
            java.lang.String r2 = "keys(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)     // Catch: java.lang.Throwable -> L48
            kotlin.sequences.Sequence r1 = kotlin.sequences.SequencesKt.asSequence(r1)     // Catch: java.lang.Throwable -> L48
            com.aptoide.sdk.billing.payflow.PayflowResponseMapper$mapPaymentFlowMethods$1$1$1 r2 = new com.aptoide.sdk.billing.payflow.PayflowResponseMapper$mapPaymentFlowMethods$1$1$1     // Catch: java.lang.Throwable -> L48
            r2.<init>()     // Catch: java.lang.Throwable -> L48
            kotlin.jvm.functions.Function1 r2 = (kotlin.jvm.functions.Function1) r2     // Catch: java.lang.Throwable -> L48
            kotlin.sequences.Sequence r0 = kotlin.sequences.SequencesKt.mapNotNull(r1, r2)     // Catch: java.lang.Throwable -> L48
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L48
            r1.<init>()     // Catch: java.lang.Throwable -> L48
            java.util.Collection r1 = (java.util.Collection) r1     // Catch: java.lang.Throwable -> L48
            java.util.Collection r0 = kotlin.sequences.SequencesKt.toCollection(r0, r1)     // Catch: java.lang.Throwable -> L48
            java.util.ArrayList r0 = (java.util.ArrayList) r0     // Catch: java.lang.Throwable -> L48
            if (r0 == 0) goto L3e
            goto L43
        L3e:
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L48
            r0.<init>()     // Catch: java.lang.Throwable -> L48
        L43:
            java.lang.Object r0 = kotlin.Result.m911constructorimpl(r0)     // Catch: java.lang.Throwable -> L48
            goto L53
        L48:
            r0 = move-exception
            kotlin.Result$Companion r1 = kotlin.Result.INSTANCE
            java.lang.Object r0 = kotlin.ResultKt.createFailure(r0)
            java.lang.Object r0 = kotlin.Result.m911constructorimpl(r0)
        L53:
            java.lang.Throwable r1 = kotlin.Result.m914exceptionOrNullimpl(r0)
            if (r1 != 0) goto L5a
            goto L81
        L5a:
            java.lang.Exception r0 = new java.lang.Exception
            r0.<init>(r1)
            java.lang.String r2 = "There was an error mapping the response."
            com.aptoide.sdk.core.logger.Logger.logError(r2, r0)
            com.aptoide.sdk.core.analytics.SdkAnalyticsUtils r0 = com.aptoide.sdk.core.analytics.SdkAnalyticsUtils.INSTANCE
            com.aptoide.sdk.core.analytics.SdkAnalytics r0 = r0.getSdkAnalytics()
            com.aptoide.sdk.core.analytics.events.SdkBackendRequestType r2 = com.aptoide.sdk.core.analytics.events.SdkBackendRequestType.PAYMENT_FLOW
            java.lang.String r5 = r5.getResponse()
            java.lang.Exception r3 = new java.lang.Exception
            r3.<init>(r1)
            java.lang.String r1 = r3.toString()
            r0.sendBackendMappingFailureEvent(r2, r5, r1)
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
        L81:
            java.util.ArrayList r0 = (java.util.ArrayList) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.aptoide.sdk.billing.payflow.PayflowResponseMapper.mapPaymentFlowMethods(com.aptoide.sdk.billing.service.RequestResponse):java.util.ArrayList");
    }

    private final ArrayList<AnalyticsFlowSeverityLevel> mapAnalyticsFlowSeverityLevels(RequestResponse response) {
        Object objM911constructorimpl;
        ArrayList arrayList;
        Object obj = null;
        try {
            Result.Companion companion = Result.INSTANCE;
            PayflowResponseMapper payflowResponseMapper = this;
            JSONArray jSONArrayOptJSONArray = new JSONObject(response.getResponse()).optJSONArray("analytics_flow_severity_levels");
            if (jSONArrayOptJSONArray != null) {
                arrayList = new ArrayList();
                int length = jSONArrayOptJSONArray.length();
                for (int i = 0; i < length; i++) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                    String strOptString = jSONObjectOptJSONObject.optString("flow");
                    Intrinsics.checkNotNullExpressionValue(strOptString, "optString(...)");
                    arrayList.add(new AnalyticsFlowSeverityLevel(strOptString, jSONObjectOptJSONObject.optInt("severity_level")));
                }
            } else {
                arrayList = null;
            }
            objM911constructorimpl = Result.m911constructorimpl(arrayList);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM911constructorimpl = Result.m911constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM914exceptionOrNullimpl = Result.m914exceptionOrNullimpl(objM911constructorimpl);
        if (thM914exceptionOrNullimpl == null) {
            obj = objM911constructorimpl;
        } else {
            Logger.logError("There was an error mapping the AnalyticsFlowSeverityLevels.", new Exception(thM914exceptionOrNullimpl));
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendBackendMappingFailureEvent(SdkBackendRequestType.PAYMENT_FLOW, response.getResponse(), new Exception(thM914exceptionOrNullimpl).toString());
        }
        return (ArrayList) obj;
    }

    private final MatomoDetails mapMatomoDetails(RequestResponse response) {
        Object objM911constructorimpl;
        MatomoDetails matomoDetails;
        Object obj = null;
        try {
            Result.Companion companion = Result.INSTANCE;
            PayflowResponseMapper payflowResponseMapper = this;
            JSONObject jSONObjectOptJSONObject = new JSONObject(response.getResponse()).optJSONObject("matomo_details");
            if (jSONObjectOptJSONObject != null) {
                Intrinsics.checkNotNull(jSONObjectOptJSONObject);
                matomoDetails = new MatomoDetails(mapMatomoCustomProperties(jSONObjectOptJSONObject), getMatomoUrl(jSONObjectOptJSONObject), getMatomoApiKey(jSONObjectOptJSONObject));
            } else {
                matomoDetails = null;
            }
            objM911constructorimpl = Result.m911constructorimpl(matomoDetails);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM911constructorimpl = Result.m911constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM914exceptionOrNullimpl = Result.m914exceptionOrNullimpl(objM911constructorimpl);
        if (thM914exceptionOrNullimpl == null) {
            obj = objM911constructorimpl;
        } else {
            Logger.logError("There was an error mapping the MatomoDetails.", new Exception(thM914exceptionOrNullimpl));
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendBackendMappingFailureEvent(SdkBackendRequestType.PAYMENT_FLOW, response.getResponse(), new Exception(thM914exceptionOrNullimpl).toString());
        }
        return (MatomoDetails) obj;
    }

    private final ArrayList<CustomProperty> mapMatomoCustomProperties(JSONObject matomoDetailsJsonObject) {
        Object objM911constructorimpl;
        ArrayList arrayList;
        Object obj = null;
        try {
            Result.Companion companion = Result.INSTANCE;
            PayflowResponseMapper payflowResponseMapper = this;
            JSONArray jSONArrayOptJSONArray = matomoDetailsJsonObject.optJSONArray("matomo_custom_properties");
            if (jSONArrayOptJSONArray != null) {
                arrayList = new ArrayList();
                int length = jSONArrayOptJSONArray.length();
                for (int i = 0; i < length; i++) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                    arrayList.add(new CustomProperty(jSONObjectOptJSONObject.optInt("sdk_id"), jSONObjectOptJSONObject.optInt("matomo_id")));
                }
            } else {
                arrayList = null;
            }
            objM911constructorimpl = Result.m911constructorimpl(arrayList);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM911constructorimpl = Result.m911constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM914exceptionOrNullimpl = Result.m914exceptionOrNullimpl(objM911constructorimpl);
        if (thM914exceptionOrNullimpl == null) {
            obj = objM911constructorimpl;
        } else {
            Logger.logError("There was an error mapping the AnalyticsFlowSeverityLevels.", new Exception(thM914exceptionOrNullimpl));
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendBackendMappingFailureEvent(SdkBackendRequestType.PAYMENT_FLOW, matomoDetailsJsonObject.toString(), new Exception(thM914exceptionOrNullimpl).toString());
        }
        return (ArrayList) obj;
    }

    private final String getMatomoUrl(JSONObject matomoDetailsJsonObject) {
        Object objM911constructorimpl;
        Object obj = null;
        try {
            Result.Companion companion = Result.INSTANCE;
            PayflowResponseMapper payflowResponseMapper = this;
            String strOptString = matomoDetailsJsonObject.optString("matomo_url");
            Intrinsics.checkNotNull(strOptString);
            if (!(strOptString.length() > 0)) {
                strOptString = null;
            }
            objM911constructorimpl = Result.m911constructorimpl(strOptString);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM911constructorimpl = Result.m911constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM914exceptionOrNullimpl = Result.m914exceptionOrNullimpl(objM911constructorimpl);
        if (thM914exceptionOrNullimpl == null) {
            obj = objM911constructorimpl;
        } else {
            Logger.logError("There was an error mapping the MatomoUrl.", new Exception(thM914exceptionOrNullimpl));
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendBackendMappingFailureEvent(SdkBackendRequestType.PAYMENT_FLOW, matomoDetailsJsonObject.toString(), new Exception(thM914exceptionOrNullimpl).toString());
        }
        return (String) obj;
    }

    private final String getMatomoApiKey(JSONObject matomoDetailsJsonObject) {
        Object objM911constructorimpl;
        Object obj = null;
        try {
            Result.Companion companion = Result.INSTANCE;
            PayflowResponseMapper payflowResponseMapper = this;
            String strOptString = matomoDetailsJsonObject.optString("matomo_api_key");
            Intrinsics.checkNotNull(strOptString);
            if (!(strOptString.length() > 0)) {
                strOptString = null;
            }
            objM911constructorimpl = Result.m911constructorimpl(strOptString);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM911constructorimpl = Result.m911constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM914exceptionOrNullimpl = Result.m914exceptionOrNullimpl(objM911constructorimpl);
        if (thM914exceptionOrNullimpl == null) {
            obj = objM911constructorimpl;
        } else {
            Logger.logError("There was an error mapping the MatomoApiKey.", new Exception(thM914exceptionOrNullimpl));
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendBackendMappingFailureEvent(SdkBackendRequestType.PAYMENT_FLOW, matomoDetailsJsonObject.toString(), new Exception(thM914exceptionOrNullimpl).toString());
        }
        return (String) obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Integer mapToFeatureType(int featureTypeInt) {
        if (featureTypeInt == 0) {
            return AptoideBillingClient.FeatureType.SUBSCRIPTIONS;
        }
        if (featureTypeInt == 1) {
            return AptoideBillingClient.FeatureType.OBFUSCATED_ACCOUNT_ID;
        }
        if (featureTypeInt != 2) {
            return null;
        }
        return AptoideBillingClient.FeatureType.FREE_TRIALS;
    }
}
