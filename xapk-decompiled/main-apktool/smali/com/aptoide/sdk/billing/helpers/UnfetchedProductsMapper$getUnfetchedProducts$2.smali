.class final Lcom/aptoide/sdk/billing/helpers/UnfetchedProductsMapper$getUnfetchedProducts$2;
.super Lkotlin/jvm/internal/Lambda;
.source "UnfetchedProductsMapper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aptoide/sdk/billing/helpers/UnfetchedProductsMapper;->getUnfetchedProducts$aptoide_billing_release(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;",
        "Lcom/aptoide/sdk/billing/UnfetchedProduct;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/aptoide/sdk/billing/UnfetchedProduct;",
        "it",
        "Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;",
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
.field public static final INSTANCE:Lcom/aptoide/sdk/billing/helpers/UnfetchedProductsMapper$getUnfetchedProducts$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/billing/helpers/UnfetchedProductsMapper$getUnfetchedProducts$2;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/helpers/UnfetchedProductsMapper$getUnfetchedProducts$2;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/billing/helpers/UnfetchedProductsMapper$getUnfetchedProducts$2;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/UnfetchedProductsMapper$getUnfetchedProducts$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;)Lcom/aptoide/sdk/billing/UnfetchedProduct;
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/aptoide/sdk/billing/UnfetchedProduct;

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;->getProductType()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    invoke-direct {v0, v1, p1, v2}, Lcom/aptoide/sdk/billing/UnfetchedProduct;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;

    invoke-virtual {p0, p1}, Lcom/aptoide/sdk/billing/helpers/UnfetchedProductsMapper$getUnfetchedProducts$2;->invoke(Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;)Lcom/aptoide/sdk/billing/UnfetchedProduct;

    move-result-object p1

    return-object p1
.end method
