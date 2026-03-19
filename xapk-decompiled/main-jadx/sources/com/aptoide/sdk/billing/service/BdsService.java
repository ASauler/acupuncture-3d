package com.aptoide.sdk.billing.service;

import com.aptoide.sdk.billing.helpers.WalletUtils;
import com.aptoide.sdk.billing.utils.RequestBuilderUtils;
import com.aptoide.sdk.core.analytics.SdkAnalyticsUtils;
import com.aptoide.sdk.core.analytics.events.SdkBackendRequestType;
import com.aptoide.sdk.core.logger.Logger;
import com.google.common.net.HttpHeaders;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class BdsService implements Service {
    public static final int TIME_OUT_IN_MILLIS = 30000;
    public final String baseUrl;
    public final int timeoutInMillis;

    public BdsService(String str, int i) {
        this.baseUrl = str;
        this.timeoutInMillis = i;
    }

    RequestResponse createRequest(String str, String str2, String str3, List<String> list, Map<String, String> map, Map<String, String> map2, Map<String, Object> map3, SdkBackendRequestType sdkBackendRequestType) {
        String strBuildUrl;
        HttpURLConnection httpURLConnectionOpenUrlConnection;
        InputStream inputStream;
        HttpURLConnection httpURLConnection = null;
        httpURLConnection = null;
        try {
            try {
                strBuildUrl = RequestBuilderUtils.buildUrl(str, str2, list, map);
                Logger.logDebug("Url -> " + strBuildUrl);
                URL url = new URL(strBuildUrl);
                SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendBackendRequestEvent(sdkBackendRequestType, strBuildUrl, str3, list, map2, map, map3);
                httpURLConnectionOpenUrlConnection = openUrlConnection(url, str3);
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            httpURLConnectionOpenUrlConnection.setReadTimeout(this.timeoutInMillis);
            setUserAgent(httpURLConnectionOpenUrlConnection);
            setHeaders(httpURLConnectionOpenUrlConnection, map2);
            handlePostPatchRequests(httpURLConnectionOpenUrlConnection, str3, map3);
            int responseCode = httpURLConnectionOpenUrlConnection.getResponseCode();
            if (responseCode >= 400) {
                inputStream = httpURLConnectionOpenUrlConnection.getErrorStream();
                SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendBackendErrorEvent(sdkBackendRequestType, strBuildUrl, httpURLConnectionOpenUrlConnection.getResponseCode() + " " + httpURLConnectionOpenUrlConnection.getResponseMessage(), WalletUtils.context);
            } else {
                inputStream = httpURLConnectionOpenUrlConnection.getInputStream();
            }
            RequestResponse response = readResponse(inputStream, responseCode);
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendBackendResponseEvent(sdkBackendRequestType, Integer.valueOf(responseCode), response.getResponse(), response.getException() != null ? response.getException().getMessage() : null);
            if (httpURLConnectionOpenUrlConnection != null) {
                httpURLConnectionOpenUrlConnection.disconnect();
            }
            return response;
        } catch (Exception e2) {
            e = e2;
            httpURLConnection = httpURLConnectionOpenUrlConnection;
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendBackendErrorEvent(sdkBackendRequestType, str + str2, e.toString(), WalletUtils.context);
            RequestResponse requestResponseHandleException = handleException(httpURLConnection, e);
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            return requestResponseHandleException;
        } catch (Throwable th2) {
            th = th2;
            httpURLConnection = httpURLConnectionOpenUrlConnection;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            throw th;
        }
    }

    private void handlePostPatchRequests(HttpURLConnection httpURLConnection, String str, Map<String, Object> map) throws IOException {
        if (isValidPostPatchRequest(str, map)) {
            if (str.equals("PATCH")) {
                httpURLConnection.setRequestProperty("X-HTTP-Method-Override", "PATCH");
            }
            setPostOutput(httpURLConnection, map);
        }
    }

    private boolean isValidPostPatchRequest(String str, Map<String, Object> map) {
        return (str.equals("POST") || str.equals("PATCH")) && map != null;
    }

    private void setUserAgent(HttpURLConnection httpURLConnection) {
        httpURLConnection.setRequestProperty(HttpHeaders.USER_AGENT, WalletUtils.INSTANCE.getUserAgent());
    }

    private void setHeaders(HttpURLConnection httpURLConnection, Map<String, String> map) {
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
            }
        }
    }

    private HttpURLConnection openUrlConnection(URL url, String str) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setRequestMethod(str);
        return httpURLConnection;
    }

    private RequestResponse readResponse(InputStream inputStream, int i) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String line = bufferedReader.readLine();
            if (line != null) {
                sb.append(line);
            } else {
                bufferedReader.close();
                return new RequestResponse(i, sb.toString(), null);
            }
        }
    }

    private void setPostOutput(HttpURLConnection httpURLConnection, Map<String, Object> map) throws IOException {
        httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/json");
        httpURLConnection.setRequestProperty(HttpHeaders.ACCEPT, "application/json");
        httpURLConnection.setDoOutput(true);
        OutputStream outputStream = httpURLConnection.getOutputStream();
        byte[] bytes = RequestBuilderUtils.buildBody(map).getBytes();
        outputStream.write(bytes, 0, bytes.length);
    }

    private RequestResponse handleException(HttpURLConnection httpURLConnection, Exception exc) {
        int responseCode;
        Logger.logError("Failed to create backend request: " + exc);
        if (httpURLConnection != null) {
            try {
                responseCode = httpURLConnection.getResponseCode();
            } catch (IOException e) {
                Logger.logError("Failed to read response code from request: " + e);
                responseCode = 500;
            }
        } else {
            responseCode = 500;
        }
        return new RequestResponse(responseCode, null, exc);
    }

    @Override // com.aptoide.sdk.billing.service.Service
    public void makeRequest(String str, String str2, List<String> list, Map<String, String> map, Map<String, String> map2, Map<String, Object> map3, ServiceResponseListener serviceResponseListener, SdkBackendRequestType sdkBackendRequestType) {
        new ServiceAsyncTaskExecutorAsync(this, this.baseUrl, str, str2, list == null ? new ArrayList() : list, map == null ? new HashMap() : map, map2, map3, serviceResponseListener, sdkBackendRequestType).execute();
    }
}
