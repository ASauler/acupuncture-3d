package com.aptoide.sdk.billing.mappers;

import com.aptoide.sdk.billing.service.RequestResponse;
import com.aptoide.sdk.billing.utils.ServiceUtils;
import com.aptoide.sdk.core.analytics.SdkAnalyticsUtils;
import com.aptoide.sdk.core.analytics.events.SdkBackendRequestType;
import com.aptoide.sdk.core.logger.Logger;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: compiled from: ReferralDeeplinkResponseMapper.kt */
/* JADX INFO: loaded from: classes.dex */
@kotlin.Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/billing/mappers/ReferralDeeplinkResponseMapper;", "", "()V", "map", "Lcom/aptoide/sdk/billing/mappers/ReferralDeeplinkResponse;", "response", "Lcom/aptoide/sdk/billing/service/RequestResponse;", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReferralDeeplinkResponseMapper {
    public final ReferralDeeplinkResponse map(RequestResponse response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (!ServiceUtils.isSuccess(response.getResponseCode()) || response.getResponse() == null) {
            Logger.logError("Failed to obtain Referral Deeplink Response. ResponseCode: " + response.getResponseCode() + " | Cause: " + response.getException());
            return new ReferralDeeplinkResponse(Integer.valueOf(response.getResponseCode()), null, null, 6, null);
        }
        try {
            JSONObject jSONObject = new JSONObject(response.getResponse());
            String strOptString = jSONObject.optString("store_deeplink");
            Intrinsics.checkNotNull(strOptString);
            boolean z = true;
            if (!(strOptString.length() > 0)) {
                strOptString = null;
            }
            String strOptString2 = jSONObject.optString("fallback_deeplink");
            Intrinsics.checkNotNull(strOptString2);
            if (strOptString2.length() <= 0) {
                z = false;
            }
            return new ReferralDeeplinkResponse(Integer.valueOf(response.getResponseCode()), strOptString, z ? strOptString2 : null);
        } catch (Exception e) {
            Logger.logError("There was an error mapping the response.", e);
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendBackendMappingFailureEvent(SdkBackendRequestType.STORE_DEEPLINK, response.getResponse(), e.toString());
            return new ReferralDeeplinkResponse(Integer.valueOf(response.getResponseCode()), null, null, 6, null);
        }
    }
}
