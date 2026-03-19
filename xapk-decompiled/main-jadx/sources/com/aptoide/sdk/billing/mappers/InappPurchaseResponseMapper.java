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

/* JADX INFO: compiled from: InappPurchaseResponseMapper.kt */
/* JADX INFO: loaded from: classes.dex */
@kotlin.Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponseMapper;", "", "()V", "map", "Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;", "response", "Lcom/aptoide/sdk/billing/service/RequestResponse;", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class InappPurchaseResponseMapper {
    public final InappPurchaseResponse map(RequestResponse response) {
        Buyer buyer;
        Intrinsics.checkNotNullParameter(response, "response");
        if (!ServiceUtils.isSuccess(response.getResponseCode()) || response.getResponse() == null) {
            Logger.logError("Failed to obtain Purchase Response. ResponseCode: " + response.getResponseCode() + " | Cause: " + response.getException());
            return new InappPurchaseResponse(Integer.valueOf(response.getResponseCode()), null, null, null, null, null, null, null, null, null, null, 2046, null);
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            InappPurchaseResponseMapper inappPurchaseResponseMapper = this;
            JSONObject jSONObject = new JSONObject(response.getResponse());
            String strOptString = jSONObject.optString("uid");
            Intrinsics.checkNotNull(strOptString);
            boolean z = true;
            Order order = null;
            String str = strOptString.length() > 0 ? strOptString : null;
            String strOptString2 = jSONObject.optString(SdkPurchaseFlowLabels.SKU);
            Intrinsics.checkNotNull(strOptString2);
            String str2 = strOptString2.length() > 0 ? strOptString2 : null;
            String strOptString3 = jSONObject.optString("domain");
            Intrinsics.checkNotNull(strOptString3);
            String str3 = strOptString3.length() > 0 ? strOptString3 : null;
            String strOptString4 = jSONObject.optString("type");
            Intrinsics.checkNotNull(strOptString4);
            String str4 = strOptString4.length() > 0 ? strOptString4 : null;
            String strOptString5 = jSONObject.optString("status");
            Intrinsics.checkNotNull(strOptString5);
            String str5 = strOptString5.length() > 0 ? strOptString5 : null;
            String strOptString6 = jSONObject.optString("state");
            Intrinsics.checkNotNull(strOptString6);
            String str6 = strOptString6.length() > 0 ? strOptString6 : null;
            String strOptString7 = jSONObject.optString("payload");
            Intrinsics.checkNotNull(strOptString7);
            String str7 = strOptString7.length() > 0 ? strOptString7 : null;
            String strOptString8 = jSONObject.optString("created");
            Intrinsics.checkNotNull(strOptString8);
            String str8 = strOptString8.length() > 0 ? strOptString8 : null;
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("buyer");
            if (jSONObjectOptJSONObject != null) {
                Intrinsics.checkNotNull(jSONObjectOptJSONObject);
                String strOptString9 = jSONObjectOptJSONObject.optString("type");
                Intrinsics.checkNotNull(strOptString9);
                if (!(strOptString9.length() > 0)) {
                    strOptString9 = null;
                }
                String strOptString10 = jSONObjectOptJSONObject.optString("reference");
                Intrinsics.checkNotNull(strOptString10);
                if (!(strOptString10.length() > 0)) {
                    strOptString10 = null;
                }
                buyer = new Buyer(strOptString9, strOptString10);
            } else {
                buyer = null;
            }
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("order");
            if (jSONObjectOptJSONObject2 != null) {
                Intrinsics.checkNotNull(jSONObjectOptJSONObject2);
                String strOptString11 = jSONObjectOptJSONObject2.optString("uid");
                Intrinsics.checkNotNull(strOptString11);
                String str9 = strOptString11.length() > 0 ? strOptString11 : null;
                String strOptString12 = jSONObjectOptJSONObject2.optString("gateway");
                Intrinsics.checkNotNull(strOptString12);
                String str10 = strOptString12.length() > 0 ? strOptString12 : null;
                String strOptString13 = jSONObjectOptJSONObject2.optString("reference");
                Intrinsics.checkNotNull(strOptString13);
                String str11 = strOptString13.length() > 0 ? strOptString13 : null;
                String strOptString14 = jSONObjectOptJSONObject2.optString("status");
                Intrinsics.checkNotNull(strOptString14);
                String str12 = strOptString14.length() > 0 ? strOptString14 : null;
                String strOptString15 = jSONObjectOptJSONObject2.optString("created");
                Intrinsics.checkNotNull(strOptString15);
                if (strOptString15.length() <= 0) {
                    z = false;
                }
                order = new Order(str9, str10, str11, str12, z ? strOptString15 : null);
            }
            return new InappPurchaseResponse(Integer.valueOf(response.getResponseCode()), str, str2, str3, str4, str5, str6, str7, str8, buyer, order);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Throwable thM914exceptionOrNullimpl = Result.m914exceptionOrNullimpl(Result.m911constructorimpl(ResultKt.createFailure(th)));
            if (thM914exceptionOrNullimpl == null) {
                throw new KotlinNothingValueException();
            }
            Logger.logError("There was an error mapping the response.", new Exception(thM914exceptionOrNullimpl));
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendBackendMappingFailureEvent(SdkBackendRequestType.INAPP_PURCHASE, response.getResponse(), new Exception(thM914exceptionOrNullimpl).toString());
            return new InappPurchaseResponse(Integer.valueOf(response.getResponseCode()), null, null, null, null, null, null, null, null, null, null, 2046, null);
        }
    }
}
