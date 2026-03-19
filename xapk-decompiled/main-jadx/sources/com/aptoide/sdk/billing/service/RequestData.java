package com.aptoide.sdk.billing.service;

import com.aptoide.sdk.core.analytics.events.SdkBackendRequestLabels;
import com.aptoide.sdk.core.analytics.events.SdkBackendRequestType;
import java.io.Serializable;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RequestData.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0010\u0018\u00002\u00020\u0001By\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u000b\u0012\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\r\u0012\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\r\u0012\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00100\r¢\u0006\u0002\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u001d\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00100\r¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0013R\u001d\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\r¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0015R\u0011\u0010\t\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0013R\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u001d\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\r¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0015R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001f¨\u0006 "}, d2 = {"Lcom/aptoide/sdk/billing/service/RequestData;", "Ljava/io/Serializable;", "sdkBackendRequestType", "Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;", "baseUrl", "", "timeoutInMillis", "", "endPoint", "httpMethod", SdkBackendRequestLabels.PATHS, "", SdkBackendRequestLabels.QUERIES, "", "header", "body", "", "(Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V", "getBaseUrl", "()Ljava/lang/String;", "getBody", "()Ljava/util/Map;", "getEndPoint", "getHeader", "getHttpMethod", "getPaths", "()Ljava/util/List;", "getQueries", "getSdkBackendRequestType", "()Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;", "getTimeoutInMillis", "()I", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RequestData implements Serializable {
    private final String baseUrl;
    private final Map<String, Object> body;
    private final String endPoint;
    private final Map<String, String> header;
    private final String httpMethod;
    private final List<String> paths;
    private final Map<String, String> queries;
    private final SdkBackendRequestType sdkBackendRequestType;
    private final int timeoutInMillis;

    public RequestData(SdkBackendRequestType sdkBackendRequestType, String baseUrl, int i, String str, String httpMethod, List<String> paths, Map<String, String> queries, Map<String, String> header, Map<String, ? extends Object> body) {
        Intrinsics.checkNotNullParameter(sdkBackendRequestType, "sdkBackendRequestType");
        Intrinsics.checkNotNullParameter(baseUrl, "baseUrl");
        Intrinsics.checkNotNullParameter(httpMethod, "httpMethod");
        Intrinsics.checkNotNullParameter(paths, "paths");
        Intrinsics.checkNotNullParameter(queries, "queries");
        Intrinsics.checkNotNullParameter(header, "header");
        Intrinsics.checkNotNullParameter(body, "body");
        this.sdkBackendRequestType = sdkBackendRequestType;
        this.baseUrl = baseUrl;
        this.timeoutInMillis = i;
        this.endPoint = str;
        this.httpMethod = httpMethod;
        this.paths = paths;
        this.queries = queries;
        this.header = header;
        this.body = body;
    }

    public final SdkBackendRequestType getSdkBackendRequestType() {
        return this.sdkBackendRequestType;
    }

    public final String getBaseUrl() {
        return this.baseUrl;
    }

    public final int getTimeoutInMillis() {
        return this.timeoutInMillis;
    }

    public final String getEndPoint() {
        return this.endPoint;
    }

    public final String getHttpMethod() {
        return this.httpMethod;
    }

    public final List<String> getPaths() {
        return this.paths;
    }

    public final Map<String, String> getQueries() {
        return this.queries;
    }

    public final Map<String, String> getHeader() {
        return this.header;
    }

    public final Map<String, Object> getBody() {
        return this.body;
    }
}
