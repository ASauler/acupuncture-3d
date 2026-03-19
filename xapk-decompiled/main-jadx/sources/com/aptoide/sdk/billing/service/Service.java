package com.aptoide.sdk.billing.service;

import com.aptoide.sdk.core.analytics.events.SdkBackendRequestType;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface Service {
    void makeRequest(String str, String str2, List<String> list, Map<String, String> map, Map<String, String> map2, Map<String, Object> map3, ServiceResponseListener serviceResponseListener, SdkBackendRequestType sdkBackendRequestType);
}
