package com.aptoide.sdk.billing;

import android.app.Activity;
import android.net.Uri;
import android.os.Bundle;
import com.aptoide.sdk.billing.listeners.ExternalPaymentResponseStream;
import com.aptoide.sdk.billing.listeners.WebPaymentActionStream;
import com.aptoide.sdk.billing.models.ResponseType;
import com.aptoide.sdk.billing.usecases.HandlePurchaseResultFromWalletDeeplink;
import com.aptoide.sdk.core.logger.Logger;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: compiled from: WebIapCommunicationActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0005¢\u0006\u0002\u0010\u0002J\u0017\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002¢\u0006\u0002\u0010\u0007J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\b\u0010\n\u001a\u00020\tH\u0002J\u0012\u0010\u000b\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0014J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002¨\u0006\u0012"}, d2 = {"Lcom/aptoide/sdk/billing/WebIapCommunicationActivity;", "Landroid/app/Activity;", "()V", "getResponseTypeFromURI", "", "uri", "Landroid/net/Uri;", "(Landroid/net/Uri;)Ljava/lang/Integer;", "handleOldResult", "", "handleResult", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "verifyPurchaseResult", WebIapCommunicationActivity.PURCHASE_RESULT_KEY, "", "Companion", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class WebIapCommunicationActivity extends Activity {
    private static final Companion Companion = new Companion(null);

    @Deprecated
    public static final String PURCHASE_RESULT_KEY = "purchaseResult";

    @Deprecated
    public static final String PURCHASE_TOKEN_KEY = "purchaseToken";

    @Deprecated
    public static final String RESPONSE_CODE_KEY = "responseCode";

    @Deprecated
    public static final String RESPONSE_TYPE_KEY = "responseType";

    /* JADX INFO: compiled from: WebIapCommunicationActivity.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ResponseType.values().length];
            try {
                iArr[ResponseType.EXTERNAL_PAYMENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ResponseType.WEB_PAYMENT_ACTION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Logger.logInfo("Deeplink to SDK requested.");
        handleResult();
        finish();
    }

    private final void handleResult() {
        Uri data = getIntent().getData();
        if (data != null) {
            Logger.logDebug(String.valueOf(data));
            ResponseType responseTypeFromValue = ResponseType.INSTANCE.fromValue(getResponseTypeFromURI(data));
            int i = responseTypeFromValue == null ? -1 : WhenMappings.$EnumSwitchMapping$0[responseTypeFromValue.ordinal()];
            if (i == 1) {
                ExternalPaymentResponseStream.getInstance().emit();
            } else if (i == 2) {
                WebPaymentActionStream.getInstance().emit(data.toString());
            } else {
                handleOldResult(data);
            }
        }
    }

    private final void handleOldResult(Uri uri) {
        String queryParameter = uri.getQueryParameter(PURCHASE_RESULT_KEY);
        if (queryParameter != null) {
            verifyPurchaseResult(queryParameter);
        }
    }

    private final void verifyPurchaseResult(String purchaseResult) {
        try {
            JSONObject jSONObject = new JSONObject(URLDecoder.decode(purchaseResult, StandardCharsets.UTF_8.name()));
            int i = jSONObject.getInt("responseCode");
            String strOptString = jSONObject.optString("purchaseToken");
            Intrinsics.checkNotNull(strOptString);
            if (!(strOptString.length() > 0)) {
                strOptString = null;
            }
            Logger.logInfo("Received Purchase Result from Wallet Deeplink. ResponseCode: " + i);
            HandlePurchaseResultFromWalletDeeplink.INSTANCE.invoke(i, strOptString);
        } catch (Exception e) {
            Logger.logError("There was an error with the Purchase Result from Deeplink.", e);
            HandlePurchaseResultFromWalletDeeplink.INSTANCE.invoke(ResponseCode.ERROR.getValue(), null);
        }
    }

    private final Integer getResponseTypeFromURI(Uri uri) {
        String queryParameter = uri.getQueryParameter(RESPONSE_TYPE_KEY);
        if (queryParameter == null) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt(queryParameter));
        } catch (Exception e) {
            Logger.logError("Failed to parse ResponseType.", e);
            return null;
        }
    }

    /* JADX INFO: compiled from: WebIapCommunicationActivity.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/aptoide/sdk/billing/WebIapCommunicationActivity$Companion;", "", "()V", "PURCHASE_RESULT_KEY", "", "PURCHASE_TOKEN_KEY", "RESPONSE_CODE_KEY", "RESPONSE_TYPE_KEY", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
