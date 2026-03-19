.class public final Lcom/aptoide/sdk/billing/payflow/PayflowRepository;
.super Ljava/lang/Object;
.source "PayflowRepository.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/billing/payflow/PayflowRepository$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \t2\u00020\u0001:\u0001\tB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/payflow/PayflowRepository;",
        "",
        "bdsService",
        "Lcom/aptoide/sdk/billing/service/BdsService;",
        "(Lcom/aptoide/sdk/billing/service/BdsService;)V",
        "getPayflowPriorityAsync",
        "",
        "payflowListener",
        "Lcom/aptoide/sdk/billing/payflow/PayflowListener;",
        "Companion",
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
.field private static final Companion:Lcom/aptoide/sdk/billing/payflow/PayflowRepository$Companion;

.field public static final PAYFLOW_VERSION:Ljava/lang/String; = "v2"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final bdsService:Lcom/aptoide/sdk/billing/service/BdsService;


# direct methods
.method public static synthetic $r8$lambda$U6upfY0dVvSOlNf5Hg-0MiPlMI8(Lcom/aptoide/sdk/billing/payflow/PayflowListener;Lcom/aptoide/sdk/billing/service/RequestResponse;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/aptoide/sdk/billing/payflow/PayflowRepository;->getPayflowPriorityAsync$lambda$0(Lcom/aptoide/sdk/billing/payflow/PayflowListener;Lcom/aptoide/sdk/billing/service/RequestResponse;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/aptoide/sdk/billing/payflow/PayflowRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aptoide/sdk/billing/payflow/PayflowRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/aptoide/sdk/billing/payflow/PayflowRepository;->Companion:Lcom/aptoide/sdk/billing/payflow/PayflowRepository$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/aptoide/sdk/billing/service/BdsService;)V
    .locals 1

    const-string v0, "bdsService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aptoide/sdk/billing/payflow/PayflowRepository;->bdsService:Lcom/aptoide/sdk/billing/service/BdsService;

    return-void
.end method

.method private static final getPayflowPriorityAsync$lambda$0(Lcom/aptoide/sdk/billing/payflow/PayflowListener;Lcom/aptoide/sdk/billing/service/RequestResponse;)V
    .locals 1

    const-string v0, "$payflowListener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper;-><init>()V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper;->map(Lcom/aptoide/sdk/billing/service/RequestResponse;)Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/aptoide/sdk/billing/payflow/PayflowListener;->onResponse(Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;)V

    return-void
.end method


# virtual methods
.method public final getPayflowPriorityAsync(Lcom/aptoide/sdk/billing/payflow/PayflowListener;)V
    .locals 10

    const-string v0, "payflowListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v8, Lcom/aptoide/sdk/billing/payflow/PayflowRepository$$ExternalSyntheticLambda0;

    invoke-direct {v8, p1}, Lcom/aptoide/sdk/billing/payflow/PayflowRepository$$ExternalSyntheticLambda0;-><init>(Lcom/aptoide/sdk/billing/payflow/PayflowListener;)V

    .line 15
    iget-object v1, p0, Lcom/aptoide/sdk/billing/payflow/PayflowRepository;->bdsService:Lcom/aptoide/sdk/billing/service/BdsService;

    const-string v2, "/v2/payment_flow"

    const-string v3, "GET"

    .line 18
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 19
    sget-object p1, Lcom/aptoide/sdk/billing/usecases/GetQueriesListForPayflowPriority;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/GetQueriesListForPayflowPriority;

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/usecases/GetQueriesListForPayflowPriority;->invoke()Ljava/util/Map;

    move-result-object v5

    .line 20
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v6

    .line 21
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v7

    .line 23
    sget-object v9, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->PAYMENT_FLOW:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    .line 15
    invoke-virtual/range {v1 .. v9}, Lcom/aptoide/sdk/billing/service/BdsService;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/aptoide/sdk/billing/service/ServiceResponseListener;Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;)V

    return-void
.end method
