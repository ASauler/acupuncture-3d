.class public final Lcom/aptoide/sdk/billing/ProductDetails$PricingPhase;
.super Ljava/lang/Object;
.source "ProductDetails.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aptoide/sdk/billing/ProductDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PricingPhase"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0015\u0018\u00002\u00020\u0001BW\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\u000c\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u000eR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0010R\u0011\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0010R\u0011\u0010\u000c\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0012R\u0011\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0010R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0010\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/ProductDetails$PricingPhase;",
        "",
        "billingPeriod",
        "",
        "formattedPrice",
        "priceAmountMicros",
        "",
        "priceCurrencyCode",
        "appcFormattedPrice",
        "appcPriceAmountMicros",
        "appcPriceCurrencyCode",
        "fiatFormattedPrice",
        "fiatPriceAmountMicros",
        "fiatPriceCurrencyCode",
        "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V",
        "getAppcFormattedPrice",
        "()Ljava/lang/String;",
        "getAppcPriceAmountMicros",
        "()J",
        "getAppcPriceCurrencyCode",
        "getBillingPeriod",
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

.field private final billingPeriod:Ljava/lang/String;

.field private final fiatFormattedPrice:Ljava/lang/String;

.field private final fiatPriceAmountMicros:J

.field private final fiatPriceCurrencyCode:Ljava/lang/String;

.field private final formattedPrice:Ljava/lang/String;

.field private final priceAmountMicros:J

.field private final priceCurrencyCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    const-string v0, "billingPeriod"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formattedPrice"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "priceCurrencyCode"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appcFormattedPrice"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appcPriceCurrencyCode"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fiatFormattedPrice"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fiatPriceCurrencyCode"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/aptoide/sdk/billing/ProductDetails$PricingPhase;->billingPeriod:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/aptoide/sdk/billing/ProductDetails$PricingPhase;->formattedPrice:Ljava/lang/String;

    .line 35
    iput-wide p3, p0, Lcom/aptoide/sdk/billing/ProductDetails$PricingPhase;->priceAmountMicros:J

    .line 36
    iput-object p5, p0, Lcom/aptoide/sdk/billing/ProductDetails$PricingPhase;->priceCurrencyCode:Ljava/lang/String;

    .line 37
    iput-object p6, p0, Lcom/aptoide/sdk/billing/ProductDetails$PricingPhase;->appcFormattedPrice:Ljava/lang/String;

    .line 38
    iput-wide p7, p0, Lcom/aptoide/sdk/billing/ProductDetails$PricingPhase;->appcPriceAmountMicros:J

    .line 39
    iput-object p9, p0, Lcom/aptoide/sdk/billing/ProductDetails$PricingPhase;->appcPriceCurrencyCode:Ljava/lang/String;

    .line 40
    iput-object p10, p0, Lcom/aptoide/sdk/billing/ProductDetails$PricingPhase;->fiatFormattedPrice:Ljava/lang/String;

    .line 41
    iput-wide p11, p0, Lcom/aptoide/sdk/billing/ProductDetails$PricingPhase;->fiatPriceAmountMicros:J

    .line 42
    iput-object p13, p0, Lcom/aptoide/sdk/billing/ProductDetails$PricingPhase;->fiatPriceCurrencyCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAppcFormattedPrice()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/aptoide/sdk/billing/ProductDetails$PricingPhase;->appcFormattedPrice:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppcPriceAmountMicros()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/aptoide/sdk/billing/ProductDetails$PricingPhase;->appcPriceAmountMicros:J

    return-wide v0
.end method

.method public final getAppcPriceCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/aptoide/sdk/billing/ProductDetails$PricingPhase;->appcPriceCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getBillingPeriod()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/aptoide/sdk/billing/ProductDetails$PricingPhase;->billingPeriod:Ljava/lang/String;

    return-object v0
.end method

.method public final getFiatFormattedPrice()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/aptoide/sdk/billing/ProductDetails$PricingPhase;->fiatFormattedPrice:Ljava/lang/String;

    return-object v0
.end method

.method public final getFiatPriceAmountMicros()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/aptoide/sdk/billing/ProductDetails$PricingPhase;->fiatPriceAmountMicros:J

    return-wide v0
.end method

.method public final getFiatPriceCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/aptoide/sdk/billing/ProductDetails$PricingPhase;->fiatPriceCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getFormattedPrice()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/aptoide/sdk/billing/ProductDetails$PricingPhase;->formattedPrice:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriceAmountMicros()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/aptoide/sdk/billing/ProductDetails$PricingPhase;->priceAmountMicros:J

    return-wide v0
.end method

.method public final getPriceCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/aptoide/sdk/billing/ProductDetails$PricingPhase;->priceCurrencyCode:Ljava/lang/String;

    return-object v0
.end method
