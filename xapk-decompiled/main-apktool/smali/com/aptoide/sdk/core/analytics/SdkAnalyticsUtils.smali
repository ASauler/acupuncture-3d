.class public final Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;
.super Ljava/lang/Object;
.source "SdkAnalyticsUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010-\u001a\u00020\u0012J/\u0010.\u001a\u00020/2\u0008\u00100\u001a\u0004\u0018\u00010\u00122\u0008\u00101\u001a\u0004\u0018\u0001022\u0006\u00103\u001a\u0002042\u0006\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0002\u00105J\u000e\u00106\u001a\u00020/2\u0006\u0010\u0011\u001a\u00020\u0012R4\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008R\u001d\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000f\u0010\u0002\u001a\u0004\u0008\u0010\u0010\u0008R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR$\u0010\u001c\u001a\u00020\u00182\u0006\u0010\u0003\u001a\u00020\u0018@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0019\"\u0004\u0008\u001d\u0010\u001bR4\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u00042\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0004@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0008\"\u0004\u0008 \u0010\nR\u001b\u0010!\u001a\u00020\"8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010&\u001a\u0004\u0008#\u0010$R&\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00010(X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,\u00a8\u00067"
    }
    d2 = {
        "Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;",
        "",
        "()V",
        "value",
        "",
        "Lcom/aptoide/sdk/core/analytics/severity/AnalyticsFlowSeverityLevel;",
        "analyticsFlowSeverityLevels",
        "getAnalyticsFlowSeverityLevels",
        "()Ljava/util/List;",
        "setAnalyticsFlowSeverityLevels",
        "(Ljava/util/List;)V",
        "defaultAnalyticsFlowSeverityLevels",
        "getDefaultAnalyticsFlowSeverityLevels",
        "defaultMatomoCustomProperties",
        "Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;",
        "getDefaultMatomoCustomProperties$annotations",
        "getDefaultMatomoCustomProperties",
        "instanceId",
        "",
        "getInstanceId",
        "()Ljava/lang/String;",
        "setInstanceId",
        "(Ljava/lang/String;)V",
        "isAnalyticsEventLoggerInitialized",
        "",
        "()Z",
        "setAnalyticsEventLoggerInitialized",
        "(Z)V",
        "isAnalyticsSetupFromPayflowFinalized",
        "setAnalyticsSetupFromPayflowFinalized",
        "matomoCustomProperties",
        "getMatomoCustomProperties",
        "setMatomoCustomProperties",
        "sdkAnalytics",
        "Lcom/aptoide/sdk/core/analytics/SdkAnalytics;",
        "getSdkAnalytics",
        "()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;",
        "sdkAnalytics$delegate",
        "Lkotlin/Lazy;",
        "superProperties",
        "",
        "getSuperProperties",
        "()Ljava/util/Map;",
        "setSuperProperties",
        "(Ljava/util/Map;)V",
        "getLoggableSuperProperties",
        "setupProperties",
        "",
        "packageName",
        "versionCode",
        "",
        "deviceInformation",
        "Lcom/aptoide/sdk/core/device/DeviceInformation;",
        "(Ljava/lang/String;Ljava/lang/Integer;Lcom/aptoide/sdk/core/device/DeviceInformation;Ljava/lang/String;)V",
        "updateInstanceId",
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
.field public static final INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

.field private static analyticsFlowSeverityLevels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/core/analytics/severity/AnalyticsFlowSeverityLevel;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultAnalyticsFlowSeverityLevels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/core/analytics/severity/AnalyticsFlowSeverityLevel;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultMatomoCustomProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;",
            ">;"
        }
    .end annotation
.end field

.field private static instanceId:Ljava/lang/String;

.field private static isAnalyticsEventLoggerInitialized:Z

.field private static isAnalyticsSetupFromPayflowFinalized:Z

.field private static matomoCustomProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;",
            ">;"
        }
    .end annotation
.end field

.field private static final sdkAnalytics$delegate:Lkotlin/Lazy;

