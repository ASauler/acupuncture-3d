package com.aptoide.sdk.billing.activities;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.aptoide.billing.sdk.R;
import com.aptoide.sdk.billing.listeners.PaymentResponseStream;
import com.aptoide.sdk.billing.listeners.SDKPaymentResponse;
import com.aptoide.sdk.core.logger.Logger;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UnavailableBillingDialogActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \f2\u00020\u0001:\u0001\fB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0002J\u0012\u0010\u0007\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0014J\b\u0010\n\u001a\u00020\u0004H\u0002J\b\u0010\u000b\u001a\u00020\u0004H\u0002¨\u0006\r"}, d2 = {"Lcom/aptoide/sdk/billing/activities/UnavailableBillingDialogActivity;", "Landroid/app/Activity;", "()V", "finish", "", "getErrorMessage", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "setupButtons", "setupMessage", "Companion", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UnavailableBillingDialogActivity extends Activity {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String ERROR_MESSAGE = "ERROR_MESSAGE";

    @JvmStatic
    public static final Intent newIntent(Context context, String str) {
        return INSTANCE.newIntent(context, str);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.unavailable_billing_dialog_activity);
        Logger.logInfo("Starting UnavailableBillingDialogActivity.");
        setupMessage();
        setupButtons();
    }

    private final void setupMessage() {
        TextView textView = (TextView) findViewById(R.id.text_view_unavailable_billing_error_message);
        if (textView != null) {
            String errorMessage = getErrorMessage();
            if (errorMessage == null) {
                errorMessage = getResources().getString(R.string.sdk_unavailable_description_body);
            }
            textView.setText(errorMessage);
        }
    }

    @Override // android.app.Activity
    public void finish() {
        PaymentResponseStream.getInstance().emit(SDKPaymentResponse.INSTANCE.createServiceUnavailableResponse());
        super.finish();
    }

    private final void setupButtons() {
        Button button = (Button) findViewById(R.id.button_close);
        if (button != null) {
            button.setOnClickListener(new View.OnClickListener() { // from class: com.aptoide.sdk.billing.activities.UnavailableBillingDialogActivity$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    UnavailableBillingDialogActivity.setupButtons$lambda$2$lambda$1(this.f$0, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupButtons$lambda$2$lambda$1(UnavailableBillingDialogActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.finish();
    }

    private final String getErrorMessage() {
        return getIntent().getStringExtra(ERROR_MESSAGE);
    }

    /* JADX INFO: compiled from: UnavailableBillingDialogActivity.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/aptoide/sdk/billing/activities/UnavailableBillingDialogActivity$Companion;", "", "()V", UnavailableBillingDialogActivity.ERROR_MESSAGE, "", "newIntent", "Landroid/content/Intent;", "context", "Landroid/content/Context;", "errorMessage", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x001e  */
        @kotlin.jvm.JvmStatic
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final android.content.Intent newIntent(android.content.Context r3, java.lang.String r4) {
            /*
                r2 = this;
                java.lang.String r0 = "context"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
                android.content.Intent r0 = new android.content.Intent
                java.lang.Class<com.aptoide.sdk.billing.activities.UnavailableBillingDialogActivity> r1 = com.aptoide.sdk.billing.activities.UnavailableBillingDialogActivity.class
                r0.<init>(r3, r1)
                r3 = 0
                if (r4 == 0) goto L1e
                r1 = r4
                java.lang.CharSequence r1 = (java.lang.CharSequence) r1
                int r1 = r1.length()
                if (r1 <= 0) goto L1a
                r1 = 1
                goto L1b
            L1a:
                r1 = 0
            L1b:
                if (r1 == 0) goto L1e
                goto L1f
            L1e:
                r4 = r3
            L1f:
                java.lang.String r3 = "ERROR_MESSAGE"
                r0.putExtra(r3, r4)
                r3 = 268500992(0x10010000, float:2.5440764E-29)
                r0.setFlags(r3)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.aptoide.sdk.billing.activities.UnavailableBillingDialogActivity.Companion.newIntent(android.content.Context, java.lang.String):android.content.Intent");
        }
    }
}
