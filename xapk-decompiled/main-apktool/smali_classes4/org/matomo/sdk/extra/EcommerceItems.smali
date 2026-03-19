.class public Lorg/matomo/sdk/extra/EcommerceItems;
.super Ljava/lang/Object;
.source "EcommerceItems.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/matomo/sdk/extra/EcommerceItems$Item;
    }
.end annotation


# instance fields
.field private final mItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/matomo/sdk/extra/EcommerceItems;->mItems:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addItem(Lorg/matomo/sdk/extra/EcommerceItems$Item;)V
    .locals 2

    .line 24
    iget-object v0, p0, Lorg/matomo/sdk/extra/EcommerceItems;->mItems:Ljava/util/Map;

    invoke-static {p1}, Lorg/matomo/sdk/extra/EcommerceItems$Item;->access$000(Lorg/matomo/sdk/extra/EcommerceItems$Item;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/matomo/sdk/extra/EcommerceItems$Item;->toJson()Lorg/json/JSONArray;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clear()V
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/matomo/sdk/extra/EcommerceItems;->mItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/matomo/sdk/extra/EcommerceItems;->mItems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public remove(Lorg/matomo/sdk/extra/EcommerceItems$Item;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/matomo/sdk/extra/EcommerceItems;->mItems:Ljava/util/Map;

    invoke-static {p1}, Lorg/matomo/sdk/extra/EcommerceItems$Item;->access$000(Lorg/matomo/sdk/extra/EcommerceItems$Item;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 3

    .line 127
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 129
    iget-object v1, p0, Lorg/matomo/sdk/extra/EcommerceItems;->mItems:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    .line 130
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
