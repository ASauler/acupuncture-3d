.class public final Lcom/aptoide/sdk/billing/QueryProductDetailsResult;
.super Ljava/lang/Object;
.source "QueryProductDetailsResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/billing/QueryProductDetailsResult$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB#\u0008\u0002\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0003\u00a2\u0006\u0002\u0010\u0007R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/QueryProductDetailsResult;",
        "",
        "productDetailsList",
        "",
        "Lcom/aptoide/sdk/billing/ProductDetails;",
        "unfetchedProductList",
        "Lcom/aptoide/sdk/billing/UnfetchedProduct;",
        "(Ljava/util/List;Ljava/util/List;)V",
        "getProductDetailsList",
        "()Ljava/util/List;",
        "getUnfetchedProductList",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/aptoide/sdk/billing/QueryProductDetailsResult$Companion;


# instance fields
.field private final productDetailsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/ProductDetails;",
            ">;"
        }
    .end annotation
.end field

.field private final unfetchedProductList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/UnfetchedProduct;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/aptoide/sdk/billing/QueryProductDetailsResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aptoide/sdk/billing/QueryProductDetailsResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/aptoide/sdk/billing/QueryProductDetailsResult;->Companion:Lcom/aptoide/sdk/billing/QueryProductDetailsResult$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/ProductDetails;",
            ">;",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/UnfetchedProduct;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/aptoide/sdk/billing/QueryProductDetailsResult;->productDetailsList:Ljava/util/List;

    .line 5
    iput-object p2, p0, Lcom/aptoide/sdk/billing/QueryProductDetailsResult;->unfetchedProductList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aptoide/sdk/billing/QueryProductDetailsResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static final create$aptoide_billing_release(Ljava/util/List;Ljava/util/List;)Lcom/aptoide/sdk/billing/QueryProductDetailsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/ProductDetails;",
            ">;",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/UnfetchedProduct;",
            ">;)",
            "Lcom/aptoide/sdk/billing/QueryProductDetailsResult;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/aptoide/sdk/billing/QueryProductDetailsResult;->Companion:Lcom/aptoide/sdk/billing/QueryProductDetailsResult$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/aptoide/sdk/billing/QueryProductDetailsResult$Companion;->create$aptoide_billing_release(Ljava/util/List;Ljava/util/List;)Lcom/aptoide/sdk/billing/QueryProductDetailsResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getProductDetailsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/ProductDetails;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/aptoide/sdk/billing/QueryProductDetailsResult;->productDetailsList:Ljava/util/List;

    return-object v0
.end method

.method public final getUnfetchedProductList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/UnfetchedProduct;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/aptoide/sdk/billing/QueryProductDetailsResult;->unfetchedProductList:Ljava/util/List;

    return-object v0
.end method
