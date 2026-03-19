package com.aptoide.sdk.billing.usecases;

import com.aptoide.sdk.core.analytics.SdkAnalyticsUtils;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import kotlin.Metadata;

/* JADX INFO: compiled from: SendAttributionRetryAttempt.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0019\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0086\u0002¨\u0006\t"}, d2 = {"Lcom/aptoide/sdk/billing/usecases/SendAttributionRetryAttempt;", "Lcom/aptoide/sdk/billing/usecases/UseCase;", "()V", "invoke", "", "attempts", "", SDKConstants.PARAM_DEBUG_MESSAGE_TIMESTAMP, "", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SendAttributionRetryAttempt extends UseCase {
    public static final SendAttributionRetryAttempt INSTANCE = new SendAttributionRetryAttempt();

    private SendAttributionRetryAttempt() {
    }

    public final void invoke(int attempts, long timestamp) {
        super.invokeUseCase();
        Date date = new Date(timestamp);
        Date date2 = new Date(System.currentTimeMillis());
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());
        SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendAttributionRetryAttemptEvent("Attempting to request Attribution for " + attempts + " attempt. Initial date of Attribution: " + simpleDateFormat.format(date) + ". Current date: " + simpleDateFormat.format(date2) + ".");
    }
}
