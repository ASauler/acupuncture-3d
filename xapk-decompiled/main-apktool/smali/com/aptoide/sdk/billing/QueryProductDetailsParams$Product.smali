.class public final Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;
.super Ljava/lang/Object;
.source "QueryProductDetailsParams.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aptoide/sdk/billing/QueryProductDetailsParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Product"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Builder;,
        Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u0000 \n2\u00020\u0001:\u0002\t\nB\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;",
        "",
        "productId",
        "",
        "productType",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "getProductId",
        "()Ljava/lang/String;",
        "getProductType",
        "Builder",
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
.field public static final Companion:Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Companion;


# instance fields
.field private final productId:Ljava/lang/String;

.field private final productType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;->Companion:Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;->productId:Ljava/lang/String;

    iput-object p2, p0, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;->productType:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final newBuilder()Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Builder;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;->Companion:Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Companion;

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Companion;->newBuilder()Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getProductId()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public final getProductType()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;->productType:Ljava/lang/String;

    return-object v0
.end method
