package com.aptoide.sdk.billing.webpayment;

import com.aptoide.sdk.billing.service.RequestResponse;
import com.aptoide.sdk.billing.utils.ServiceUtils;
import com.aptoide.sdk.core.analytics.SdkAnalyticsUtils;
import com.aptoide.sdk.core.analytics.events.SdkBackendRequestType;
import com.aptoide.sdk.core.logger.Logger;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: compiled from: WebPaymentResponseMapper.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/billing/webpayment/WebPaymentResponseMapper;", "", "()V", "map", "Lcom/aptoide/sdk/billing/webpayment/WebPaymentResponse;", "response", "Lcom/aptoide/sdk/billing/service/RequestResponse;", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class WebPaymentResponseMapper {
    public final WebPaymentResponse map(RequestResponse response) {
        Object objM911constructorimpl;
        Intrinsics.checkNotNullParameter(response, "response");
        Object obj = null;
        if (!ServiceUtils.isSuccess(response.getResponseCode()) || response.getResponse() == null) {
            Logger.logError("Failed to obtain WebPaymentUrl Response. ResponseCode: " + response.getResponseCode() + " | Cause: " + response.getException());
            return new WebPaymentResponse(Integer.valueOf(response.getResponseCode()), null, 2, null);
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            WebPaymentResponseMapper webPaymentResponseMapper = this;
            objM911constructorimpl = Result.m911constructorimpl(new JSONObject(response.getResponse()).getString("payment_url"));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM911constructorimpl = Result.m911constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM914exceptionOrNullimpl = Result.m914exceptionOrNullimpl(objM911constructorimpl);
        if (thM914exceptionOrNullimpl == null) {
            obj = objM911constructorimpl;
        } else {
            Logger.logError("There was an error mapping the response.", new Exception(thM914exceptionOrNullimpl));
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendBackendMappingFailureEvent(SdkBackendRequestType.WEB_PAYMENT_URL, response.getResponse(), new Exception(thM914exceptionOrNullimpl).toString());
        }
        return new WebPaymentResponse(Integer.valueOf(response.getResponseCode()), (String) obj);
    }
}
