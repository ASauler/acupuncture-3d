package com.aptoide.sdk.billing.usecases;

import com.aptoide.sdk.billing.BillingResult;
import com.aptoide.sdk.billing.ReferralDeeplink;
import com.aptoide.sdk.billing.ResponseCode;
import com.aptoide.sdk.billing.helpers.WalletUtils;
import com.aptoide.sdk.billing.managers.StoreLinkMapperManager;
import com.aptoide.sdk.billing.mappers.ReferralDeeplinkResponse;
import com.aptoide.sdk.billing.utils.ServiceUtils;
import com.aptoide.sdk.core.analytics.SdkAnalyticsUtils;
import com.aptoide.sdk.core.logger.Logger;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: compiled from: GetReferralDeeplink.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\t\u0010\t\u001a\u00020\nH\u0086\u0002R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000b"}, d2 = {"Lcom/aptoide/sdk/billing/usecases/GetReferralDeeplink;", "Lcom/aptoide/sdk/billing/usecases/UseCase;", "()V", "storeLinkMapperManager", "Lcom/aptoide/sdk/billing/managers/StoreLinkMapperManager;", "getStoreLinkMapperManager", "()Lcom/aptoide/sdk/billing/managers/StoreLinkMapperManager;", "storeLinkMapperManager$delegate", "Lkotlin/Lazy;", "invoke", "Lcom/aptoide/sdk/billing/ReferralDeeplink;", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class GetReferralDeeplink extends UseCase {
    public static final GetReferralDeeplink INSTANCE = new GetReferralDeeplink();

    /* JADX INFO: renamed from: storeLinkMapperManager$delegate, reason: from kotlin metadata */
    private static final Lazy storeLinkMapperManager = LazyKt.lazy(new Function0<StoreLinkMapperManager>() { // from class: com.aptoide.sdk.billing.usecases.GetReferralDeeplink$storeLinkMapperManager$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final StoreLinkMapperManager invoke() {
            return new StoreLinkMapperManager(WalletUtils.INSTANCE.getContext());
        }
    });

    private GetReferralDeeplink() {
    }

    private final StoreLinkMapperManager getStoreLinkMapperManager() {
        return (StoreLinkMapperManager) storeLinkMapperManager.getValue();
    }

    public final ReferralDeeplink invoke() {
        super.invokeUseCase();
        ReferralDeeplinkResponse referralDeeplink = getStoreLinkMapperManager().getReferralDeeplink();
        Logger.logInfo("Received ReferralDeeplink. ResponseCode: " + referralDeeplink.getResponseCode() + " | StoreDeeplink: " + referralDeeplink.getStoreDeeplink() + " | FallbackDeeplink: " + referralDeeplink.getFallbackDeeplink());
        Integer responseCode = referralDeeplink.getResponseCode();
        ResponseCode responseCodeResponseCodeFromNetworkResponseCode = responseCode != null ? ServiceUtils.responseCodeFromNetworkResponseCode(responseCode.intValue()) : null;
        if (responseCodeResponseCodeFromNetworkResponseCode == null) {
            responseCodeResponseCodeFromNetworkResponseCode = ResponseCode.ERROR;
        }
        SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendGetReferralDeeplinkResultEvent(referralDeeplink.getStoreDeeplink());
        return new ReferralDeeplink(BillingResult.INSTANCE.newBuilder().setResponseCode(responseCodeResponseCodeFromNetworkResponseCode.getValue()).build(), referralDeeplink.getStoreDeeplink(), referralDeeplink.getFallbackDeeplink());
    }
}
