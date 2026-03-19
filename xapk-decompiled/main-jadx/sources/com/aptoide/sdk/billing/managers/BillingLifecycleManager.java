package com.aptoide.sdk.billing.managers;

import android.content.Context;
import android.content.IntentFilter;
import com.aptoide.sdk.billing.payflow.PayflowManager;
import com.aptoide.sdk.billing.receivers.AppInstallationReceiver;
import com.aptoide.sdk.core.logger.Logger;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BillingLifecycleManager.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u0010\u0010\u000f\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\b¨\u0006\u0010"}, d2 = {"Lcom/aptoide/sdk/billing/managers/BillingLifecycleManager;", "", "()V", "PACKAGE_SCHEME", "", "appInstallationReceiver", "Lcom/aptoide/sdk/billing/receivers/AppInstallationReceiver;", "getAppInstallationReceiver", "()Lcom/aptoide/sdk/billing/receivers/AppInstallationReceiver;", "appInstallationReceiver$delegate", "Lkotlin/Lazy;", "finishBillingService", "", "context", "Landroid/content/Context;", "setupBillingService", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BillingLifecycleManager {
    private static final String PACKAGE_SCHEME = "package";
    public static final BillingLifecycleManager INSTANCE = new BillingLifecycleManager();

    /* JADX INFO: renamed from: appInstallationReceiver$delegate, reason: from kotlin metadata */
    private static final Lazy appInstallationReceiver = LazyKt.lazy(new Function0<AppInstallationReceiver>() { // from class: com.aptoide.sdk.billing.managers.BillingLifecycleManager$appInstallationReceiver$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final AppInstallationReceiver invoke() {
            return new AppInstallationReceiver();
        }
    });

    private BillingLifecycleManager() {
    }

    private final AppInstallationReceiver getAppInstallationReceiver() {
        return (AppInstallationReceiver) appInstallationReceiver.getValue();
    }

    @JvmStatic
    public static final void setupBillingService(final Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        new Thread(new Runnable() { // from class: com.aptoide.sdk.billing.managers.BillingLifecycleManager$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                BillingLifecycleManager.setupBillingService$lambda$0(context);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupBillingService$lambda$0(Context context) {
        Intrinsics.checkNotNullParameter(context, "$context");
        AttributionManager.INSTANCE.getAttributionForUser(new Function0<Unit>() { // from class: com.aptoide.sdk.billing.managers.BillingLifecycleManager$setupBillingService$1$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                PayflowManager.getPayflowPriorityAsync();
            }
        });
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addDataScheme(PACKAGE_SCHEME);
        context.getApplicationContext().registerReceiver(INSTANCE.getAppInstallationReceiver(), intentFilter);
    }

    @JvmStatic
    public static final void finishBillingService(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            context.unregisterReceiver(INSTANCE.getAppInstallationReceiver());
        } catch (Exception e) {
            Logger.logError("Failed to unregister AppInstallationReceiver: " + e);
        }
    }
}
