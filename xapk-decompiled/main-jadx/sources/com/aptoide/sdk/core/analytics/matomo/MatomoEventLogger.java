package com.aptoide.sdk.core.analytics.matomo;

import android.content.Context;
import com.aptoide.sdk.core.analytics.SdkAnalyticsUtils;
import com.aptoide.sdk.core.analytics.events.SdkAppUpdateAvailableProperties;
import com.aptoide.sdk.core.analytics.events.SdkBackendRequestsProperties;
import com.aptoide.sdk.core.analytics.events.SdkConsumePurchaseProperties;
import com.aptoide.sdk.core.analytics.events.SdkGeneralFailureProperties;
import com.aptoide.sdk.core.analytics.events.SdkGetReferralDeeplinkProperties;
import com.aptoide.sdk.core.analytics.events.SdkInitializationProperties;
import com.aptoide.sdk.core.analytics.events.SdkInstallWalletDialogProperties;
import com.aptoide.sdk.core.analytics.events.SdkIsFeatureSupportedProperties;
import com.aptoide.sdk.core.analytics.events.SdkLaunchAppUpdateDialogProperties;
import com.aptoide.sdk.core.analytics.events.SdkLaunchAppUpdateProperties;
import com.aptoide.sdk.core.analytics.events.SdkPurchaseFlowProperties;
import com.aptoide.sdk.core.analytics.events.SdkQueryPurchasesProperties;
import com.aptoide.sdk.core.analytics.events.SdkQuerySkuDetailsProperties;
import com.aptoide.sdk.core.analytics.events.SdkWebPaymentFlowProperties;
import com.aptoide.sdk.core.analytics.manager.AnalyticsManager;
import com.aptoide.sdk.core.analytics.manager.EventLogger;
import com.aptoide.sdk.core.analytics.matomo.models.CustomProperty;
import com.aptoide.sdk.core.logger.Logger;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
import org.matomo.sdk.Matomo;
import org.matomo.sdk.Tracker;
import org.matomo.sdk.TrackerBuilder;
import org.matomo.sdk.extra.TrackHelper;

