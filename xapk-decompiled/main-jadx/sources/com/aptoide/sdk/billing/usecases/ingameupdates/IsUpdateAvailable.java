package com.aptoide.sdk.billing.usecases.ingameupdates;

import android.content.Context;
import com.aptoide.sdk.billing.managers.StoreLinkMapperManager;
import com.aptoide.sdk.billing.usecases.UseCase;
import com.aptoide.sdk.core.analytics.SdkAnalyticsUtils;
import com.aptoide.sdk.core.logger.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: IsUpdateAvailable.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0011\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0086\u0002¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/billing/usecases/ingameupdates/IsUpdateAvailable;", "Lcom/aptoide/sdk/billing/usecases/UseCase;", "()V", "invoke", "", "context", "Landroid/content/Context;", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class IsUpdateAvailable extends UseCase {
    public static final IsUpdateAvailable INSTANCE = new IsUpdateAvailable();

    private IsUpdateAvailable() {
    }

    public final boolean invoke(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.invokeUseCase();
        try {
            return new StoreLinkMapperManager(context).getNewVersionAvailability().isNewVersionAvailable();
        } catch (Exception e) {
            Logger.logError("Failed to verify if update available: " + e);
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendAppUpdateAvailableFailureToObtainResult();
            return false;
        }
    }
}
