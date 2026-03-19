.class public final Lcom/aptoide/sdk/billing/payflow/PayflowManager;
.super Ljava/lang/Object;
.source "PayflowManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPayflowManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PayflowManager.kt\ncom/aptoide/sdk/billing/payflow/PayflowManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,59:1\n1#2:60\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0007J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\rH\u0002R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/payflow/PayflowManager;",
        "",
        "()V",
        "payflowRepository",
        "Lcom/aptoide/sdk/billing/payflow/PayflowRepository;",
        "getPayflowRepository",
        "()Lcom/aptoide/sdk/billing/payflow/PayflowRepository;",
        "payflowRepository$delegate",
        "Lkotlin/Lazy;",
        "getPayflowPriorityAsync",
        "",
        "setupMatomo",
        "payflowMethodResponse",
        "Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;",
        "android-aptoide-billing_release"
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
.field public static final INSTANCE:Lcom/aptoide/sdk/billing/payflow/PayflowManager;

.field private static final payflowRepository$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/billing/payflow/PayflowManager;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/payflow/PayflowManager;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/billing/payflow/PayflowManager;->INSTANCE:Lcom/aptoide/sdk/billing/payflow/PayflowManager;

    .line 15
    sget-object v0, Lcom/aptoide/sdk/billing/payflow/PayflowManager$payflowRepository$2;->INSTANCE:Lcom/aptoide/sdk/billing/payflow/PayflowManager$payflowRepository$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/billing/payflow/PayflowManager;->payflowRepository$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$setupMatomo(Lcom/aptoide/sdk/billing/payflow/PayflowManager;Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/payflow/PayflowManager;->setupMatomo(Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;)V

    return-void
.end method

.method public static final getPayflowPriorityAsync()V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 21
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendPayflowRequestEvent()V

    .line 22
    new-instance v0, Lcom/aptoide/sdk/billing/payflow/PayflowManager$getPayflowPriorityAsync$payflowListener$1;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/payflow/PayflowManager$getPayflowPriorityAsync$payflowListener$1;-><init>()V

    .line 48
    sget-object v1, Lcom/aptoide/sdk/billing/payflow/PayflowManager;->INSTANCE:Lcom/aptoide/sdk/billing/payflow/PayflowManager;

    invoke-direct {v1}, Lcom/aptoide/sdk/billing/payflow/PayflowManager;->getPayflowRepository()Lcom/aptoide/sdk/billing/payflow/PayflowRepository;

    move-result-object v1

    check-cast v0, Lcom/aptoide/sdk/billing/payflow/PayflowListener;

    invoke-virtual {v1, v0}, Lcom/aptoide/sdk/billing/payflow/PayflowRepository;->getPayflowPriorityAsync(Lcom/aptoide/sdk/billing/payflow/PayflowListener;)V

    return-void
.end method

.method private final getPayflowRepository()Lcom/aptoide/sdk/billing/payflow/PayflowRepository;
    .locals 1

    .line 15
    sget-object v0, Lcom/aptoide/sdk/billing/payflow/PayflowManager;->payflowRepository$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aptoide/sdk/billing/payflow/PayflowRepository;

    return-object v0
.end method

.method private final setupMatomo(Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;)V
    .locals 5

    .line 52
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->getMatomoDetails()Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;->getMatomoUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/4 v4, 0x0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v4

    :goto_1
    if-eqz v0, :cond_4

    .line 53
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->getMatomoDetails()Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;->getMatomoApiKey()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    if-eqz v2, :cond_3

    move-object v4, p1

    :cond_3
    if-eqz v4, :cond_4

    .line 54
    sget-object p1, Lcom/aptoide/sdk/core/analytics/matomo/MatomoEventLogger;->INSTANCE:Lcom/aptoide/sdk/core/analytics/matomo/MatomoEventLogger;

    sget-object v1, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, v4, v0}, Lcom/aptoide/sdk/core/analytics/matomo/MatomoEventLogger;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
