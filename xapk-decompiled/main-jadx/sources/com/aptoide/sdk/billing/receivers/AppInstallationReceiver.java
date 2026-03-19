package com.aptoide.sdk.billing.receivers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.aptoide.billing.sdk.BuildConfig;
import com.aptoide.sdk.billing.payflow.PayflowManager;
import com.aptoide.sdk.core.analytics.SdkAnalytics;
import com.aptoide.sdk.core.analytics.SdkAnalyticsUtils;
import com.aptoide.sdk.core.analytics.events.SdkInitializationLabels;
import com.aptoide.sdk.core.logger.Logger;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AppInstallationReceiver.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0002J\u001c\u0010\u0005\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\u000b"}, d2 = {"Lcom/aptoide/sdk/billing/receivers/AppInstallationReceiver;", "Landroid/content/BroadcastReceiver;", "()V", "notifyBillingAppChanged", "", "onReceive", "context", "Landroid/content/Context;", SDKConstants.PARAM_INTENT, "Landroid/content/Intent;", "Companion", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AppInstallationReceiver extends BroadcastReceiver {
    private static final Companion Companion = new Companion(null);
    private static final List<String> BILLING_APPS_PACKAGES = CollectionsKt.listOf((Object[]) new String[]{"com.appcoins.wallet", "com.dti.folderlauncher", "com.dti.folderlauncher", BuildConfig.APTOIDE_GAMES_PACKAGE_NAME});

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Logger.logInfo("Received new response for package change " + (intent != null ? intent.getAction() : null));
        if ((intent != null ? intent.getData() : null) == null || context == null) {
            return;
        }
        Uri data = intent.getData();
        Intrinsics.checkNotNull(data);
        String schemeSpecificPart = data.getSchemeSpecificPart();
        if (BILLING_APPS_PACKAGES.contains(schemeSpecificPart)) {
            if (Intrinsics.areEqual("android.intent.action.PACKAGE_ADDED", intent.getAction())) {
                SdkAnalytics sdkAnalytics = SdkAnalyticsUtils.INSTANCE.getSdkAnalytics();
                Intrinsics.checkNotNull(schemeSpecificPart);
                sdkAnalytics.sendAppInstallationTriggerEvent(schemeSpecificPart, SdkInitializationLabels.INSTALLED);
                notifyBillingAppChanged();
                Logger.logInfo("Package installed: " + schemeSpecificPart);
                return;
            }
            if (!Intrinsics.areEqual("android.intent.action.PACKAGE_REMOVED", intent.getAction())) {
                Logger.logInfo("Package changed: " + schemeSpecificPart + " -> " + intent.getAction());
                return;
            }
            SdkAnalytics sdkAnalytics2 = SdkAnalyticsUtils.INSTANCE.getSdkAnalytics();
            Intrinsics.checkNotNull(schemeSpecificPart);
            sdkAnalytics2.sendAppInstallationTriggerEvent(schemeSpecificPart, SdkInitializationLabels.REMOVED);
            notifyBillingAppChanged();
            Logger.logInfo("Package removed: " + schemeSpecificPart);
        }
    }

    private final void notifyBillingAppChanged() {
        new Thread(new Runnable() { // from class: com.aptoide.sdk.billing.receivers.AppInstallationReceiver$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                PayflowManager.getPayflowPriorityAsync();
            }
        }).start();
    }

    /* JADX INFO: compiled from: AppInstallationReceiver.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/aptoide/sdk/billing/receivers/AppInstallationReceiver$Companion;", "", "()V", "BILLING_APPS_PACKAGES", "", "", "getBILLING_APPS_PACKAGES", "()Ljava/util/List;", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List<String> getBILLING_APPS_PACKAGES() {
            return AppInstallationReceiver.BILLING_APPS_PACKAGES;
        }
    }
}
