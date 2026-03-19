.class public final Lcom/aptoide/sdk/billing/SkuDetailsResultV2;
.super Ljava/lang/Object;
.source "SkuDetailsResultV2.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u001b\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/SkuDetailsResultV2;",
        "",
        "skuDetailsList",
        "",
        "Lcom/aptoide/sdk/billing/SkuDetailsV2;",
        "responseCode",
        "",
        "(Ljava/util/List;I)V",
        "getResponseCode",
        "()I",
        "getSkuDetailsList",
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
.field private final responseCode:I

.field private final skuDetailsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/SkuDetailsV2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/SkuDetailsV2;",
            ">;I)V"
        }
    .end annotation

    const-string/jumbo v0, "skuDetailsList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aptoide/sdk/billing/SkuDetailsResultV2;->skuDetailsList:Ljava/util/List;

    iput p2, p0, Lcom/aptoide/sdk/billing/SkuDetailsResultV2;->responseCode:I

    return-void
.end method


# virtual methods
.method public final getResponseCode()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/aptoide/sdk/billing/SkuDetailsResultV2;->responseCode:I

    return v0
.end method

.method public final getSkuDetailsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/SkuDetailsV2;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/aptoide/sdk/billing/SkuDetailsResultV2;->skuDetailsList:Ljava/util/List;

    return-object v0
.end method
