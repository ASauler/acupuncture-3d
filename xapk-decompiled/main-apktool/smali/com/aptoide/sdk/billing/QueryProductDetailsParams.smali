.class public final Lcom/aptoide/sdk/billing/QueryProductDetailsParams;
.super Ljava/lang/Object;
.source "QueryProductDetailsParams.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Builder;,
        Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Companion;,
        Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \t2\u00020\u0001:\u0003\u0008\t\nB\u0015\u0008\u0002\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/QueryProductDetailsParams;",
        "",
        "productList",
        "",
        "Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;",
        "(Ljava/util/List;)V",
        "getProductList",
        "()Ljava/util/List;",
        "Builder",
        "Companion",
        "Product",
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
.field public static final Companion:Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Companion;


# instance fields
.field private final productList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/aptoide/sdk/billing/QueryProductDetailsParams;->Companion:Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aptoide/sdk/billing/QueryProductDetailsParams;->productList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static final newBuilder()Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Builder;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/aptoide/sdk/billing/QueryProductDetailsParams;->Companion:Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Companion;

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Companion;->newBuilder()Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getProductList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/aptoide/sdk/billing/QueryProductDetailsParams;->productList:Ljava/util/List;

    return-object v0
.end method
