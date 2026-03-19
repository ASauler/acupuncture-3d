package com.aptoide.sdk.billing.usecases.ingameupdates;

import android.content.Context;
import android.content.pm.PackageManager;
import com.aptoide.sdk.billing.usecases.UseCase;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: IsAppInstalled.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0019\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0086\u0002¨\u0006\t"}, d2 = {"Lcom/aptoide/sdk/billing/usecases/ingameupdates/IsAppInstalled;", "Lcom/aptoide/sdk/billing/usecases/UseCase;", "()V", "invoke", "", "context", "Landroid/content/Context;", "packageName", "", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class IsAppInstalled extends UseCase {
    public static final IsAppInstalled INSTANCE = new IsAppInstalled();

    private IsAppInstalled() {
    }

    public final boolean invoke(Context context, String packageName) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        super.invokeUseCase();
        try {
            context.getPackageManager().getPackageInfo(packageName, 128);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }
}
