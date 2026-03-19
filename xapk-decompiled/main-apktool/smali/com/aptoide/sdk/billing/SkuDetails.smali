.class public final Lcom/aptoide/sdk/billing/SkuDetails;
.super Ljava/lang/Object;
.source "SkuDetails.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Deprecated;
    message = "Deprecated class. Use [ProductDetails] instead."
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\"\u0008\u0007\u0018\u00002\u00020\u0001B\u0095\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u0012\u0006\u0010\u000c\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0008\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0015J\u0008\u0010)\u001a\u00020\u0003H\u0016R\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0017R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0017R\u0011\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0017R\u0011\u0010\u000e\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0019R\u0011\u0010\u000f\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0017R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0017R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0017R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0017R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u0019R\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u0017R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u0017R\u0011\u0010\u0010\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u0017R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u0017R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u0017R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\u0017\u00a8\u0006*"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/SkuDetails;",
        "Ljava/io/Serializable;",
        "itemType",
        "",
        "sku",
        "type",
        "price",
        "priceAmountMicros",
        "",
        "priceCurrencyCode",
        "appcPrice",
        "appcPriceAmountMicros",
        "appcPriceCurrencyCode",
        "fiatPrice",
        "fiatPriceAmountMicros",
        "fiatPriceCurrencyCode",
        "title",
        "description",
        "period",
        "trialPeriod",
        "trialPeriodEndDate",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getAppcPrice",
        "()Ljava/lang/String;",
        "getAppcPriceAmountMicros",
        "()J",
        "getAppcPriceCurrencyCode",
        "getDescription",
        "getFiatPrice",
        "getFiatPriceAmountMicros",
        "getFiatPriceCurrencyCode",
        "getItemType",
        "getPeriod",
        "getPrice",
        "getPriceAmountMicros",
        "getPriceCurrencyCode",
        "getSku",
        "getTitle",
        "getTrialPeriod",
        "getTrialPeriodEndDate",
        "getType",
        "toString",
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
.field private final appcPrice:Ljava/lang/String;

.field private final appcPriceAmountMicros:J

.field private final appcPriceCurrencyCode:Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final fiatPrice:Ljava/lang/String;

.field private final fiatPriceAmountMicros:J

.field private final fiatPriceCurrencyCode:Ljava/lang/String;

.field private final itemType:Ljava/lang/String;

.field private final period:Ljava/lang/String;

.field private final price:Ljava/lang/String;

.field private final priceAmountMicros:J

.field private final priceCurrencyCode:Ljava/lang/String;

.field private final sku:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final trialPeriod:Ljava/lang/String;

