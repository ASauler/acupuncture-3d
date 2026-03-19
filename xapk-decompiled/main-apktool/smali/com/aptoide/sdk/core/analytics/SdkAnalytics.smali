.class public final Lcom/aptoide/sdk/core/analytics/SdkAnalytics;
.super Ljava/lang/Object;
.source "SdkAnalytics.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/core/analytics/SdkAnalytics$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSdkAnalytics.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SdkAnalytics.kt\ncom/aptoide/sdk/core/analytics/SdkAnalytics\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,660:1\n1855#2,2:661\n1855#2,2:664\n1855#2,2:666\n1855#2,2:668\n1855#2,2:670\n1855#2,2:672\n1855#2,2:674\n1#3:663\n215#4,2:676\n215#4,2:678\n215#4,2:680\n*S KotlinDebug\n*F\n+ 1 SdkAnalytics.kt\ncom/aptoide/sdk/core/analytics/SdkAnalytics\n*L\n53#1:661,2\n292#1:664,2\n521#1:666,2\n536#1:668,2\n551#1:670,2\n565#1:672,2\n588#1:674,2\n597#1:676,2\n608#1:678,2\n619#1:680,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0010$\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008:\n\u0002\u0018\u0002\n\u0002\u0008\u0015\u0018\u0000 \u0086\u00012\u00020\u0001:\u0002\u0086\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u008a\u0001\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00010\n2\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00010\n2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000b2\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00102\u0014\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00122\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00122\u0014\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0012H\u0002JM\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00010\n2\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00010\n2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0002\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0007H\u0002J\u0016\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u000bJ\u0006\u0010!\u001a\u00020\u001cJ\u0006\u0010\"\u001a\u00020\u001cJ\u0006\u0010#\u001a\u00020\u001cJ\u000e\u0010$\u001a\u00020\u001c2\u0006\u0010%\u001a\u00020&J\u0006\u0010\'\u001a\u00020\u001cJ\u0006\u0010(\u001a\u00020\u001cJL\u0010)\u001a\u00020\u001c2\u0008\u0010*\u001a\u0004\u0018\u00010\u000b2\u0008\u0010+\u001a\u0004\u0018\u00010\u000b2\u0008\u0010,\u001a\u0004\u0018\u00010\u000b2\u0008\u0010-\u001a\u0004\u0018\u00010\u000b2\u0008\u0010.\u001a\u0004\u0018\u00010\u000b2\u0008\u0010/\u001a\u0004\u0018\u00010\u000b2\u0008\u00100\u001a\u0004\u0018\u00010\u000bJ\u000e\u00101\u001a\u00020\u001c2\u0006\u00102\u001a\u00020\u000bJ(\u00103\u001a\u00020\u001c2\u0006\u00104\u001a\u0002052\u0006\u0010\r\u001a\u00020\u000b2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u000b2\u0006\u00106\u001a\u000207J$\u00108\u001a\u00020\u001c2\u0006\u00104\u001a\u0002052\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u000bJp\u00109\u001a\u00020\u001c2\u0006\u00104\u001a\u0002052\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000b2\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00102\u0014\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00122\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00122\u0014\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0012J3\u0010:\u001a\u00020\u001c2\u0006\u00104\u001a\u0002052\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010;J\u0010\u0010<\u001a\u00020\u001c2\u0008\u0010=\u001a\u0004\u0018\u00010\u000bJ\u001f\u0010>\u001a\u00020\u001c2\u0008\u0010=\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0002\u0010?J\u0006\u0010@\u001a\u00020\u001cJ\u0006\u0010A\u001a\u00020\u001cJ\u0006\u0010B\u001a\u00020\u001cJ\u0006\u0010C\u001a\u00020\u001cJ\u0010\u0010D\u001a\u00020\u001c2\u0008\u0010E\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010F\u001a\u00020\u001c2\u0006\u0010G\u001a\u00020\u000bJ\u000e\u0010H\u001a\u00020\u001c2\u0006\u0010I\u001a\u00020\u000bJ\u0006\u0010J\u001a\u00020\u001cJ\u0006\u0010K\u001a\u00020\u001cJ\u0006\u0010L\u001a\u00020\u001cJ\u000e\u0010M\u001a\u00020\u001c2\u0006\u0010N\u001a\u00020\u0017J\u0015\u0010O\u001a\u00020\u001c2\u0008\u0010%\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0002\u0010PJ\u000e\u0010Q\u001a\u00020\u001c2\u0006\u0010E\u001a\u00020\u000bJ\u000e\u0010R\u001a\u00020\u001c2\u0006\u0010G\u001a\u00020\u000bJ\u0006\u0010S\u001a\u00020\u001cJ\u000e\u0010T\u001a\u00020\u001c2\u0006\u0010E\u001a\u00020\u000bJ\u0006\u0010U\u001a\u00020\u001cJ9\u0010V\u001a\u00020\u001c2\u0006\u0010W\u001a\u00020\u000b2\u0006\u0010X\u001a\u00020\u000b2\u0008\u0010Y\u001a\u0004\u0018\u00010\u000b2\u0008\u0010Z\u001a\u0004\u0018\u00010\u000b2\u0008\u0010[\u001a\u0004\u0018\u00010&\u00a2\u0006\u0002\u0010\\J\u0006\u0010]\u001a\u00020\u001cJ\u000e\u0010^\u001a\u00020\u001c2\u0006\u0010X\u001a\u00020\u000bJ\u0006\u0010_\u001a\u00020\u001cJ\u0016\u0010`\u001a\u00020\u001c2\u000e\u0010a\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0010J2\u0010b\u001a\u00020\u001c2\u0006\u0010\u0016\u001a\u00020\u00172\n\u0008\u0002\u0010=\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010W\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010c\u001a\u0004\u0018\u00010\u000bJ\u0018\u0010d\u001a\u00020\u001c2\u0006\u0010=\u001a\u00020\u000b2\u0008\u0010e\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010f\u001a\u00020\u001c2\u0006\u0010X\u001a\u00020\u000bJ\u0016\u0010g\u001a\u00020\u001c2\u000e\u0010h\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0010J\u000e\u0010i\u001a\u00020\u001c2\u0006\u0010X\u001a\u00020\u000bJ\u001e\u0010j\u001a\u00020\u001c2\u000e\u0010k\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00102\u0006\u0010X\u001a\u00020\u000bJ\u001e\u0010l\u001a\u00020\u001c2\u000e\u0010k\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00102\u0006\u0010X\u001a\u00020\u000bJ\u0016\u0010m\u001a\u00020\u001c2\u000e\u0010k\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0010J\u001a\u0010n\u001a\u00020\u001c2\u0006\u0010o\u001a\u00020\u000b2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010p\u001a\u00020\u001c2\u0006\u0010q\u001a\u00020rJ\u001a\u0010s\u001a\u00020\u001c2\u0006\u0010o\u001a\u00020\u000b2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010t\u001a\u00020\u001cJ\u0016\u0010u\u001a\u00020\u001c2\u0006\u00104\u001a\u00020\u000b2\u0006\u0010v\u001a\u00020\u000bJ\u0006\u0010w\u001a\u00020\u001cJ\u0006\u0010x\u001a\u00020\u001cJ\u000e\u0010y\u001a\u00020\u001c2\u0006\u0010z\u001a\u00020&J\u000e\u0010{\u001a\u00020\u001c2\u0006\u0010%\u001a\u00020\u000bJ\u0010\u0010|\u001a\u00020\u001c2\u0008\u0010E\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010}\u001a\u00020\u001cJ\u0006\u0010~\u001a\u00020\u001cJ\u0017\u0010\u007f\u001a\u00020\u001c2\u0006\u0010E\u001a\u00020\u000b2\u0007\u0010\u0080\u0001\u001a\u00020\u000bJ\u000f\u0010\u0081\u0001\u001a\u00020\u001c2\u0006\u0010\r\u001a\u00020\u000bJ\u000f\u0010\u0082\u0001\u001a\u00020\u001c2\u0006\u0010E\u001a\u00020\u000bJ\u0007\u0010\u0083\u0001\u001a\u00020\u001cJ\u000f\u0010\u0084\u0001\u001a\u00020\u001c2\u0006\u0010\r\u001a\u00020\u000bJ\u0007\u0010\u0085\u0001\u001a\u00020\u001cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\u0008\u0012\u0004\u0012\u00020\u0007`\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0087\u0001"
    }
    d2 = {
        "Lcom/aptoide/sdk/core/analytics/SdkAnalytics;",
        "",
        "analyticsManager",
        "Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager;",
        "(Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager;)V",
        "eventsQueue",
        "Ljava/util/ArrayList;",
        "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;",
        "Lkotlin/collections/ArrayList;",
        "addBackendRequestData",
        "",
        "",
        "eventData",
        "url",
        "method",
        "paths",
        "",
        "header",
        "",
        "queries",
        "body",
        "addBackendResponseData",
        "responseCode",
        "",
        "responseMessage",
        "errorMessage",
        "(Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;",
        "logEvent",
        "",
        "analyticsEvent",
        "sendAppInstallationTriggerEvent",
        "appPackageName",
        "state",
        "sendAppUpdateAvailableFailureToObtainResult",
        "sendAppUpdateAvailableMainThreadFailure",
        "sendAppUpdateAvailableRequest",
        "sendAppUpdateAvailableResult",
        "result",
        "",
        "sendAttributionRequestEvent",
        "sendAttributionRequestFailureEvent",
        "sendAttributionResultEvent",
        "oemid",
        "guestId",
        "utmSource",
        "utmMedium",
        "utmCampaign",
        "utmTerm",
        "utmContent",
        "sendAttributionRetryAttemptEvent",
        "message",
        "sendBackendErrorEvent",
        "type",
        "Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;",
        "context",
        "Landroid/content/Context;",
        "sendBackendMappingFailureEvent",
        "sendBackendRequestEvent",
        "sendBackendResponseEvent",
        "(Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V",
        "sendConsumePurchaseRequest",
        "purchaseToken",
        "sendConsumePurchaseResult",
        "(Ljava/lang/String;Ljava/lang/Integer;)V",
        "sendEventsOnQueue",
        "sendFinishConnectionEvent",
        "sendGetReferralDeeplinkMainThreadFailureEvent",
        "sendGetReferralDeeplinkRequestEvent",
        "sendGetReferralDeeplinkResultEvent",
        "deeplink",
        "sendInstallWalletDialogActionEvent",
        "action",
        "sendInstallWalletDialogDownloadWalletFallbackEvent",
        "source",
        "sendInstallWalletDialogDownloadWalletVanillaEvent",
        "sendInstallWalletDialogEvent",
        "sendInstallWalletDialogSuccessEvent",
        "sendIsFeatureSupportedRequestEvent",
        "feature",
        "sendIsFeatureSupportedResultEvent",
        "(Ljava/lang/Integer;)V",
        "sendLaunchAppUpdateDeeplinkFailureEvent",
        "sendLaunchAppUpdateDialogActionEvent",
        "sendLaunchAppUpdateDialogRequestEvent",
        "sendLaunchAppUpdateResultEvent",
        "sendLaunchAppUpdateStoreRequestEvent",
        "sendLaunchPurchaseEvent",
        "sku",
        "skuType",
        "developerPayload",
        "obfuscatedAccountId",
        "freeTrial",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V",
        "sendLaunchPurchaseMainThreadFailureEvent",
        "sendLaunchPurchaseTypeNotSupportedFailureEvent",
        "sendPayflowRequestEvent",
        "sendPayflowResultEvent",
        "paymentFlowMethods",
        "sendPurchaseResultEvent",
        "failureMessage",
        "sendPurchaseSignatureVerificationFailureEvent",
        "apiKey",
        "sendQueryPurchasesRequestEvent",
        "sendQueryPurchasesResultEvent",
        "purchases",
        "sendQueryPurchasesTypeNotSupportedErrorEvent",
        "sendQuerySkuDetailsFailureParsingSkusEvent",
        "skus",
        "sendQuerySkuDetailsRequestEvent",
        "sendQuerySkuDetailsResult",
        "sendServiceConnectedEvent",
        "service",
        "sendServiceConnectionExceptionEvent",
        "step",
        "Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;",
        "sendServiceConnectionFailureEvent",
        "sendStartConnectionEvent",
        "sendUnexpectedFailureEvent",
        "data",
        "sendWalletPaymentEmptyDataEvent",
        "sendWalletPaymentStartEvent",
        "sendWebPaymentAllowExternalAppsEvent",
        "allow",
        "sendWebPaymentErrorProcessingPurchaseResultEvent",
        "sendWebPaymentExecuteExternalDeeplinkEvent",
        "sendWebPaymentExternalPaymentResultEvent",
        "sendWebPaymentFailureToObtainUrlEvent",
        "sendWebPaymentFailureToOpenDeeplinkEvent",
        "exception",
        "sendWebPaymentLaunchExternalPaymentEvent",
        "sendWebPaymentOpenDeeplinkEvent",
        "sendWebPaymentPurchaseResultEmptyEvent",
        "sendWebPaymentStartEvent",
        "sendWebPaymentWalletPaymentResultEvent",
        "Companion",
        "aptoide-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/aptoide/sdk/core/analytics/SdkAnalytics$Companion;

.field private static final EVENT_CONTEXT:Ljava/lang/String; = "AnalyticsSDK"


# instance fields
.field private final analyticsManager:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager;

.field private eventsQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/aptoide/sdk/core/analytics/SdkAnalytics$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->Companion:Lcom/aptoide/sdk/core/analytics/SdkAnalytics$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager;)V
    .locals 1

    const-string v0, "analyticsManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->analyticsManager:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager;

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->eventsQueue:Ljava/util/ArrayList;

    return-void
