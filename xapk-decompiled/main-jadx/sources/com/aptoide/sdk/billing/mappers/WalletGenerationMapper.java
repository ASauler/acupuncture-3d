package com.aptoide.sdk.billing.mappers;

import com.aptoide.sdk.billing.service.RequestResponse;
import com.aptoide.sdk.billing.utils.ServiceUtils;
import com.aptoide.sdk.core.analytics.SdkAnalyticsUtils;
import com.aptoide.sdk.core.analytics.events.SdkBackendRequestType;
import com.aptoide.sdk.core.logger.Logger;
import kotlin.KotlinNothingValueException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: compiled from: WalletGenerationMapper.kt */
/* JADX INFO: loaded from: classes.dex */
@kotlin.Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/billing/mappers/WalletGenerationMapper;", "", "()V", "map", "Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;", "requestResponse", "Lcom/aptoide/sdk/billing/service/RequestResponse;", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class WalletGenerationMapper {
    public final WalletGenerationResponse map(RequestResponse requestResponse) {
        Intrinsics.checkNotNullParameter(requestResponse, "requestResponse");
        if (!ServiceUtils.isSuccess(requestResponse.getResponseCode()) || requestResponse.getResponse() == null) {
            Logger.logError("Failed to obtain Wallet Values. ResponseCode: " + requestResponse.getResponseCode() + " | Cause: " + requestResponse.getException());
            return new WalletGenerationResponse();
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            WalletGenerationMapper walletGenerationMapper = this;
            JSONObject jSONObject = new JSONObject(requestResponse.getResponse());
            String string = jSONObject.getString("address");
            String string2 = jSONObject.getString("signature");
            String string3 = jSONObject.getString("ewt");
            Intrinsics.checkNotNull(string);
            Intrinsics.checkNotNull(string2);
            Intrinsics.checkNotNull(string3);
            return new WalletGenerationResponse(string, string2, string3, false);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Throwable thM914exceptionOrNullimpl = Result.m914exceptionOrNullimpl(Result.m911constructorimpl(ResultKt.createFailure(th)));
            if (thM914exceptionOrNullimpl == null) {
                throw new KotlinNothingValueException();
            }
            Logger.logError("There was an error mapping the response.", new Exception(thM914exceptionOrNullimpl));
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendBackendMappingFailureEvent(SdkBackendRequestType.GUEST_WALLET, requestResponse.getResponse(), new Exception(thM914exceptionOrNullimpl).toString());
            return new WalletGenerationResponse();
        }
    }
}
