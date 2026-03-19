package com.aptoide.sdk.core.device;

import com.aptoide.sdk.core.analytics.AnalyticsContent;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DeviceInformationHelper.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000b¨\u0006\u0010"}, d2 = {"Lcom/aptoide/sdk/core/device/DeviceInformation;", "", "osVersion", "", "brand", DeviceRequestsHelper.DEVICE_INFO_MODEL, AnalyticsContent.LANGUAGE, "isProbablyEmulator", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V", "getBrand", "()Ljava/lang/String;", "()Z", "getLanguage", "getModel", "getOsVersion", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DeviceInformation {
    private final String brand;
    private final boolean isProbablyEmulator;
    private final String language;
    private final String model;
    private final String osVersion;

    public DeviceInformation(String osVersion, String brand, String model, String language, boolean z) {
        Intrinsics.checkNotNullParameter(osVersion, "osVersion");
        Intrinsics.checkNotNullParameter(brand, "brand");
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(language, "language");
        this.osVersion = osVersion;
        this.brand = brand;
        this.model = model;
        this.language = language;
        this.isProbablyEmulator = z;
    }

    public final String getOsVersion() {
        return this.osVersion;
    }

    public final String getBrand() {
        return this.brand;
    }

    public final String getModel() {
        return this.model;
    }

    public final String getLanguage() {
        return this.language;
    }

    /* JADX INFO: renamed from: isProbablyEmulator, reason: from getter */
    public final boolean getIsProbablyEmulator() {
        return this.isProbablyEmulator;
    }
}