.field private static superProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    const/4 v0, 0x5

    new-array v1, v0, [Lcom/aptoide/sdk/core/analytics/severity/AnalyticsFlowSeverityLevel;

    .line 27
    new-instance v2, Lcom/aptoide/sdk/core/analytics/severity/AnalyticsFlowSeverityLevel;

    const-string v3, "consume_purchase"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/aptoide/sdk/core/analytics/severity/AnalyticsFlowSeverityLevel;-><init>(Ljava/lang/String;I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 28
    new-instance v2, Lcom/aptoide/sdk/core/analytics/severity/AnalyticsFlowSeverityLevel;

    const-string v5, "purchase_flow"

    invoke-direct {v2, v5, v4}, Lcom/aptoide/sdk/core/analytics/severity/AnalyticsFlowSeverityLevel;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v4

    .line 29
    new-instance v2, Lcom/aptoide/sdk/core/analytics/severity/AnalyticsFlowSeverityLevel;

    const-string/jumbo v5, "wallet_payment_flow"

    invoke-direct {v2, v5, v4}, Lcom/aptoide/sdk/core/analytics/severity/AnalyticsFlowSeverityLevel;-><init>(Ljava/lang/String;I)V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 30
    new-instance v2, Lcom/aptoide/sdk/core/analytics/severity/AnalyticsFlowSeverityLevel;

    const-string/jumbo v6, "web_payment_flow"

    invoke-direct {v2, v6, v5}, Lcom/aptoide/sdk/core/analytics/severity/AnalyticsFlowSeverityLevel;-><init>(Ljava/lang/String;I)V

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 31
    new-instance v2, Lcom/aptoide/sdk/core/analytics/severity/AnalyticsFlowSeverityLevel;

    const-string v7, "install_wallet_dialog"

    invoke-direct {v2, v7, v4}, Lcom/aptoide/sdk/core/analytics/severity/AnalyticsFlowSeverityLevel;-><init>(Ljava/lang/String;I)V

    const/4 v7, 0x4

    aput-object v2, v1, v7

    .line 26
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->defaultAnalyticsFlowSeverityLevels:Ljava/util/List;

    const/16 v1, 0xc

    new-array v2, v1, [Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;

    .line 36
    new-instance v8, Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;

    invoke-direct {v8, v4, v4}, Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;-><init>(II)V

    aput-object v8, v2, v3

    .line 37
    new-instance v3, Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;

    const/16 v8, 0xa

    invoke-direct {v3, v8, v5}, Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;-><init>(II)V

    aput-object v3, v2, v4

    .line 38
    new-instance v3, Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;

    const/16 v4, 0x190

    invoke-direct {v3, v4, v6}, Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;-><init>(II)V

    aput-object v3, v2, v5

    .line 39
    new-instance v3, Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;

    const/16 v4, 0x19a

    invoke-direct {v3, v4, v7}, Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;-><init>(II)V

    aput-object v3, v2, v6

    .line 40
    new-instance v3, Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;

    const/16 v4, 0x30c

    invoke-direct {v3, v4, v0}, Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;-><init>(II)V

    aput-object v3, v2, v7

    .line 41
    new-instance v3, Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;

    const/16 v4, 0x384

    const/4 v5, 0x6

    invoke-direct {v3, v4, v5}, Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;-><init>(II)V

    aput-object v3, v2, v0

    .line 42
    new-instance v0, Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;

    const/16 v3, 0x514

    const/4 v4, 0x7

    invoke-direct {v0, v3, v4}, Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;-><init>(II)V

    aput-object v0, v2, v5

    .line 43
    new-instance v0, Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;

    const/16 v3, 0x515

    const/16 v5, 0x8

    invoke-direct {v0, v3, v5}, Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;-><init>(II)V

    aput-object v0, v2, v4

    .line 44
    new-instance v0, Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;

    const/16 v3, 0x55a

    const/16 v4, 0x9

    invoke-direct {v0, v3, v4}, Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;-><init>(II)V

    aput-object v0, v2, v5

    .line 45
    new-instance v0, Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;

    const/16 v3, 0x564

    invoke-direct {v0, v3, v8}, Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;-><init>(II)V

    aput-object v0, v2, v4

    .line 46
    new-instance v0, Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;

    const/16 v3, 0x56e

    const/16 v4, 0xb

    invoke-direct {v0, v3, v4}, Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;-><init>(II)V

    aput-object v0, v2, v8

    .line 47
    new-instance v0, Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;

    const/16 v3, 0x640

    invoke-direct {v0, v3, v1}, Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;-><init>(II)V

    aput-object v0, v2, v4

    .line 35
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->defaultMatomoCustomProperties:Ljava/util/List;

    .line 56
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils$sdkAnalytics$2;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils$sdkAnalytics$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->sdkAnalytics$delegate:Lkotlin/Lazy;

    const-string v0, ""

    .line 59
    sput-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->instanceId:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->superProperties:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getDefaultMatomoCustomProperties$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getAnalyticsFlowSeverityLevels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/core/analytics/severity/AnalyticsFlowSeverityLevel;",
            ">;"
        }
    .end annotation

    .line 15
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->analyticsFlowSeverityLevels:Ljava/util/List;

    return-object v0
.end method

.method public final getDefaultAnalyticsFlowSeverityLevels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/core/analytics/severity/AnalyticsFlowSeverityLevel;",
            ">;"
        }
    .end annotation

    .line 25
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->defaultAnalyticsFlowSeverityLevels:Ljava/util/List;

    return-object v0
.end method

.method public final getDefaultMatomoCustomProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;",
            ">;"
        }
    .end annotation

    .line 35
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->defaultMatomoCustomProperties:Ljava/util/List;

    return-object v0
.end method

