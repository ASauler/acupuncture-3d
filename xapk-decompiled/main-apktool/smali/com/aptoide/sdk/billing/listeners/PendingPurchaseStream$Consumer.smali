.class public interface abstract Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream$Consumer;
.super Ljava/lang/Object;
.source "PendingPurchaseStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Consumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BuyItemProperties:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract accept(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBuyItemProperties;)V"
        }
    .end annotation
.end method
