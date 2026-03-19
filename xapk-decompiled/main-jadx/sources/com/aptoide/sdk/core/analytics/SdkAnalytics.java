package com.aptoide.sdk.core.analytics;

import android.content.Context;
import com.aptoide.sdk.core.analytics.events.AnalyticsEvent;
import com.aptoide.sdk.core.analytics.events.SdkAppUpdateAvailableEvents;
import com.aptoide.sdk.core.analytics.events.SdkBackendRequestEvents;
import com.aptoide.sdk.core.analytics.events.SdkBackendRequestLabels;
import com.aptoide.sdk.core.analytics.events.SdkBackendRequestType;
import com.aptoide.sdk.core.analytics.events.SdkConsumePurchaseEvents;
import com.aptoide.sdk.core.analytics.events.SdkGeneralFailureEvents;
import com.aptoide.sdk.core.analytics.events.SdkGeneralFailureLabels;
import com.aptoide.sdk.core.analytics.events.SdkGeneralFailureStep;
import com.aptoide.sdk.core.analytics.events.SdkGetReferralDeeplinkEvents;
import com.aptoide.sdk.core.analytics.events.SdkInitializationEvents;
import com.aptoide.sdk.core.analytics.events.SdkInitializationLabels;
import com.aptoide.sdk.core.analytics.events.SdkInstallWalletDialogEvents;
import com.aptoide.sdk.core.analytics.events.SdkInstallWalletDialogLabels;
import com.aptoide.sdk.core.analytics.events.SdkIsFeatureSupportedEvents;
import com.aptoide.sdk.core.analytics.events.SdkIsFeatureSupportedLabels;
import com.aptoide.sdk.core.analytics.events.SdkLaunchAppUpdateDialogEvents;
import com.aptoide.sdk.core.analytics.events.SdkLaunchAppUpdateEvents;
import com.aptoide.sdk.core.analytics.events.SdkLaunchAppUpdateStoreEvents;
import com.aptoide.sdk.core.analytics.events.SdkPurchaseFlowEvents;
import com.aptoide.sdk.core.analytics.events.SdkPurchaseFlowLabels;
import com.aptoide.sdk.core.analytics.events.SdkQueryPurchasesEvents;
import com.aptoide.sdk.core.analytics.events.SdkQueryPurchasesLabels;
import com.aptoide.sdk.core.analytics.events.SdkQuerySkuDetailsEvents;
import com.aptoide.sdk.core.analytics.events.SdkQuerySkuDetailsLabels;
import com.aptoide.sdk.core.analytics.events.SdkWalletPaymentFlowEvents;
import com.aptoide.sdk.core.analytics.events.SdkWebPaymentFlowEvents;
import com.aptoide.sdk.core.analytics.events.SdkWebPaymentFlowLabels;
import com.aptoide.sdk.core.analytics.manager.AnalyticsManager;
import com.aptoide.sdk.core.analytics.severity.SdkAnalyticsSeverityUtils;
import com.aptoide.sdk.core.network.NetworkTraffic;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: SdkAnalytics.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b:\n\u0002\u0018\u0002\n\u0002\b\u0015\u0018\u0000 \u0086\u00012\u00020\u0001:\u0002\u0086\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u008a\u0001\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00010\n2\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00010\n2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000b2\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00102\u0014\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00122\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00122\u0014\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0012H\u0002JM\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00010\n2\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00010\n2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0002\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0007H\u0002J\u0016\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u000bJ\u0006\u0010!\u001a\u00020\u001cJ\u0006\u0010\"\u001a\u00020\u001cJ\u0006\u0010#\u001a\u00020\u001cJ\u000e\u0010$\u001a\u00020\u001c2\u0006\u0010%\u001a\u00020&J\u0006\u0010'\u001a\u00020\u001cJ\u0006\u0010(\u001a\u00020\u001cJL\u0010)\u001a\u00020\u001c2\b\u0010*\u001a\u0004\u0018\u00010\u000b2\b\u0010+\u001a\u0004\u0018\u00010\u000b2\b\u0010,\u001a\u0004\u0018\u00010\u000b2\b\u0010-\u001a\u0004\u0018\u00010\u000b2\b\u0010.\u001a\u0004\u0018\u00010\u000b2\b\u0010/\u001a\u0004\u0018\u00010\u000b2\b\u00100\u001a\u0004\u0018\u00010\u000bJ\u000e\u00101\u001a\u00020\u001c2\u0006\u00102\u001a\u00020\u000bJ(\u00103\u001a\u00020\u001c2\u0006\u00104\u001a\u0002052\u0006\u0010\r\u001a\u00020\u000b2\b\u0010\u0018\u001a\u0004\u0018\u00010\u000b2\u0006\u00106\u001a\u000207J$\u00108\u001a\u00020\u001c2\u0006\u00104\u001a\u0002052\b\u0010\u0018\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u000bJp\u00109\u001a\u00020\u001c2\u0006\u00104\u001a\u0002052\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000b2\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00102\u0014\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00122\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00122\u0014\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0012J3\u0010:\u001a\u00020\u001c2\u0006\u00104\u001a\u0002052\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010;J\u0010\u0010<\u001a\u00020\u001c2\b\u0010=\u001a\u0004\u0018\u00010\u000bJ\u001f\u0010>\u001a\u00020\u001c2\b\u0010=\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017¢\u0006\u0002\u0010?J\u0006\u0010@\u001a\u00020\u001cJ\u0006\u0010A\u001a\u00020\u001cJ\u0006\u0010B\u001a\u00020\u001cJ\u0006\u0010C\u001a\u00020\u001cJ\u0010\u0010D\u001a\u00020\u001c2\b\u0010E\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010F\u001a\u00020\u001c2\u0006\u0010G\u001a\u00020\u000bJ\u000e\u0010H\u001a\u00020\u001c2\u0006\u0010I\u001a\u00020\u000bJ\u0006\u0010J\u001a\u00020\u001cJ\u0006\u0010K\u001a\u00020\u001cJ\u0006\u0010L\u001a\u00020\u001cJ\u000e\u0010M\u001a\u00020\u001c2\u0006\u0010N\u001a\u00020\u0017J\u0015\u0010O\u001a\u00020\u001c2\b\u0010%\u001a\u0004\u0018\u00010\u0017¢\u0006\u0002\u0010PJ\u000e\u0010Q\u001a\u00020\u001c2\u0006\u0010E\u001a\u00020\u000bJ\u000e\u0010R\u001a\u00020\u001c2\u0006\u0010G\u001a\u00020\u000bJ\u0006\u0010S\u001a\u00020\u001cJ\u000e\u0010T\u001a\u00020\u001c2\u0006\u0010E\u001a\u00020\u000bJ\u0006\u0010U\u001a\u00020\u001cJ9\u0010V\u001a\u00020\u001c2\u0006\u0010W\u001a\u00020\u000b2\u0006\u0010X\u001a\u00020\u000b2\b\u0010Y\u001a\u0004\u0018\u00010\u000b2\b\u0010Z\u001a\u0004\u0018\u00010\u000b2\b\u0010[\u001a\u0004\u0018\u00010&¢\u0006\u0002\u0010\\J\u0006\u0010]\u001a\u00020\u001cJ\u000e\u0010^\u001a\u00020\u001c2\u0006\u0010X\u001a\u00020\u000bJ\u0006\u0010_\u001a\u00020\u001cJ\u0016\u0010`\u001a\u00020\u001c2\u000e\u0010a\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0010J2\u0010b\u001a\u00020\u001c2\u0006\u0010\u0016\u001a\u00020\u00172\n\b\u0002\u0010=\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010W\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010c\u001a\u0004\u0018\u00010\u000bJ\u0018\u0010d\u001a\u00020\u001c2\u0006\u0010=\u001a\u00020\u000b2\b\u0010e\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010f\u001a\u00020\u001c2\u0006\u0010X\u001a\u00020\u000bJ\u0016\u0010g\u001a\u00020\u001c2\u000e\u0010h\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0010J\u000e\u0010i\u001a\u00020\u001c2\u0006\u0010X\u001a\u00020\u000bJ\u001e\u0010j\u001a\u00020\u001c2\u000e\u0010k\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00102\u0006\u0010X\u001a\u00020\u000bJ\u001e\u0010l\u001a\u00020\u001c2\u000e\u0010k\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00102\u0006\u0010X\u001a\u00020\u000bJ\u0016\u0010m\u001a\u00020\u001c2\u000e\u0010k\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0010J\u001a\u0010n\u001a\u00020\u001c2\u0006\u0010o\u001a\u00020\u000b2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010p\u001a\u00020\u001c2\u0006\u0010q\u001a\u00020rJ\u001a\u0010s\u001a\u00020\u001c2\u0006\u0010o\u001a\u00020\u000b2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010t\u001a\u00020\u001cJ\u0016\u0010u\u001a\u00020\u001c2\u0006\u00104\u001a\u00020\u000b2\u0006\u0010v\u001a\u00020\u000bJ\u0006\u0010w\u001a\u00020\u001cJ\u0006\u0010x\u001a\u00020\u001cJ\u000e\u0010y\u001a\u00020\u001c2\u0006\u0010z\u001a\u00020&J\u000e\u0010{\u001a\u00020\u001c2\u0006\u0010%\u001a\u00020\u000bJ\u0010\u0010|\u001a\u00020\u001c2\b\u0010E\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010}\u001a\u00020\u001cJ\u0006\u0010~\u001a\u00020\u001cJ\u0017\u0010\u007f\u001a\u00020\u001c2\u0006\u0010E\u001a\u00020\u000b2\u0007\u0010\u0080\u0001\u001a\u00020\u000bJ\u000f\u0010\u0081\u0001\u001a\u00020\u001c2\u0006\u0010\r\u001a\u00020\u000bJ\u000f\u0010\u0082\u0001\u001a\u00020\u001c2\u0006\u0010E\u001a\u00020\u000bJ\u0007\u0010\u0083\u0001\u001a\u00020\u001cJ\u000f\u0010\u0084\u0001\u001a\u00020\u001c2\u0006\u0010\r\u001a\u00020\u000bJ\u0007\u0010\u0085\u0001\u001a\u00020\u001cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\b\u0012\u0004\u0012\u00020\u0007`\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0087\u0001"}, d2 = {"Lcom/aptoide/sdk/core/analytics/SdkAnalytics;", "", "analyticsManager", "Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager;", "(Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager;)V", "eventsQueue", "Ljava/util/ArrayList;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "Lkotlin/collections/ArrayList;", "addBackendRequestData", "", "", "eventData", "url", "method", SdkBackendRequestLabels.PATHS, "", "header", "", SdkBackendRequestLabels.QUERIES, "body", "addBackendResponseData", "responseCode", "", "responseMessage", "errorMessage", "(Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;", "logEvent", "", "analyticsEvent", "sendAppInstallationTriggerEvent", "appPackageName", "state", "sendAppUpdateAvailableFailureToObtainResult", "sendAppUpdateAvailableMainThreadFailure", "sendAppUpdateAvailableRequest", "sendAppUpdateAvailableResult", "result", "", "sendAttributionRequestEvent", "sendAttributionRequestFailureEvent", "sendAttributionResultEvent", SdkInitializationLabels.OEMID, "guestId", "utmSource", "utmMedium", "utmCampaign", "utmTerm", "utmContent", "sendAttributionRetryAttemptEvent", "message", "sendBackendErrorEvent", "type", "Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;", "context", "Landroid/content/Context;", "sendBackendMappingFailureEvent", "sendBackendRequestEvent", "sendBackendResponseEvent", "(Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V", "sendConsumePurchaseRequest", "purchaseToken", "sendConsumePurchaseResult", "(Ljava/lang/String;Ljava/lang/Integer;)V", "sendEventsOnQueue", "sendFinishConnectionEvent", "sendGetReferralDeeplinkMainThreadFailureEvent", "sendGetReferralDeeplinkRequestEvent", "sendGetReferralDeeplinkResultEvent", "deeplink", "sendInstallWalletDialogActionEvent", "action", "sendInstallWalletDialogDownloadWalletFallbackEvent", "source", "sendInstallWalletDialogDownloadWalletVanillaEvent", "sendInstallWalletDialogEvent", "sendInstallWalletDialogSuccessEvent", "sendIsFeatureSupportedRequestEvent", SdkIsFeatureSupportedLabels.FEATURE, "sendIsFeatureSupportedResultEvent", "(Ljava/lang/Integer;)V", "sendLaunchAppUpdateDeeplinkFailureEvent", "sendLaunchAppUpdateDialogActionEvent", "sendLaunchAppUpdateDialogRequestEvent", "sendLaunchAppUpdateResultEvent", "sendLaunchAppUpdateStoreRequestEvent", "sendLaunchPurchaseEvent", SdkPurchaseFlowLabels.SKU, "skuType", "developerPayload", "obfuscatedAccountId", "freeTrial", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V", "sendLaunchPurchaseMainThreadFailureEvent", "sendLaunchPurchaseTypeNotSupportedFailureEvent", "sendPayflowRequestEvent", "sendPayflowResultEvent", "paymentFlowMethods", "sendPurchaseResultEvent", "failureMessage", "sendPurchaseSignatureVerificationFailureEvent", "apiKey", "sendQueryPurchasesRequestEvent", "sendQueryPurchasesResultEvent", SdkQueryPurchasesLabels.PURCHASES, "sendQueryPurchasesTypeNotSupportedErrorEvent", "sendQuerySkuDetailsFailureParsingSkusEvent", SdkQuerySkuDetailsLabels.SKUS, "sendQuerySkuDetailsRequestEvent", "sendQuerySkuDetailsResult", "sendServiceConnectedEvent", "service", "sendServiceConnectionExceptionEvent", SdkGeneralFailureLabels.STEP, "Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;", "sendServiceConnectionFailureEvent", "sendStartConnectionEvent", "sendUnexpectedFailureEvent", "data", "sendWalletPaymentEmptyDataEvent", "sendWalletPaymentStartEvent", "sendWebPaymentAllowExternalAppsEvent", SdkWebPaymentFlowLabels.ALLOW, "sendWebPaymentErrorProcessingPurchaseResultEvent", "sendWebPaymentExecuteExternalDeeplinkEvent", "sendWebPaymentExternalPaymentResultEvent", "sendWebPaymentFailureToObtainUrlEvent", "sendWebPaymentFailureToOpenDeeplinkEvent", SdkWebPaymentFlowLabels.EXCEPTION, "sendWebPaymentLaunchExternalPaymentEvent", "sendWebPaymentOpenDeeplinkEvent", "sendWebPaymentPurchaseResultEmptyEvent", "sendWebPaymentStartEvent", "sendWebPaymentWalletPaymentResultEvent", "Companion", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SdkAnalytics {
    private static final String EVENT_CONTEXT = "AnalyticsSDK";
    private final AnalyticsManager analyticsManager;
    private ArrayList<AnalyticsEvent> eventsQueue;

    public SdkAnalytics(AnalyticsManager analyticsManager) {
        Intrinsics.checkNotNullParameter(analyticsManager, "analyticsManager");
        this.analyticsManager = analyticsManager;
        this.eventsQueue = new ArrayList<>();
    }

    public final void sendEventsOnQueue() {
        Iterator<T> it = this.eventsQueue.iterator();
        while (it.hasNext()) {
            logEvent((AnalyticsEvent) it.next());
        }
        this.eventsQueue.clear();
    }

    public final void sendAppUpdateAvailableRequest() {
        logEvent(new SdkAppUpdateAvailableEvents.SdkAppUpdateAvailableRequest());
    }

    public final void sendAppUpdateAvailableResult(boolean result) {
        HashMap map = new HashMap();
        map.put("result", Boolean.valueOf(result));
        logEvent(new SdkAppUpdateAvailableEvents.SdkAppUpdateAvailableResult(map));
    }

    public final void sendAppUpdateAvailableMainThreadFailure() {
        logEvent(new SdkAppUpdateAvailableEvents.SdkAppUpdateAvailableMainThreadFailure());
    }

    public final void sendAppUpdateAvailableFailureToObtainResult() {
        logEvent(new SdkAppUpdateAvailableEvents.SdkAppUpdateAvailableFailureToObtainResult());
    }

    public final void sendBackendRequestEvent(SdkBackendRequestType type, String url, String method, List<String> paths, Map<String, String> header, Map<String, String> queries, Map<String, ? extends Object> body) throws JSONException {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(method, "method");
        HashMap map = new HashMap();
        map.put("type", type.getType());
        addBackendRequestData(map, url, method, paths, header, queries, body);
        logEvent(new SdkBackendRequestEvents.SdkCallBackendRequest(map));
    }

    public static /* synthetic */ void sendBackendResponseEvent$default(SdkAnalytics sdkAnalytics, SdkBackendRequestType sdkBackendRequestType, Integer num, String str, String str2, int i, Object obj) {
        if ((i & 8) != 0) {
            str2 = null;
        }
        sdkAnalytics.sendBackendResponseEvent(sdkBackendRequestType, num, str, str2);
    }

    public final void sendBackendResponseEvent(SdkBackendRequestType type, Integer responseCode, String responseMessage, String errorMessage) {
        Intrinsics.checkNotNullParameter(type, "type");
        HashMap map = new HashMap();
        map.put("type", type.getType());
        addBackendResponseData(map, responseCode, responseMessage, errorMessage);
        logEvent(new SdkBackendRequestEvents.SdkCallBackendResponse(map));
    }

    public final void sendBackendErrorEvent(SdkBackendRequestType type, String url, String responseMessage, Context context) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(context, "context");
        HashMap map = new HashMap();
        map.put("type", type.getType());
        map.put("url", url);
        if (responseMessage == null) {
            responseMessage = "";
        }
        map.put(SdkBackendRequestLabels.RESPONSE_MESSAGE, responseMessage);
        String averageSpeed = new NetworkTraffic().getAverageSpeed(context);
        if (averageSpeed == null) {
            averageSpeed = "null";
        }
        map.put(SdkBackendRequestLabels.NETWORK_SPEED, averageSpeed);
        logEvent(new SdkBackendRequestEvents.SdkCallBackendError(map));
    }

    public static /* synthetic */ void sendBackendMappingFailureEvent$default(SdkAnalytics sdkAnalytics, SdkBackendRequestType sdkBackendRequestType, String str, String str2, int i, Object obj) {
        if ((i & 4) != 0) {
            str2 = null;
        }
        sdkAnalytics.sendBackendMappingFailureEvent(sdkBackendRequestType, str, str2);
    }

    public final void sendBackendMappingFailureEvent(SdkBackendRequestType type, String responseMessage, String errorMessage) {
        Intrinsics.checkNotNullParameter(type, "type");
        HashMap map = new HashMap();
        map.put("type", type.getType());
        if (responseMessage == null) {
            responseMessage = "";
        }
        map.put(SdkBackendRequestLabels.RESPONSE_MESSAGE, responseMessage);
        if (errorMessage == null) {
            errorMessage = "";
        }
        map.put("error_message", errorMessage);
        logEvent(new SdkBackendRequestEvents.SdkCallBackendMappingFailure(map));
    }

    public final void sendConsumePurchaseRequest(String purchaseToken) {
        HashMap map = new HashMap();
        if (purchaseToken != null) {
            map.put("purchase_token", purchaseToken);
        }
        logEvent(new SdkConsumePurchaseEvents.SdkConsumePurchaseRequest(map));
    }

    public final void sendConsumePurchaseResult(String purchaseToken, Integer responseCode) {
        HashMap map = new HashMap();
        if (purchaseToken != null) {
            map.put("purchase_token", purchaseToken);
        }
        map.put("response_code", Integer.valueOf(responseCode != null ? responseCode.intValue() : -1));
        logEvent(new SdkConsumePurchaseEvents.SdkConsumePurchaseResult(map));
    }

    public final void sendServiceConnectionExceptionEvent(SdkGeneralFailureStep step) {
        Intrinsics.checkNotNullParameter(step, "step");
        HashMap map = new HashMap();
        map.put(SdkGeneralFailureLabels.STEP, step.getType());
        logEvent(new SdkGeneralFailureEvents.SdkServiceConnectionException(map));
    }

    public final void sendPurchaseSignatureVerificationFailureEvent(String purchaseToken, String apiKey) {
        Intrinsics.checkNotNullParameter(purchaseToken, "purchaseToken");
        HashMap map = new HashMap();
        map.put(SdkGeneralFailureLabels.SIGNED_DATA, purchaseToken);
        if (apiKey != null) {
            map.put(SdkGeneralFailureLabels.API_KEY, apiKey);
        }
        logEvent(new SdkGeneralFailureEvents.SdkPurchaseSignatureVerificationFailure(map));
    }

    public final void sendUnexpectedFailureEvent(String type, String data) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(data, "data");
        HashMap map = new HashMap();
        map.put("type", type);
        map.put("data", data);
        logEvent(new SdkGeneralFailureEvents.SdkUnexpectedFailure(map));
    }

    public final void sendGetReferralDeeplinkRequestEvent() {
        logEvent(new SdkGetReferralDeeplinkEvents.SdkGetReferralDeeplinkRequest());
    }

    public final void sendGetReferralDeeplinkResultEvent(String deeplink) {
        HashMap map = new HashMap();
        if (deeplink == null) {
            deeplink = "null";
        }
        map.put("deeplink", deeplink);
        logEvent(new SdkGetReferralDeeplinkEvents.SdkGetReferralDeeplinkResult(map));
    }

    public final void sendGetReferralDeeplinkMainThreadFailureEvent() {
        logEvent(new SdkGetReferralDeeplinkEvents.SdkGetReferralDeeplinkMainThreadFailure());
    }

    public final void sendIsFeatureSupportedRequestEvent(int feature) {
        HashMap map = new HashMap();
        map.put(SdkIsFeatureSupportedLabels.FEATURE, Integer.valueOf(feature));
        logEvent(new SdkIsFeatureSupportedEvents.SdkIsFeatureSupportedRequest(map));
    }

    public final void sendIsFeatureSupportedResultEvent(Integer result) {
        HashMap map = new HashMap();
        map.put("result", Integer.valueOf(result != null ? result.intValue() : -1));
        logEvent(new SdkIsFeatureSupportedEvents.SdkIsFeatureSupportedResult(map));
    }

    public final void sendStartConnectionEvent() {
        logEvent(new SdkInitializationEvents.SdkStartConnection());
    }

    public static /* synthetic */ void sendServiceConnectedEvent$default(SdkAnalytics sdkAnalytics, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        sdkAnalytics.sendServiceConnectedEvent(str, str2);
    }

    public final void sendServiceConnectedEvent(String service, String method) {
        Intrinsics.checkNotNullParameter(service, "service");
        HashMap map = new HashMap();
        map.put("service", service);
        if (method != null) {
            map.put("method", method);
        }
        logEvent(new SdkInitializationEvents.SdkServiceConnected(map));
    }

    public static /* synthetic */ void sendServiceConnectionFailureEvent$default(SdkAnalytics sdkAnalytics, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        sdkAnalytics.sendServiceConnectionFailureEvent(str, str2);
    }

    public final void sendServiceConnectionFailureEvent(String service, String method) {
        Intrinsics.checkNotNullParameter(service, "service");
        HashMap map = new HashMap();
        map.put("service", service);
        if (method != null) {
            map.put("method", method);
        }
        logEvent(new SdkInitializationEvents.SdkServiceConnectionFailure(map));
    }

    public final void sendFinishConnectionEvent() {
        logEvent(new SdkInitializationEvents.SdkFinishConnection());
    }

    public final void sendAttributionRequestEvent() {
        logEvent(new SdkInitializationEvents.SdkAttributionRequest());
    }

    public final void sendAttributionResultEvent(String oemid, String guestId, String utmSource, String utmMedium, String utmCampaign, String utmTerm, String utmContent) {
        HashMap map = new HashMap();
        if (oemid != null) {
            map.put(SdkInitializationLabels.OEMID, oemid);
        }
        if (guestId != null) {
            map.put(SdkInitializationLabels.GUEST_ID, guestId);
        }
        if (utmSource != null) {
            map.put(SdkInitializationLabels.UTM_SOURCE, utmSource);
        }
        if (utmMedium != null) {
            map.put(SdkInitializationLabels.UTM_MEDIUM, utmMedium);
        }
        if (utmCampaign != null) {
            map.put(SdkInitializationLabels.UTM_CAMPAIGN, utmCampaign);
        }
        if (utmTerm != null) {
            map.put(SdkInitializationLabels.UTM_TERM, utmTerm);
        }
        if (utmContent != null) {
            map.put(SdkInitializationLabels.UTM_CONTENT, utmContent);
        }
        logEvent(new SdkInitializationEvents.SdkAttributionResult(map));
    }

    public final void sendAttributionRetryAttemptEvent(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        HashMap map = new HashMap();
        map.put("message", message);
        logEvent(new SdkInitializationEvents.SdkAttributionRetryAttempt(map));
    }

    public final void sendAttributionRequestFailureEvent() {
        logEvent(new SdkInitializationEvents.SdkAttributionRequestFailure());
    }

    public final void sendPayflowRequestEvent() {
        logEvent(new SdkInitializationEvents.SdkPayflowRequest());
    }

    public final void sendPayflowResultEvent(List<String> paymentFlowMethods) {
        HashMap map = new HashMap();
        if (paymentFlowMethods != null) {
            JSONArray jSONArray = new JSONArray();
            Iterator<T> it = paymentFlowMethods.iterator();
            while (it.hasNext()) {
                jSONArray.put((String) it.next());
            }
            String string = jSONArray.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            map.put(SdkInitializationLabels.PAYMENT_FLOW_LIST, string);
        }
        logEvent(new SdkInitializationEvents.SdkPayflowResult(map));
    }

    public final void sendAppInstallationTriggerEvent(String appPackageName, String state) {
        Intrinsics.checkNotNullParameter(appPackageName, "appPackageName");
        Intrinsics.checkNotNullParameter(state, "state");
        HashMap map = new HashMap();
        map.put(SdkInitializationLabels.APP_PACKAGE_NAME, appPackageName);
        map.put("state", state);
        logEvent(new SdkInitializationEvents.SdkAppInstallationTrigger(map));
    }

    public final void sendInstallWalletDialogEvent() {
        logEvent(new SdkInstallWalletDialogEvents.SdkInstallWalletDialog());
    }

    public final void sendInstallWalletDialogActionEvent(String action) {
        Intrinsics.checkNotNullParameter(action, "action");
        HashMap map = new HashMap();
        map.put(SdkInstallWalletDialogLabels.WALLET_INSTALL_ACTION, action);
        logEvent(new SdkInstallWalletDialogEvents.SdkInstallWalletDialogAction(map));
    }

    public final void sendInstallWalletDialogDownloadWalletVanillaEvent() {
        logEvent(new SdkInstallWalletDialogEvents.SdkInstallWalletDialogDownloadWalletVanilla());
    }

    public final void sendInstallWalletDialogDownloadWalletFallbackEvent(String source) {
        Intrinsics.checkNotNullParameter(source, "source");
        HashMap map = new HashMap();
        map.put("source", source);
        logEvent(new SdkInstallWalletDialogEvents.SdkInstallWalletDialogDownloadWalletFallback(map));
    }

    public final void sendInstallWalletDialogSuccessEvent() {
        logEvent(new SdkInstallWalletDialogEvents.SdkInstallWalletDialogSuccess());
    }

    public final void sendLaunchAppUpdateResultEvent(String deeplink) {
        Intrinsics.checkNotNullParameter(deeplink, "deeplink");
        HashMap map = new HashMap();
        map.put("deeplink", deeplink);
        logEvent(new SdkLaunchAppUpdateEvents.SdkLaunchAppUpdateResult(map));
    }

    public final void sendLaunchAppUpdateDeeplinkFailureEvent(String deeplink) {
        Intrinsics.checkNotNullParameter(deeplink, "deeplink");
        HashMap map = new HashMap();
        map.put("deeplink", deeplink);
        logEvent(new SdkLaunchAppUpdateEvents.SdkLaunchAppUpdateDeeplinkFailure(map));
    }

    public final void sendLaunchAppUpdateDialogRequestEvent() {
        logEvent(new SdkLaunchAppUpdateDialogEvents.SdkLaunchAppUpdateDialogRequest());
    }

    public final void sendLaunchAppUpdateDialogActionEvent(String action) {
        Intrinsics.checkNotNullParameter(action, "action");
        HashMap map = new HashMap();
        map.put("action", action);
        logEvent(new SdkLaunchAppUpdateDialogEvents.SdkLaunchAppUpdateDialogAction(map));
    }

    public final void sendLaunchAppUpdateStoreRequestEvent() {
        logEvent(new SdkLaunchAppUpdateStoreEvents.SdkLaunchAppUpdateStoreRequest());
    }

    public final void sendLaunchPurchaseEvent(String sku, String skuType, String developerPayload, String obfuscatedAccountId, Boolean freeTrial) {
        Intrinsics.checkNotNullParameter(sku, "sku");
        Intrinsics.checkNotNullParameter(skuType, "skuType");
        HashMap map = new HashMap();
        map.put(SdkPurchaseFlowLabels.SKU, sku);
        map.put("sku_type", skuType);
        if (developerPayload != null) {
            map.put(SdkPurchaseFlowLabels.DEVELOPER_PAYLOAD, developerPayload);
        }
        if (obfuscatedAccountId != null) {
            map.put(SdkPurchaseFlowLabels.OBFUSCATED_ACCOUNT_ID, obfuscatedAccountId);
        }
        if (freeTrial != null) {
            map.put(SdkPurchaseFlowLabels.FREE_TRIAL, Boolean.valueOf(freeTrial.booleanValue()));
        }
        logEvent(new SdkPurchaseFlowEvents.SdkLaunchPurchase(map));
    }

    public static /* synthetic */ void sendPurchaseResultEvent$default(SdkAnalytics sdkAnalytics, int i, String str, String str2, String str3, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str = null;
        }
        if ((i2 & 4) != 0) {
            str2 = null;
        }
        if ((i2 & 8) != 0) {
            str3 = null;
        }
        sdkAnalytics.sendPurchaseResultEvent(i, str, str2, str3);
    }

    public final void sendPurchaseResultEvent(int responseCode, String purchaseToken, String sku, String failureMessage) {
        HashMap map = new HashMap();
        map.put("response_code", Integer.valueOf(responseCode));
        if (purchaseToken != null) {
            map.put("purchase_token", purchaseToken);
        }
        if (sku != null) {
            map.put(SdkPurchaseFlowLabels.SKU, sku);
        }
        if (failureMessage != null) {
            map.put(SdkPurchaseFlowLabels.FAILURE_MESSAGE, failureMessage);
        }
        logEvent(new SdkPurchaseFlowEvents.SdkPurchaseResult(map));
    }

    public final void sendLaunchPurchaseTypeNotSupportedFailureEvent(String skuType) {
        Intrinsics.checkNotNullParameter(skuType, "skuType");
        HashMap map = new HashMap();
        map.put("sku_type", skuType);
        logEvent(new SdkPurchaseFlowEvents.SdkLaunchPurchaseTypeNotSupportedFailure(map));
    }

    public final void sendLaunchPurchaseMainThreadFailureEvent() {
        logEvent(new SdkPurchaseFlowEvents.SdkLaunchPurchaseMainThreadFailure());
    }

    public final void sendWebPaymentStartEvent(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        HashMap map = new HashMap();
        map.put("url", url);
        logEvent(new SdkWebPaymentFlowEvents.SdkWebPaymentStart(map));
    }

    public final void sendWebPaymentFailureToObtainUrlEvent() {
        logEvent(new SdkWebPaymentFlowEvents.SdkWebPaymentFailureToObtainUrl());
    }

    public final void sendWebPaymentFailureToOpenDeeplinkEvent(String deeplink, String exception) {
        Intrinsics.checkNotNullParameter(deeplink, "deeplink");
        Intrinsics.checkNotNullParameter(exception, "exception");
        HashMap map = new HashMap();
        map.put("deeplink", deeplink);
        map.put(SdkWebPaymentFlowLabels.EXCEPTION, exception);
        logEvent(new SdkWebPaymentFlowEvents.SdkWebPaymentFailureToOpenDeeplink(map));
    }

    public final void sendWebPaymentErrorProcessingPurchaseResultEvent(String result) {
        Intrinsics.checkNotNullParameter(result, "result");
        HashMap map = new HashMap();
        map.put("result", result);
        logEvent(new SdkWebPaymentFlowEvents.SdkWebPaymentErrorProcessingPurchaseResult(map));
    }

    public final void sendWebPaymentPurchaseResultEmptyEvent() {
        logEvent(new SdkWebPaymentFlowEvents.SdkWebPaymentPurchaseResultEmpty());
    }

    public final void sendWebPaymentOpenDeeplinkEvent(String deeplink) {
        Intrinsics.checkNotNullParameter(deeplink, "deeplink");
        HashMap map = new HashMap();
        map.put("deeplink", deeplink);
        logEvent(new SdkWebPaymentFlowEvents.SdkWebPaymentOpenDeeplink(map));
    }

    public final void sendWebPaymentLaunchExternalPaymentEvent(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        HashMap map = new HashMap();
        map.put("url", url);
        logEvent(new SdkWebPaymentFlowEvents.SdkWebPaymentLaunchExternalPayment(map));
    }

    public final void sendWebPaymentAllowExternalAppsEvent(boolean allow) {
        HashMap map = new HashMap();
        map.put(SdkWebPaymentFlowLabels.ALLOW, Boolean.valueOf(allow));
        logEvent(new SdkWebPaymentFlowEvents.SdkWebPaymentAllowExternalApps(map));
    }

    public final void sendWebPaymentExternalPaymentResultEvent() {
        logEvent(new SdkWebPaymentFlowEvents.SdkWebPaymentExternalPaymentResult());
    }

    public final void sendWebPaymentExecuteExternalDeeplinkEvent(String deeplink) {
        HashMap map = new HashMap();
        if (deeplink != null) {
            map.put("deeplink", deeplink);
        }
        logEvent(new SdkWebPaymentFlowEvents.SdkWebPaymentExecuteExternalDeeplink(map));
    }

    public final void sendWebPaymentWalletPaymentResultEvent() {
        logEvent(new SdkWebPaymentFlowEvents.SdkWebPaymentWalletPaymentResult());
    }

    public final void sendWalletPaymentStartEvent() {
        logEvent(new SdkWalletPaymentFlowEvents.SdkWalletPaymentStart());
    }

    public final void sendWalletPaymentEmptyDataEvent() {
        logEvent(new SdkWalletPaymentFlowEvents.SdkWalletPaymentEmptyData());
    }

    public final void sendQueryPurchasesRequestEvent(String skuType) {
        Intrinsics.checkNotNullParameter(skuType, "skuType");
        HashMap map = new HashMap();
        map.put("sku_type", skuType);
        logEvent(new SdkQueryPurchasesEvents.SdkQueryPurchasesRequest(map));
    }

    public final void sendQueryPurchasesTypeNotSupportedErrorEvent(String skuType) {
        Intrinsics.checkNotNullParameter(skuType, "skuType");
        HashMap map = new HashMap();
        map.put("sku_type", skuType);
        logEvent(new SdkQueryPurchasesEvents.SdkQueryPurchasesTypeNotSupportedError(map));
    }

    public final void sendQueryPurchasesResultEvent(List<String> purchases) {
        HashMap map = new HashMap();
        if (purchases != null) {
            JSONArray jSONArray = new JSONArray();
            Iterator<T> it = purchases.iterator();
            while (it.hasNext()) {
                jSONArray.put((String) it.next());
            }
            String string = jSONArray.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            map.put(SdkQueryPurchasesLabels.PURCHASES, string);
        }
        logEvent(new SdkQueryPurchasesEvents.SdkQueryPurchasesResult(map));
    }

    public final void sendQuerySkuDetailsRequestEvent(List<String> skus, String skuType) {
        Intrinsics.checkNotNullParameter(skuType, "skuType");
        HashMap map = new HashMap();
        if (skus != null) {
            JSONArray jSONArray = new JSONArray();
            Iterator<T> it = skus.iterator();
            while (it.hasNext()) {
                jSONArray.put((String) it.next());
            }
            String string = jSONArray.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            map.put(SdkQuerySkuDetailsLabels.SKUS, string);
        }
        map.put("sku_type", skuType);
        logEvent(new SdkQuerySkuDetailsEvents.SdkQuerySkuDetailsRequest(map));
    }

    public final void sendQuerySkuDetailsResult(List<String> skus) {
        HashMap map = new HashMap();
        if (skus != null) {
            JSONArray jSONArray = new JSONArray();
            Iterator<T> it = skus.iterator();
            while (it.hasNext()) {
                jSONArray.put((String) it.next());
            }
            String string = jSONArray.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            map.put(SdkQuerySkuDetailsLabels.SKUS, string);
        }
        logEvent(new SdkQuerySkuDetailsEvents.SdkQuerySkuDetailsResult(map));
    }

    public final void sendQuerySkuDetailsFailureParsingSkusEvent(List<String> skus, String skuType) {
        Intrinsics.checkNotNullParameter(skuType, "skuType");
        HashMap map = new HashMap();
        if (skus != null) {
            JSONArray jSONArray = new JSONArray();
            Iterator<T> it = skus.iterator();
            while (it.hasNext()) {
                jSONArray.put((String) it.next());
            }
            String string = jSONArray.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            map.put(SdkQuerySkuDetailsLabels.SKUS, string);
        }
        map.put("sku_type", skuType);
        logEvent(new SdkQuerySkuDetailsEvents.SdkQuerySkuDetailsFailureParsingSkus(map));
    }

    private final Map<String, Object> addBackendRequestData(Map<String, Object> eventData, String url, String method, List<String> paths, Map<String, String> header, Map<String, String> queries, Map<String, ? extends Object> body) throws JSONException {
        eventData.put("url", url);
        eventData.put("method", method);
        if (paths != null) {
            JSONArray jSONArray = new JSONArray();
            Iterator<T> it = paths.iterator();
            while (it.hasNext()) {
                jSONArray.put((String) it.next());
            }
            if (jSONArray.length() > 0) {
                String string = jSONArray.toString();
                Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                eventData.put(SdkBackendRequestLabels.PATHS, string);
            }
        }
        if (header != null) {
            JSONArray jSONArray2 = new JSONArray();
            for (Map.Entry<String, String> entry : header.entrySet()) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(entry.getKey(), entry.getValue());
                jSONArray2.put(jSONObject);
            }
            if (jSONArray2.length() > 0) {
                String string2 = jSONArray2.toString();
                Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
                eventData.put(SdkBackendRequestLabels.HEADERS, string2);
            }
        }
        if (queries != null) {
            JSONArray jSONArray3 = new JSONArray();
            for (Map.Entry<String, String> entry2 : queries.entrySet()) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(entry2.getKey(), entry2.getValue());
                jSONArray3.put(jSONObject2);
            }
            if (jSONArray3.length() > 0) {
                String string3 = jSONArray3.toString();
                Intrinsics.checkNotNullExpressionValue(string3, "toString(...)");
                eventData.put(SdkBackendRequestLabels.QUERIES, string3);
            }
        }
        if (body != null) {
            JSONArray jSONArray4 = new JSONArray();
            for (Map.Entry<String, ? extends Object> entry3 : body.entrySet()) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put(entry3.getKey(), entry3.getValue());
                jSONArray4.put(jSONObject3);
            }
            if (jSONArray4.length() > 0) {
                String string4 = jSONArray4.toString();
                Intrinsics.checkNotNullExpressionValue(string4, "toString(...)");
                eventData.put("body", string4);
            }
        }
        return eventData;
    }

    static /* synthetic */ Map addBackendResponseData$default(SdkAnalytics sdkAnalytics, Map map, Integer num, String str, String str2, int i, Object obj) {
        if ((i & 8) != 0) {
            str2 = null;
        }
        return sdkAnalytics.addBackendResponseData(map, num, str, str2);
    }

    private final Map<String, Object> addBackendResponseData(Map<String, Object> eventData, Integer responseCode, String responseMessage, String errorMessage) {
        String string;
        if (responseCode == null || (string = responseCode.toString()) == null) {
            string = "";
        }
        eventData.put("response_code", string);
        if (responseMessage == null) {
            responseMessage = "";
        }
        eventData.put(SdkBackendRequestLabels.RESPONSE_MESSAGE, responseMessage);
        if (errorMessage == null) {
            errorMessage = "";
        }
        eventData.put("error_message", errorMessage);
        return eventData;
    }

    private final void logEvent(AnalyticsEvent analyticsEvent) {
        if (!SdkAnalyticsUtils.INSTANCE.isAnalyticsSetupFromPayflowFinalized()) {
            this.eventsQueue.add(analyticsEvent);
        } else if (new SdkAnalyticsSeverityUtils().isEventSeverityAllowed(analyticsEvent)) {
            this.analyticsManager.logEvent(analyticsEvent.getData(), analyticsEvent.getName(), analyticsEvent.getAction(), EVENT_CONTEXT);
        }
    }
}
