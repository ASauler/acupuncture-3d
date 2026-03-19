package com.aptoide.sdk.billing.usecases.ingameupdates;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import com.aptoide.sdk.billing.usecases.UseCase;
import com.aptoide.sdk.core.logger.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GetInstallerAppPackage.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0086\u0002J\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u0004*\u00020\b2\u0006\u0010\t\u001a\u00020\u0004H\u0002J\u0014\u0010\n\u001a\u00020\u000b*\u00020\b2\u0006\u0010\t\u001a\u00020\u0004H\u0002¨\u0006\f"}, d2 = {"Lcom/aptoide/sdk/billing/usecases/ingameupdates/GetInstallerAppPackage;", "Lcom/aptoide/sdk/billing/usecases/UseCase;", "()V", "invoke", "", "context", "Landroid/content/Context;", "getInstallerInfo", "Landroid/content/pm/PackageManager;", "packageName", "isAppInstalled", "", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class GetInstallerAppPackage extends UseCase {
    public static final GetInstallerAppPackage INSTANCE = new GetInstallerAppPackage();

    private GetInstallerAppPackage() {
    }

    public final String invoke(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.invokeUseCase();
        PackageManager packageManager = context.getPackageManager();
        Intrinsics.checkNotNullExpressionValue(packageManager, "getPackageManager(...)");
        String packageName = context.getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName, "getPackageName(...)");
        return getInstallerInfo(packageManager, packageName);
    }

    private final String getInstallerInfo(PackageManager packageManager, String str) {
        String installerPackageName;
        try {
            if (Build.VERSION.SDK_INT >= 30) {
                installerPackageName = packageManager.getInstallSourceInfo(str).getInstallingPackageName();
            } else {
                installerPackageName = packageManager.getInstallerPackageName(str);
            }
            if (installerPackageName == null) {
                return null;
            }
            if (INSTANCE.isAppInstalled(packageManager, installerPackageName)) {
                return installerPackageName;
            }
            return null;
        } catch (Exception e) {
            Logger.logError("Failed to obtain the Installer App.", e);
            return null;
        }
    }

    private final boolean isAppInstalled(PackageManager packageManager, String str) {
        try {
            packageManager.getPackageInfo(str, 128);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            Logger.logError("Installer App: " + str + " not installed.", e);
            return false;
        }
    }
}
