package com.aptoide.sdk.billing.payflow;

import com.aptoide.billing.sdk.BuildConfig;
import com.aptoide.sdk.billing.helpers.WalletUtils;
import com.aptoide.sdk.billing.listeners.PayflowPriorityStream;
import com.aptoide.sdk.billing.payflow.models.PayflowMethodResponse;
import com.aptoide.sdk.billing.payflow.models.PaymentFlowMethod;
import com.aptoide.sdk.billing.service.BdsService;
import com.aptoide.sdk.billing.utils.ServiceUtils;
import com.aptoide.sdk.core.analytics.SdkAnalytics;
import com.aptoide.sdk.core.analytics.SdkAnalyticsUtils;
import com.aptoide.sdk.core.analytics.matomo.MatomoEventLogger;
import com.aptoide.sdk.core.analytics.matomo.models.CustomProperty;
import com.aptoide.sdk.core.analytics.matomo.models.MatomoDetails;
import com.aptoide.sdk.core.analytics.severity.AnalyticsFlowSeverityLevel;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PayflowManager.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH\u0007J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\rH\u0002R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000e"}, d2 = {"Lcom/aptoide/sdk/billing/payflow/PayflowManager;", "", "()V", "payflowRepository", "Lcom/aptoide/sdk/billing/payflow/PayflowRepository;", "getPayflowRepository", "()Lcom/aptoide/sdk/billing/payflow/PayflowRepository;", "payflowRepository$delegate", "Lkotlin/Lazy;", "getPayflowPriorityAsync", "", "setupMatomo", "payflowMethodResponse", "Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PayflowManager {
    public static final PayflowManager INSTANCE = new PayflowManager();

    /* JADX INFO: renamed from: payflowRepository$delegate, reason: from kotlin metadata */
    private static final Lazy payflowRepository = LazyKt.lazy(new Function0<PayflowRepository>() { // from class: com.aptoide.sdk.billing.payflow.PayflowManager$payflowRepository$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final PayflowRepository invoke() {
            return new PayflowRepository(new BdsService(BuildConfig.PAYFLOW_HOST, 30000));
        }
    });

    private PayflowManager() {
    }

    private final PayflowRepository getPayflowRepository() {
        return (PayflowRepository) payflowRepository.getValue();
    }

    @JvmStatic
    public static final void getPayflowPriorityAsync() {
        SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendPayflowRequestEvent();
        INSTANCE.getPayflowRepository().getPayflowPriorityAsync(new PayflowListener() { // from class: com.aptoide.sdk.billing.payflow.PayflowManager$getPayflowPriorityAsync$payflowListener$1
            @Override // com.aptoide.sdk.billing.payflow.PayflowListener
            public void onResponse(PayflowMethodResponse payflowMethodResponse) {
                ArrayList arrayList;
                ArrayList<CustomProperty> matomoCustomProperties;
                Intrinsics.checkNotNullParameter(payflowMethodResponse, "payflowMethodResponse");
                Integer responseCode = payflowMethodResponse.getResponseCode();
                if (responseCode != null) {
                    int iIntValue = responseCode.intValue();
                    SdkAnalytics sdkAnalytics = SdkAnalyticsUtils.INSTANCE.getSdkAnalytics();
                    ArrayList<PaymentFlowMethod> paymentFlowList = payflowMethodResponse.getPaymentFlowList();
                    if (paymentFlowList != null) {
                        ArrayList<PaymentFlowMethod> arrayList2 = paymentFlowList;
                        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
                        Iterator<T> it = arrayList2.iterator();
                        while (it.hasNext()) {
                            arrayList3.add(((PaymentFlowMethod) it.next()).getName());
                        }
                        arrayList = arrayList3;
                    } else {
                        arrayList = null;
                    }
                    sdkAnalytics.sendPayflowResultEvent(arrayList);
                    if (ServiceUtils.isSuccess(iIntValue)) {
                        ArrayList<PaymentFlowMethod> paymentFlowList2 = payflowMethodResponse.getPaymentFlowList();
                        if (paymentFlowList2 != null) {
                            ArrayList<PaymentFlowMethod> arrayList4 = paymentFlowList2;
                            if (arrayList4.size() > 1) {
                                CollectionsKt.sortWith(arrayList4, new Comparator() { // from class: com.aptoide.sdk.billing.payflow.PayflowManager$getPayflowPriorityAsync$payflowListener$1$onResponse$lambda$4$$inlined$sortBy$1
                                    /* JADX WARN: Multi-variable type inference failed */
                                    @Override // java.util.Comparator
                                    public final int compare(T t, T t2) {
                                        return ComparisonsKt.compareValues(Integer.valueOf(((PaymentFlowMethod) t).getPriority()), Integer.valueOf(((PaymentFlowMethod) t2).getPriority()));
                                    }
                                });
                            }
                        }
                        PayflowPriorityStream.getInstance().emit(paymentFlowList2);
                        ArrayList<AnalyticsFlowSeverityLevel> analyticsFlowSeverityLevels = payflowMethodResponse.getAnalyticsFlowSeverityLevels();
                        if (analyticsFlowSeverityLevels != null) {
                            SdkAnalyticsUtils.INSTANCE.setAnalyticsFlowSeverityLevels(analyticsFlowSeverityLevels);
                        }
                        MatomoDetails matomoDetails = payflowMethodResponse.getMatomoDetails();
                        if (matomoDetails != null && (matomoCustomProperties = matomoDetails.getMatomoCustomProperties()) != null) {
                            SdkAnalyticsUtils.INSTANCE.setMatomoCustomProperties(matomoCustomProperties);
                        }
                        PayflowManager.INSTANCE.setupMatomo(payflowMethodResponse);
                    } else {
                        PayflowPriorityStream.getInstance().emit(new ArrayList<>());
                        SdkAnalyticsUtils.INSTANCE.setAnalyticsFlowSeverityLevels(null);
                        SdkAnalyticsUtils.INSTANCE.setMatomoCustomProperties(null);
                    }
                    SdkAnalyticsUtils.INSTANCE.setAnalyticsSetupFromPayflowFinalized(true);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setupMatomo(PayflowMethodResponse payflowMethodResponse) {
        String matomoUrl;
        String matomoApiKey;
        MatomoDetails matomoDetails = payflowMethodResponse.getMatomoDetails();
        if (matomoDetails == null || (matomoUrl = matomoDetails.getMatomoUrl()) == null) {
            return;
        }
        if (!(matomoUrl.length() > 0)) {
            matomoUrl = null;
        }
        if (matomoUrl == null || (matomoApiKey = payflowMethodResponse.getMatomoDetails().getMatomoApiKey()) == null) {
            return;
        }
        String str = matomoApiKey.length() > 0 ? matomoApiKey : null;
        if (str != null) {
            MatomoEventLogger.INSTANCE.initialize(WalletUtils.INSTANCE.getContext(), str, matomoUrl);
        }
    }
}
