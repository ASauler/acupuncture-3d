package com.facebook.appevents.iap;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Bundle;
import com.aptoide.sdk.core.analytics.events.SdkQueryPurchasesLabels;
import com.facebook.FacebookSdk;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.appevents.OperationalData;
import com.facebook.appevents.OperationalDataEnum;
import com.facebook.appevents.iap.InAppPurchaseUtils;
import com.facebook.appevents.internal.AutomaticAnalyticsLogger;
import com.facebook.appevents.internal.Constants;
import com.facebook.internal.FeatureManager;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.react.uimanager.ViewProps;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: InAppPurchaseManager.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0007\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0007J\b\u0010\u0013\u001a\u00020\u0014H\u0002JB\u0010\u0015\u001a\u0004\u0018\u00010\u00042\b\u0010\u0016\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0017\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0018\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0019\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u001bJ\n\u0010\u001d\u001a\u0004\u0018\u00010\u0004H\u0007JF\u0010\u001e\u001a\u0004\u0018\u00010\u000e2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\n0 2\u0006\u0010!\u001a\u00020\r2\u0006\u0010\"\u001a\u00020\u001b2\u001c\u0010#\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\f0 H\u0007J\u0010\u0010$\u001a\u00020\u00122\u0006\u0010%\u001a\u00020\u0004H\u0003J\b\u0010&\u001a\u00020\u0012H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R<\u0010\b\u001a0\u0012\u0004\u0012\u00020\n\u0012&\u0012$\u0012 \u0012\u001e\u0012\u0004\u0012\u00020\r\u0012\u0014\u0012\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\f0\f0\u000b0\tX\u0082\u0004¢\u0006\u0002\n\u0000R<\u0010\u0010\u001a0\u0012\u0004\u0012\u00020\n\u0012&\u0012$\u0012 \u0012\u001e\u0012\u0004\u0012\u00020\r\u0012\u0014\u0012\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\f0\f0\u000b0\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcom/facebook/appevents/iap/InAppPurchaseManager;", "", "()V", "GOOGLE_BILLINGCLIENT_VERSION", "", ViewProps.ENABLED, "Ljava/util/concurrent/atomic/AtomicBoolean;", "specificBillingLibraryVersion", "timesOfImplicitPurchases", "Ljava/util/concurrent/ConcurrentHashMap;", "Lcom/facebook/appevents/iap/InAppPurchase;", "", "Lkotlin/Pair;", "", "Landroid/os/Bundle;", "Lcom/facebook/appevents/OperationalData;", "timesOfManualPurchases", "enableAutoLogging", "", "getBillingClientVersion", "Lcom/facebook/appevents/iap/InAppPurchaseUtils$BillingClientVersion;", "getDedupeParameter", "newPurchaseParameters", "newPurchaseOperationalData", "oldPurchaseParameters", "oldPurchaseOperationalData", "dedupingWithImplicitlyLoggedHistory", "", "withTestDedupeKeys", "getSpecificBillingLibraryVersion", "performDedupe", SdkQueryPurchasesLabels.PURCHASES, "", "time", "isImplicitlyLogged", "purchaseParameters", "setSpecificBillingLibraryVersion", ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, "startTracking", "facebook-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class InAppPurchaseManager {
    private static final String GOOGLE_BILLINGCLIENT_VERSION = "com.google.android.play.billingclient.version";
    private static String specificBillingLibraryVersion;
    public static final InAppPurchaseManager INSTANCE = new InAppPurchaseManager();
    private static final ConcurrentHashMap<InAppPurchase, List<Pair<Long, Pair<Bundle, OperationalData>>>> timesOfManualPurchases = new ConcurrentHashMap<>();
    private static final ConcurrentHashMap<InAppPurchase, List<Pair<Long, Pair<Bundle, OperationalData>>>> timesOfImplicitPurchases = new ConcurrentHashMap<>();
    private static final AtomicBoolean enabled = new AtomicBoolean(false);

    /* JADX INFO: compiled from: InAppPurchaseManager.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[InAppPurchaseUtils.BillingClientVersion.values().length];
            try {
                iArr[InAppPurchaseUtils.BillingClientVersion.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[InAppPurchaseUtils.BillingClientVersion.V1.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[InAppPurchaseUtils.BillingClientVersion.V2_V4.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[InAppPurchaseUtils.BillingClientVersion.V5_V7.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private InAppPurchaseManager() {
    }

    @JvmStatic
    public static final void enableAutoLogging() {
        if (CrashShieldHandler.isObjectCrashing(InAppPurchaseManager.class)) {
            return;
        }
        try {
            if (!AutomaticAnalyticsLogger.isImplicitPurchaseLoggingEnabled()) {
                InAppPurchaseLoggerManager.updateLatestPossiblePurchaseTime();
            } else {
                enabled.set(true);
                startTracking();
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, InAppPurchaseManager.class);
        }
    }

    @JvmStatic
    public static final void startTracking() {
        if (CrashShieldHandler.isObjectCrashing(InAppPurchaseManager.class)) {
            return;
        }
        try {
            if (enabled.get()) {
                InAppPurchaseUtils.BillingClientVersion billingClientVersion = INSTANCE.getBillingClientVersion();
                int i = WhenMappings.$EnumSwitchMapping$0[billingClientVersion.ordinal()];
                if (i == 2) {
                    InAppPurchaseActivityLifecycleTracker.startIapLogging(InAppPurchaseUtils.BillingClientVersion.V1);
                    return;
                }
                if (i == 3) {
                    if (FeatureManager.isEnabled(FeatureManager.Feature.IapLoggingLib2)) {
                        InAppPurchaseAutoLogger.startIapLogging(FacebookSdk.getApplicationContext(), billingClientVersion);
                        return;
                    } else {
                        InAppPurchaseActivityLifecycleTracker.startIapLogging(InAppPurchaseUtils.BillingClientVersion.V2_V4);
                        return;
                    }
                }
                if (i == 4 && FeatureManager.isEnabled(FeatureManager.Feature.IapLoggingLib5To7)) {
                    InAppPurchaseAutoLogger.startIapLogging(FacebookSdk.getApplicationContext(), billingClientVersion);
                }
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, InAppPurchaseManager.class);
        }
    }

    @JvmStatic
    private static final void setSpecificBillingLibraryVersion(String version) {
        if (CrashShieldHandler.isObjectCrashing(InAppPurchaseManager.class)) {
            return;
        }
        try {
            specificBillingLibraryVersion = version;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, InAppPurchaseManager.class);
        }
    }

    @JvmStatic
    public static final String getSpecificBillingLibraryVersion() {
        if (CrashShieldHandler.isObjectCrashing(InAppPurchaseManager.class)) {
            return null;
        }
        try {
            return specificBillingLibraryVersion;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, InAppPurchaseManager.class);
            return null;
        }
    }

    private final InAppPurchaseUtils.BillingClientVersion getBillingClientVersion() {
        try {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return null;
            }
            try {
                Context applicationContext = FacebookSdk.getApplicationContext();
                ApplicationInfo applicationInfo = applicationContext.getPackageManager().getApplicationInfo(applicationContext.getPackageName(), 128);
                Intrinsics.checkNotNullExpressionValue(applicationInfo, "context.packageManager.g…TA_DATA\n                )");
                String string = applicationInfo.metaData.getString(GOOGLE_BILLINGCLIENT_VERSION);
                if (string == null) {
                    return InAppPurchaseUtils.BillingClientVersion.NONE;
                }
                List listSplit$default = StringsKt.split$default((CharSequence) string, new String[]{"."}, false, 3, 2, (Object) null);
                if (string.length() == 0) {
                    return InAppPurchaseUtils.BillingClientVersion.V5_V7;
                }
                setSpecificBillingLibraryVersion("GPBL." + string);
                Integer intOrNull = StringsKt.toIntOrNull((String) listSplit$default.get(0));
                if (intOrNull == null) {
                    return InAppPurchaseUtils.BillingClientVersion.V5_V7;
                }
                int iIntValue = intOrNull.intValue();
                if (iIntValue == 1) {
                    return InAppPurchaseUtils.BillingClientVersion.V1;
                }
                if (iIntValue < 5) {
                    return InAppPurchaseUtils.BillingClientVersion.V2_V4;
                }
                return InAppPurchaseUtils.BillingClientVersion.V5_V7;
            } catch (Exception unused) {
                return InAppPurchaseUtils.BillingClientVersion.V5_V7;
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v17, types: [java.lang.Long] */
    /* JADX WARN: Type inference failed for: r10v18 */
    /* JADX WARN: Type inference failed for: r10v19, types: [java.lang.Long] */
    /* JADX WARN: Type inference failed for: r10v20 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7, types: [java.lang.Long] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r13v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [android.os.Bundle] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4, types: [android.os.Bundle] */
    /* JADX WARN: Type inference failed for: r9v5, types: [android.os.Bundle] */
    /* JADX WARN: Type inference failed for: r9v6, types: [android.os.Bundle] */
    /* JADX WARN: Type inference failed for: r9v7, types: [android.os.Bundle] */
    /* JADX WARN: Type inference failed for: r9v8 */
    @JvmStatic
    public static final synchronized Bundle performDedupe(List<InAppPurchase> purchases, long time, boolean isImplicitlyLogged, List<Pair<Bundle, OperationalData>> purchaseParameters) {
        List<Pair<Long, Pair<Bundle, OperationalData>>> list;
        List<Pair<Long, Pair<Bundle, OperationalData>>> list2;
        InAppPurchase inAppPurchase;
        String str;
        ?? r10;
        ?? r13;
        boolean z;
        String str2 = null;
        if (CrashShieldHandler.isObjectCrashing(InAppPurchaseManager.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(purchases, "purchases");
            Intrinsics.checkNotNullParameter(purchaseParameters, "purchaseParameters");
            if (purchaseParameters.isEmpty()) {
                return null;
            }
            if (!(purchases.size() == purchaseParameters.size())) {
                return null;
            }
            ArrayList<Pair> arrayList = new ArrayList();
            int size = purchases.size();
            ?? bundle = 0;
            int i = 0;
            while (i < size) {
                InAppPurchase inAppPurchase2 = purchases.get(i);
                Pair<Bundle, OperationalData> pair = purchaseParameters.get(i);
                Bundle bundleComponent1 = pair.component1();
                OperationalData operationalDataComponent2 = pair.component2();
                InAppPurchase inAppPurchase3 = new InAppPurchase(inAppPurchase2.getEventName(), new BigDecimal(String.valueOf(inAppPurchase2.getAmount())).setScale(2, RoundingMode.HALF_UP).doubleValue(), inAppPurchase2.getCurrency());
                if (isImplicitlyLogged) {
                    list2 = timesOfManualPurchases.get(inAppPurchase3);
                } else {
                    list2 = timesOfImplicitPurchases.get(inAppPurchase3);
                }
                List<Pair<Long, Pair<Bundle, OperationalData>>> list3 = list2;
                if (list3 == null || list3.isEmpty()) {
                    inAppPurchase = inAppPurchase3;
                    str = null;
                    r10 = 0;
                    r13 = 0;
                    z = false;
                } else {
                    str = str2;
                    ?? ValueOf = str;
                    ?? r132 = ValueOf;
                    z = false;
                    for (Pair<Long, Pair<Bundle, OperationalData>> pair2 : list2) {
                        long jLongValue = pair2.getFirst().longValue();
                        Pair<Bundle, OperationalData> second = pair2.getSecond();
                        Bundle bundleComponent12 = second.component1();
                        OperationalData operationalDataComponent22 = second.component2();
                        if (Math.abs(time - jLongValue) <= InAppPurchaseDedupeConfig.INSTANCE.getDedupeWindow() && (ValueOf == 0 || jLongValue < ValueOf.longValue())) {
                            InAppPurchaseManager inAppPurchaseManager = INSTANCE;
                            InAppPurchase inAppPurchase4 = inAppPurchase3;
                            String dedupeParameter$default = getDedupeParameter$default(inAppPurchaseManager, bundleComponent1, operationalDataComponent2, bundleComponent12, operationalDataComponent22, !isImplicitlyLogged, false, 32, null);
                            String dedupeParameter = inAppPurchaseManager.getDedupeParameter(bundleComponent1, operationalDataComponent2, bundleComponent12, operationalDataComponent22, !isImplicitlyLogged, true);
                            if (dedupeParameter != null) {
                                str = dedupeParameter;
                            }
                            if (dedupeParameter$default != null) {
                                ValueOf = Long.valueOf(jLongValue);
                                arrayList.add(new Pair(inAppPurchase4, Long.valueOf(jLongValue)));
                                inAppPurchase3 = inAppPurchase4;
                                r132 = dedupeParameter$default;
                                z = true;
                            } else {
                                inAppPurchase3 = inAppPurchase4;
                                r132 = dedupeParameter$default;
                            }
                        }
                    }
                    inAppPurchase = inAppPurchase3;
                    r10 = ValueOf;
                    r13 = r132;
                }
                if (str != null) {
                    if (bundle == 0) {
                        bundle = new Bundle();
                    }
                    bundle.putString(Constants.IAP_TEST_DEDUP_RESULT, AppEventsConstants.EVENT_PARAM_VALUE_YES);
                    bundle.putString(Constants.IAP_TEST_DEDUP_KEY_USED, str);
                }
                if (z) {
                    if (bundle == 0) {
                        bundle = new Bundle();
                    }
                    bundle.putString(Constants.IAP_NON_DEDUPED_EVENT_TIME, String.valueOf(r10 != 0 ? r10.longValue() / ((long) 1000) : 0L));
                    bundle.putString(Constants.IAP_ACTUAL_DEDUP_RESULT, AppEventsConstants.EVENT_PARAM_VALUE_YES);
                    bundle.putString(Constants.IAP_ACTUAL_DEDUP_KEY_USED, r13);
                }
                if (isImplicitlyLogged && !z) {
                    ConcurrentHashMap<InAppPurchase, List<Pair<Long, Pair<Bundle, OperationalData>>>> concurrentHashMap = timesOfImplicitPurchases;
                    if (concurrentHashMap.get(inAppPurchase) == null) {
                        concurrentHashMap.put(inAppPurchase, new ArrayList());
                    }
                    List<Pair<Long, Pair<Bundle, OperationalData>>> list4 = concurrentHashMap.get(inAppPurchase);
                    if (list4 != null) {
                        list4.add(new Pair<>(Long.valueOf(time), new Pair(bundleComponent1, operationalDataComponent2)));
                    }
                } else if (!isImplicitlyLogged && !z) {
                    ConcurrentHashMap<InAppPurchase, List<Pair<Long, Pair<Bundle, OperationalData>>>> concurrentHashMap2 = timesOfManualPurchases;
                    if (concurrentHashMap2.get(inAppPurchase) == null) {
                        concurrentHashMap2.put(inAppPurchase, new ArrayList());
                    }
                    List<Pair<Long, Pair<Bundle, OperationalData>>> list5 = concurrentHashMap2.get(inAppPurchase);
                    if (list5 != null) {
                        list5.add(new Pair<>(Long.valueOf(time), new Pair(bundleComponent1, operationalDataComponent2)));
                    }
                }
                i++;
                str2 = null;
                bundle = bundle;
            }
            for (Pair pair3 : arrayList) {
                if (isImplicitlyLogged) {
                    list = timesOfManualPurchases.get(pair3.getFirst());
                } else {
                    list = timesOfImplicitPurchases.get(pair3.getFirst());
                }
                if (list != null) {
                    Iterator<Pair<Long, Pair<Bundle, OperationalData>>> it = list.iterator();
                    int i2 = 0;
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        int i3 = i2 + 1;
                        if (it.next().getFirst().longValue() == ((Number) pair3.getSecond()).longValue()) {
                            list.remove(i2);
                            break;
                        }
                        i2 = i3;
                    }
                    if (isImplicitlyLogged) {
                        if (list.isEmpty()) {
                            timesOfManualPurchases.remove(pair3.getFirst());
                        } else {
                            timesOfManualPurchases.put(pair3.getFirst(), list);
                        }
                    } else if (list.isEmpty()) {
                        timesOfImplicitPurchases.remove(pair3.getFirst());
                    } else {
                        timesOfImplicitPurchases.put(pair3.getFirst(), list);
                    }
                }
            }
            return bundle;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, InAppPurchaseManager.class);
            return null;
        }
    }

    public static /* synthetic */ String getDedupeParameter$default(InAppPurchaseManager inAppPurchaseManager, Bundle bundle, OperationalData operationalData, Bundle bundle2, OperationalData operationalData2, boolean z, boolean z2, int i, Object obj) {
        if (CrashShieldHandler.isObjectCrashing(InAppPurchaseManager.class)) {
            return null;
        }
        try {
            return inAppPurchaseManager.getDedupeParameter(bundle, operationalData, bundle2, operationalData2, z, (i & 32) != 0 ? false : z2);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, InAppPurchaseManager.class);
            return null;
        }
    }

    public final String getDedupeParameter(Bundle newPurchaseParameters, OperationalData newPurchaseOperationalData, Bundle oldPurchaseParameters, OperationalData oldPurchaseOperationalData, boolean dedupingWithImplicitlyLoggedHistory, boolean withTestDedupeKeys) {
        List<Pair<String, List<String>>> dedupeParameters;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            if (withTestDedupeKeys) {
                dedupeParameters = InAppPurchaseDedupeConfig.INSTANCE.getTestDedupeParameters(dedupingWithImplicitlyLoggedHistory);
            } else {
                dedupeParameters = InAppPurchaseDedupeConfig.INSTANCE.getDedupeParameters(dedupingWithImplicitlyLoggedHistory);
            }
            if (dedupeParameters == null) {
                return null;
            }
            for (Pair<String, List<String>> pair : dedupeParameters) {
                Object parameter = OperationalData.INSTANCE.getParameter(OperationalDataEnum.IAPParameters, pair.getFirst(), newPurchaseParameters, newPurchaseOperationalData);
                String str = parameter instanceof String ? (String) parameter : null;
                String str2 = str;
                if (!(str2 == null || str2.length() == 0)) {
                    for (String str3 : pair.getSecond()) {
                        Object parameter2 = OperationalData.INSTANCE.getParameter(OperationalDataEnum.IAPParameters, str3, oldPurchaseParameters, oldPurchaseOperationalData);
                        String str4 = parameter2 instanceof String ? (String) parameter2 : null;
                        String str5 = str4;
                        if (!(str5 == null || str5.length() == 0) && Intrinsics.areEqual(str4, str)) {
                            return dedupingWithImplicitlyLoggedHistory ? pair.getFirst() : str3;
                        }
                    }
                }
            }
            return null;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }
}
