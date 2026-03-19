.class public final Lcom/aptoide/sdk/billing/ProductDetails$PricingPhases;
.super Ljava/lang/Object;
.source "ProductDetails.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aptoide/sdk/billing/ProductDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PricingPhases"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0015\u0008\u0000\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/ProductDetails$PricingPhases;",
        "",
        "pricingPhaseList",
        "",
        "Lcom/aptoide/sdk/billing/ProductDetails$PricingPhase;",
        "(Ljava/util/List;)V",
        "getPricingPhaseList",
        "()Ljava/util/List;",
        "aptoide-billing_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final pricingPhaseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/ProductDetails$PricingPhase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/ProductDetails$PricingPhase;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pricingPhaseList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/aptoide/sdk/billing/ProductDetails$PricingPhases;->pricingPhaseList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getPricingPhaseList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/ProductDetails$PricingPhase;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/aptoide/sdk/billing/ProductDetails$PricingPhases;->pricingPhaseList:Ljava/util/List;

    return-object v0
.end method
