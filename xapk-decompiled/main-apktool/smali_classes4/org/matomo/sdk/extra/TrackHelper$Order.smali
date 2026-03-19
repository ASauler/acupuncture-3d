.class public Lorg/matomo/sdk/extra/TrackHelper$Order;
.super Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;
.source "TrackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/matomo/sdk/extra/TrackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Order"
.end annotation


# instance fields
.field private mDiscount:Ljava/lang/Integer;

.field private mEcommerceItems:Lorg/matomo/sdk/extra/EcommerceItems;

.field private final mGrandTotal:I

.field private final mOrderId:Ljava/lang/String;

.field private mShipping:Ljava/lang/Integer;

.field private mSubTotal:Ljava/lang/Integer;

.field private mTax:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lorg/matomo/sdk/extra/TrackHelper;Ljava/lang/String;I)V
    .locals 0

    .line 636
    invoke-direct {p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;-><init>(Lorg/matomo/sdk/extra/TrackHelper;)V

    .line 637
    iput-object p2, p0, Lorg/matomo/sdk/extra/TrackHelper$Order;->mOrderId:Ljava/lang/String;

    .line 638
    iput p3, p0, Lorg/matomo/sdk/extra/TrackHelper$Order;->mGrandTotal:I

    return-void
.end method


# virtual methods
.method public build()Lorg/matomo/sdk/TrackMe;
    .locals 3

    .line 683
    iget-object v0, p0, Lorg/matomo/sdk/extra/TrackHelper$Order;->mEcommerceItems:Lorg/matomo/sdk/extra/EcommerceItems;

    if-nez v0, :cond_0

    new-instance v0, Lorg/matomo/sdk/extra/EcommerceItems;

    invoke-direct {v0}, Lorg/matomo/sdk/extra/EcommerceItems;-><init>()V

    iput-object v0, p0, Lorg/matomo/sdk/extra/TrackHelper$Order;->mEcommerceItems:Lorg/matomo/sdk/extra/EcommerceItems;

    .line 684
    :cond_0
    new-instance v0, Lorg/matomo/sdk/TrackMe;

    invoke-virtual {p0}, Lorg/matomo/sdk/extra/TrackHelper$Order;->getBaseTrackMe()Lorg/matomo/sdk/TrackMe;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/matomo/sdk/TrackMe;-><init>(Lorg/matomo/sdk/TrackMe;)V

    sget-object v1, Lorg/matomo/sdk/QueryParams;->GOAL_ID:Lorg/matomo/sdk/QueryParams;

    const/4 v2, 0x0

    .line 685
    invoke-virtual {v0, v1, v2}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;I)Lorg/matomo/sdk/TrackMe;

    move-result-object v0

    sget-object v1, Lorg/matomo/sdk/QueryParams;->ORDER_ID:Lorg/matomo/sdk/QueryParams;

    iget-object v2, p0, Lorg/matomo/sdk/extra/TrackHelper$Order;->mOrderId:Ljava/lang/String;

    .line 686
    invoke-virtual {v0, v1, v2}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;Ljava/lang/String;)Lorg/matomo/sdk/TrackMe;

    move-result-object v0

    sget-object v1, Lorg/matomo/sdk/QueryParams;->REVENUE:Lorg/matomo/sdk/QueryParams;

    iget v2, p0, Lorg/matomo/sdk/extra/TrackHelper$Order;->mGrandTotal:I

    .line 687
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lorg/matomo/sdk/tools/CurrencyFormatter;->priceString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;Ljava/lang/String;)Lorg/matomo/sdk/TrackMe;

    move-result-object v0

    sget-object v1, Lorg/matomo/sdk/QueryParams;->ECOMMERCE_ITEMS:Lorg/matomo/sdk/QueryParams;

    iget-object v2, p0, Lorg/matomo/sdk/extra/TrackHelper$Order;->mEcommerceItems:Lorg/matomo/sdk/extra/EcommerceItems;

    .line 688
    invoke-virtual {v2}, Lorg/matomo/sdk/extra/EcommerceItems;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;Ljava/lang/String;)Lorg/matomo/sdk/TrackMe;

    move-result-object v0

    sget-object v1, Lorg/matomo/sdk/QueryParams;->SUBTOTAL:Lorg/matomo/sdk/QueryParams;

    iget-object v2, p0, Lorg/matomo/sdk/extra/TrackHelper$Order;->mSubTotal:Ljava/lang/Integer;

    .line 689
    invoke-static {v2}, Lorg/matomo/sdk/tools/CurrencyFormatter;->priceString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;Ljava/lang/String;)Lorg/matomo/sdk/TrackMe;

    move-result-object v0

    sget-object v1, Lorg/matomo/sdk/QueryParams;->TAX:Lorg/matomo/sdk/QueryParams;

    iget-object v2, p0, Lorg/matomo/sdk/extra/TrackHelper$Order;->mTax:Ljava/lang/Integer;

    .line 690
    invoke-static {v2}, Lorg/matomo/sdk/tools/CurrencyFormatter;->priceString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;Ljava/lang/String;)Lorg/matomo/sdk/TrackMe;

    move-result-object v0

    sget-object v1, Lorg/matomo/sdk/QueryParams;->SHIPPING:Lorg/matomo/sdk/QueryParams;

    iget-object v2, p0, Lorg/matomo/sdk/extra/TrackHelper$Order;->mShipping:Ljava/lang/Integer;

    .line 691
    invoke-static {v2}, Lorg/matomo/sdk/tools/CurrencyFormatter;->priceString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;Ljava/lang/String;)Lorg/matomo/sdk/TrackMe;

    move-result-object v0

    sget-object v1, Lorg/matomo/sdk/QueryParams;->DISCOUNT:Lorg/matomo/sdk/QueryParams;

    iget-object v2, p0, Lorg/matomo/sdk/extra/TrackHelper$Order;->mDiscount:Ljava/lang/Integer;

    .line 692
    invoke-static {v2}, Lorg/matomo/sdk/tools/CurrencyFormatter;->priceString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;Ljava/lang/String;)Lorg/matomo/sdk/TrackMe;

    move-result-object v0

    return-object v0
