package com.aptoide.sdk.billing.managers;

import com.aptoide.billing.sdk.BuildConfig;
import com.aptoide.sdk.billing.Purchase;
import com.aptoide.sdk.billing.helpers.WalletUtils;
import com.aptoide.sdk.billing.listeners.PurchaseData;
import com.aptoide.sdk.billing.repositories.MMPEventsRepository;
import com.aptoide.sdk.billing.service.BdsRetryService;
import com.aptoide.sdk.billing.service.BdsService;
import com.aptoide.sdk.billing.sharedpreferences.AttributionSharedPreferences;
import com.aptoide.sdk.billing.sharedpreferences.BackendRequestsSharedPreferences;
import com.aptoide.sdk.core.logger.Logger;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MMPEventsManager.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020\u0014R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\b\u001a\u0004\b\u000b\u0010\fR\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\b\u001a\u0004\b\u0010\u0010\u0011R#\u0010\u0013\u001a\n \u0015*\u0004\u0018\u00010\u00140\u00148BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\b\u001a\u0004\b\u0016\u0010\u0017¨\u0006 "}, d2 = {"Lcom/aptoide/sdk/billing/managers/MMPEventsManager;", "", "()V", "attributionSharedPreferences", "Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;", "getAttributionSharedPreferences", "()Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;", "attributionSharedPreferences$delegate", "Lkotlin/Lazy;", "backendRequestsSharedPreferences", "Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;", "getBackendRequestsSharedPreferences", "()Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;", "backendRequestsSharedPreferences$delegate", "mmpEventsRepository", "Lcom/aptoide/sdk/billing/repositories/MMPEventsRepository;", "getMmpEventsRepository", "()Lcom/aptoide/sdk/billing/repositories/MMPEventsRepository;", "mmpEventsRepository$delegate", "packageName", "", "kotlin.jvm.PlatformType", "getPackageName", "()Ljava/lang/String;", "packageName$delegate", "sendSuccessfulPurchaseResultEvent", "", FirebaseAnalytics.Event.PURCHASE, "Lcom/aptoide/sdk/billing/Purchase;", PurchaseData.ORDER_ID, "purchaseValue", "paymentMethod", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MMPEventsManager {
    public static final MMPEventsManager INSTANCE = new MMPEventsManager();

    /* JADX INFO: renamed from: packageName$delegate, reason: from kotlin metadata */
    private static final Lazy packageName = LazyKt.lazy(new Function0<String>() { // from class: com.aptoide.sdk.billing.managers.MMPEventsManager$packageName$2
        @Override // kotlin.jvm.functions.Function0
        public final String invoke() {
            return WalletUtils.INSTANCE.getContext().getPackageName();
        }
    });

    /* JADX INFO: renamed from: mmpEventsRepository$delegate, reason: from kotlin metadata */
    private static final Lazy mmpEventsRepository = LazyKt.lazy(new Function0<MMPEventsRepository>() { // from class: com.aptoide.sdk.billing.managers.MMPEventsManager$mmpEventsRepository$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final MMPEventsRepository invoke() {
            return new MMPEventsRepository(new BdsRetryService(new BdsService(BuildConfig.MMP_BASE_HOST, 30000), MMPEventsManager.INSTANCE.getBackendRequestsSharedPreferences()));
        }
    });

    /* JADX INFO: renamed from: attributionSharedPreferences$delegate, reason: from kotlin metadata */
    private static final Lazy attributionSharedPreferences = LazyKt.lazy(new Function0<AttributionSharedPreferences>() { // from class: com.aptoide.sdk.billing.managers.MMPEventsManager$attributionSharedPreferences$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final AttributionSharedPreferences invoke() {
            return new AttributionSharedPreferences(WalletUtils.INSTANCE.getContext());
        }
    });

    /* JADX INFO: renamed from: backendRequestsSharedPreferences$delegate, reason: from kotlin metadata */
    private static final Lazy backendRequestsSharedPreferences = LazyKt.lazy(new Function0<BackendRequestsSharedPreferences>() { // from class: com.aptoide.sdk.billing.managers.MMPEventsManager$backendRequestsSharedPreferences$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final BackendRequestsSharedPreferences invoke() {
            return new BackendRequestsSharedPreferences(WalletUtils.INSTANCE.getContext());
        }
    });

    private MMPEventsManager() {
    }

    private final String getPackageName() {
        return (String) packageName.getValue();
    }

    private final MMPEventsRepository getMmpEventsRepository() {
        return (MMPEventsRepository) mmpEventsRepository.getValue();
    }

    private final AttributionSharedPreferences getAttributionSharedPreferences() {
        return (AttributionSharedPreferences) attributionSharedPreferences.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BackendRequestsSharedPreferences getBackendRequestsSharedPreferences() {
        return (BackendRequestsSharedPreferences) backendRequestsSharedPreferences.getValue();
    }

    public final void sendSuccessfulPurchaseResultEvent(Purchase purchase, String orderId, String purchaseValue, String paymentMethod) {
        Intrinsics.checkNotNullParameter(purchase, "purchase");
        Intrinsics.checkNotNullParameter(orderId, "orderId");
        Intrinsics.checkNotNullParameter(purchaseValue, "purchaseValue");
        Intrinsics.checkNotNullParameter(paymentMethod, "paymentMethod");
        Logger.logInfo("Sending Successful Purchase Result Event to MMP.");
        String walletId = getAttributionSharedPreferences().getWalletId();
        if (walletId == null) {
            return;
        }
        MMPEventsRepository mmpEventsRepository2 = getMmpEventsRepository();
        String packageName2 = getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName2, "<get-packageName>(...)");
        mmpEventsRepository2.sendSuccessfulPurchaseResultEvent(packageName2, getAttributionSharedPreferences().getOemId(), walletId, (String) CollectionsKt.first((List) purchase.getProducts()), orderId, purchaseValue, paymentMethod, getAttributionSharedPreferences().getUtmSource(), getAttributionSharedPreferences().getUtmMedium(), getAttributionSharedPreferences().getUtmCampaign(), getAttributionSharedPreferences().getUtmTerm(), getAttributionSharedPreferences().getUtmContent());
    }
}
