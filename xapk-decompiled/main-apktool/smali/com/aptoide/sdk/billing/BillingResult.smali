.class public final Lcom/aptoide/sdk/billing/BillingResult;
.super Ljava/lang/Object;
.source "BillingResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/billing/BillingResult$Builder;,
        Lcom/aptoide/sdk/billing/BillingResult$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\u0018\u0000 \r2\u00020\u0001:\u0002\u000c\rB\u0019\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000b\u001a\u00020\u0005H\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/BillingResult;",
        "",
        "responseCode",
        "",
        "debugMessage",
        "",
        "(ILjava/lang/String;)V",
        "getDebugMessage",
        "()Ljava/lang/String;",
        "getResponseCode",
        "()I",
        "toString",
        "Builder",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/aptoide/sdk/billing/BillingResult$Companion;


# instance fields
.field private final debugMessage:Ljava/lang/String;

.field private final responseCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/aptoide/sdk/billing/BillingResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aptoide/sdk/billing/BillingResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/aptoide/sdk/billing/BillingResult;->Companion:Lcom/aptoide/sdk/billing/BillingResult$Companion;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/aptoide/sdk/billing/BillingResult;->responseCode:I

    iput-object p2, p0, Lcom/aptoide/sdk/billing/BillingResult;->debugMessage:Ljava/lang/String;

    return-void
.end method

.method public static final newBuilder()Lcom/aptoide/sdk/billing/BillingResult$Builder;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/aptoide/sdk/billing/BillingResult;->Companion:Lcom/aptoide/sdk/billing/BillingResult$Companion;

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/BillingResult$Companion;->newBuilder()Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getDebugMessage()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/aptoide/sdk/billing/BillingResult;->debugMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getResponseCode()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/aptoide/sdk/billing/BillingResult;->responseCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 38
    iget v0, p0, Lcom/aptoide/sdk/billing/BillingResult;->responseCode:I

    iget-object v1, p0, Lcom/aptoide/sdk/billing/BillingResult;->debugMessage:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ResponseCode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", DebugMessage: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
