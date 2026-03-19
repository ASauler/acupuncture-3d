.class public final Lcom/aptoide/sdk/billing/ProductDetails;
.super Ljava/lang/Object;
.source "ProductDetails.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;,
        Lcom/aptoide/sdk/billing/ProductDetails$PricingPhase;,
        Lcom/aptoide/sdk/billing/ProductDetails$PricingPhases;,
        Lcom/aptoide/sdk/billing/ProductDetails$SubscriptionOfferDetails;,
        Lcom/aptoide/sdk/billing/ProductDetails$TrialDetails;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u00002\u00020\u0001:\u0005\u0016\u0017\u0018\u0019\u001aBI\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0010\u0008\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000cR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000eR\u0019\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u000e\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/ProductDetails;",
        "",
        "productId",
        "",
        "productType",
        "title",
        "description",
        "oneTimePurchaseOfferDetails",
        "Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;",
        "subscriptionOfferDetails",
        "",
        "Lcom/aptoide/sdk/billing/ProductDetails$SubscriptionOfferDetails;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;Ljava/util/List;)V",
        "getDescription",
        "()Ljava/lang/String;",
        "getOneTimePurchaseOfferDetails",
        "()Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;",
        "getProductId",
        "getProductType",
        "getSubscriptionOfferDetails",
        "()Ljava/util/List;",
        "getTitle",
        "OneTimePurchaseOfferDetails",
        "PricingPhase",
        "PricingPhases",
        "SubscriptionOfferDetails",
        "TrialDetails",
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
.field private final description:Ljava/lang/String;

.field private final oneTimePurchaseOfferDetails:Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;

.field private final productId:Ljava/lang/String;

.field private final productType:Ljava/lang/String;

.field private final subscriptionOfferDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/ProductDetails$SubscriptionOfferDetails;",
            ">;"
        }
    .end annotation
.end field

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/ProductDetails$SubscriptionOfferDetails;",
            ">;)V"
        }
    .end annotation

    const-string v0, "productId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/aptoide/sdk/billing/ProductDetails;->productId:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/aptoide/sdk/billing/ProductDetails;->productType:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/aptoide/sdk/billing/ProductDetails;->title:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/aptoide/sdk/billing/ProductDetails;->description:Ljava/lang/String;

    .line 8
    iput-object p5, p0, Lcom/aptoide/sdk/billing/ProductDetails;->oneTimePurchaseOfferDetails:Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;

    .line 9
    iput-object p6, p0, Lcom/aptoide/sdk/billing/ProductDetails;->subscriptionOfferDetails:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, p4

    :goto_0
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_1

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object v7, p5

    :goto_1
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_2

    move-object v8, v1

    goto :goto_2

    :cond_2
    move-object v8, p6

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 3
    invoke-direct/range {v2 .. v8}, Lcom/aptoide/sdk/billing/ProductDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/aptoide/sdk/billing/ProductDetails;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getOneTimePurchaseOfferDetails()Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/aptoide/sdk/billing/ProductDetails;->oneTimePurchaseOfferDetails:Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;

    return-object v0
.end method

.method public final getProductId()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/aptoide/sdk/billing/ProductDetails;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public final getProductType()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/aptoide/sdk/billing/ProductDetails;->productType:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubscriptionOfferDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/ProductDetails$SubscriptionOfferDetails;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/aptoide/sdk/billing/ProductDetails;->subscriptionOfferDetails:Ljava/util/List;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/aptoide/sdk/billing/ProductDetails;->title:Ljava/lang/String;

    return-object v0
.end method
