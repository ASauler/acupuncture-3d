.class public final Lcom/aptoide/sdk/billing/UnfetchedProduct;
.super Ljava/lang/Object;
.source "UnfetchedProduct.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/billing/UnfetchedProduct$StatusCode;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001:\u0001\rB\u001f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/UnfetchedProduct;",
        "",
        "productId",
        "",
        "productType",
        "statusCode",
        "",
        "(Ljava/lang/String;Ljava/lang/String;I)V",
        "getProductId",
        "()Ljava/lang/String;",
        "getProductType",
        "getStatusCode",
        "()I",
        "StatusCode",
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
.field private final productId:Ljava/lang/String;

.field private final productType:Ljava/lang/String;

.field private final statusCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "productId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/aptoide/sdk/billing/UnfetchedProduct;->productId:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/aptoide/sdk/billing/UnfetchedProduct;->productType:Ljava/lang/String;

    .line 6
    iput p3, p0, Lcom/aptoide/sdk/billing/UnfetchedProduct;->statusCode:I

    return-void
.end method


# virtual methods
.method public final getProductId()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/aptoide/sdk/billing/UnfetchedProduct;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public final getProductType()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/aptoide/sdk/billing/UnfetchedProduct;->productType:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatusCode()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/aptoide/sdk/billing/UnfetchedProduct;->statusCode:I

    return v0
.end method
