package com.aptoide.sdk.billing.usecases;

import com.aptoide.sdk.billing.helpers.WalletUtils;
import com.aptoide.sdk.billing.service.BdsService;
import com.aptoide.sdk.billing.service.RequestData;
import com.aptoide.sdk.billing.service.RequestResponse;
import com.aptoide.sdk.billing.service.ServiceResponseListener;
import com.aptoide.sdk.billing.sharedpreferences.BackendRequestsSharedPreferences;
import com.aptoide.sdk.billing.utils.ServiceUtils;
import java.util.Collection;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RetryFailedRequests.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\t\u0010\t\u001a\u00020\nH\u0086\u0002R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000b"}, d2 = {"Lcom/aptoide/sdk/billing/usecases/RetryFailedRequests;", "Lcom/aptoide/sdk/billing/usecases/UseCase;", "()V", "backendRequestsSharedPreferences", "Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;", "getBackendRequestsSharedPreferences", "()Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;", "backendRequestsSharedPreferences$delegate", "Lkotlin/Lazy;", "invoke", "", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RetryFailedRequests extends UseCase {
    public static final RetryFailedRequests INSTANCE = new RetryFailedRequests();

    /* JADX INFO: renamed from: backendRequestsSharedPreferences$delegate, reason: from kotlin metadata */
    private static final Lazy backendRequestsSharedPreferences = LazyKt.lazy(new Function0<BackendRequestsSharedPreferences>() { // from class: com.aptoide.sdk.billing.usecases.RetryFailedRequests$backendRequestsSharedPreferences$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final BackendRequestsSharedPreferences invoke() {
            return new BackendRequestsSharedPreferences(WalletUtils.INSTANCE.getContext());
        }
    });

    private RetryFailedRequests() {
    }

    private final BackendRequestsSharedPreferences getBackendRequestsSharedPreferences() {
        return (BackendRequestsSharedPreferences) backendRequestsSharedPreferences.getValue();
    }

    public final void invoke() {
        super.invokeUseCase();
        List<RequestData> failedRequests = getBackendRequestsSharedPreferences().getFailedRequests();
        final List<RequestData> mutableList = failedRequests != null ? CollectionsKt.toMutableList((Collection) failedRequests) : null;
        if (mutableList == null || (r1 = mutableList.iterator()) == null) {
            return;
        }
        for (final RequestData requestData : mutableList) {
            new BdsService(requestData.getBaseUrl(), requestData.getTimeoutInMillis()).makeRequest(requestData.getEndPoint(), requestData.getHttpMethod(), requestData.getPaths(), requestData.getQueries(), requestData.getHeader(), requestData.getBody(), new ServiceResponseListener() { // from class: com.aptoide.sdk.billing.usecases.RetryFailedRequests$$ExternalSyntheticLambda0
                @Override // com.aptoide.sdk.billing.service.ServiceResponseListener
                public final void onResponseReceived(RequestResponse requestResponse) {
                    RetryFailedRequests.invoke$lambda$1$lambda$0(mutableList, requestData, requestResponse);
                }
            }, requestData.getSdkBackendRequestType());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$1$lambda$0(List list, RequestData request, RequestResponse requestResponse) {
        Intrinsics.checkNotNullParameter(request, "$request");
        if (ServiceUtils.isSuccess(requestResponse.getResponseCode())) {
            list.remove(request);
            INSTANCE.getBackendRequestsSharedPreferences().setFailedRequests(list);
        }
    }
}
