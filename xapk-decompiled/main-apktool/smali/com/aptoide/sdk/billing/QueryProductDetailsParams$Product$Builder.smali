.class public final Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Builder;
.super Ljava/lang/Object;
.source "QueryProductDetailsParams.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQueryProductDetailsParams.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QueryProductDetailsParams.kt\ncom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,66:1\n1#2:67\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Builder;",
        "",
        "()V",
        "productId",
        "",
        "productType",
        "build",
        "Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;",
        "setProductId",
        "setProductType",
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
.field private productId:Ljava/lang/String;

.field private productType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Builder;->productId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Builder;->productType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;

    iget-object v1, p0, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Builder;->productId:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Builder;->productType:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Product type must be provided."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Product id must be provided."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setProductId(Ljava/lang/String;)Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Builder;
    .locals 1

    const-string v0, "productId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Builder;->productId:Ljava/lang/String;

    return-object p0
.end method

.method public final setProductType(Ljava/lang/String;)Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Builder;
    .locals 1

    const-string v0, "productType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Builder;->productType:Ljava/lang/String;

    return-object p0
.end method
