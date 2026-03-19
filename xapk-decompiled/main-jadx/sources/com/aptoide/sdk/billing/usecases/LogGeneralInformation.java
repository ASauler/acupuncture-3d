package com.aptoide.sdk.billing.usecases;

import android.content.Context;
import com.aptoide.sdk.core.device.DeviceInformation;
import com.aptoide.sdk.core.device.DeviceInformationHelperKt;
import com.aptoide.sdk.core.logger.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LogGeneralInformation.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0011\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0086\u0002¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/billing/usecases/LogGeneralInformation;", "Lcom/aptoide/sdk/billing/usecases/UseCase;", "()V", "invoke", "", "context", "Landroid/content/Context;", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class LogGeneralInformation extends UseCase {
    public static final LogGeneralInformation INSTANCE = new LogGeneralInformation();

    private LogGeneralInformation() {
    }

    public final void invoke(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        DeviceInformation deviceInfo = DeviceInformationHelperKt.getDeviceInfo();
        Logger.logInfo("GeneralSDKInformation [ Package Name: " + context.getPackageName() + " | OSVersion: " + deviceInfo.getOsVersion() + " | Brand: " + deviceInfo.getBrand() + " | Model: " + deviceInfo.getModel() + " | Language: " + deviceInfo.getLanguage() + " | Is Probably Emulator: " + deviceInfo.getIsProbablyEmulator() + " | SDK Version: 1001 ]");
    }
}
