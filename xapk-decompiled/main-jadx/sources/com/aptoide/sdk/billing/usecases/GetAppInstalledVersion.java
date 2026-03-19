package com.aptoide.sdk.billing.usecases;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import com.aptoide.sdk.core.logger.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GetAppInstalledVersion.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001b\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0086\u0002¨\u0006\t"}, d2 = {"Lcom/aptoide/sdk/billing/usecases/GetAppInstalledVersion;", "Lcom/aptoide/sdk/billing/usecases/UseCase;", "()V", "invoke", "", "packageName", "", "context", "Landroid/content/Context;", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class GetAppInstalledVersion extends UseCase {
    public static final GetAppInstalledVersion INSTANCE = new GetAppInstalledVersion();

    private GetAppInstalledVersion() {
    }

    public final int invoke(String packageName, Context context) {
        PackageInfo packageInfo;
        Intrinsics.checkNotNullParameter(context, "context");
        super.invokeUseCase();
        if (packageName == null) {
            return -1;
        }
        try {
            if (Build.VERSION.SDK_INT >= 33) {
                packageInfo = context.getPackageManager().getPackageInfo(packageName, PackageManager.PackageInfoFlags.of(0L));
            } else {
                packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
            }
            if (Build.VERSION.SDK_INT >= 28) {
                return (int) packageInfo.getLongVersionCode();
            }
            return packageInfo.versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            Logger.logWarning("Failed to find installed app: " + e);
            return -1;
        }
    }
}