.method public final getInstanceId()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getLoggableSuperProperties()Ljava/lang/String;
    .locals 10

    .line 88
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->superProperties:Ljava/util/Map;

    const-string v1, "probably_emulator"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 89
    sget-object v1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->superProperties:Ljava/util/Map;

    const-string v2, "device_model"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 90
    sget-object v2, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->superProperties:Ljava/util/Map;

    const-string v3, "device_brand"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 91
    sget-object v3, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->superProperties:Ljava/util/Map;

    const-string v4, "os_version"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 92
    sget-object v4, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->superProperties:Ljava/util/Map;

    const-string v5, "package_name"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 93
    sget-object v5, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->superProperties:Ljava/util/Map;

    const-string/jumbo v6, "version_code"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 94
    sget-object v6, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->superProperties:Ljava/util/Map;

    const-string/jumbo v7, "sdk_package"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 95
    sget-object v7, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->superProperties:Ljava/util/Map;

    const-string v8, "language"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "{probably_emulator="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", device_model="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", device_brand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", os_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", package_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sdk_package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMatomoCustomProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;",
            ">;"
        }
    .end annotation

    .line 20
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->matomoCustomProperties:Ljava/util/List;

    return-object v0
.end method

.method public final getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;
    .locals 1

    .line 56
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->sdkAnalytics$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    return-object v0
.end method

.method public final getSuperProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 60
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->superProperties:Ljava/util/Map;

    return-object v0
.end method

.method public final isAnalyticsEventLoggerInitialized()Z
    .locals 1

    .line 57
    sget-boolean v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->isAnalyticsEventLoggerInitialized:Z

    return v0
.end method

.method public final isAnalyticsSetupFromPayflowFinalized()Z
    .locals 1

    .line 49
    sget-boolean v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->isAnalyticsSetupFromPayflowFinalized:Z

    return v0
.end method

.method public final setAnalyticsEventLoggerInitialized(Z)V
    .locals 0

    .line 57
    sput-boolean p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->isAnalyticsEventLoggerInitialized:Z

    return-void
.end method

.method public final setAnalyticsFlowSeverityLevels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/core/analytics/severity/AnalyticsFlowSeverityLevel;",
            ">;)V"
        }
    .end annotation

    .line 17
    sput-object p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->analyticsFlowSeverityLevels:Ljava/util/List;

    .line 18
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    return-void
.end method

.method public final setAnalyticsSetupFromPayflowFinalized(Z)V
    .locals 0

    .line 51
    sput-boolean p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->isAnalyticsSetupFromPayflowFinalized:Z

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendEventsOnQueue()V

    :cond_0
    return-void
.end method

.method public final setInstanceId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sput-object p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->instanceId:Ljava/lang/String;

    return-void
.end method

.method public final setMatomoCustomProperties(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;",
            ">;)V"
        }
    .end annotation

    .line 22
    sput-object p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->matomoCustomProperties:Ljava/util/List;

    .line 23
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    return-void
.end method

.method public final setSuperProperties(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sput-object p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->superProperties:Ljava/util/Map;

    return-void
.end method

.method public final setupProperties(Ljava/lang/String;Ljava/lang/Integer;Lcom/aptoide/sdk/core/device/DeviceInformation;Ljava/lang/String;)V
    .locals 2

    const-string v0, "deviceInformation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instanceId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sput-object p4, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->instanceId:Ljava/lang/String;

    .line 69
    sget-object p4, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->superProperties:Ljava/util/Map;

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    const-string v1, "package_name"

    invoke-interface {p4, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->superProperties:Ljava/util/Map;

    if-nez p2, :cond_1

    move-object p2, v0

    :cond_1
    const-string/jumbo p4, "version_code"

    invoke-interface {p1, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->superProperties:Ljava/util/Map;

    const-string/jumbo p2, "sdk_package"

    const-string p4, "android-billing"

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->superProperties:Ljava/util/Map;

    const-string p2, "os_version"

    invoke-virtual {p3}, Lcom/aptoide/sdk/core/device/DeviceInformation;->getOsVersion()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->superProperties:Ljava/util/Map;

    const-string p2, "device_brand"

    invoke-virtual {p3}, Lcom/aptoide/sdk/core/device/DeviceInformation;->getBrand()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->superProperties:Ljava/util/Map;

    const-string p2, "device_model"

    invoke-virtual {p3}, Lcom/aptoide/sdk/core/device/DeviceInformation;->getModel()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->superProperties:Ljava/util/Map;

    const-string p2, "language"

    invoke-virtual {p3}, Lcom/aptoide/sdk/core/device/DeviceInformation;->getLanguage()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->superProperties:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/aptoide/sdk/core/device/DeviceInformation;->isProbablyEmulator()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "probably_emulator"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final updateInstanceId(Ljava/lang/String;)V
    .locals 2

    const-string v0, "instanceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Update Analytics Instance ID for User."

    .line 82
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "New Id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    .line 84
    sput-object p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->instanceId:Ljava/lang/String;

    return-void
.end method
