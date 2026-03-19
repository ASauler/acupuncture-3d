package com.aptoide.sdk.billing.activities;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import com.aptoide.billing.sdk.R;
import com.aptoide.sdk.billing.listeners.PaymentResponseStream;
import com.aptoide.sdk.billing.listeners.SDKPaymentResponse;
import com.aptoide.sdk.billing.utils.AptoideBillingConstants;
import com.aptoide.sdk.core.logger.Logger;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BillingFlowActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0005¢\u0006\u0002\u0010\u0002J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0002J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\u0006H\u0002J\"\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u000f\u001a\u0004\u0018\u00010\bH\u0014J\u0012\u0010\u0010\u001a\u00020\u000b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0006H\u0014J\b\u0010\u0012\u001a\u00020\u000bH\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/aptoide/sdk/billing/activities/BillingFlowActivity;", "Landroid/app/Activity;", "()V", "skuType", "", "getBundleFromExtras", "Landroid/os/Bundle;", "getBuyIntentFromBundle", "Landroid/content/Intent;", "bundle", "onActivityResult", "", "requestCode", "", "resultCode", "data", "onCreate", "savedInstanceState", "saveSkuTypeFromIntent", "Companion", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BillingFlowActivity extends Activity {
    private static final String BUY_BUNDLE = "BUY_BUNDLE";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private String skuType;

    @JvmStatic
    public static final Intent newIntent(Context context, Bundle bundle, String str) {
        return INSTANCE.newIntent(context, bundle, str);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.transparent_activity);
        if (savedInstanceState != null) {
            return;
        }
        try {
            Bundle bundleFromExtras = getBundleFromExtras();
            if (bundleFromExtras == null) {
                Logger.logInfo("Bundle from extras not found. Sending FAILURE response for payment.");
                PaymentResponseStream.getInstance().emit(SDKPaymentResponse.INSTANCE.createErrorTypeResponse());
                finish();
                return;
            }
            saveSkuTypeFromIntent();
            Intent buyIntentFromBundle = getBuyIntentFromBundle(bundleFromExtras);
            if (buyIntentFromBundle == null) {
                Logger.logInfo("Buy Intent from bundle not found. Sending FAILURE response for payment.");
                PaymentResponseStream.getInstance().emit(SDKPaymentResponse.INSTANCE.createErrorTypeResponse());
                finish();
            } else {
                Logger.logInfo("Starting Billing Flow intent package: " + buyIntentFromBundle.getPackage());
                startActivityForResult(buyIntentFromBundle, 51);
            }
        } catch (Exception e) {
            Logger.logError("Failed to start payment activity.", e);
            PaymentResponseStream.getInstance().emit(SDKPaymentResponse.INSTANCE.createErrorTypeResponse());
            finish();
        }
    }

    private final Bundle getBundleFromExtras() {
        if (Build.VERSION.SDK_INT >= 33) {
            return (Bundle) getIntent().getParcelableExtra(BUY_BUNDLE, Bundle.class);
        }
        return (Bundle) getIntent().getParcelableExtra(BUY_BUNDLE);
    }

    private final Intent getBuyIntentFromBundle(Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 33) {
            return (Intent) bundle.getParcelable(AptoideBillingConstants.KEY_BUY_INTENT_RAW, Intent.class);
        }
        return (Intent) bundle.getParcelable(AptoideBillingConstants.KEY_BUY_INTENT_RAW);
    }

    private final void saveSkuTypeFromIntent() {
        String stringExtra = getIntent().getStringExtra(AptoideBillingConstants.SKU_TYPE);
        if (stringExtra != null) {
            this.skuType = stringExtra;
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        Logger.logInfo("Received response from Billing Flow.\nRequest Code: " + requestCode + "\nResult Code: " + resultCode);
        Logger.logDebug("Extras: " + (data != null ? data.getExtras() : null));
        if (data != null) {
            data.putExtra(AptoideBillingConstants.SKU_TYPE, this.skuType);
        }
        PaymentResponseStream.getInstance().emit(new SDKPaymentResponse(resultCode, data));
        finish();
    }

    /* JADX INFO: compiled from: BillingFlowActivity.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/aptoide/sdk/billing/activities/BillingFlowActivity$Companion;", "", "()V", BillingFlowActivity.BUY_BUNDLE, "", "newIntent", "Landroid/content/Intent;", "context", "Landroid/content/Context;", "bundle", "Landroid/os/Bundle;", "skuType", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final Intent newIntent(Context context, Bundle bundle, String skuType) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(skuType, "skuType");
            Intent intent = new Intent(context, (Class<?>) BillingFlowActivity.class);
            intent.putExtra(BillingFlowActivity.BUY_BUNDLE, bundle);
            intent.putExtra(AptoideBillingConstants.SKU_TYPE, skuType);
            intent.setFlags(268500992);
            return intent;
        }
    }
}
