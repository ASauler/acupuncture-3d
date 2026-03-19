package com.aptoide.sdk.billing.managers;

import com.aptoide.billing.sdk.BuildConfig;
import com.aptoide.sdk.billing.WalletInteract;
import com.aptoide.sdk.billing.helpers.WalletUtils;
import com.aptoide.sdk.billing.mappers.AttributionResponse;
import com.aptoide.sdk.billing.repositories.AttributionRepository;
import com.aptoide.sdk.billing.service.BdsService;
import com.aptoide.sdk.billing.sharedpreferences.AttributionSharedPreferences;
import com.aptoide.sdk.billing.usecases.GetAppInstalledVersion;
import com.aptoide.sdk.billing.usecases.GetOemIdForPackage;
import com.aptoide.sdk.billing.usecases.SaveAttributionResultOnPrefs;
import com.aptoide.sdk.billing.usecases.SaveInitialAttributionTimestamp;
import com.aptoide.sdk.billing.usecases.SendAttributionRetryAttempt;
import com.aptoide.sdk.billing.usecases.ingameupdates.GetInstallerAppPackage;
import com.aptoide.sdk.billing.utils.ServiceUtils;
import com.aptoide.sdk.core.analytics.SdkAnalyticsUtils;
import com.aptoide.sdk.core.analytics.events.SdkInitializationLabels;
import com.aptoide.sdk.core.logger.Logger;
import com.aptoide.sdk.core.network.retrymechanism.RetryHandlerKt;
import com.aptoide.sdk.core.network.retrymechanism.exceptions.IncompleteCircularFunctionExecutionException;
import com.aptoide.sdk.core.network.retrymechanism.exceptions.MaxAttemptsReachedException;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AttributionManager.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0014\u001a\u00020\u00152\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u0017J\n\u0010\u0018\u001a\u0004\u0018\u00010\u000fH\u0002J \u0010\u0019\u001a\u00020\u00152\b\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u0017H\u0002J*\u0010\u001c\u001a\u00020\u00152\b\u0010\u001d\u001a\u0004\u0018\u00010\u000f2\b\u0010\u001e\u001a\u0004\u0018\u00010\u000f2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u0017H\u0002J\u0019\u0010\u001f\u001a\u0004\u0018\u00010\u00152\b\u0010 \u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0002\u0010!J\u000e\u0010\"\u001a\u00020#*\u0004\u0018\u00010\u001bH\u0002R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\b\u001a\u0004\b\u000b\u0010\fR#\u0010\u000e\u001a\n \u0010*\u0004\u0018\u00010\u000f0\u000f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\b\u001a\u0004\b\u0011\u0010\u0012¨\u0006$"}, d2 = {"Lcom/aptoide/sdk/billing/managers/AttributionManager;", "", "()V", "attributionRepository", "Lcom/aptoide/sdk/billing/repositories/AttributionRepository;", "getAttributionRepository", "()Lcom/aptoide/sdk/billing/repositories/AttributionRepository;", "attributionRepository$delegate", "Lkotlin/Lazy;", "attributionSharedPreferences", "Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;", "getAttributionSharedPreferences", "()Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;", "attributionSharedPreferences$delegate", "packageName", "", "kotlin.jvm.PlatformType", "getPackageName", "()Ljava/lang/String;", "packageName$delegate", "getAttributionForUser", "", "onSuccessfulAttribution", "Lkotlin/Function0;", "getWalletId", "processAttributionResult", "attributionResponse", "Lcom/aptoide/sdk/billing/mappers/AttributionResponse;", "startAttributionRequest", SdkInitializationLabels.OEMID, "guestWalletId", "updateAnalyticsInstanceId", "walletId", "(Ljava/lang/String;)Lkotlin/Unit;", "isSuccessfulAttributionResponse", "", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AttributionManager {
    public static final AttributionManager INSTANCE = new AttributionManager();

    /* JADX INFO: renamed from: packageName$delegate, reason: from kotlin metadata */
    private static final Lazy packageName = LazyKt.lazy(new Function0<String>() { // from class: com.aptoide.sdk.billing.managers.AttributionManager$packageName$2
        @Override // kotlin.jvm.functions.Function0
        public final String invoke() {
            return WalletUtils.INSTANCE.getContext().getPackageName();
        }
    });

    /* JADX INFO: renamed from: attributionRepository$delegate, reason: from kotlin metadata */
    private static final Lazy attributionRepository = LazyKt.lazy(new Function0<AttributionRepository>() { // from class: com.aptoide.sdk.billing.managers.AttributionManager$attributionRepository$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final AttributionRepository invoke() {
            return new AttributionRepository(new BdsService(BuildConfig.MMP_BASE_HOST, 30000));
        }
    });

    /* JADX INFO: renamed from: attributionSharedPreferences$delegate, reason: from kotlin metadata */
    private static final Lazy attributionSharedPreferences = LazyKt.lazy(new Function0<AttributionSharedPreferences>() { // from class: com.aptoide.sdk.billing.managers.AttributionManager$attributionSharedPreferences$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final AttributionSharedPreferences invoke() {
            return new AttributionSharedPreferences(WalletUtils.INSTANCE.getContext());
        }
    });

    private AttributionManager() {
    }

    private final String getPackageName() {
        return (String) packageName.getValue();
    }

    private final AttributionRepository getAttributionRepository() {
        return (AttributionRepository) attributionRepository.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AttributionSharedPreferences getAttributionSharedPreferences() {
        return (AttributionSharedPreferences) attributionSharedPreferences.getValue();
    }

    public final void getAttributionForUser(final Function0<Unit> onSuccessfulAttribution) {
        Intrinsics.checkNotNullParameter(onSuccessfulAttribution, "onSuccessfulAttribution");
        Logger.logInfo("Verifying new Attribution flow.");
        if (!getAttributionSharedPreferences().isAttributionComplete()) {
            Logger.logInfo("Getting Attribution for User.");
            SaveInitialAttributionTimestamp.INSTANCE.invoke();
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendAttributionRequestEvent();
            final String strInvoke = GetOemIdForPackage.INSTANCE.invoke(getPackageName(), WalletUtils.INSTANCE.getContext());
            final String walletId = getWalletId();
            try {
                startAttributionRequest(strInvoke, walletId, onSuccessfulAttribution);
                return;
            } catch (IncompleteCircularFunctionExecutionException e) {
                Logger.logError("Attribution failed. Requesting again.", e);
                onSuccessfulAttribution.invoke();
                new Thread(new Runnable() { // from class: com.aptoide.sdk.billing.managers.AttributionManager$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() throws InterruptedException, MaxAttemptsReachedException {
                        AttributionManager.getAttributionForUser$lambda$0(strInvoke, walletId, onSuccessfulAttribution);
                    }
                }).start();
                return;
            }
        }
        Logger.logInfo("Attribution already complete.");
        onSuccessfulAttribution.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getAttributionForUser$lambda$0(final String str, final String str2, final Function0 onSuccessfulAttribution) throws InterruptedException, MaxAttemptsReachedException {
        Intrinsics.checkNotNullParameter(onSuccessfulAttribution, "$onSuccessfulAttribution");
        SendAttributionRetryAttempt.INSTANCE.invoke(1, INSTANCE.getAttributionSharedPreferences().getInitialAttributionTimestamp());
        RetryHandlerKt.retryUntilSuccess((1 & 1) != 0 ? null : null, (1 & 2) != 0 ? 1000L : 1000L, (1 & 4) != 0 ? false : true, (1 & 8) != 0 ? Long.MAX_VALUE : 65000L, new Function0<Unit>() { // from class: com.aptoide.sdk.billing.managers.AttributionManager$getAttributionForUser$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() throws IncompleteCircularFunctionExecutionException {
                invoke2();
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() throws IncompleteCircularFunctionExecutionException {
                AttributionManager.INSTANCE.startAttributionRequest(str, str2, onSuccessfulAttribution);
            }
        }, new Function1<Integer, Unit>() { // from class: com.aptoide.sdk.billing.managers.AttributionManager$getAttributionForUser$1$2
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke(num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int i) {
                SendAttributionRetryAttempt.INSTANCE.invoke(i, AttributionManager.INSTANCE.getAttributionSharedPreferences().getInitialAttributionTimestamp());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startAttributionRequest(String oemid, String guestWalletId, Function0<Unit> onSuccessfulAttribution) throws IncompleteCircularFunctionExecutionException {
        long initialAttributionTimestamp = getAttributionSharedPreferences().getInitialAttributionTimestamp();
        String strInvoke = GetInstallerAppPackage.INSTANCE.invoke(WalletUtils.INSTANCE.getContext());
        int iInvoke = GetAppInstalledVersion.INSTANCE.invoke(WalletUtils.INSTANCE.getContext().getPackageName(), WalletUtils.INSTANCE.getContext());
        AttributionRepository attributionRepository2 = getAttributionRepository();
        String packageName2 = getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName2, "<get-packageName>(...)");
        processAttributionResult(attributionRepository2.getAttributionForUser(packageName2, oemid, guestWalletId, strInvoke, iInvoke, initialAttributionTimestamp), onSuccessfulAttribution);
    }

    private final void processAttributionResult(AttributionResponse attributionResponse, Function0<Unit> onSuccessfulAttribution) throws IncompleteCircularFunctionExecutionException {
        Logger.logInfo("Saving Attribution values.");
        if (isSuccessfulAttributionResponse(attributionResponse)) {
            Logger.logInfo("Completing Attribution flow.");
            getAttributionSharedPreferences().completeAttribution();
            if (attributionResponse != null) {
                SaveAttributionResultOnPrefs.INSTANCE.invoke(attributionResponse);
            }
            updateAnalyticsInstanceId(attributionResponse != null ? attributionResponse.getWalletId() : null);
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendAttributionResultEvent(attributionResponse != null ? attributionResponse.getOemId() : null, attributionResponse != null ? attributionResponse.getWalletId() : null, attributionResponse != null ? attributionResponse.getUtmSource() : null, attributionResponse != null ? attributionResponse.getUtmMedium() : null, attributionResponse != null ? attributionResponse.getUtmCampaign() : null, attributionResponse != null ? attributionResponse.getUtmTerm() : null, attributionResponse != null ? attributionResponse.getUtmContent() : null);
            onSuccessfulAttribution.invoke();
            return;
        }
        SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendAttributionRequestFailureEvent();
        throw new IncompleteCircularFunctionExecutionException("Attribution failed. Repeating request.");
    }

    private final String getWalletId() {
        return new WalletInteract(getAttributionSharedPreferences()).retrieveWalletId();
    }

    private final boolean isSuccessfulAttributionResponse(AttributionResponse attributionResponse) {
        Integer responseCode;
        if (!((attributionResponse == null || (responseCode = attributionResponse.getResponseCode()) == null) ? false : ServiceUtils.isSuccess(responseCode.intValue()))) {
            return false;
        }
        if (!Intrinsics.areEqual(attributionResponse != null ? attributionResponse.getPackageName() : null, getPackageName())) {
            return false;
        }
        String walletId = attributionResponse != null ? attributionResponse.getWalletId() : null;
        return !(walletId == null || walletId.length() == 0);
    }

    private final Unit updateAnalyticsInstanceId(String walletId) {
        if (walletId == null) {
            return null;
        }
        SdkAnalyticsUtils.INSTANCE.updateInstanceId(walletId);
        return Unit.INSTANCE;
    }
}
