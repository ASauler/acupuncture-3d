package com.aptoide.sdk.billing.usecases.ingameupdates;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.aptoide.billing.sdk.BuildConfig;
import com.aptoide.sdk.billing.managers.StoreLinkMapperManager;
import com.aptoide.sdk.billing.mappers.StoreLinkMethod;
import com.aptoide.sdk.billing.mappers.StoreLinkResponse;
import com.aptoide.sdk.billing.usecases.UseCase;
import com.aptoide.sdk.core.analytics.SdkAnalyticsUtils;
import com.aptoide.sdk.core.logger.Logger;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LaunchAppUpdate.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0011\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0086\u0002J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0004H\u0002¨\u0006\f"}, d2 = {"Lcom/aptoide/sdk/billing/usecases/ingameupdates/LaunchAppUpdate;", "Lcom/aptoide/sdk/billing/usecases/UseCase;", "()V", "getDefaultStoreDeepLink", "", "context", "Landroid/content/Context;", "invoke", "", "launchDeeplink", "", "deeplink", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class LaunchAppUpdate extends UseCase {
    public static final LaunchAppUpdate INSTANCE = new LaunchAppUpdate();

    private LaunchAppUpdate() {
    }

    public final void invoke(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.invokeUseCase();
        Logger.logInfo("LaunchAppUpdate");
        StoreLinkResponse storeDeepLink = new StoreLinkMapperManager(context).getStoreDeepLink();
        ArrayList<StoreLinkMethod> storeLinkMethods = storeDeepLink != null ? storeDeepLink.getStoreLinkMethods() : null;
        ArrayList<StoreLinkMethod> arrayList = storeLinkMethods;
        if (arrayList == null || arrayList.isEmpty()) {
            launchDeeplink(context, getDefaultStoreDeepLink(context));
            return;
        }
        Iterator<T> it = storeLinkMethods.iterator();
        while (it.hasNext()) {
            if (INSTANCE.launchDeeplink(context, ((StoreLinkMethod) it.next()).getDeeplink())) {
                return;
            }
        }
        launchDeeplink(context, getDefaultStoreDeepLink(context));
    }

    private final boolean launchDeeplink(Context context, String deeplink) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(deeplink));
        intent.addFlags(268435456);
        intent.addFlags(32768);
        try {
            context.startActivity(intent);
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendLaunchAppUpdateResultEvent(deeplink);
            return true;
        } catch (ActivityNotFoundException e) {
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendLaunchAppUpdateDeeplinkFailureEvent(deeplink);
            Logger.logError("Failed to launch App Update Deeplink: " + e);
            return false;
        }
    }

    private final String getDefaultStoreDeepLink(Context context) {
        GetVanillaDeepLink getVanillaDeepLink = GetVanillaDeepLink.INSTANCE;
        String packageName = context.getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName, "getPackageName(...)");
        String strInvoke = getVanillaDeepLink.invoke(packageName);
        if (!IsAppInstalled.INSTANCE.invoke(context, BuildConfig.APTOIDE_PACKAGE_NAME)) {
            strInvoke = null;
        }
        if (strInvoke != null) {
            return strInvoke;
        }
        GetDefaultMarketDeepLink getDefaultMarketDeepLink = GetDefaultMarketDeepLink.INSTANCE;
        String packageName2 = context.getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName2, "getPackageName(...)");
        return getDefaultMarketDeepLink.invoke(packageName2);
    }
}
