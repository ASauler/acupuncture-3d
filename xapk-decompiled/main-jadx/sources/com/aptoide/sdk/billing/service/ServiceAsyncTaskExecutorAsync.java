package com.aptoide.sdk.billing.service;

import android.os.Handler;
import android.os.Looper;
import com.aptoide.sdk.core.analytics.events.SdkBackendRequestLabels;
import com.aptoide.sdk.core.analytics.events.SdkBackendRequestType;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ServiceAsyncTaskExecutorAsync.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010!\n\u0000\n\u0002\u0010%\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0083\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\t\u0012\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000b\u0012\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000b\u0012\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\b\u0001\u0012\u00020\u00010\u000b\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011¢\u0006\u0002\u0010\u0012J\u0006\u0010\u0013\u001a\u00020\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\b\u0001\u0012\u00020\u00010\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;", "", "bdsService", "Lcom/aptoide/sdk/billing/service/BdsService;", "baseUrl", "", "endPoint", "httpMethod", SdkBackendRequestLabels.PATHS, "", SdkBackendRequestLabels.QUERIES, "", "header", "body", "serviceResponseListener", "Lcom/aptoide/sdk/billing/service/ServiceResponseListener;", "sdkBackendRequestType", "Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;", "(Lcom/aptoide/sdk/billing/service/BdsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/aptoide/sdk/billing/service/ServiceResponseListener;Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;)V", "execute", "", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ServiceAsyncTaskExecutorAsync {
    private final String baseUrl;
    private final BdsService bdsService;
    private final Map<String, ? extends Object> body;
    private final String endPoint;
    private final Map<String, String> header;
    private final String httpMethod;
    private final List<String> paths;
    private final Map<String, String> queries;
    private final SdkBackendRequestType sdkBackendRequestType;
    private final ServiceResponseListener serviceResponseListener;

    public ServiceAsyncTaskExecutorAsync(BdsService bdsService, String baseUrl, String endPoint, String httpMethod, List<String> paths, Map<String, String> queries, Map<String, String> header, Map<String, ? extends Object> body, ServiceResponseListener serviceResponseListener, SdkBackendRequestType sdkBackendRequestType) {
        Intrinsics.checkNotNullParameter(bdsService, "bdsService");
        Intrinsics.checkNotNullParameter(baseUrl, "baseUrl");
        Intrinsics.checkNotNullParameter(endPoint, "endPoint");
        Intrinsics.checkNotNullParameter(httpMethod, "httpMethod");
        Intrinsics.checkNotNullParameter(paths, "paths");
        Intrinsics.checkNotNullParameter(queries, "queries");
        Intrinsics.checkNotNullParameter(header, "header");
        Intrinsics.checkNotNullParameter(body, "body");
        Intrinsics.checkNotNullParameter(sdkBackendRequestType, "sdkBackendRequestType");
        this.bdsService = bdsService;
        this.baseUrl = baseUrl;
        this.endPoint = endPoint;
        this.httpMethod = httpMethod;
        this.paths = paths;
        this.queries = queries;
        this.header = header;
        this.body = body;
        this.serviceResponseListener = serviceResponseListener;
        this.sdkBackendRequestType = sdkBackendRequestType;
    }

    public final void execute() {
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        final Handler handler = new Handler(Looper.getMainLooper());
        executorServiceNewSingleThreadExecutor.execute(new Runnable() { // from class: com.aptoide.sdk.billing.service.ServiceAsyncTaskExecutorAsync$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                ServiceAsyncTaskExecutorAsync.execute$lambda$1(this.f$0, handler);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void execute$lambda$1(final ServiceAsyncTaskExecutorAsync this$0, Handler handler) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(handler, "$handler");
        final RequestResponse requestResponseCreateRequest = this$0.bdsService.createRequest(this$0.baseUrl, this$0.endPoint, this$0.httpMethod, this$0.paths, this$0.queries, this$0.header, this$0.body, this$0.sdkBackendRequestType);
        handler.post(new Runnable() { // from class: com.aptoide.sdk.billing.service.ServiceAsyncTaskExecutorAsync$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ServiceAsyncTaskExecutorAsync.execute$lambda$1$lambda$0(this.f$0, requestResponseCreateRequest);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void execute$lambda$1$lambda$0(ServiceAsyncTaskExecutorAsync this$0, RequestResponse requestResponse) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ServiceResponseListener serviceResponseListener = this$0.serviceResponseListener;
        if (serviceResponseListener != null) {
            serviceResponseListener.onResponseReceived(requestResponse);
        }
    }
}
