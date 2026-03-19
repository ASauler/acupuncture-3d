package com.aptoide.sdk.core.analytics;

import kotlin.Metadata;

/* JADX INFO: compiled from: AnalyticsContent.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/aptoide/sdk/core/analytics/AnalyticsContent;", "", "()V", "BRAND", "", "GAME_PACKAGE_NAME", "IS_EMULATOR", "LANGUAGE", "MODEL", "OS_VERSION", "SDK_PACKAGE", "SDK_VERSION_CODE", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AnalyticsContent {
    public static final String BRAND = "device_brand";
    public static final String GAME_PACKAGE_NAME = "package_name";
    public static final AnalyticsContent INSTANCE = new AnalyticsContent();
    public static final String IS_EMULATOR = "probably_emulator";
    public static final String LANGUAGE = "language";
    public static final String MODEL = "device_model";
    public static final String OS_VERSION = "os_version";
    public static final String SDK_PACKAGE = "sdk_package";
    public static final String SDK_VERSION_CODE = "version_code";

    private AnalyticsContent() {
    }
}
