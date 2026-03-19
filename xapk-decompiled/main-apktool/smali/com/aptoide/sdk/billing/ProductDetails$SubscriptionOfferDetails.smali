.class public final Lcom/aptoide/sdk/billing/ProductDetails$SubscriptionOfferDetails;
.super Ljava/lang/Object;
.source "ProductDetails.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aptoide/sdk/billing/ProductDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubscriptionOfferDetails"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u001b\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/ProductDetails$SubscriptionOfferDetails;",
        "",
        "pricingPhases",
        "Lcom/aptoide/sdk/billing/ProductDetails$PricingPhases;",
        "trialDetails",
        "Lcom/aptoide/sdk/billing/ProductDetails$TrialDetails;",
        "(Lcom/aptoide/sdk/billing/ProductDetails$PricingPhases;Lcom/aptoide/sdk/billing/ProductDetails$TrialDetails;)V",
        "getPricingPhases",
        "()Lcom/aptoide/sdk/billing/ProductDetails$PricingPhases;",
        "getTrialDetails",
        "()Lcom/aptoide/sdk/billing/ProductDetails$TrialDetails;",
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
.field private final pricingPhases:Lcom/aptoide/sdk/billing/ProductDetails$PricingPhases;

.field private final trialDetails:Lcom/aptoide/sdk/billing/ProductDetails$TrialDetails;


# direct methods
.method public constructor <init>(Lcom/aptoide/sdk/billing/ProductDetails$PricingPhases;Lcom/aptoide/sdk/billing/ProductDetails$TrialDetails;)V
    .locals 1

    const-string v0, "pricingPhases"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/aptoide/sdk/billing/ProductDetails$SubscriptionOfferDetails;->pricingPhases:Lcom/aptoide/sdk/billing/ProductDetails$PricingPhases;

    .line 25
    iput-object p2, p0, Lcom/aptoide/sdk/billing/ProductDetails$SubscriptionOfferDetails;->trialDetails:Lcom/aptoide/sdk/billing/ProductDetails$TrialDetails;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/aptoide/sdk/billing/ProductDetails$PricingPhases;Lcom/aptoide/sdk/billing/ProductDetails$TrialDetails;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 23
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/aptoide/sdk/billing/ProductDetails$SubscriptionOfferDetails;-><init>(Lcom/aptoide/sdk/billing/ProductDetails$PricingPhases;Lcom/aptoide/sdk/billing/ProductDetails$TrialDetails;)V

    return-void
.end method


# virtual methods
.method public final getPricingPhases()Lcom/aptoide/sdk/billing/ProductDetails$PricingPhases;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/aptoide/sdk/billing/ProductDetails$SubscriptionOfferDetails;->pricingPhases:Lcom/aptoide/sdk/billing/ProductDetails$PricingPhases;

    return-object v0
.end method

.method public final getTrialDetails()Lcom/aptoide/sdk/billing/ProductDetails$TrialDetails;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/aptoide/sdk/billing/ProductDetails$SubscriptionOfferDetails;->trialDetails:Lcom/aptoide/sdk/billing/ProductDetails$TrialDetails;

    return-object v0
.end method
