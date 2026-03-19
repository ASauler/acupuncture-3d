package com.aptoide.sdk.core.analytics.events;

import com.aptoide.sdk.core.analytics.manager.AnalyticsManager;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SdkLaunchAppUpdateDialogEvents.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002\u0007\bB\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateDialogEvents;", "", "()V", "LAUNCH_APP_UPDATE_DIALOG_FLOW", "", "SDK_LAUNCH_APP_UPDATE_DIALOG_ACTION", "SDK_LAUNCH_APP_UPDATE_DIALOG_REQUEST", "SdkLaunchAppUpdateDialogAction", "SdkLaunchAppUpdateDialogRequest", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SdkLaunchAppUpdateDialogEvents {
    public static final SdkLaunchAppUpdateDialogEvents INSTANCE = new SdkLaunchAppUpdateDialogEvents();
    public static final String LAUNCH_APP_UPDATE_DIALOG_FLOW = "launch_app_update_dialog";
    public static final String SDK_LAUNCH_APP_UPDATE_DIALOG_ACTION = "sdk_launch_app_update_dialog_action";
    public static final String SDK_LAUNCH_APP_UPDATE_DIALOG_REQUEST = "sdk_launch_app_update_dialog_request";

    private SdkLaunchAppUpdateDialogEvents() {
    }

    /* JADX INFO: compiled from: SdkLaunchAppUpdateDialogEvents.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateDialogEvents$SdkLaunchAppUpdateDialogRequest;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "()V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkLaunchAppUpdateDialogRequest extends AnalyticsEvent {
        public SdkLaunchAppUpdateDialogRequest() {
            super(AnalyticsManager.Action.IMPRESSION, SdkLaunchAppUpdateDialogEvents.SDK_LAUNCH_APP_UPDATE_DIALOG_REQUEST, new LinkedHashMap(), SdkLaunchAppUpdateDialogEvents.LAUNCH_APP_UPDATE_DIALOG_FLOW, 1);
        }
    }

    /* JADX INFO: compiled from: SdkLaunchAppUpdateDialogEvents.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateDialogEvents$SdkLaunchAppUpdateDialogAction;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "data", "", "", "", "(Ljava/util/Map;)V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkLaunchAppUpdateDialogAction extends AnalyticsEvent {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SdkLaunchAppUpdateDialogAction(Map<String, Object> data) {
            super(AnalyticsManager.Action.CLICK, SdkLaunchAppUpdateDialogEvents.SDK_LAUNCH_APP_UPDATE_DIALOG_ACTION, data, SdkLaunchAppUpdateDialogEvents.LAUNCH_APP_UPDATE_DIALOG_FLOW, 1);
            Intrinsics.checkNotNullParameter(data, "data");
        }
    }
}
