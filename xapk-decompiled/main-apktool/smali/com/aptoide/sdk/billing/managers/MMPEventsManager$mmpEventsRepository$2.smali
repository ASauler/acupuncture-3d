.class final Lcom/aptoide/sdk/billing/managers/MMPEventsManager$mmpEventsRepository$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MMPEventsManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aptoide/sdk/billing/managers/MMPEventsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/aptoide/sdk/billing/repositories/MMPEventsRepository;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/aptoide/sdk/billing/repositories/MMPEventsRepository;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/aptoide/sdk/billing/managers/MMPEventsManager$mmpEventsRepository$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/billing/managers/MMPEventsManager$mmpEventsRepository$2;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/managers/MMPEventsManager$mmpEventsRepository$2;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/billing/managers/MMPEventsManager$mmpEventsRepository$2;->INSTANCE:Lcom/aptoide/sdk/billing/managers/MMPEventsManager$mmpEventsRepository$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/aptoide/sdk/billing/repositories/MMPEventsRepository;
    .locals 5

    .line 17
    new-instance v0, Lcom/aptoide/sdk/billing/repositories/MMPEventsRepository;

    .line 18
    new-instance v1, Lcom/aptoide/sdk/billing/service/BdsRetryService;

    .line 19
    new-instance v2, Lcom/aptoide/sdk/billing/service/BdsService;

    const-string v3, "https://aptoide-mmp.aptoide.com/api/v1"

    const/16 v4, 0x7530

    invoke-direct {v2, v3, v4}, Lcom/aptoide/sdk/billing/service/BdsService;-><init>(Ljava/lang/String;I)V

    .line 20
    sget-object v3, Lcom/aptoide/sdk/billing/managers/MMPEventsManager;->INSTANCE:Lcom/aptoide/sdk/billing/managers/MMPEventsManager;

    invoke-static {v3}, Lcom/aptoide/sdk/billing/managers/MMPEventsManager;->access$getBackendRequestsSharedPreferences(Lcom/aptoide/sdk/billing/managers/MMPEventsManager;)Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;

    move-result-object v3

    .line 18
    invoke-direct {v1, v2, v3}, Lcom/aptoide/sdk/billing/service/BdsRetryService;-><init>(Lcom/aptoide/sdk/billing/service/BdsService;Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;)V

    .line 17
    invoke-direct {v0, v1}, Lcom/aptoide/sdk/billing/repositories/MMPEventsRepository;-><init>(Lcom/aptoide/sdk/billing/service/BdsRetryService;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/managers/MMPEventsManager$mmpEventsRepository$2;->invoke()Lcom/aptoide/sdk/billing/repositories/MMPEventsRepository;

    move-result-object v0

    return-object v0
.end method