.end method

.method public discount(Ljava/lang/Integer;)Lorg/matomo/sdk/extra/TrackHelper$Order;
    .locals 0

    .line 669
    iput-object p1, p0, Lorg/matomo/sdk/extra/TrackHelper$Order;->mDiscount:Ljava/lang/Integer;

    return-object p0
.end method

.method public items(Lorg/matomo/sdk/extra/EcommerceItems;)Lorg/matomo/sdk/extra/TrackHelper$Order;
    .locals 0

    .line 677
    iput-object p1, p0, Lorg/matomo/sdk/extra/TrackHelper$Order;->mEcommerceItems:Lorg/matomo/sdk/extra/EcommerceItems;

    return-object p0
.end method

.method public bridge synthetic safelyWith(Lorg/matomo/sdk/Tracker;)Z
    .locals 0

    .line 626
    invoke-super {p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;->safelyWith(Lorg/matomo/sdk/Tracker;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic safelyWith(Lorg/matomo/sdk/extra/MatomoApplication;)Z
    .locals 0

    .line 626
    invoke-super {p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;->safelyWith(Lorg/matomo/sdk/extra/MatomoApplication;)Z

    move-result p1

    return p1
.end method

.method public shipping(Ljava/lang/Integer;)Lorg/matomo/sdk/extra/TrackHelper$Order;
    .locals 0

    .line 661
    iput-object p1, p0, Lorg/matomo/sdk/extra/TrackHelper$Order;->mShipping:Ljava/lang/Integer;

    return-object p0
.end method

.method public subTotal(Ljava/lang/Integer;)Lorg/matomo/sdk/extra/TrackHelper$Order;
    .locals 0

    .line 645
    iput-object p1, p0, Lorg/matomo/sdk/extra/TrackHelper$Order;->mSubTotal:Ljava/lang/Integer;

    return-object p0
.end method

.method public tax(Ljava/lang/Integer;)Lorg/matomo/sdk/extra/TrackHelper$Order;
    .locals 0

    .line 653
    iput-object p1, p0, Lorg/matomo/sdk/extra/TrackHelper$Order;->mTax:Ljava/lang/Integer;

    return-object p0
.end method

.method public bridge synthetic with(Lorg/matomo/sdk/Tracker;)V
    .locals 0

    .line 626
    invoke-super {p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;->with(Lorg/matomo/sdk/Tracker;)V

    return-void
.end method

.method public bridge synthetic with(Lorg/matomo/sdk/extra/MatomoApplication;)V
    .locals 0

    .line 626
    invoke-super {p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;->with(Lorg/matomo/sdk/extra/MatomoApplication;)V

    return-void
.end method
