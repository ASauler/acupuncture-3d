package com.aptoide.sdk.billing.mappers;

import com.aptoide.sdk.billing.service.RequestResponse;
import com.aptoide.sdk.billing.utils.ServiceUtils;
import com.aptoide.sdk.core.analytics.SdkAnalyticsUtils;
import com.aptoide.sdk.core.analytics.events.SdkBackendRequestType;
import com.aptoide.sdk.core.analytics.events.SdkPurchaseFlowLabels;
import com.aptoide.sdk.core.logger.Logger;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import kotlin.KotlinNothingValueException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: PurchasesResponseMapper.kt */
/* JADX INFO: loaded from: classes.dex */
@kotlin.Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/billing/mappers/PurchasesResponseMapper;", "", "()V", "map", "Lcom/aptoide/sdk/billing/mappers/PurchasesResponse;", "response", "Lcom/aptoide/sdk/billing/service/RequestResponse;", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PurchasesResponseMapper {
    public final PurchasesResponse map(RequestResponse response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (!ServiceUtils.isSuccess(response.getResponseCode()) || response.getResponse() == null) {
            Logger.logError("Failed to obtain Purchase Response. ResponseCode: " + response.getResponseCode() + " | Cause: " + response.getException());
            return new PurchasesResponse(response.getResponseCode(), null, 2, null);
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            PurchasesResponseMapper purchasesResponseMapper = this;
            JSONObject jSONObject = new JSONObject(response.getResponse());
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(FirebaseAnalytics.Param.ITEMS);
            if (jSONArrayOptJSONArray != null) {
                Intrinsics.checkNotNull(jSONArrayOptJSONArray);
                try {
                    int length = jSONArrayOptJSONArray.length();
                    for (int i = 0; i < length; i++) {
                        try {
                            Result.Companion companion2 = Result.INSTANCE;
                            JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i);
                            String strOptString = jSONObject2.optString("uid");
                            String strOptString2 = jSONObject2.optString(SdkPurchaseFlowLabels.SKU);
                            String strOptString3 = jSONObject2.optString("state");
                            String strOptString4 = jSONObject2.optString("order_uid");
                            String strOptString5 = jSONObject2.optString("payload");
                            Intrinsics.checkNotNull(strOptString5);
                            boolean z = true;
                            if (!(strOptString5.length() > 0)) {
                                strOptString5 = null;
                            }
                            String strOptString6 = jSONObject2.optString("external_buyer_reference");
                            Intrinsics.checkNotNull(strOptString6);
                            if (strOptString6.length() <= 0) {
                                z = false;
                            }
                            String str = z ? strOptString6 : null;
                            String strOptString7 = jSONObject2.optString("created");
                            JSONObject jSONObject3 = jSONObject2.getJSONObject("verification");
                            String strOptString8 = jSONObject3.optString("type");
                            Intrinsics.checkNotNullExpressionValue(strOptString8, "optString(...)");
                            String strOptString9 = jSONObject3.optString("data");
                            Intrinsics.checkNotNullExpressionValue(strOptString9, "optString(...)");
                            String strOptString10 = jSONObject3.optString("signature");
                            Intrinsics.checkNotNullExpressionValue(strOptString10, "optString(...)");
                            Verification verification = new Verification(strOptString8, strOptString9, strOptString10);
                            Intrinsics.checkNotNull(strOptString);
                            Intrinsics.checkNotNull(strOptString2);
                            Intrinsics.checkNotNull(strOptString3);
                            Intrinsics.checkNotNull(strOptString4);
                            Intrinsics.checkNotNull(strOptString7);
                            Result.m911constructorimpl(Boolean.valueOf(arrayList.add(new Purchase(strOptString, strOptString2, strOptString3, strOptString4, strOptString5, str, strOptString7, verification))));
                        } catch (Throwable th) {
                            Result.Companion companion3 = Result.INSTANCE;
                            Result.m911constructorimpl(ResultKt.createFailure(th));
                        }
                    }
                } catch (Exception e) {
                    Logger.logError("There was an error mapping the Purchase response: " + e);
                    SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendBackendMappingFailureEvent(SdkBackendRequestType.PURCHASES, response.getResponse(), e.toString());
                }
            }
            return new PurchasesResponse(response.getResponseCode(), arrayList);
        } catch (Throwable th2) {
            Result.Companion companion4 = Result.INSTANCE;
            Throwable thM914exceptionOrNullimpl = Result.m914exceptionOrNullimpl(Result.m911constructorimpl(ResultKt.createFailure(th2)));
            if (thM914exceptionOrNullimpl == null) {
                throw new KotlinNothingValueException();
            }
            Logger.logError("There was an error mapping the List of Purchases response: " + new Exception(thM914exceptionOrNullimpl));
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendBackendMappingFailureEvent(SdkBackendRequestType.PURCHASES, response.getResponse(), new Exception(thM914exceptionOrNullimpl).toString());
            return new PurchasesResponse(response.getResponseCode(), null, 2, null);
        }
    }
}
