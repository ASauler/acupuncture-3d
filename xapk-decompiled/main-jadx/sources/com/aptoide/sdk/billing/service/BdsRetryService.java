package com.aptoide.sdk.billing.service;

import com.aptoide.sdk.billing.sharedpreferences.BackendRequestsSharedPreferences;
import com.aptoide.sdk.billing.utils.ServiceUtils;
import com.aptoide.sdk.core.analytics.events.SdkBackendRequestLabels;
import com.aptoide.sdk.core.analytics.events.SdkBackendRequestType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BdsRetryService.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bH\u0002Jt\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\r0\b2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0\u00112\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0\u00112\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00140\u00112\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J|\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\u001c2\b\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\r2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\r0\b2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0\u00112\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0\u00112\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00140\u0011H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/aptoide/sdk/billing/service/BdsRetryService;", "Lcom/aptoide/sdk/billing/service/Service;", "bdsService", "Lcom/aptoide/sdk/billing/service/BdsService;", "sharedPreferences", "Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;", "(Lcom/aptoide/sdk/billing/service/BdsService;Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;)V", "getFailedRequests", "", "Lcom/aptoide/sdk/billing/service/RequestData;", "makeRequest", "", "endPoint", "", "httpMethod", SdkBackendRequestLabels.PATHS, SdkBackendRequestLabels.QUERIES, "", "header", "body", "", "serviceResponseListener", "Lcom/aptoide/sdk/billing/service/ServiceResponseListener;", "sdkBackendRequestType", "Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;", "saveFailedRequest", "baseUrl", "timeoutInMillis", "", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BdsRetryService implements Service {
    private final BdsService bdsService;
    private final BackendRequestsSharedPreferences sharedPreferences;

    public BdsRetryService(BdsService bdsService, BackendRequestsSharedPreferences sharedPreferences) {
        Intrinsics.checkNotNullParameter(bdsService, "bdsService");
        Intrinsics.checkNotNullParameter(sharedPreferences, "sharedPreferences");
        this.bdsService = bdsService;
        this.sharedPreferences = sharedPreferences;
    }

    @Override // com.aptoide.sdk.billing.service.Service
    public void makeRequest(final String endPoint, final String httpMethod, final List<String> paths, final Map<String, String> queries, final Map<String, String> header, final Map<String, ? extends Object> body, final ServiceResponseListener serviceResponseListener, final SdkBackendRequestType sdkBackendRequestType) {
        Intrinsics.checkNotNullParameter(endPoint, "endPoint");
        Intrinsics.checkNotNullParameter(httpMethod, "httpMethod");
        Intrinsics.checkNotNullParameter(paths, "paths");
        Intrinsics.checkNotNullParameter(queries, "queries");
        Intrinsics.checkNotNullParameter(header, "header");
        Intrinsics.checkNotNullParameter(body, "body");
        Intrinsics.checkNotNullParameter(sdkBackendRequestType, "sdkBackendRequestType");
        BdsService bdsService = this.bdsService;
        String baseUrl = bdsService.baseUrl;
        Intrinsics.checkNotNullExpressionValue(baseUrl, "baseUrl");
        new ServiceAsyncTaskExecutorAsync(bdsService, baseUrl, endPoint, httpMethod, CollectionsKt.toMutableList((Collection) paths), MapsKt.toMutableMap(queries), MapsKt.toMutableMap(header), MapsKt.toMutableMap(body), new ServiceResponseListener() { // from class: com.aptoide.sdk.billing.service.BdsRetryService$$ExternalSyntheticLambda0
            @Override // com.aptoide.sdk.billing.service.ServiceResponseListener
            public final void onResponseReceived(RequestResponse requestResponse) {
                BdsRetryService.makeRequest$lambda$0(serviceResponseListener, this, sdkBackendRequestType, endPoint, httpMethod, paths, queries, header, body, requestResponse);
            }
        }, sdkBackendRequestType).execute();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void makeRequest$lambda$0(ServiceResponseListener serviceResponseListener, BdsRetryService this$0, SdkBackendRequestType sdkBackendRequestType, String endPoint, String httpMethod, List paths, Map queries, Map header, Map body, RequestResponse requestResponse) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(sdkBackendRequestType, "$sdkBackendRequestType");
        Intrinsics.checkNotNullParameter(endPoint, "$endPoint");
        Intrinsics.checkNotNullParameter(httpMethod, "$httpMethod");
        Intrinsics.checkNotNullParameter(paths, "$paths");
        Intrinsics.checkNotNullParameter(queries, "$queries");
        Intrinsics.checkNotNullParameter(header, "$header");
        Intrinsics.checkNotNullParameter(body, "$body");
        if (serviceResponseListener != null) {
            serviceResponseListener.onResponseReceived(requestResponse);
        }
        if (ServiceUtils.isSuccess(requestResponse.getResponseCode())) {
            return;
        }
        String baseUrl = this$0.bdsService.baseUrl;
        Intrinsics.checkNotNullExpressionValue(baseUrl, "baseUrl");
        this$0.saveFailedRequest(sdkBackendRequestType, baseUrl, this$0.bdsService.timeoutInMillis, endPoint, httpMethod, paths, queries, header, body);
    }

    private final void saveFailedRequest(SdkBackendRequestType sdkBackendRequestType, String baseUrl, int timeoutInMillis, String endPoint, String httpMethod, List<String> paths, Map<String, String> queries, Map<String, String> header, Map<String, ? extends Object> body) {
        ArrayList arrayList;
        List<RequestData> failedRequests = getFailedRequests();
        if (failedRequests == null || (arrayList = CollectionsKt.toMutableList((Collection) failedRequests)) == null) {
            arrayList = new ArrayList();
        }
        arrayList.add(new RequestData(sdkBackendRequestType, baseUrl, timeoutInMillis, endPoint, httpMethod, paths, queries, header, body));
        this.sharedPreferences.setFailedRequests(arrayList);
    }

    private final List<RequestData> getFailedRequests() {
        return this.sharedPreferences.getFailedRequests();
    }
}
