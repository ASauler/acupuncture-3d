package com.aptoide.sdk.billing.mappers;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.aptoide.sdk.billing.AppcV2;
import com.aptoide.sdk.billing.PriceV2;
import com.aptoide.sdk.billing.SkuDetailsV2;
import com.aptoide.sdk.billing.Trial;
import com.aptoide.sdk.billing.service.RequestResponse;
import com.aptoide.sdk.billing.utils.ServiceUtils;
import com.aptoide.sdk.core.analytics.SdkAnalyticsUtils;
import com.aptoide.sdk.core.analytics.events.SdkBackendRequestType;
import com.aptoide.sdk.core.analytics.events.SdkPurchaseFlowLabels;
import com.aptoide.sdk.core.logger.Logger;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.messaging.Constants;
import java.util.ArrayList;
import kotlin.KotlinNothingValueException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: SkuDetailsResponseMapper.kt */
/* JADX INFO: loaded from: classes.dex */
@kotlin.Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/billing/mappers/SkuDetailsResponseMapper;", "", "()V", "map", "Lcom/aptoide/sdk/billing/mappers/SkuDetailsResponse;", "response", "Lcom/aptoide/sdk/billing/service/RequestResponse;", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SkuDetailsResponseMapper {
    public final SkuDetailsResponse map(RequestResponse response) {
        Trial trial;
        Intrinsics.checkNotNullParameter(response, "response");
        if (!ServiceUtils.isSuccess(response.getResponseCode()) || response.getResponse() == null) {
            Logger.logError("Failed to obtain Sku Details Response. ResponseCode: " + response.getResponseCode() + " | Cause: " + response.getException());
            return new SkuDetailsResponse(response.getResponseCode(), null, 2, null);
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            SkuDetailsResponseMapper skuDetailsResponseMapper = this;
            JSONObject jSONObject = new JSONObject(response.getResponse());
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(FirebaseAnalytics.Param.ITEMS);
            if (jSONArrayOptJSONArray != null) {
                Intrinsics.checkNotNull(jSONArrayOptJSONArray);
                int length = jSONArrayOptJSONArray.length();
                int i = 0;
                while (i < length) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                    String string = jSONObjectOptJSONObject.getString(SdkPurchaseFlowLabels.SKU);
                    String string2 = jSONObjectOptJSONObject.getString("title");
                    String strOptString = jSONObjectOptJSONObject.optString("description");
                    Intrinsics.checkNotNull(strOptString);
                    boolean z = true;
                    if (!(strOptString.length() > 0)) {
                        strOptString = null;
                    }
                    String strOptString2 = jSONObjectOptJSONObject.optString(TypedValues.CycleType.S_WAVE_PERIOD);
                    Intrinsics.checkNotNull(strOptString2);
                    if (strOptString2.length() <= 0) {
                        z = false;
                    }
                    String str = z ? strOptString2 : null;
                    JSONObject jSONObject2 = jSONObjectOptJSONObject.getJSONObject(FirebaseAnalytics.Param.PRICE);
                    String string3 = jSONObject2.getString(FirebaseAnalytics.Param.CURRENCY);
                    String string4 = jSONObject2.getString(Constants.ScionAnalytics.PARAM_LABEL);
                    String string5 = jSONObject2.getString("symbol");
                    double d = jSONObject2.getDouble("micros");
                    JSONObject jSONObject3 = jSONObject2.getJSONObject("appc");
                    String string6 = jSONObject3.getString(Constants.ScionAnalytics.PARAM_LABEL);
                    Intrinsics.checkNotNullExpressionValue(string6, "getString(...)");
                    ArrayList arrayList2 = arrayList;
                    AppcV2 appcV2 = new AppcV2(string6, jSONObject3.getDouble("micros"));
                    JSONObject jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("trial");
                    if (jSONObjectOptJSONObject2 != null) {
                        Intrinsics.checkNotNull(jSONObjectOptJSONObject2);
                        String string7 = jSONObjectOptJSONObject2.getString(TypedValues.CycleType.S_WAVE_PERIOD);
                        Intrinsics.checkNotNullExpressionValue(string7, "getString(...)");
                        String string8 = jSONObjectOptJSONObject2.getString(FirebaseAnalytics.Param.END_DATE);
                        Intrinsics.checkNotNullExpressionValue(string8, "getString(...)");
                        trial = new Trial(string7, string8);
                    } else {
                        trial = null;
                    }
                    Intrinsics.checkNotNull(string3);
                    Intrinsics.checkNotNull(string4);
                    Intrinsics.checkNotNull(string5);
                    PriceV2 priceV2 = new PriceV2(string3, string4, string5, d, appcV2, trial);
                    Intrinsics.checkNotNull(string);
                    Intrinsics.checkNotNull(string2);
                    arrayList2.add(new SkuDetailsV2(string, string2, strOptString, priceV2, str));
                    i++;
                    arrayList = arrayList2;
                }
            }
            return new SkuDetailsResponse(response.getResponseCode(), arrayList);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Throwable thM914exceptionOrNullimpl = Result.m914exceptionOrNullimpl(Result.m911constructorimpl(ResultKt.createFailure(th)));
            if (thM914exceptionOrNullimpl == null) {
                throw new KotlinNothingValueException();
            }
            Logger.logError("There was an error mapping the response.", new Exception(thM914exceptionOrNullimpl));
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendBackendMappingFailureEvent(SdkBackendRequestType.SKU_DETAILS, response.getResponse(), new Exception(thM914exceptionOrNullimpl).toString());
            return new SkuDetailsResponse(response.getResponseCode(), null, 2, null);
        }
    }
}
