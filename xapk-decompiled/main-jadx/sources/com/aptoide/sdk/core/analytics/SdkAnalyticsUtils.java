package com.aptoide.sdk.core.analytics;

import com.aptoide.sdk.core.analytics.events.SdkConsumePurchaseEvents;
import com.aptoide.sdk.core.analytics.events.SdkPurchaseFlowEvents;
import com.aptoide.sdk.core.analytics.events.SdkWalletPaymentFlowEvents;
import com.aptoide.sdk.core.analytics.events.SdkWebPaymentFlowEvents;
import com.aptoide.sdk.core.analytics.manager.AnalyticsManager;
import com.aptoide.sdk.core.analytics.matomo.models.CustomProperty;
import com.aptoide.sdk.core.analytics.severity.AnalyticsFlowSeverityLevel;
import com.aptoide.sdk.core.device.DeviceInformation;
import com.aptoide.sdk.core.logger.Logger;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SdkAnalyticsUtils.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010-\u001a\u00020\u0012J/\u0010.\u001a\u00020/2\b\u00100\u001a\u0004\u0018\u00010\u00122\b\u00101\u001a\u0004\u0018\u0001022\u0006\u00103\u001a\u0002042\u0006\u0010\u0011\u001a\u00020\u0012¢\u0006\u0002\u00105J\u000e\u00106\u001a\u00020/2\u0006\u0010\u0011\u001a\u00020\u0012R4\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0017\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\bR\u001d\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000f\u0010\u0002\u001a\u0004\b\u0010\u0010\bR\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0019\"\u0004\b\u001a\u0010\u001bR$\u0010\u001c\u001a\u00020\u00182\u0006\u0010\u0003\u001a\u00020\u0018@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0019\"\u0004\b\u001d\u0010\u001bR4\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u00042\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0004@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\b\"\u0004\b \u0010\nR\u001b\u0010!\u001a\u00020\"8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b#\u0010$R&\u0010'\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00010(X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,¨\u00067"}, d2 = {"Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;", "", "()V", "value", "", "Lcom/aptoide/sdk/core/analytics/severity/AnalyticsFlowSeverityLevel;", "analyticsFlowSeverityLevels", "getAnalyticsFlowSeverityLevels", "()Ljava/util/List;", "setAnalyticsFlowSeverityLevels", "(Ljava/util/List;)V", "defaultAnalyticsFlowSeverityLevels", "getDefaultAnalyticsFlowSeverityLevels", "defaultMatomoCustomProperties", "Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;", "getDefaultMatomoCustomProperties$annotations", "getDefaultMatomoCustomProperties", "instanceId", "", "getInstanceId", "()Ljava/lang/String;", "setInstanceId", "(Ljava/lang/String;)V", "isAnalyticsEventLoggerInitialized", "", "()Z", "setAnalyticsEventLoggerInitialized", "(Z)V", "isAnalyticsSetupFromPayflowFinalized", "setAnalyticsSetupFromPayflowFinalized", "matomoCustomProperties", "getMatomoCustomProperties", "setMatomoCustomProperties", "sdkAnalytics", "Lcom/aptoide/sdk/core/analytics/SdkAnalytics;", "getSdkAnalytics", "()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;", "sdkAnalytics$delegate", "Lkotlin/Lazy;", "superProperties", "", "getSuperProperties", "()Ljava/util/Map;", "setSuperProperties", "(Ljava/util/Map;)V", "getLoggableSuperProperties", "setupProperties", "", "packageName", "versionCode", "", "deviceInformation", "Lcom/aptoide/sdk/core/device/DeviceInformation;", "(Ljava/lang/String;Ljava/lang/Integer;Lcom/aptoide/sdk/core/device/DeviceInformation;Ljava/lang/String;)V", "updateInstanceId", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SdkAnalyticsUtils {
    private static List<AnalyticsFlowSeverityLevel> analyticsFlowSeverityLevels;
    private static boolean isAnalyticsEventLoggerInitialized;
    private static boolean isAnalyticsSetupFromPayflowFinalized;
    private static List<CustomProperty> matomoCustomProperties;
    public static final SdkAnalyticsUtils INSTANCE = new SdkAnalyticsUtils();
    private static final List<AnalyticsFlowSeverityLevel> defaultAnalyticsFlowSeverityLevels = CollectionsKt.listOf((Object[]) new AnalyticsFlowSeverityLevel[]{new AnalyticsFlowSeverityLevel(SdkConsumePurchaseEvents.CONSUME_PURCHASE_FLOW, 1), new AnalyticsFlowSeverityLevel(SdkPurchaseFlowEvents.PURCHASE_FLOW, 1), new AnalyticsFlowSeverityLevel(SdkWalletPaymentFlowEvents.WALLET_PAYMENT_FLOW, 1), new AnalyticsFlowSeverityLevel(SdkWebPaymentFlowEvents.WEB_PAYMENT_FLOW, 2), new AnalyticsFlowSeverityLevel("install_wallet_dialog", 1)});
    private static final List<CustomProperty> defaultMatomoCustomProperties = CollectionsKt.listOf((Object[]) new CustomProperty[]{new CustomProperty(1, 1), new CustomProperty(10, 2), new CustomProperty(400, 3), new CustomProperty(410, 4), new CustomProperty(780, 5), new CustomProperty(900, 6), new CustomProperty(1300, 7), new CustomProperty(1301, 8), new CustomProperty(1370, 9), new CustomProperty(1380, 10), new CustomProperty(1390, 11), new CustomProperty(1600, 12)});

    /* JADX INFO: renamed from: sdkAnalytics$delegate, reason: from kotlin metadata */
    private static final Lazy sdkAnalytics = LazyKt.lazy(new Function0<SdkAnalytics>() { // from class: com.aptoide.sdk.core.analytics.SdkAnalyticsUtils$sdkAnalytics$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final SdkAnalytics invoke() {
            AnalyticsManager analyticsManagerProvideAnalyticsManager = AnalyticsManagerProvider.provideAnalyticsManager();
            Intrinsics.checkNotNullExpressionValue(analyticsManagerProvideAnalyticsManager, "provideAnalyticsManager(...)");
            return new SdkAnalytics(analyticsManagerProvideAnalyticsManager);
        }
    });
    private static String instanceId = "";
    private static Map<String, Object> superProperties = new HashMap();

    public static /* synthetic */ void getDefaultMatomoCustomProperties$annotations() {
    }

    private SdkAnalyticsUtils() {
    }

    public final List<AnalyticsFlowSeverityLevel> getAnalyticsFlowSeverityLevels() {
        return analyticsFlowSeverityLevels;
    }

    public final void setAnalyticsFlowSeverityLevels(List<AnalyticsFlowSeverityLevel> list) {
        analyticsFlowSeverityLevels = list;
        Logger.logInfo(String.valueOf(list));
    }

    public final List<CustomProperty> getMatomoCustomProperties() {
        return matomoCustomProperties;
    }

    public final void setMatomoCustomProperties(List<CustomProperty> list) {
        matomoCustomProperties = list;
        Logger.logInfo(String.valueOf(list));
    }

    public final List<AnalyticsFlowSeverityLevel> getDefaultAnalyticsFlowSeverityLevels() {
        return defaultAnalyticsFlowSeverityLevels;
    }

    public final List<CustomProperty> getDefaultMatomoCustomProperties() {
        return defaultMatomoCustomProperties;
    }

    public final boolean isAnalyticsSetupFromPayflowFinalized() {
        return isAnalyticsSetupFromPayflowFinalized;
    }

    public final void setAnalyticsSetupFromPayflowFinalized(boolean z) {
        isAnalyticsSetupFromPayflowFinalized = z;
        if (z) {
            getSdkAnalytics().sendEventsOnQueue();
        }
    }

    public final SdkAnalytics getSdkAnalytics() {
        return (SdkAnalytics) sdkAnalytics.getValue();
    }

    public final boolean isAnalyticsEventLoggerInitialized() {
        return isAnalyticsEventLoggerInitialized;
    }

    public final void setAnalyticsEventLoggerInitialized(boolean z) {
        isAnalyticsEventLoggerInitialized = z;
    }

    public final String getInstanceId() {
        return instanceId;
    }

    public final void setInstanceId(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        instanceId = str;
    }

    public final Map<String, Object> getSuperProperties() {
        return superProperties;
    }

    public final void setSuperProperties(Map<String, Object> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        superProperties = map;
    }

    public final void setupProperties(String packageName, Integer versionCode, DeviceInformation deviceInformation, String instanceId2) {
        Intrinsics.checkNotNullParameter(deviceInformation, "deviceInformation");
        Intrinsics.checkNotNullParameter(instanceId2, "instanceId");
        instanceId = instanceId2;
        Map<String, Object> map = superProperties;
        if (packageName == null) {
            packageName = "";
        }
        map.put(AnalyticsContent.GAME_PACKAGE_NAME, packageName);
        Map<String, Object> map2 = superProperties;
        Object obj = versionCode;
        if (versionCode == null) {
            obj = "";
        }
        map2.put(AnalyticsContent.SDK_VERSION_CODE, obj);
        superProperties.put(AnalyticsContent.SDK_PACKAGE, "android-billing");
        superProperties.put(AnalyticsContent.OS_VERSION, deviceInformation.getOsVersion());
        superProperties.put(AnalyticsContent.BRAND, deviceInformation.getBrand());
        superProperties.put(AnalyticsContent.MODEL, deviceInformation.getModel());
        superProperties.put(AnalyticsContent.LANGUAGE, deviceInformation.getLanguage());
        superProperties.put(AnalyticsContent.IS_EMULATOR, Boolean.valueOf(deviceInformation.getIsProbablyEmulator()));
    }

    public final void updateInstanceId(String instanceId2) {
        Intrinsics.checkNotNullParameter(instanceId2, "instanceId");
        Logger.logInfo("Update Analytics Instance ID for User.");
        Logger.logDebug("New Id: " + instanceId2);
        instanceId = instanceId2;
    }

    public final String getLoggableSuperProperties() {
        return "{probably_emulator=" + superProperties.get(AnalyticsContent.IS_EMULATOR) + ", device_model=" + superProperties.get(AnalyticsContent.MODEL) + ", device_brand=" + superProperties.get(AnalyticsContent.BRAND) + ", os_version=" + superProperties.get(AnalyticsContent.OS_VERSION) + ", package_name=" + superProperties.get(AnalyticsContent.GAME_PACKAGE_NAME) + ", version_code=" + superProperties.get(AnalyticsContent.SDK_VERSION_CODE) + ", sdk_package=" + superProperties.get(AnalyticsContent.SDK_PACKAGE) + ", language=" + superProperties.get(AnalyticsContent.LANGUAGE) + "}";
    }
}
