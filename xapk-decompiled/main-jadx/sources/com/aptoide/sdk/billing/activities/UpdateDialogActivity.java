package com.aptoide.sdk.billing.activities;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import com.aptoide.billing.sdk.R;
import com.aptoide.sdk.billing.usecases.ingameupdates.LaunchAppUpdate;
import com.aptoide.sdk.core.analytics.SdkAnalytics;
import com.aptoide.sdk.core.analytics.SdkAnalyticsUtils;
import com.aptoide.sdk.core.analytics.events.SdkLaunchAppUpdateDialogLabels;
import com.aptoide.sdk.core.logger.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UpdateDialogActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0014J\b\u0010\n\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/aptoide/sdk/billing/activities/UpdateDialogActivity;", "Landroid/app/Activity;", "()V", "sdkAnalytics", "Lcom/aptoide/sdk/core/analytics/SdkAnalytics;", "onBackPressed", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "setActionsForButtons", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UpdateDialogActivity extends Activity {
    private final SdkAnalytics sdkAnalytics = SdkAnalyticsUtils.INSTANCE.getSdkAnalytics();

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.update_dialog_activity);
        Logger.logInfo("Starting UpdateDialogActivity.");
        this.sdkAnalytics.sendLaunchAppUpdateDialogRequestEvent();
        setActionsForButtons();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        Logger.logInfo("User BACK_PRESSED on UpdateDialogActivity.");
        this.sdkAnalytics.sendLaunchAppUpdateDialogActionEvent("back_button");
        super.onBackPressed();
    }

    private final void setActionsForButtons() {
        Button button = (Button) findViewById(R.id.button_update);
        if (button != null) {
            button.setOnClickListener(new View.OnClickListener() { // from class: com.aptoide.sdk.billing.activities.UpdateDialogActivity$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    UpdateDialogActivity.setActionsForButtons$lambda$2$lambda$1(this.f$0, view);
                }
            });
        }
        Button button2 = (Button) findViewById(R.id.button_close);
        if (button2 != null) {
            button2.setOnClickListener(new View.OnClickListener() { // from class: com.aptoide.sdk.billing.activities.UpdateDialogActivity$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    UpdateDialogActivity.setActionsForButtons$lambda$4$lambda$3(this.f$0, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setActionsForButtons$lambda$2$lambda$1(final UpdateDialogActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Logger.logInfo("User pressed UPDATE_APP on UpdateDialogActivity.");
        this$0.sdkAnalytics.sendLaunchAppUpdateDialogActionEvent(SdkLaunchAppUpdateDialogLabels.UPDATE);
        new Thread(new Runnable() { // from class: com.aptoide.sdk.billing.activities.UpdateDialogActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                UpdateDialogActivity.setActionsForButtons$lambda$2$lambda$1$lambda$0(this.f$0);
            }
        }).start();
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setActionsForButtons$lambda$2$lambda$1$lambda$0(UpdateDialogActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        LaunchAppUpdate launchAppUpdate = LaunchAppUpdate.INSTANCE;
        Context applicationContext = this$0.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        launchAppUpdate.invoke(applicationContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setActionsForButtons$lambda$4$lambda$3(UpdateDialogActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Logger.logInfo("User pressed CANCEL on UpdateDialogActivity.");
        this$0.sdkAnalytics.sendLaunchAppUpdateDialogActionEvent(SdkLaunchAppUpdateDialogLabels.CLOSE);
        this$0.finish();
    }
}