.end method

.method private final addBackendRequestData(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "url"

    .line 584
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "method"

    .line 585
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p2, "toString(...)"

    if-eqz p4, :cond_1

    .line 587
    new-instance p3, Lorg/json/JSONArray;

    invoke-direct {p3}, Lorg/json/JSONArray;-><init>()V

    .line 588
    check-cast p4, Ljava/lang/Iterable;

    .line 674
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 589
    invoke-virtual {p3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 591
    :cond_0
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result p4

    if-lez p4, :cond_1

    .line 592
    invoke-virtual {p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "paths"

    invoke-interface {p1, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p5, :cond_3

    .line 596
    new-instance p3, Lorg/json/JSONArray;

    invoke-direct {p3}, Lorg/json/JSONArray;-><init>()V

    .line 676
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/Map$Entry;

    .line 598
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 599
    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 600
    invoke-virtual {p3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 602
    :cond_2
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result p4

    if-lez p4, :cond_3

    .line 603
    invoke-virtual {p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "headers"

    invoke-interface {p1, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p6, :cond_5

    .line 607
    new-instance p3, Lorg/json/JSONArray;

    invoke-direct {p3}, Lorg/json/JSONArray;-><init>()V

    .line 678
    invoke-interface {p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/Map$Entry;

    .line 609
    new-instance p6, Lorg/json/JSONObject;

    invoke-direct {p6}, Lorg/json/JSONObject;-><init>()V

    .line 610
    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p6, v0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 611
    invoke-virtual {p3, p6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 613
    :cond_4
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result p4

    if-lez p4, :cond_5

    .line 614
    invoke-virtual {p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "queries"

    invoke-interface {p1, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz p7, :cond_7

    .line 618
    new-instance p3, Lorg/json/JSONArray;

    invoke-direct {p3}, Lorg/json/JSONArray;-><init>()V

    .line 680
    invoke-interface {p7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_3
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_6

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/Map$Entry;

    .line 620
    new-instance p6, Lorg/json/JSONObject;

    invoke-direct {p6}, Lorg/json/JSONObject;-><init>()V

    .line 621
    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/lang/String;

    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p6, p7, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 622
    invoke-virtual {p3, p6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 624
    :cond_6
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result p4

    if-lez p4, :cond_7

    .line 625
    invoke-virtual {p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "body"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-object p1
.end method

.method private final addBackendResponseData(Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    if-eqz p2, :cond_0

    .line 638
    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    :cond_0
    move-object p2, v0

    :cond_1
    const-string/jumbo v1, "response_code"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_2

    move-object p3, v0

    :cond_2
    const-string/jumbo p2, "response_message"

    .line 639
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p4, :cond_3

    move-object p4, v0

    :cond_3
    const-string p2, "error_message"

    .line 640
    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic addBackendResponseData$default(Lcom/aptoide/sdk/core/analytics/SdkAnalytics;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/Map;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 632
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->addBackendResponseData(Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private final logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V
    .locals 4

    .line 646
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->isAnalyticsSetupFromPayflowFinalized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->eventsQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 650
    :cond_0
    new-instance v0, Lcom/aptoide/sdk/core/analytics/severity/SdkAnalyticsSeverityUtils;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/severity/SdkAnalyticsSeverityUtils;-><init>()V

    invoke-virtual {v0, p1}, Lcom/aptoide/sdk/core/analytics/severity/SdkAnalyticsSeverityUtils;->isEventSeverityAllowed(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 651
    iget-object v0, p0, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->analyticsManager:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager;

    .line 652
    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;->getData()Ljava/util/Map;

    move-result-object v1

    .line 653
    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;->getName()Ljava/lang/String;

    move-result-object v2

    .line 654
    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;->getAction()Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    move-result-object p1

    const-string v3, "AnalyticsSDK"

    .line 651
    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager;->logEvent(Ljava/util/Map;Ljava/lang/String;Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static synthetic sendBackendMappingFailureEvent$default(Lcom/aptoide/sdk/core/analytics/SdkAnalytics;Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 125
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendBackendMappingFailureEvent(Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic sendBackendResponseEvent$default(Lcom/aptoide/sdk/core/analytics/SdkAnalytics;Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 99
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendBackendResponseEvent(Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic sendPurchaseResultEvent$default(Lcom/aptoide/sdk/core/analytics/SdkAnalytics;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    .line 388
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendPurchaseResultEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic sendServiceConnectedEvent$default(Lcom/aptoide/sdk/core/analytics/SdkAnalytics;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 223
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendServiceConnectedEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic sendServiceConnectionFailureEvent$default(Lcom/aptoide/sdk/core/analytics/SdkAnalytics;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 232
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendServiceConnectionFailureEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final sendAppInstallationTriggerEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "appPackageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    const-string v2, "app_package_name"

    .line 304
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkAppInstallationTrigger;

    invoke-direct {p1, v1}, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkAppInstallationTrigger;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendAppUpdateAvailableFailureToObtainResult()V
    .locals 1

    .line 77
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkAppUpdateAvailableEvents$SdkAppUpdateAvailableFailureToObtainResult;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkAppUpdateAvailableEvents$SdkAppUpdateAvailableFailureToObtainResult;-><init>()V

    check-cast v0, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendAppUpdateAvailableMainThreadFailure()V
    .locals 1

    .line 73
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkAppUpdateAvailableEvents$SdkAppUpdateAvailableMainThreadFailure;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkAppUpdateAvailableEvents$SdkAppUpdateAvailableMainThreadFailure;-><init>()V

    check-cast v0, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendAppUpdateAvailableRequest()V
    .locals 1

    .line 61
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkAppUpdateAvailableEvents$SdkAppUpdateAvailableRequest;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkAppUpdateAvailableEvents$SdkAppUpdateAvailableRequest;-><init>()V

    check-cast v0, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendAppUpdateAvailableResult(Z)V
    .locals 2

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v1, "result"

    .line 67
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkAppUpdateAvailableEvents$SdkAppUpdateAvailableResult;

    invoke-direct {p1, v0}, Lcom/aptoide/sdk/core/analytics/events/SdkAppUpdateAvailableEvents$SdkAppUpdateAvailableResult;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendAttributionRequestEvent()V
    .locals 1

    .line 246
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkAttributionRequest;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkAttributionRequest;-><init>()V

    check-cast v0, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendAttributionRequestFailureEvent()V
    .locals 1

    .line 280
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkAttributionRequestFailure;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkAttributionRequestFailure;-><init>()V

    check-cast v0, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendAttributionResultEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 258
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    if-eqz p1, :cond_0

    const-string v1, "oemid"

    .line 260
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "guest_id"

    .line 261
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p3, :cond_2

    const-string/jumbo p1, "utm_source"

    .line 262
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p4, :cond_3

    const-string/jumbo p1, "utm_medium"

    .line 263
    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p5, :cond_4

    const-string/jumbo p1, "utm_campaign"

    .line 264
    invoke-interface {v0, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz p6, :cond_5

    const-string/jumbo p1, "utm_term"

    .line 265
    invoke-interface {v0, p1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz p7, :cond_6

    const-string/jumbo p1, "utm_content"

    .line 266
    invoke-interface {v0, p1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_6
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkAttributionResult;

    invoke-direct {p1, v0}, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkAttributionResult;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendAttributionRetryAttemptEvent(Ljava/lang/String;)V
    .locals 2

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 274
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkAttributionRetryAttempt;

    invoke-direct {p1, v1}, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkAttributionRetryAttempt;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendBackendErrorEvent(Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "url"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    .line 117
    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    const-string/jumbo p1, "response_message"

    .line 119
    invoke-interface {v2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance p1, Lcom/aptoide/sdk/core/network/NetworkTraffic;

    invoke-direct {p1}, Lcom/aptoide/sdk/core/network/NetworkTraffic;-><init>()V

    invoke-virtual {p1, p4}, Lcom/aptoide/sdk/core/network/NetworkTraffic;->getAverageSpeed(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "null"

    :cond_1
    const-string p2, "network_speed"

    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestEvents$SdkCallBackendError;

    invoke-direct {p1, v2}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestEvents$SdkCallBackendError;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendBackendMappingFailureEvent(Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 132
    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, ""

    if-nez p2, :cond_0

    move-object p2, p1

    :cond_0
    const-string/jumbo v0, "response_message"

    .line 133
    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_1

    move-object p3, p1

    :cond_1
    const-string p1, "error_message"

    .line 134
    invoke-interface {v1, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestEvents$SdkCallBackendMappingFailure;

    invoke-direct {p1, v1}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestEvents$SdkCallBackendMappingFailure;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendBackendRequestEvent(Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "type"

    move-object v1, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "url"

    move-object v5, p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "method"

    move-object v6, p3

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    .line 92
    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, p0

    move-object v4, v2

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 94
    invoke-direct/range {v3 .. v10}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->addBackendRequestData(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    .line 96
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestEvents$SdkCallBackendRequest;

    invoke-direct {v0, v2}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestEvents$SdkCallBackendRequest;-><init>(Ljava/util/Map;)V

    check-cast v0, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    move-object v1, p0

    invoke-direct {p0, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendBackendResponseEvent(Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 107
    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->addBackendResponseData(Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 111
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestEvents$SdkCallBackendResponse;

    invoke-direct {p1, v1}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestEvents$SdkCallBackendResponse;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendConsumePurchaseRequest(Ljava/lang/String;)V
    .locals 2

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    if-eqz p1, :cond_0

    const-string v1, "purchase_token"

    .line 143
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_0
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkConsumePurchaseEvents$SdkConsumePurchaseRequest;

    invoke-direct {p1, v0}, Lcom/aptoide/sdk/core/analytics/events/SdkConsumePurchaseEvents$SdkConsumePurchaseRequest;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendConsumePurchaseResult(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    if-eqz p1, :cond_0

    const-string v1, "purchase_token"

    .line 151
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    .line 152
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "response_code"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkConsumePurchaseEvents$SdkConsumePurchaseResult;

    invoke-direct {p1, v0}, Lcom/aptoide/sdk/core/analytics/events/SdkConsumePurchaseEvents$SdkConsumePurchaseResult;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendEventsOnQueue()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->eventsQueue:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 661
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    .line 54
    invoke-direct {p0, v1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->eventsQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final sendFinishConnectionEvent()V
    .locals 1

    .line 242
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkFinishConnection;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkFinishConnection;-><init>()V

    check-cast v0, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendGetReferralDeeplinkMainThreadFailureEvent()V
    .locals 1

    .line 198
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkGetReferralDeeplinkEvents$SdkGetReferralDeeplinkMainThreadFailure;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkGetReferralDeeplinkEvents$SdkGetReferralDeeplinkMainThreadFailure;-><init>()V

    check-cast v0, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendGetReferralDeeplinkRequestEvent()V
    .locals 1

    .line 186
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkGetReferralDeeplinkEvents$SdkGetReferralDeeplinkRequest;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkGetReferralDeeplinkEvents$SdkGetReferralDeeplinkRequest;-><init>()V

    check-cast v0, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendGetReferralDeeplinkResultEvent(Ljava/lang/String;)V
    .locals 2

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    const-string v1, "deeplink"

    .line 192
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkGetReferralDeeplinkEvents$SdkGetReferralDeeplinkResult;

    invoke-direct {p1, v0}, Lcom/aptoide/sdk/core/analytics/events/SdkGetReferralDeeplinkEvents$SdkGetReferralDeeplinkResult;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendInstallWalletDialogActionEvent(Ljava/lang/String;)V
    .locals 2

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    const-string/jumbo v1, "wallet_install_action"

    .line 317
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkInstallWalletDialogEvents$SdkInstallWalletDialogAction;

    invoke-direct {p1, v0}, Lcom/aptoide/sdk/core/analytics/events/SdkInstallWalletDialogEvents$SdkInstallWalletDialogAction;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendInstallWalletDialogDownloadWalletFallbackEvent(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 329
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkInstallWalletDialogEvents$SdkInstallWalletDialogDownloadWalletFallback;

    invoke-direct {p1, v1}, Lcom/aptoide/sdk/core/analytics/events/SdkInstallWalletDialogEvents$SdkInstallWalletDialogDownloadWalletFallback;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendInstallWalletDialogDownloadWalletVanillaEvent()V
    .locals 1

    .line 323
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkInstallWalletDialogEvents$SdkInstallWalletDialogDownloadWalletVanilla;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkInstallWalletDialogEvents$SdkInstallWalletDialogDownloadWalletVanilla;-><init>()V

    check-cast v0, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendInstallWalletDialogEvent()V
    .locals 1

    .line 312
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkInstallWalletDialogEvents$SdkInstallWalletDialog;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkInstallWalletDialogEvents$SdkInstallWalletDialog;-><init>()V

    check-cast v0, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendInstallWalletDialogSuccessEvent()V
    .locals 1

    .line 335
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkInstallWalletDialogEvents$SdkInstallWalletDialogSuccess;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkInstallWalletDialogEvents$SdkInstallWalletDialogSuccess;-><init>()V

    check-cast v0, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendIsFeatureSupportedRequestEvent(I)V
    .locals 2

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "feature"

    .line 205
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkIsFeatureSupportedEvents$SdkIsFeatureSupportedRequest;

    invoke-direct {p1, v0}, Lcom/aptoide/sdk/core/analytics/events/SdkIsFeatureSupportedEvents$SdkIsFeatureSupportedRequest;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendIsFeatureSupportedResultEvent(Ljava/lang/Integer;)V
    .locals 2

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v1, "result"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkIsFeatureSupportedEvents$SdkIsFeatureSupportedResult;

    invoke-direct {p1, v0}, Lcom/aptoide/sdk/core/analytics/events/SdkIsFeatureSupportedEvents$SdkIsFeatureSupportedResult;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendLaunchAppUpdateDeeplinkFailureEvent(Ljava/lang/String;)V
    .locals 2

    const-string v0, "deeplink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 348
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateEvents$SdkLaunchAppUpdateDeeplinkFailure;

    invoke-direct {p1, v1}, Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateEvents$SdkLaunchAppUpdateDeeplinkFailure;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendLaunchAppUpdateDialogActionEvent(Ljava/lang/String;)V
    .locals 2

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 360
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateDialogEvents$SdkLaunchAppUpdateDialogAction;

    invoke-direct {p1, v1}, Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateDialogEvents$SdkLaunchAppUpdateDialogAction;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendLaunchAppUpdateDialogRequestEvent()V
    .locals 1

    .line 355
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateDialogEvents$SdkLaunchAppUpdateDialogRequest;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateDialogEvents$SdkLaunchAppUpdateDialogRequest;-><init>()V

    check-cast v0, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendLaunchAppUpdateResultEvent(Ljava/lang/String;)V
    .locals 2

    const-string v0, "deeplink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 341
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateEvents$SdkLaunchAppUpdateResult;

    invoke-direct {p1, v1}, Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateEvents$SdkLaunchAppUpdateResult;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendLaunchAppUpdateStoreRequestEvent()V
    .locals 1

    .line 367
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateStoreEvents$SdkLaunchAppUpdateStoreRequest;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateStoreEvents$SdkLaunchAppUpdateStoreRequest;-><init>()V

    check-cast v0, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendLaunchPurchaseEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    const-string/jumbo v0, "sku"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "skuType"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 379
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "sku_type"

    .line 380
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    const-string p1, "developer_payload"

    .line 381
    invoke-interface {v1, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p4, :cond_1

    const-string p1, "obfuscated_account_id"

    .line 382
    invoke-interface {v1, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p5, :cond_2

    .line 383
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 663
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "free_trial"

    .line 383
    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    :cond_2
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkPurchaseFlowEvents$SdkLaunchPurchase;

    invoke-direct {p1, v1}, Lcom/aptoide/sdk/core/analytics/events/SdkPurchaseFlowEvents$SdkLaunchPurchase;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendLaunchPurchaseMainThreadFailureEvent()V
    .locals 1

    .line 413
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkPurchaseFlowEvents$SdkLaunchPurchaseMainThreadFailure;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkPurchaseFlowEvents$SdkLaunchPurchaseMainThreadFailure;-><init>()V

    check-cast v0, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendLaunchPurchaseTypeNotSupportedFailureEvent(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "skuType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    const-string/jumbo v1, "sku_type"

    .line 407
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkPurchaseFlowEvents$SdkLaunchPurchaseTypeNotSupportedFailure;

    invoke-direct {p1, v0}, Lcom/aptoide/sdk/core/analytics/events/SdkPurchaseFlowEvents$SdkLaunchPurchaseTypeNotSupportedFailure;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendPayflowRequestEvent()V
    .locals 1

    .line 284
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkPayflowRequest;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkPayflowRequest;-><init>()V

    check-cast v0, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendPayflowResultEvent(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 288
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 291
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 292
    check-cast p1, Ljava/lang/Iterable;

    .line 664
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 293
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "toString(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "payment_flow_list"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :cond_1
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkPayflowResult;

    invoke-direct {p1, v0}, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkPayflowResult;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendPurchaseResultEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 394
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v1, "response_code"

    .line 396
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    const-string p1, "purchase_token"

    .line 397
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p3, :cond_1

    const-string/jumbo p1, "sku"

    .line 398
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p4, :cond_2

    const-string p1, "failure_message"

    .line 399
    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    :cond_2
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkPurchaseFlowEvents$SdkPurchaseResult;

    invoke-direct {p1, v0}, Lcom/aptoide/sdk/core/analytics/events/SdkPurchaseFlowEvents$SdkPurchaseResult;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendPurchaseSignatureVerificationFailureEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "purchaseToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    const-string/jumbo v1, "signed_data"

    .line 169
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    const-string p1, "api_key"

    .line 170
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_0
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureEvents$SdkPurchaseSignatureVerificationFailure;

    invoke-direct {p1, v0}, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureEvents$SdkPurchaseSignatureVerificationFailure;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendQueryPurchasesRequestEvent(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "skuType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    const-string/jumbo v1, "sku_type"

    .line 503
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkQueryPurchasesEvents$SdkQueryPurchasesRequest;

    invoke-direct {p1, v0}, Lcom/aptoide/sdk/core/analytics/events/SdkQueryPurchasesEvents$SdkQueryPurchasesRequest;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendQueryPurchasesResultEvent(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 517
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 520
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 521
    check-cast p1, Ljava/lang/Iterable;

    .line 666
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 522
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 524
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "toString(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "purchases"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    :cond_1
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkQueryPurchasesEvents$SdkQueryPurchasesResult;

    invoke-direct {p1, v0}, Lcom/aptoide/sdk/core/analytics/events/SdkQueryPurchasesEvents$SdkQueryPurchasesResult;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendQueryPurchasesTypeNotSupportedErrorEvent(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "skuType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    const-string/jumbo v1, "sku_type"

    .line 511
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkQueryPurchasesEvents$SdkQueryPurchasesTypeNotSupportedError;

    invoke-direct {p1, v0}, Lcom/aptoide/sdk/core/analytics/events/SdkQueryPurchasesEvents$SdkQueryPurchasesTypeNotSupportedError;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendQuerySkuDetailsFailureParsingSkusEvent(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "skuType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 561
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 564
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 565
    check-cast p1, Ljava/lang/Iterable;

    .line 672
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 566
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 568
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "toString(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "skus"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string/jumbo p1, "sku_type"

    .line 570
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsEvents$SdkQuerySkuDetailsFailureParsingSkus;

    invoke-direct {p1, v0}, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsEvents$SdkQuerySkuDetailsFailureParsingSkus;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendQuerySkuDetailsRequestEvent(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "skuType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 535
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 536
    check-cast p1, Ljava/lang/Iterable;

    .line 668
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 537
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 539
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "toString(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "skus"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string/jumbo p1, "sku_type"

    .line 541
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsEvents$SdkQuerySkuDetailsRequest;

    invoke-direct {p1, v0}, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsEvents$SdkQuerySkuDetailsRequest;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendQuerySkuDetailsResult(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 547
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 550
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 551
    check-cast p1, Ljava/lang/Iterable;

    .line 670
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 552
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 554
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "toString(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "skus"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    :cond_1
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsEvents$SdkQuerySkuDetailsResult;

    invoke-direct {p1, v0}, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsEvents$SdkQuerySkuDetailsResult;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendServiceConnectedEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 226
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    const-string p1, "method"

    .line 227
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_0
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkServiceConnected;

    invoke-direct {p1, v1}, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkServiceConnected;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendServiceConnectionExceptionEvent(Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;)V
    .locals 2

    const-string/jumbo v0, "step"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 161
    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureEvents$SdkServiceConnectionException;

    invoke-direct {p1, v1}, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureEvents$SdkServiceConnectionException;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendServiceConnectionFailureEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 235
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    const-string p1, "method"

    .line 236
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_0
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkServiceConnectionFailure;

    invoke-direct {p1, v1}, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkServiceConnectionFailure;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendStartConnectionEvent()V
    .locals 1

    .line 220
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkStartConnection;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkStartConnection;-><init>()V

    check-cast v0, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendUnexpectedFailureEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    .line 178
    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureEvents$SdkUnexpectedFailure;

    invoke-direct {p1, v2}, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureEvents$SdkUnexpectedFailure;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendWalletPaymentEmptyDataEvent()V
    .locals 1

    .line 496
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkWalletPaymentFlowEvents$SdkWalletPaymentEmptyData;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkWalletPaymentFlowEvents$SdkWalletPaymentEmptyData;-><init>()V

    check-cast v0, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendWalletPaymentStartEvent()V
    .locals 1

    .line 492
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkWalletPaymentFlowEvents$SdkWalletPaymentStart;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkWalletPaymentFlowEvents$SdkWalletPaymentStart;-><init>()V

    check-cast v0, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendWebPaymentAllowExternalAppsEvent(Z)V
    .locals 2

    .line 467
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "allow"

    .line 469
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentAllowExternalApps;

    invoke-direct {p1, v0}, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentAllowExternalApps;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendWebPaymentErrorProcessingPurchaseResultEvent(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 441
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentErrorProcessingPurchaseResult;

    invoke-direct {p1, v1}, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentErrorProcessingPurchaseResult;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendWebPaymentExecuteExternalDeeplinkEvent(Ljava/lang/String;)V
    .locals 2

    .line 479
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    if-eqz p1, :cond_0

    const-string v1, "deeplink"

    .line 481
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    :cond_0
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentExecuteExternalDeeplink;

    invoke-direct {p1, v0}, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentExecuteExternalDeeplink;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendWebPaymentExternalPaymentResultEvent()V
    .locals 1

    .line 475
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentExternalPaymentResult;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentExternalPaymentResult;-><init>()V

    check-cast v0, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendWebPaymentFailureToObtainUrlEvent()V
    .locals 1

    .line 426
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentFailureToObtainUrl;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentFailureToObtainUrl;-><init>()V

    check-cast v0, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendWebPaymentFailureToOpenDeeplinkEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "deeplink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "exception"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    .line 432
    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentFailureToOpenDeeplink;

    invoke-direct {p1, v2}, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentFailureToOpenDeeplink;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendWebPaymentLaunchExternalPaymentEvent(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 461
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentLaunchExternalPayment;

    invoke-direct {p1, v1}, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentLaunchExternalPayment;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendWebPaymentOpenDeeplinkEvent(Ljava/lang/String;)V
    .locals 2

    const-string v0, "deeplink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 453
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentOpenDeeplink;

    invoke-direct {p1, v1}, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentOpenDeeplink;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendWebPaymentPurchaseResultEmptyEvent()V
    .locals 1

    .line 447
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentPurchaseResultEmpty;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentPurchaseResultEmpty;-><init>()V

    check-cast v0, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendWebPaymentStartEvent(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 420
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    new-instance p1, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentStart;

    invoke-direct {p1, v1}, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentStart;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method

.method public final sendWebPaymentWalletPaymentResultEvent()V
    .locals 1

    .line 487
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentWalletPaymentResult;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentWalletPaymentResult;-><init>()V

    check-cast v0, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;

    invoke-direct {p0, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->logEvent(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)V

    return-void
.end method
