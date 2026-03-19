.class public Lorg/matomo/sdk/extra/EcommerceItems$Item;
.super Ljava/lang/Object;
.source "EcommerceItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/matomo/sdk/extra/EcommerceItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private mCategory:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPrice:Ljava/lang/Integer;

.field private mQuantity:Ljava/lang/Integer;

.field private final mSku:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/matomo/sdk/extra/EcommerceItems$Item;->mSku:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/matomo/sdk/extra/EcommerceItems$Item;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lorg/matomo/sdk/extra/EcommerceItems$Item;->mSku:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public category(Ljava/lang/String;)Lorg/matomo/sdk/extra/EcommerceItems$Item;
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/matomo/sdk/extra/EcommerceItems$Item;->mCategory:Ljava/lang/String;

    return-object p0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/matomo/sdk/extra/EcommerceItems$Item;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/matomo/sdk/extra/EcommerceItems$Item;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/Integer;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/matomo/sdk/extra/EcommerceItems$Item;->mPrice:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQuantity()Ljava/lang/Integer;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/matomo/sdk/extra/EcommerceItems$Item;->mQuantity:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/matomo/sdk/extra/EcommerceItems$Item;->mSku:Ljava/lang/String;

    return-object v0
.end method

.method public name(Ljava/lang/String;)Lorg/matomo/sdk/extra/EcommerceItems$Item;
    .locals 0

    .line 47
    iput-object p1, p0, Lorg/matomo/sdk/extra/EcommerceItems$Item;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public price(I)Lorg/matomo/sdk/extra/EcommerceItems$Item;
    .locals 0

    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/matomo/sdk/extra/EcommerceItems$Item;->mPrice:Ljava/lang/Integer;

    return-object p0
.end method

.method public quantity(I)Lorg/matomo/sdk/extra/EcommerceItems$Item;
    .locals 0

    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/matomo/sdk/extra/EcommerceItems$Item;->mQuantity:Ljava/lang/Integer;

    return-object p0
.end method

.method protected toJson()Lorg/json/JSONArray;
    .locals 2

    .line 96
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 97
    iget-object v1, p0, Lorg/matomo/sdk/extra/EcommerceItems$Item;->mSku:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 98
    iget-object v1, p0, Lorg/matomo/sdk/extra/EcommerceItems$Item;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 99
    :cond_0
    iget-object v1, p0, Lorg/matomo/sdk/extra/EcommerceItems$Item;->mCategory:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 100
    :cond_1
    iget-object v1, p0, Lorg/matomo/sdk/extra/EcommerceItems$Item;->mPrice:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lorg/matomo/sdk/tools/CurrencyFormatter;->priceString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 101
    :cond_2
    iget-object v1, p0, Lorg/matomo/sdk/extra/EcommerceItems$Item;->mQuantity:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_3
    return-object v0
.end method