/* JADX INFO: compiled from: MatomoEventLogger.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J,\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00042\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\u001e\u0010\u0012\u001a\u0004\u0018\u00010\u00042\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\u0017\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0002\u0010\u0016J&\u0010\u0017\u001a\u00020\u000b2\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u00042\b\u0010\u001b\u001a\u0004\u0018\u00010\u0004H\u0016J6\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00042\u0014\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0018\u001a\u00020\u0004H\u0016J\b\u0010\u001f\u001a\u00020\u000bH\u0002J$\u0010 \u001a\u0004\u0018\u00010\u0007*\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/aptoide/sdk/core/analytics/matomo/MatomoEventLogger;", "Lcom/aptoide/sdk/core/analytics/manager/EventLogger;", "()V", "GENERAL_PROPERTIES_EVENT_NAME", "", "allProperties", "", "Lcom/aptoide/sdk/core/analytics/matomo/Property;", "tracker", "Lorg/matomo/sdk/Tracker;", "addDimensionsToTracker", "", "trackHelper", "Lorg/matomo/sdk/extra/TrackHelper;", "eventName", "data", "", "", "createJsonObjectFromData", "getMatomoId", "", "sdkId", "(I)Ljava/lang/Integer;", "initialize", "context", "Landroid/content/Context;", SDKConstants.PARAM_KEY, "domain", "logEvent", "action", "Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;", "setupProperties", "findPropertyId", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MatomoEventLogger implements EventLogger {
    private static final String GENERAL_PROPERTIES_EVENT_NAME = "general_properties";
    public static final MatomoEventLogger INSTANCE = new MatomoEventLogger();
    private static List<? extends Property> allProperties = CollectionsKt.emptyList();
    private static Tracker tracker;

    private MatomoEventLogger() {
    }

    @Override // com.aptoide.sdk.core.analytics.manager.EventLogger
    public void initialize(Context context, String key, String domain) {
        if (context == null || key == null) {
            return;
        }
        tracker = TrackerBuilder.createDefault(domain + "?api_key=" + key, 1).build(Matomo.getInstance(context));
        setupProperties();
    }

    @Override // com.aptoide.sdk.core.analytics.manager.EventLogger
    public void logEvent(String eventName, Map<String, ? extends Object> data, AnalyticsManager.Action action, String context) {
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.checkNotNullParameter(context, "context");
        if (data == null) {
            try {
                data = new HashMap();
            } catch (Exception e) {
                Logger.logError("There was a failure when sending the Matomo Event.", e);
                return;
            }
        }
        Map<String, ? extends Object> mapPlus = MapsKt.plus(SdkAnalyticsUtils.INSTANCE.getSuperProperties(), data);
        Tracker tracker2 = tracker;
        if (tracker2 != null) {
            tracker2.setUserId(SdkAnalyticsUtils.INSTANCE.getInstanceId());
        }
        TrackHelper trackHelperTrack = TrackHelper.track();
        Intrinsics.checkNotNull(trackHelperTrack);
        addDimensionsToTracker(trackHelperTrack, eventName, mapPlus);
        String strCreateJsonObjectFromData = createJsonObjectFromData(mapPlus);
        TrackHelper.EventBuilder eventBuilderEvent = trackHelperTrack.event(eventName, action.name());
        if (strCreateJsonObjectFromData != null) {
            eventBuilderEvent.name(strCreateJsonObjectFromData);
        }
        eventBuilderEvent.with(tracker);
    }

    private final void addDimensionsToTracker(TrackHelper trackHelper, String eventName, Map<String, ? extends Object> data) {
        for (String str : data.keySet()) {
            MatomoEventLogger matomoEventLogger = INSTANCE;
            Property propertyFindPropertyId = matomoEventLogger.findPropertyId(allProperties, eventName, str);
            if (propertyFindPropertyId != null) {
                Integer matomoId = matomoEventLogger.getMatomoId(propertyFindPropertyId.getId());
                if (matomoId != null) {
                    trackHelper.dimension(matomoId.intValue(), String.valueOf(data.get(str)));
                } else {
                    Logger.logError("Matomo id not found for property id: " + propertyFindPropertyId.getId());
                }
            }
        }
    }

    private final Property findPropertyId(List<? extends Property> list, String str, String str2) {
        Object next;
        boolean zAreEqual;
        Iterator<T> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            Property property = (Property) next;
            if (Intrinsics.areEqual(property.getEventName(), GENERAL_PROPERTIES_EVENT_NAME)) {
                zAreEqual = Intrinsics.areEqual(property.getKey(), str2);
            } else {
                zAreEqual = Intrinsics.areEqual(property.getEventName(), str) && Intrinsics.areEqual(property.getKey(), str2);
            }
            if (zAreEqual) {
                break;
            }
        }
        return (Property) next;
    }

    private final void setupProperties() {
        List<CustomProperty> matomoCustomProperties = SdkAnalyticsUtils.INSTANCE.getMatomoCustomProperties();
        if (matomoCustomProperties == null) {
            matomoCustomProperties = SdkAnalyticsUtils.INSTANCE.getDefaultMatomoCustomProperties();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(SdkGeneralProperties.getEntries());
        arrayList.addAll(SdkAppUpdateAvailableProperties.getEntries());
        arrayList.addAll(SdkBackendRequestsProperties.getEntries());
        arrayList.addAll(SdkConsumePurchaseProperties.getEntries());
        arrayList.addAll(SdkGeneralFailureProperties.getEntries());
        arrayList.addAll(SdkGetReferralDeeplinkProperties.getEntries());
        arrayList.addAll(SdkInitializationProperties.getEntries());
        arrayList.addAll(SdkInstallWalletDialogProperties.getEntries());
        arrayList.addAll(SdkIsFeatureSupportedProperties.getEntries());
        arrayList.addAll(SdkLaunchAppUpdateDialogProperties.getEntries());
        arrayList.addAll(SdkLaunchAppUpdateProperties.getEntries());
        arrayList.addAll(SdkPurchaseFlowProperties.getEntries());
        arrayList.addAll(SdkQueryPurchasesProperties.getEntries());
        arrayList.addAll(SdkQuerySkuDetailsProperties.getEntries());
        arrayList.addAll(SdkWebPaymentFlowProperties.getEntries());
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            Property property = (Property) obj;
            List<CustomProperty> list = matomoCustomProperties;
            ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList3.add(Integer.valueOf(((CustomProperty) it.next()).getSdkId()));
            }
            if (arrayList3.contains(Integer.valueOf(property.getId()))) {
                arrayList2.add(obj);
            }
        }
        allProperties = arrayList2;
    }

    private final Integer getMatomoId(int sdkId) {
        Object next;
        List<CustomProperty> matomoCustomProperties = SdkAnalyticsUtils.INSTANCE.getMatomoCustomProperties();
        if (matomoCustomProperties == null) {
            matomoCustomProperties = SdkAnalyticsUtils.INSTANCE.getDefaultMatomoCustomProperties();
        }
        Iterator<T> it = matomoCustomProperties.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (((CustomProperty) next).getSdkId() == sdkId) {
                break;
            }
        }
        CustomProperty customProperty = (CustomProperty) next;
        if (customProperty != null) {
            return Integer.valueOf(customProperty.getMatomoId());
        }
        return null;
    }

    private final String createJsonObjectFromData(Map<String, ? extends Object> data) {
        Object objM911constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            MatomoEventLogger matomoEventLogger = this;
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry<String, ? extends Object> entry : data.entrySet()) {
                jSONObject.put(entry.getKey(), entry.getValue().toString());
            }
            objM911constructorimpl = Result.m911constructorimpl(jSONObject.toString());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM911constructorimpl = Result.m911constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM914exceptionOrNullimpl = Result.m914exceptionOrNullimpl(objM911constructorimpl);
        if (thM914exceptionOrNullimpl != null) {
            Logger.logError("There was an error mapping the event Data.", new Exception(thM914exceptionOrNullimpl));
            objM911constructorimpl = null;
        }
        return (String) objM911constructorimpl;
    }
}
