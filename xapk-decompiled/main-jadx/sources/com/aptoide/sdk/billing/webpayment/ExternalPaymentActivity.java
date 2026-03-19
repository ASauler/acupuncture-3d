package com.aptoide.sdk.billing.webpayment;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.browser.customtabs.CustomTabsIntent;
import com.aptoide.billing.sdk.R;
import com.aptoide.sdk.billing.listeners.ExternalPaymentResponseStream;
import com.aptoide.sdk.billing.listeners.PaymentResponseStream;
import com.aptoide.sdk.billing.listeners.SDKPaymentResponse;
import com.aptoide.sdk.core.logger.Logger;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ExternalPaymentActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u0000 \u00122\u00020\u00012\u00020\u0002:\u0001\u0012B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0002J\u0012\u0010\t\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0014J\b\u0010\f\u001a\u00020\u0007H\u0014J\b\u0010\r\u001a\u00020\u0007H\u0014J\b\u0010\u000e\u001a\u00020\u0007H\u0002J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0011H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/aptoide/sdk/billing/webpayment/ExternalPaymentActivity;", "Landroid/app/Activity;", "Lcom/aptoide/sdk/billing/listeners/ExternalPaymentResponseStream$Consumer;", "()V", "customTabLaunched", "", "accept", "", "observeExternalPaymentResponseStream", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onResume", "removeExternalPaymentResponseStreamCollector", "startCustomTabForExternalPayment", "url", "", "Companion", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ExternalPaymentActivity extends Activity implements ExternalPaymentResponseStream.Consumer {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String SHOULD_CLOSE_ACTIVITY = "SHOULD_CLOSE_ACTIVITY";
    private static final String URL = "URL";
    private boolean customTabLaunched;

    @JvmStatic
    public static final Intent newIntent(Context context, String str, boolean z) {
        return INSTANCE.newIntent(context, str, z);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.transparent_activity);
        if (getIntent().getBooleanExtra(SHOULD_CLOSE_ACTIVITY, false)) {
            Logger.logInfo("Closing External Payment Method on shouldCloseActivity.");
            finish();
            return;
        }
        String stringExtra = getIntent().getStringExtra(URL);
        if (stringExtra == null) {
            Logger.logError("URL not present in the Bundle. Aborting External Payment Method.");
            PaymentResponseStream.getInstance().emit(SDKPaymentResponse.INSTANCE.createErrorTypeResponse());
            finish();
        } else if (savedInstanceState != null) {
            Logger.logInfo("SavedInstanceState is not null. Closing External Payment Method.");
            finish();
        } else {
            observeExternalPaymentResponseStream();
            startCustomTabForExternalPayment(stringExtra);
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.customTabLaunched) {
            finish();
        } else {
            this.customTabLaunched = true;
        }
    }

    private final void startCustomTabForExternalPayment(String url) {
        CustomTabsIntent customTabsIntentBuild = new CustomTabsIntent.Builder().build();
        Intrinsics.checkNotNullExpressionValue(customTabsIntentBuild, "build(...)");
        customTabsIntentBuild.launchUrl(this, Uri.parse(url));
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        removeExternalPaymentResponseStreamCollector();
        setResult(-1);
        super.onDestroy();
    }

    @Override // com.aptoide.sdk.billing.listeners.ExternalPaymentResponseStream.Consumer
    public void accept() {
        startActivity(INSTANCE.newIntent(this, null, true));
    }

    private final void observeExternalPaymentResponseStream() {
        ExternalPaymentResponseStream.getInstance().collect(this);
    }

    private final void removeExternalPaymentResponseStreamCollector() {
        ExternalPaymentResponseStream.getInstance().removeCollector(this);
    }

    /* JADX INFO: compiled from: ExternalPaymentActivity.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J$\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u000b\u001a\u00020\fH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/aptoide/sdk/billing/webpayment/ExternalPaymentActivity$Companion;", "", "()V", ExternalPaymentActivity.SHOULD_CLOSE_ACTIVITY, "", ExternalPaymentActivity.URL, "newIntent", "Landroid/content/Intent;", "context", "Landroid/content/Context;", "url", "shouldCloseActivity", "", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ Intent newIntent$default(Companion companion, Context context, String str, boolean z, int i, Object obj) {
            if ((i & 4) != 0) {
                z = false;
            }
            return companion.newIntent(context, str, z);
        }

        @JvmStatic
        public final Intent newIntent(Context context, String url, boolean shouldCloseActivity) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intent intent = new Intent(context, (Class<?>) ExternalPaymentActivity.class);
            intent.putExtra(ExternalPaymentActivity.URL, url);
            intent.putExtra(ExternalPaymentActivity.SHOULD_CLOSE_ACTIVITY, shouldCloseActivity);
            if (shouldCloseActivity) {
                intent.addFlags(67108864);
            }
            return intent;
        }
    }
}
