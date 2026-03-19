.class public final Lcom/aptoide/sdk/billing/BillingResult$Builder;
.super Ljava/lang/Object;
.source "BillingResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aptoide/sdk/billing/BillingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0000\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0008\u001a\u00020\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0006R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/BillingResult$Builder;",
        "",
        "()V",
        "debugMessage",
        "",
        "responseCode",
        "",
        "Ljava/lang/Integer;",
        "build",
        "Lcom/aptoide/sdk/billing/BillingResult;",
        "setDebugMessage",
        "setResponseCode",
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
.field private debugMessage:Ljava/lang/String;

.field private responseCode:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/aptoide/sdk/billing/BillingResult;
    .locals 3

    .line 33
    new-instance v0, Lcom/aptoide/sdk/billing/BillingResult;

    iget-object v1, p0, Lcom/aptoide/sdk/billing/BillingResult$Builder;->responseCode:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    :goto_0
    iget-object v2, p0, Lcom/aptoide/sdk/billing/BillingResult$Builder;->debugMessage:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/aptoide/sdk/billing/BillingResult;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public final setDebugMessage(Ljava/lang/String;)Lcom/aptoide/sdk/billing/BillingResult$Builder;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/aptoide/sdk/billing/BillingResult$Builder;->debugMessage:Ljava/lang/String;

    return-object p0
.end method

.method public final setResponseCode(I)Lcom/aptoide/sdk/billing/BillingResult$Builder;
    .locals 0

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/aptoide/sdk/billing/BillingResult$Builder;->responseCode:Ljava/lang/Integer;

    return-object p0
.end method
