package com.aptoide.sdk.core.analytics.events;

import com.aptoide.sdk.core.analytics.manager.AnalyticsManager;
import java.util.LinkedHashMap;
import kotlin.Metadata;

/* JADX INFO: compiled from: SdkLaunchAppUpdateStoreEvents.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0006B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateStoreEvents;", "", "()V", "LAUNCH_APP_UPDATE_STORE_FLOW", "", "SDK_LAUNCH_APP_UPDATE_STORE_REQUEST", "SdkLaunchAppUpdateStoreRequest", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SdkLaunchAppUpdateStoreEvents {
    public static final SdkLaunchAppUpdateStoreEvents INSTANCE = new SdkLaunchAppUpdateStoreEvents();
    public static final String LAUNCH_APP_UPDATE_STORE_FLOW = "launch_app_update_store";
    public static final String SDK_LAUNCH_APP_UPDATE_STORE_REQUEST = "sdk_launch_app_update_store_request";

    private SdkLaunchAppUpdateStoreEvents() {
    }

    /* JADX INFO: compiled from: SdkLaunchAppUpdateStoreEvents.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateStoreEvents$SdkLaunchAppUpdateStoreRequest;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "()V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkLaunchAppUpdateStoreRequest extends AnalyticsEvent {
        public SdkLaunchAppUpdateStoreRequest() {
            super(AnalyticsManager.Action.IMPRESSION, SdkLaunchAppUpdateStoreEvents.SDK_LAUNCH_APP_UPDATE_STORE_REQUEST, new LinkedHashMap(), SdkLaunchAppUpdateStoreEvents.LAUNCH_APP_UPDATE_STORE_FLOW, 1);
        }
    }
}
