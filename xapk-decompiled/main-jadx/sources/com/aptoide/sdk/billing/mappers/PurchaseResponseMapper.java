package com.aptoide.sdk.billing.mappers;

import com.aptoide.sdk.billing.service.RequestResponse;
import com.aptoide.sdk.billing.utils.ServiceUtils;
import com.aptoide.sdk.core.analytics.SdkAnalyticsUtils;
import com.aptoide.sdk.core.analytics.events.SdkBackendRequestType;
import com.aptoide.sdk.core.analytics.events.SdkPurchaseFlowLabels;
import com.aptoide.sdk.core.logger.Logger;
import kotlin.KotlinNothingValueException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: compiled from: PurchaseResponseMapper.kt */
/* JADX INFO: loaded from: classes.dex */
@kotlin.Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/billing/mappers/PurchaseResponseMapper;", "", "()V", "map", "Lcom/aptoide/sdk/billing/mappers/PurchaseResponse;", "response", "Lcom/aptoide/sdk/billing/service/RequestResponse;", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PurchaseResponseMapper {
    public final PurchaseResponse map(RequestResponse response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (!ServiceUtils.isSuccess(response.getResponseCode()) || response.getResponse() == null) {
            Logger.logError("Failed to obtain Purchase Response. ResponseCode: " + response.getResponseCode() + " | Cause: " + response.getException());
            return new PurchaseResponse(response.getResponseCode(), null, 2, null);
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            PurchaseResponseMapper purchaseResponseMapper = this;
            try {
                JSONObject jSONObject = new JSONObject(response.getResponse());
                String strOptString = jSONObject.optString("uid");
                String strOptString2 = jSONObject.optString(SdkPurchaseFlowLabels.SKU);
                String strOptString3 = jSONObject.optString("state");
                String strOptString4 = jSONObject.optString("order_uid");
                String strOptString5 = jSONObject.optString("payload");
                Intrinsics.checkNotNull(strOptString5);
                boolean z = true;
                if (!(strOptString5.length() > 0)) {
                    strOptString5 = null;
                }
                String strOptString6 = jSONObject.optString("external_buyer_reference");
                Intrinsics.checkNotNull(strOptString6);
                if (strOptString6.length() <= 0) {
                    z = false;
                }
                String str = z ? strOptString6 : null;
                String strOptString7 = jSONObject.optString("created");
                JSONObject jSONObject2 = jSONObject.getJSONObject("verification");
                String strOptString8 = jSONObject2.optString("type");
                Intrinsics.checkNotNullExpressionValue(strOptString8, "optString(...)");
                String strOptString9 = jSONObject2.optString("data");
                Intrinsics.checkNotNullExpressionValue(strOptString9, "optString(...)");
                String strOptString10 = jSONObject2.optString("signature");
                Intrinsics.checkNotNullExpressionValue(strOptString10, "optString(...)");
                Verification verification = new Verification(strOptString8, strOptString9, strOptString10);
                int responseCode = response.getResponseCode();
                Intrinsics.checkNotNull(strOptString);
                Intrinsics.checkNotNull(strOptString2);
                Intrinsics.checkNotNull(strOptString3);
                Intrinsics.checkNotNull(strOptString4);
                Intrinsics.checkNotNull(strOptString7);
                return new PurchaseResponse(responseCode, new Purchase(strOptString, strOptString2, strOptString3, strOptString4, strOptString5, str, strOptString7, verification));
            } catch (Exception e) {
                SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendBackendMappingFailureEvent(SdkBackendRequestType.PURCHASE, response.getResponse(), e.toString());
                Logger.logError("There was an error mapping the Purchase response: " + e);
                return new PurchaseResponse(response.getResponseCode(), null, 2, null);
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Throwable thM914exceptionOrNullimpl = Result.m914exceptionOrNullimpl(Result.m911constructorimpl(ResultKt.createFailure(th)));
            if (thM914exceptionOrNullimpl == null) {
                throw new KotlinNothingValueException();
            }
            Logger.logError("There was an error mapping the List of Purchases response: " + new Exception(thM914exceptionOrNullimpl));
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendBackendMappingFailureEvent(SdkBackendRequestType.PURCHASE, response.getResponse(), new Exception(thM914exceptionOrNullimpl).toString());
            return new PurchaseResponse(response.getResponseCode(), null, 2, null);
        }
    }
}
