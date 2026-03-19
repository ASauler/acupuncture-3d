.class final Lcom/aptoide/sdk/billing/payflow/PayflowManager$payflowRepository$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PayflowManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aptoide/sdk/billing/payflow/PayflowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/aptoide/sdk/billing/payflow/PayflowRepository;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/aptoide/sdk/billing/payflow/PayflowRepository;",
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
.field public static final INSTANCE:Lcom/aptoide/sdk/billing/payflow/PayflowManager$payflowRepository$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/billing/payflow/PayflowManager$payflowRepository$2;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/payflow/PayflowManager$payflowRepository$2;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/billing/payflow/PayflowManager$payflowRepository$2;->INSTANCE:Lcom/aptoide/sdk/billing/payflow/PayflowManager$payflowRepository$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/aptoide/sdk/billing/payflow/PayflowRepository;
    .locals 4

    .line 16
    new-instance v0, Lcom/aptoide/sdk/billing/payflow/PayflowRepository;

    new-instance v1, Lcom/aptoide/sdk/billing/service/BdsService;

    const-string v2, "https://payflowsdk.aptoide.com/api"

    const/16 v3, 0x7530

    invoke-direct {v1, v2, v3}, Lcom/aptoide/sdk/billing/service/BdsService;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Lcom/aptoide/sdk/billing/payflow/PayflowRepository;-><init>(Lcom/aptoide/sdk/billing/service/BdsService;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/payflow/PayflowManager$payflowRepository$2;->invoke()Lcom/aptoide/sdk/billing/payflow/PayflowRepository;

    move-result-object v0

    return-object v0
.end method
