.class public final Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;
.super Ljava/lang/Object;
.source "ProductDetails.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aptoide/sdk/billing/ProductDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OneTimePurchaseOfferDetails"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0014\u0018\u00002\u00020\u0001BO\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000fR\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000fR\u0011\u0010\u000b\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011R\u0011\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u000f\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;",
        "",
        "formattedPrice",
        "",
        "priceAmountMicros",
        "",
        "priceCurrencyCode",
        "appcFormattedPrice",
        "appcPriceAmountMicros",
        "appcPriceCurrencyCode",
        "fiatFormattedPrice",
        "fiatPriceAmountMicros",
        "fiatPriceCurrencyCode",
        "(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V",
        "getAppcFormattedPrice",
        "()Ljava/lang/String;",
        "getAppcPriceAmountMicros",
        "()J",
        "getAppcPriceCurrencyCode",
        "getFiatFormattedPrice",
        "getFiatPriceAmountMicros",
        "getFiatPriceCurrencyCode",
        "getFormattedPrice",
        "getPriceAmountMicros",
        "getPriceCurrencyCode",
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
.field private final appcFormattedPrice:Ljava/lang/String;

.field private final appcPriceAmountMicros:J

.field private final appcPriceCurrencyCode:Ljava/lang/String;

.field private final fiatFormattedPrice:Ljava/lang/String;

.field private final fiatPriceAmountMicros:J

.field private final fiatPriceCurrencyCode:Ljava/lang/String;

.field private final formattedPrice:Ljava/lang/String;

.field private final priceAmountMicros:J

.field private final priceCurrencyCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    const-string v0, "formattedPrice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "priceCurrencyCode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appcFormattedPrice"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appcPriceCurrencyCode"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fiatFormattedPrice"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fiatPriceCurrencyCode"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;->formattedPrice:Ljava/lang/String;

    .line 13
    iput-wide p2, p0, Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;->priceAmountMicros:J

    .line 14
    iput-object p4, p0, Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;->priceCurrencyCode:Ljava/lang/String;

    .line 15
    iput-object p5, p0, Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;->appcFormattedPrice:Ljava/lang/String;

    .line 16
    iput-wide p6, p0, Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;->appcPriceAmountMicros:J

    .line 17
    iput-object p8, p0, Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;->appcPriceCurrencyCode:Ljava/lang/String;

    .line 18
    iput-object p9, p0, Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;->fiatFormattedPrice:Ljava/lang/String;

    .line 19
    iput-wide p10, p0, Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;->fiatPriceAmountMicros:J

    .line 20
    iput-object p12, p0, Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;->fiatPriceCurrencyCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAppcFormattedPrice()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;->appcFormattedPrice:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppcPriceAmountMicros()J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;->appcPriceAmountMicros:J

    return-wide v0
.end method

.method public final getAppcPriceCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;->appcPriceCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getFiatFormattedPrice()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;->fiatFormattedPrice:Ljava/lang/String;

    return-object v0
.end method

.method public final getFiatPriceAmountMicros()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;->fiatPriceAmountMicros:J

    return-wide v0
.end method

.method public final getFiatPriceCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;->fiatPriceCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getFormattedPrice()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;->formattedPrice:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriceAmountMicros()J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;->priceAmountMicros:J

    return-wide v0
.end method

.method public final getPriceCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;->priceCurrencyCode:Ljava/lang/String;

    return-object v0
.end method
