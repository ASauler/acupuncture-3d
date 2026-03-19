package com.aptoide.sdk.billing.payflow;

import androidx.browser.trusted.sharing.ShareTarget;
import com.aptoide.sdk.billing.service.BdsService;
import com.aptoide.sdk.billing.service.RequestResponse;
import com.aptoide.sdk.billing.service.ServiceResponseListener;
import com.aptoide.sdk.billing.usecases.GetQueriesListForPayflowPriority;
import com.aptoide.sdk.core.analytics.events.SdkBackendRequestType;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PayflowRepository.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \t2\u00020\u0001:\u0001\tB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/aptoide/sdk/billing/payflow/PayflowRepository;", "", "bdsService", "Lcom/aptoide/sdk/billing/service/BdsService;", "(Lcom/aptoide/sdk/billing/service/BdsService;)V", "getPayflowPriorityAsync", "", "payflowListener", "Lcom/aptoide/sdk/billing/payflow/PayflowListener;", "Companion", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PayflowRepository {
    private static final Companion Companion = new Companion(null);

    @Deprecated
    public static final String PAYFLOW_VERSION = "v2";
    private final BdsService bdsService;

    public PayflowRepository(BdsService bdsService) {
        Intrinsics.checkNotNullParameter(bdsService, "bdsService");
        this.bdsService = bdsService;
    }

    public final void getPayflowPriorityAsync(final PayflowListener payflowListener) {
        Intrinsics.checkNotNullParameter(payflowListener, "payflowListener");
        this.bdsService.makeRequest("/v2/payment_flow", ShareTarget.METHOD_GET, CollectionsKt.emptyList(), GetQueriesListForPayflowPriority.INSTANCE.invoke(), MapsKt.emptyMap(), MapsKt.emptyMap(), new ServiceResponseListener() { // from class: com.aptoide.sdk.billing.payflow.PayflowRepository$$ExternalSyntheticLambda0
            @Override // com.aptoide.sdk.billing.service.ServiceResponseListener
            public final void onResponseReceived(RequestResponse requestResponse) {
                PayflowRepository.getPayflowPriorityAsync$lambda$0(payflowListener, requestResponse);
            }
        }, SdkBackendRequestType.PAYMENT_FLOW);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getPayflowPriorityAsync$lambda$0(PayflowListener payflowListener, RequestResponse requestResponse) {
        Intrinsics.checkNotNullParameter(payflowListener, "$payflowListener");
        PayflowResponseMapper payflowResponseMapper = new PayflowResponseMapper();
        Intrinsics.checkNotNull(requestResponse);
        payflowListener.onResponse(payflowResponseMapper.map(requestResponse));
    }

    /* JADX INFO: compiled from: PayflowRepository.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/aptoide/sdk/billing/payflow/PayflowRepository$Companion;", "", "()V", "PAYFLOW_VERSION", "", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
