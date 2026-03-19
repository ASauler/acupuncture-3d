package com.aptoide.sdk.core.analytics.events;

import com.aptoide.sdk.core.analytics.manager.AnalyticsManager;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SdkInstallWalletDialogEvents.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\bÆ\u0002\u0018\u00002\u00020\u0001:\u0005\n\u000b\f\r\u000eB\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkInstallWalletDialogEvents;", "", "()V", "INSTALL_WALLET_DIALOG_FLOW", "", "SDK_INSTALL_WALLET_DIALOG", "SDK_INSTALL_WALLET_DIALOG_ACTION", "SDK_INSTALL_WALLET_DIALOG_DOWNLOAD_WALLET_FALLBACK", "SDK_INSTALL_WALLET_DIALOG_DOWNLOAD_WALLET_VANILLA", "SDK_INSTALL_WALLET_DIALOG_SUCCESS", "SdkInstallWalletDialog", "SdkInstallWalletDialogAction", "SdkInstallWalletDialogDownloadWalletFallback", "SdkInstallWalletDialogDownloadWalletVanilla", "SdkInstallWalletDialogSuccess", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SdkInstallWalletDialogEvents {
    public static final String INSTALL_WALLET_DIALOG_FLOW = "install_wallet_dialog";
    public static final SdkInstallWalletDialogEvents INSTANCE = new SdkInstallWalletDialogEvents();
    public static final String SDK_INSTALL_WALLET_DIALOG = "sdk_install_wallet_dialog";
    public static final String SDK_INSTALL_WALLET_DIALOG_ACTION = "sdk_install_wallet_dialog_action";
    public static final String SDK_INSTALL_WALLET_DIALOG_DOWNLOAD_WALLET_FALLBACK = "sdk_install_wallet_dialog_download_wallet_fallback";
    public static final String SDK_INSTALL_WALLET_DIALOG_DOWNLOAD_WALLET_VANILLA = "sdk_install_wallet_dialog_download_wallet_vanilla";
    public static final String SDK_INSTALL_WALLET_DIALOG_SUCCESS = "sdk_install_wallet_dialog_success";

    private SdkInstallWalletDialogEvents() {
    }

    /* JADX INFO: compiled from: SdkInstallWalletDialogEvents.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkInstallWalletDialogEvents$SdkInstallWalletDialog;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "()V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkInstallWalletDialog extends AnalyticsEvent {
        public SdkInstallWalletDialog() {
            super(AnalyticsManager.Action.IMPRESSION, SdkInstallWalletDialogEvents.SDK_INSTALL_WALLET_DIALOG, new LinkedHashMap(), "install_wallet_dialog", 1);
        }
    }

    /* JADX INFO: compiled from: SdkInstallWalletDialogEvents.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkInstallWalletDialogEvents$SdkInstallWalletDialogAction;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "data", "", "", "", "(Ljava/util/Map;)V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkInstallWalletDialogAction extends AnalyticsEvent {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SdkInstallWalletDialogAction(Map<String, Object> data) {
            super(AnalyticsManager.Action.IMPRESSION, SdkInstallWalletDialogEvents.SDK_INSTALL_WALLET_DIALOG_ACTION, data, "install_wallet_dialog", 1);
            Intrinsics.checkNotNullParameter(data, "data");
        }
    }

    /* JADX INFO: compiled from: SdkInstallWalletDialogEvents.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkInstallWalletDialogEvents$SdkInstallWalletDialogDownloadWalletVanilla;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "()V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkInstallWalletDialogDownloadWalletVanilla extends AnalyticsEvent {
        public SdkInstallWalletDialogDownloadWalletVanilla() {
            super(AnalyticsManager.Action.IMPRESSION, SdkInstallWalletDialogEvents.SDK_INSTALL_WALLET_DIALOG_DOWNLOAD_WALLET_VANILLA, new LinkedHashMap(), "install_wallet_dialog", 3);
        }
    }

    /* JADX INFO: compiled from: SdkInstallWalletDialogEvents.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkInstallWalletDialogEvents$SdkInstallWalletDialogDownloadWalletFallback;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "data", "", "", "", "(Ljava/util/Map;)V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkInstallWalletDialogDownloadWalletFallback extends AnalyticsEvent {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SdkInstallWalletDialogDownloadWalletFallback(Map<String, Object> data) {
            super(AnalyticsManager.Action.IMPRESSION, SdkInstallWalletDialogEvents.SDK_INSTALL_WALLET_DIALOG_DOWNLOAD_WALLET_FALLBACK, data, "install_wallet_dialog", 3);
            Intrinsics.checkNotNullParameter(data, "data");
        }
    }

    /* JADX INFO: compiled from: SdkInstallWalletDialogEvents.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkInstallWalletDialogEvents$SdkInstallWalletDialogSuccess;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "()V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkInstallWalletDialogSuccess extends AnalyticsEvent {
        public SdkInstallWalletDialogSuccess() {
            super(AnalyticsManager.Action.IMPRESSION, SdkInstallWalletDialogEvents.SDK_INSTALL_WALLET_DIALOG_SUCCESS, new LinkedHashMap(), "install_wallet_dialog", 1);
        }
    }
}
