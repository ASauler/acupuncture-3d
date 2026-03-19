package com.aptoide.sdk.billing.mappers;

import com.aptoide.sdk.billing.service.RequestResponse;
import com.aptoide.sdk.billing.utils.ServiceUtils;
import com.aptoide.sdk.core.analytics.SdkAnalyticsUtils;
import com.aptoide.sdk.core.analytics.events.SdkBackendRequestType;
import com.aptoide.sdk.core.logger.Logger;
import com.brentvatne.react.ReactVideoView;
import com.facebook.appevents.UserDataStore;
import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.KotlinNothingValueException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: compiled from: TransactionResponseMapper.kt */
/* JADX INFO: loaded from: classes.dex */
@kotlin.Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/billing/mappers/TransactionResponseMapper;", "", "()V", "map", "Lcom/aptoide/sdk/billing/mappers/TransactionResponse;", "response", "Lcom/aptoide/sdk/billing/service/RequestResponse;", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TransactionResponseMapper {
    public final TransactionResponse map(RequestResponse response) {
        Gateway gateway;
        Metadata metadata;
        Price price;
        Intrinsics.checkNotNullParameter(response, "response");
        if (!ServiceUtils.isSuccess(response.getResponseCode()) || response.getResponse() == null) {
            Logger.logError("Failed to obtain Transaction. ResponseCode: " + response.getResponseCode() + " | Cause: " + response.getException());
            return new TransactionResponse(Integer.valueOf(response.getResponseCode()), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 131070, null);
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            TransactionResponseMapper transactionResponseMapper = this;
            JSONObject jSONObject = new JSONObject(response.getResponse());
            String strOptString = jSONObject.optString("uid");
            Intrinsics.checkNotNull(strOptString);
            boolean z = true;
            String str = strOptString.length() > 0 ? strOptString : null;
            String strOptString2 = jSONObject.optString("domain");
            Intrinsics.checkNotNull(strOptString2);
            String str2 = strOptString2.length() > 0 ? strOptString2 : null;
            String strOptString3 = jSONObject.optString("product");
            Intrinsics.checkNotNull(strOptString3);
            String str3 = strOptString3.length() > 0 ? strOptString3 : null;
            String strOptString4 = jSONObject.optString("wallet_from");
            Intrinsics.checkNotNull(strOptString4);
            String str4 = strOptString4.length() > 0 ? strOptString4 : null;
            String strOptString5 = jSONObject.optString("type");
            Intrinsics.checkNotNull(strOptString5);
            String str5 = strOptString5.length() > 0 ? strOptString5 : null;
            String strOptString6 = jSONObject.optString("method");
            Intrinsics.checkNotNull(strOptString6);
            String str6 = strOptString6.length() > 0 ? strOptString6 : null;
            String strOptString7 = jSONObject.optString(UserDataStore.COUNTRY);
            Intrinsics.checkNotNull(strOptString7);
            String str7 = strOptString7.length() > 0 ? strOptString7 : null;
            String strOptString8 = jSONObject.optString("reference");
            Intrinsics.checkNotNull(strOptString8);
            String str8 = strOptString8.length() > 0 ? strOptString8 : null;
            String strOptString9 = jSONObject.optString("hash");
            Intrinsics.checkNotNull(strOptString9);
            String str9 = strOptString9.length() > 0 ? strOptString9 : null;
            String strOptString10 = jSONObject.optString("status");
            Intrinsics.checkNotNull(strOptString10);
            String str10 = strOptString10.length() > 0 ? strOptString10 : null;
            String strOptString11 = jSONObject.optString("added");
            Intrinsics.checkNotNull(strOptString11);
            String str11 = strOptString11.length() > 0 ? strOptString11 : null;
            String strOptString12 = jSONObject.optString("modified");
            Intrinsics.checkNotNull(strOptString12);
            String str12 = strOptString12.length() > 0 ? strOptString12 : null;
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("gateway");
            if (jSONObjectOptJSONObject != null) {
                Intrinsics.checkNotNull(jSONObjectOptJSONObject);
                String strOptString13 = jSONObjectOptJSONObject.optString("name");
                Intrinsics.checkNotNull(strOptString13);
                if (!(strOptString13.length() > 0)) {
                    strOptString13 = null;
                }
                gateway = new Gateway(strOptString13);
            } else {
                gateway = null;
            }
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(ReactVideoView.EVENT_PROP_METADATA);
            if (jSONObjectOptJSONObject2 != null) {
                Intrinsics.checkNotNull(jSONObjectOptJSONObject2);
                Boolean boolValueOf = Boolean.valueOf(jSONObjectOptJSONObject2.optBoolean("renewal"));
                String strOptString14 = jSONObjectOptJSONObject2.optString("purchase_uid");
                Intrinsics.checkNotNull(strOptString14);
                if (!(strOptString14.length() > 0)) {
                    strOptString14 = null;
                }
                metadata = new Metadata(boolValueOf, strOptString14);
            } else {
                metadata = null;
            }
            JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject(FirebaseAnalytics.Param.PRICE);
            if (jSONObjectOptJSONObject3 != null) {
                Intrinsics.checkNotNull(jSONObjectOptJSONObject3);
                String strOptString15 = jSONObjectOptJSONObject3.optString(FirebaseAnalytics.Param.CURRENCY);
                Intrinsics.checkNotNull(strOptString15);
                String str13 = strOptString15.length() > 0 ? strOptString15 : null;
                String strOptString16 = jSONObjectOptJSONObject3.optString("value");
                Intrinsics.checkNotNull(strOptString16);
                String str14 = strOptString16.length() > 0 ? strOptString16 : null;
                String strOptString17 = jSONObjectOptJSONObject3.optString("appc");
                Intrinsics.checkNotNull(strOptString17);
                String str15 = strOptString17.length() > 0 ? strOptString17 : null;
                String strOptString18 = jSONObjectOptJSONObject3.optString("usd");
                Intrinsics.checkNotNull(strOptString18);
                String str16 = strOptString18.length() > 0 ? strOptString18 : null;
                String strOptString19 = jSONObjectOptJSONObject3.optString("vat");
                Intrinsics.checkNotNull(strOptString19);
                String str17 = strOptString19.length() > 0 ? strOptString19 : null;
                String strOptString20 = jSONObjectOptJSONObject3.optString(FirebaseAnalytics.Param.DISCOUNT);
                Intrinsics.checkNotNull(strOptString20);
                price = new Price(str13, str14, str15, str16, str17, strOptString20.length() > 0 ? strOptString20 : null);
            } else {
                price = null;
            }
            String strOptString21 = jSONObject.optString("channel");
            Intrinsics.checkNotNull(strOptString21);
            if (strOptString21.length() <= 0) {
                z = false;
            }
            return new TransactionResponse(Integer.valueOf(response.getResponseCode()), str, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12, gateway, metadata, price, z ? strOptString21 : null);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Throwable thM914exceptionOrNullimpl = Result.m914exceptionOrNullimpl(Result.m911constructorimpl(ResultKt.createFailure(th)));
            if (thM914exceptionOrNullimpl == null) {
                throw new KotlinNothingValueException();
            }
            Logger.logError("There was an error mapping the response.", new Exception(thM914exceptionOrNullimpl));
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendBackendMappingFailureEvent(SdkBackendRequestType.TRANSACTION, response.getResponse(), new Exception(thM914exceptionOrNullimpl).toString());
            return new TransactionResponse(Integer.valueOf(response.getResponseCode()), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 131070, null);
        }
    }
}
