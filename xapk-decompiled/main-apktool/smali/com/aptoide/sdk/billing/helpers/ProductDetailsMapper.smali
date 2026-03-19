.class public final Lcom/aptoide/sdk/billing/helpers/ProductDetailsMapper;
.super Ljava/lang/Object;
.source "ProductDetailsMapper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProductDetailsMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProductDetailsMapper.kt\ncom/aptoide/sdk/billing/helpers/ProductDetailsMapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,75:1\n1549#2:76\n1620#2,3:77\n*S KotlinDebug\n*F\n+ 1 ProductDetailsMapper.kt\ncom/aptoide/sdk/billing/helpers/ProductDetailsMapper\n*L\n8#1:76\n8#1:77,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J!\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008H\u0000\u00a2\u0006\u0002\u0008\u000bJ\u0018\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u00082\u0006\u0010\u0005\u001a\u00020\u0006H\u0002\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/helpers/ProductDetailsMapper;",
        "",
        "()V",
        "mapSkuDetailsToOneTimePurchaseOfferDetails",
        "Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;",
        "skuDetails",
        "Lcom/aptoide/sdk/billing/SkuDetails;",
        "mapSkuDetailsToProductDetails",
        "",
        "Lcom/aptoide/sdk/billing/ProductDetails;",
        "skuDetailsList",
        "mapSkuDetailsToProductDetails$aptoide_billing_release",
        "mapSkuDetailsToSubscriptionOfferDetails",
        "Lcom/aptoide/sdk/billing/ProductDetails$SubscriptionOfferDetails;",
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
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final mapSkuDetailsToOneTimePurchaseOfferDetails(Lcom/aptoide/sdk/billing/SkuDetails;)Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;
    .locals 14

    .line 25
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/SkuDetails;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inapp"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;

    .line 27
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/SkuDetails;->getPriceAmountMicros()J

    move-result-wide v3

    .line 29
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/SkuDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v5

    .line 30
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/SkuDetails;->getAppcPrice()Ljava/lang/String;

    move-result-object v6

    .line 31
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/SkuDetails;->getAppcPriceAmountMicros()J

    move-result-wide v7

    .line 32
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/SkuDetails;->getAppcPriceCurrencyCode()Ljava/lang/String;

    move-result-object v9

    .line 33
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/SkuDetails;->getFiatPrice()Ljava/lang/String;

    move-result-object v10

    .line 34
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/SkuDetails;->getFiatPriceAmountMicros()J

    move-result-wide v11

    .line 35
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/SkuDetails;->getFiatPriceCurrencyCode()Ljava/lang/String;

    move-result-object v13

    move-object v1, v0

    .line 26
    invoke-direct/range {v1 .. v13}, Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final mapSkuDetailsToSubscriptionOfferDetails(Lcom/aptoide/sdk/billing/SkuDetails;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aptoide/sdk/billing/SkuDetails;",
            ")",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/ProductDetails$SubscriptionOfferDetails;",
            ">;"
        }
    .end annotation

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/aptoide/sdk/billing/SkuDetails;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "subs"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47
    new-instance v0, Lcom/aptoide/sdk/billing/ProductDetails$SubscriptionOfferDetails;

    .line 48
    new-instance v1, Lcom/aptoide/sdk/billing/ProductDetails$PricingPhases;

    .line 50
    new-instance v16, Lcom/aptoide/sdk/billing/ProductDetails$PricingPhase;

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/aptoide/sdk/billing/SkuDetails;->getPeriod()Ljava/lang/String;

    move-result-object v2

    const-string v17, ""

    if-nez v2, :cond_0

    move-object/from16 v3, v17

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 52
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/aptoide/sdk/billing/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v4

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/aptoide/sdk/billing/SkuDetails;->getPriceAmountMicros()J

    move-result-wide v5

    .line 54
    invoke-virtual/range {p1 .. p1}, Lcom/aptoide/sdk/billing/SkuDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v7

    .line 55
    invoke-virtual/range {p1 .. p1}, Lcom/aptoide/sdk/billing/SkuDetails;->getAppcPrice()Ljava/lang/String;

    move-result-object v8

    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/aptoide/sdk/billing/SkuDetails;->getAppcPriceAmountMicros()J

    move-result-wide v9

    .line 57
    invoke-virtual/range {p1 .. p1}, Lcom/aptoide/sdk/billing/SkuDetails;->getAppcPriceCurrencyCode()Ljava/lang/String;

    move-result-object v11

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/aptoide/sdk/billing/SkuDetails;->getFiatPrice()Ljava/lang/String;

    move-result-object v12

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/aptoide/sdk/billing/SkuDetails;->getFiatPriceAmountMicros()J

    move-result-wide v13

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/aptoide/sdk/billing/SkuDetails;->getFiatPriceCurrencyCode()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v2, v16

    .line 50
    invoke-direct/range {v2 .. v15}, Lcom/aptoide/sdk/billing/ProductDetails$PricingPhase;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 49
    invoke-static/range {v16 .. v16}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 48
    invoke-direct {v1, v2}, Lcom/aptoide/sdk/billing/ProductDetails$PricingPhases;-><init>(Ljava/util/List;)V

    .line 64
    new-instance v2, Lcom/aptoide/sdk/billing/ProductDetails$TrialDetails;

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/aptoide/sdk/billing/SkuDetails;->getTrialPeriod()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move-object/from16 v3, v17

    .line 66
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/aptoide/sdk/billing/SkuDetails;->getTrialPeriodEndDate()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    move-object/from16 v4, v17

    .line 64
    :cond_2
    invoke-direct {v2, v3, v4}, Lcom/aptoide/sdk/billing/ProductDetails$TrialDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-direct {v0, v1, v2}, Lcom/aptoide/sdk/billing/ProductDetails$SubscriptionOfferDetails;-><init>(Lcom/aptoide/sdk/billing/ProductDetails$PricingPhases;Lcom/aptoide/sdk/billing/ProductDetails$TrialDetails;)V

    .line 46
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public final mapSkuDetailsToProductDetails$aptoide_billing_release(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/SkuDetails;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/ProductDetails;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "skuDetailsList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    check-cast p1, Ljava/lang/Iterable;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 77
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 78
    check-cast v1, Lcom/aptoide/sdk/billing/SkuDetails;

    .line 9
    invoke-direct {p0, v1}, Lcom/aptoide/sdk/billing/helpers/ProductDetailsMapper;->mapSkuDetailsToOneTimePurchaseOfferDetails(Lcom/aptoide/sdk/billing/SkuDetails;)Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v7

    .line 10
    invoke-direct {p0, v1}, Lcom/aptoide/sdk/billing/helpers/ProductDetailsMapper;->mapSkuDetailsToSubscriptionOfferDetails(Lcom/aptoide/sdk/billing/SkuDetails;)Ljava/util/List;

    move-result-object v8

    .line 12
    new-instance v9, Lcom/aptoide/sdk/billing/ProductDetails;

    .line 13
    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/SkuDetails;->getType()Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/SkuDetails;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/SkuDetails;->getDescription()Ljava/lang/String;

    move-result-object v6

    move-object v2, v9

    .line 12
    invoke-direct/range {v2 .. v8}, Lcom/aptoide/sdk/billing/ProductDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;Ljava/util/List;)V

    .line 78
    invoke-interface {v0, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    :cond_0
    check-cast v0, Ljava/util/List;

    return-object v0
.end method