.field private final trialPeriodEndDate:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    move-object/from16 v9, p15

    move-object/from16 v10, p16

    const-string v11, "itemType"

    invoke-static {p1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v11, "sku"

    invoke-static {p2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v11, "type"

    invoke-static {p3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "price"

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "priceCurrencyCode"

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "appcPrice"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "appcPriceCurrencyCode"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "fiatPrice"

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "fiatPriceCurrencyCode"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v11, "title"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v1, v0, Lcom/aptoide/sdk/billing/SkuDetails;->itemType:Ljava/lang/String;

    .line 11
    iput-object v2, v0, Lcom/aptoide/sdk/billing/SkuDetails;->sku:Ljava/lang/String;

    .line 12
    iput-object v3, v0, Lcom/aptoide/sdk/billing/SkuDetails;->type:Ljava/lang/String;

    .line 13
    iput-object v4, v0, Lcom/aptoide/sdk/billing/SkuDetails;->price:Ljava/lang/String;

    move-wide/from16 v1, p5

    .line 14
    iput-wide v1, v0, Lcom/aptoide/sdk/billing/SkuDetails;->priceAmountMicros:J

    .line 15
    iput-object v5, v0, Lcom/aptoide/sdk/billing/SkuDetails;->priceCurrencyCode:Ljava/lang/String;

    .line 16
    iput-object v6, v0, Lcom/aptoide/sdk/billing/SkuDetails;->appcPrice:Ljava/lang/String;

    move-wide/from16 v1, p9

    .line 17
    iput-wide v1, v0, Lcom/aptoide/sdk/billing/SkuDetails;->appcPriceAmountMicros:J

    .line 18
    iput-object v7, v0, Lcom/aptoide/sdk/billing/SkuDetails;->appcPriceCurrencyCode:Ljava/lang/String;

    .line 19
    iput-object v8, v0, Lcom/aptoide/sdk/billing/SkuDetails;->fiatPrice:Ljava/lang/String;

    move-wide/from16 v1, p13

    .line 20
    iput-wide v1, v0, Lcom/aptoide/sdk/billing/SkuDetails;->fiatPriceAmountMicros:J

    .line 21
    iput-object v9, v0, Lcom/aptoide/sdk/billing/SkuDetails;->fiatPriceCurrencyCode:Ljava/lang/String;

    .line 22
    iput-object v10, v0, Lcom/aptoide/sdk/billing/SkuDetails;->title:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 23
    iput-object v1, v0, Lcom/aptoide/sdk/billing/SkuDetails;->description:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 24
    iput-object v1, v0, Lcom/aptoide/sdk/billing/SkuDetails;->period:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 25
    iput-object v1, v0, Lcom/aptoide/sdk/billing/SkuDetails;->trialPeriod:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 26
    iput-object v1, v0, Lcom/aptoide/sdk/billing/SkuDetails;->trialPeriodEndDate:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAppcPrice()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/aptoide/sdk/billing/SkuDetails;->appcPrice:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppcPriceAmountMicros()J
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/aptoide/sdk/billing/SkuDetails;->appcPriceAmountMicros:J

    return-wide v0
.end method

.method public final getAppcPriceCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/aptoide/sdk/billing/SkuDetails;->appcPriceCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/aptoide/sdk/billing/SkuDetails;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getFiatPrice()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/aptoide/sdk/billing/SkuDetails;->fiatPrice:Ljava/lang/String;

    return-object v0
.end method

.method public final getFiatPriceAmountMicros()J
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/aptoide/sdk/billing/SkuDetails;->fiatPriceAmountMicros:J

    return-wide v0
.end method

.method public final getFiatPriceCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/aptoide/sdk/billing/SkuDetails;->fiatPriceCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getItemType()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/aptoide/sdk/billing/SkuDetails;->itemType:Ljava/lang/String;

    return-object v0
.end method

.method public final getPeriod()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/aptoide/sdk/billing/SkuDetails;->period:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrice()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/aptoide/sdk/billing/SkuDetails;->price:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriceAmountMicros()J
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/aptoide/sdk/billing/SkuDetails;->priceAmountMicros:J

    return-wide v0
.end method

.method public final getPriceCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/aptoide/sdk/billing/SkuDetails;->priceCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getSku()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/aptoide/sdk/billing/SkuDetails;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/aptoide/sdk/billing/SkuDetails;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrialPeriod()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/aptoide/sdk/billing/SkuDetails;->trialPeriod:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrialPeriodEndDate()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/aptoide/sdk/billing/SkuDetails;->trialPeriodEndDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/aptoide/sdk/billing/SkuDetails;->type:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 22

    move-object/from16 v0, p0

    .line 30
    iget-object v1, v0, Lcom/aptoide/sdk/billing/SkuDetails;->itemType:Ljava/lang/String;

    iget-object v2, v0, Lcom/aptoide/sdk/billing/SkuDetails;->sku:Ljava/lang/String;

    iget-object v3, v0, Lcom/aptoide/sdk/billing/SkuDetails;->type:Ljava/lang/String;

    iget-object v4, v0, Lcom/aptoide/sdk/billing/SkuDetails;->price:Ljava/lang/String;

    iget-object v5, v0, Lcom/aptoide/sdk/billing/SkuDetails;->priceCurrencyCode:Ljava/lang/String;

    iget-wide v6, v0, Lcom/aptoide/sdk/billing/SkuDetails;->priceAmountMicros:J

    iget-object v8, v0, Lcom/aptoide/sdk/billing/SkuDetails;->appcPrice:Ljava/lang/String;

    iget-object v9, v0, Lcom/aptoide/sdk/billing/SkuDetails;->appcPriceCurrencyCode:Ljava/lang/String;

    iget-wide v10, v0, Lcom/aptoide/sdk/billing/SkuDetails;->appcPriceAmountMicros:J

    iget-object v12, v0, Lcom/aptoide/sdk/billing/SkuDetails;->fiatPrice:Ljava/lang/String;

    iget-object v13, v0, Lcom/aptoide/sdk/billing/SkuDetails;->fiatPriceCurrencyCode:Ljava/lang/String;

    iget-wide v14, v0, Lcom/aptoide/sdk/billing/SkuDetails;->fiatPriceAmountMicros:J

    move-wide/from16 v16, v14

    iget-object v14, v0, Lcom/aptoide/sdk/billing/SkuDetails;->title:Ljava/lang/String;

    iget-object v15, v0, Lcom/aptoide/sdk/billing/SkuDetails;->description:Ljava/lang/String;

    move-object/from16 v18, v15

    iget-object v15, v0, Lcom/aptoide/sdk/billing/SkuDetails;->period:Ljava/lang/String;

    move-object/from16 v19, v15

    iget-object v15, v0, Lcom/aptoide/sdk/billing/SkuDetails;->trialPeriod:Ljava/lang/String;

    move-object/from16 v20, v15

    iget-object v15, v0, Lcom/aptoide/sdk/billing/SkuDetails;->trialPeriodEndDate:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v21, v15

    const-string v15, "SkuDetails{itemType=\'"

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', sku=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', price=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', priceCurrencyCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', priceAmountMicros="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appcPrice=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', appcPriceCurrencyCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', appcPriceAmountMicros="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fiatPrice=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', fiatPriceCurrencyCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', fiatPriceAmountMicros="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', description=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', period=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', trialPeriod=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', trialPeriodEndDate=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
