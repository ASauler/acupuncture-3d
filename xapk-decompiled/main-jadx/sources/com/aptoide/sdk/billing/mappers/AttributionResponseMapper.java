package com.aptoide.sdk.billing.mappers;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.aptoide.sdk.billing.service.RequestResponse;
import com.aptoide.sdk.billing.utils.ServiceUtils;
import com.aptoide.sdk.core.analytics.AnalyticsContent;
import com.aptoide.sdk.core.analytics.SdkAnalyticsUtils;
import com.aptoide.sdk.core.analytics.events.SdkBackendRequestType;
import com.aptoide.sdk.core.analytics.events.SdkInitializationLabels;
import com.aptoide.sdk.core.logger.Logger;
import kotlin.KotlinNothingValueException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: compiled from: AttributionResponseMapper.kt */
/* JADX INFO: loaded from: classes.dex */
@kotlin.Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/billing/mappers/AttributionResponseMapper;", "", "()V", "map", "Lcom/aptoide/sdk/billing/mappers/AttributionResponse;", "response", "Lcom/aptoide/sdk/billing/service/RequestResponse;", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AttributionResponseMapper {
    public final AttributionResponse map(RequestResponse response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (!ServiceUtils.isSuccess(response.getResponseCode()) || response.getResponse() == null) {
            Logger.logError("Failed to obtain Attribution Response. ResponseCode: " + response.getResponseCode() + " | Cause: " + response.getException());
            return new AttributionResponse(Integer.valueOf(response.getResponseCode()), null, null, null, null, null, null, null, null, TypedValues.PositionType.TYPE_POSITION_TYPE, null);
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            AttributionResponseMapper attributionResponseMapper = this;
            JSONObject jSONObject = new JSONObject(response.getResponse());
            String strOptString = jSONObject.optString(AnalyticsContent.GAME_PACKAGE_NAME);
            Intrinsics.checkNotNull(strOptString);
            boolean z = true;
            String str = strOptString.length() > 0 ? strOptString : null;
            String strOptString2 = jSONObject.optString(SdkInitializationLabels.OEMID);
            Intrinsics.checkNotNull(strOptString2);
            String str2 = strOptString2.length() > 0 ? strOptString2 : null;
            String strOptString3 = jSONObject.optString("guest_uid");
            Intrinsics.checkNotNull(strOptString3);
            String str3 = strOptString3.length() > 0 ? strOptString3 : null;
            String strOptString4 = jSONObject.optString(SdkInitializationLabels.UTM_SOURCE);
            Intrinsics.checkNotNull(strOptString4);
            String str4 = strOptString4.length() > 0 ? strOptString4 : null;
            String strOptString5 = jSONObject.optString(SdkInitializationLabels.UTM_MEDIUM);
            Intrinsics.checkNotNull(strOptString5);
            String str5 = strOptString5.length() > 0 ? strOptString5 : null;
            String strOptString6 = jSONObject.optString(SdkInitializationLabels.UTM_CAMPAIGN);
            Intrinsics.checkNotNull(strOptString6);
            String str6 = strOptString6.length() > 0 ? strOptString6 : null;
            String strOptString7 = jSONObject.optString(SdkInitializationLabels.UTM_TERM);
            Intrinsics.checkNotNull(strOptString7);
            String str7 = strOptString7.length() > 0 ? strOptString7 : null;
            String strOptString8 = jSONObject.optString(SdkInitializationLabels.UTM_CONTENT);
            Intrinsics.checkNotNull(strOptString8);
            if (strOptString8.length() <= 0) {
                z = false;
            }
            return new AttributionResponse(Integer.valueOf(response.getResponseCode()), str, str2, str3, str4, str5, str6, str7, z ? strOptString8 : null);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Throwable thM914exceptionOrNullimpl = Result.m914exceptionOrNullimpl(Result.m911constructorimpl(ResultKt.createFailure(th)));
            if (thM914exceptionOrNullimpl == null) {
                throw new KotlinNothingValueException();
            }
            Logger.logError("There was an error mapping the response.", new Exception(thM914exceptionOrNullimpl));
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendBackendMappingFailureEvent(SdkBackendRequestType.ATTRIBUTION, response.getResponse(), new Exception(thM914exceptionOrNullimpl).toString());
            return new AttributionResponse(Integer.valueOf(response.getResponseCode()), null, null, null, null, null, null, null, null, TypedValues.PositionType.TYPE_POSITION_TYPE, null);
        }
    }
}
