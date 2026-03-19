package com.aptoide.sdk.billing.mappers;

import com.aptoide.sdk.billing.service.RequestResponse;
import com.aptoide.sdk.billing.utils.ServiceUtils;
import com.aptoide.sdk.core.analytics.SdkAnalyticsUtils;
import com.aptoide.sdk.core.analytics.events.SdkBackendRequestType;
import com.aptoide.sdk.core.analytics.events.SdkPurchaseFlowLabels;
import com.aptoide.sdk.core.logger.Logger;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: compiled from: NewVersionAvailableResponseMapper.kt */
/* JADX INFO: loaded from: classes.dex */
@kotlin.Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/billing/mappers/NewVersionAvailableResponseMapper;", "", "()V", "map", "Lcom/aptoide/sdk/billing/mappers/NewVersionAvailableResponse;", "response", "Lcom/aptoide/sdk/billing/service/RequestResponse;", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class NewVersionAvailableResponseMapper {
    public final NewVersionAvailableResponse map(RequestResponse response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (!ServiceUtils.isSuccess(response.getResponseCode()) || response.getResponse() == null) {
            Logger.logError("Failed to obtain New Version Available Response. ResponseCode: " + response.getResponseCode() + " | Cause: " + response.getException());
            return new NewVersionAvailableResponse(Integer.valueOf(response.getResponseCode()), false, 2, null);
        }
        try {
            JSONObject jSONObject = new JSONObject(response.getResponse());
            boolean zOptBoolean = jSONObject.optBoolean("is_new_version_available", false);
            String strOptString = jSONObject.optString(SdkPurchaseFlowLabels.FAILURE_MESSAGE);
            Intrinsics.checkNotNull(strOptString);
            if (!(strOptString.length() > 0)) {
                strOptString = null;
            }
            if (strOptString != null) {
                throw new UnsupportedOperationException(strOptString);
            }
            return new NewVersionAvailableResponse(Integer.valueOf(response.getResponseCode()), zOptBoolean);
        } catch (Exception e) {
            Logger.logError("There was an error mapping the response.", e);
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendBackendMappingFailureEvent(SdkBackendRequestType.NEW_VERSION_AVAILABLE, response.getResponse(), e.toString());
            return new NewVersionAvailableResponse(Integer.valueOf(response.getResponseCode()), false, 2, null);
        }
    }
}
