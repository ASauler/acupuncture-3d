.class public final Lcom/aptoide/sdk/billing/QueryProductDetailsResult$Companion;
.super Ljava/lang/Object;
.source "QueryProductDetailsResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aptoide/sdk/billing/QueryProductDetailsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J)\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0006H\u0001\u00a2\u0006\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/QueryProductDetailsResult$Companion;",
        "",
        "()V",
        "create",
        "Lcom/aptoide/sdk/billing/QueryProductDetailsResult;",
        "productDetailsList",
        "",
        "Lcom/aptoide/sdk/billing/ProductDetails;",
        "unfetchedProductList",
        "Lcom/aptoide/sdk/billing/UnfetchedProduct;",
        "create$aptoide_billing_release",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/aptoide/sdk/billing/QueryProductDetailsResult$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create$aptoide_billing_release(Ljava/util/List;Ljava/util/List;)Lcom/aptoide/sdk/billing/QueryProductDetailsResult;
    .locals 2
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

    const-string v0, "productDetailsList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "unfetchedProductList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Lcom/aptoide/sdk/billing/QueryProductDetailsResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/aptoide/sdk/billing/QueryProductDetailsResult;-><init>(Ljava/util/List;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
