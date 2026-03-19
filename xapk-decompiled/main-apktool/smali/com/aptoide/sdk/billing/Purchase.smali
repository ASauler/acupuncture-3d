.class public final Lcom/aptoide/sdk/billing/Purchase;
.super Ljava/lang/Object;
.source "Purchase.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0012\u0018\u00002\u00020\u0001Bg\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0005\u0012\u0006\u0010\u0010\u001a\u00020\u0005\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0002\u0010\u0013R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0018R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0017R\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0017R\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0017R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0011\u0010\u000f\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u0017R\u0011\u0010\u0010\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u0017\u00a8\u0006$"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/Purchase;",
        "",
        "accountIdentifiers",
        "Lcom/aptoide/sdk/billing/AccountIdentifiers;",
        "developerPayload",
        "",
        "orderId",
        "originalJson",
        "packageName",
        "products",
        "",
        "purchaseState",
        "",
        "purchaseTime",
        "",
        "purchaseToken",
        "signature",
        "isAutoRenewing",
        "",
        "(Lcom/aptoide/sdk/billing/AccountIdentifiers;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJLjava/lang/String;Ljava/lang/String;Z)V",
        "getAccountIdentifiers",
        "()Lcom/aptoide/sdk/billing/AccountIdentifiers;",
        "getDeveloperPayload",
        "()Ljava/lang/String;",
        "()Z",
        "getOrderId",
        "getOriginalJson",
        "getPackageName",
        "getProducts",
        "()Ljava/util/List;",
        "getPurchaseState",
        "()I",
        "getPurchaseTime",
        "()J",
        "getPurchaseToken",
        "getSignature",
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
.field private final accountIdentifiers:Lcom/aptoide/sdk/billing/AccountIdentifiers;

.field private final developerPayload:Ljava/lang/String;

.field private final isAutoRenewing:Z

.field private final orderId:Ljava/lang/String;

.field private final originalJson:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final products:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final purchaseState:I

.field private final purchaseTime:J

.field private final purchaseToken:Ljava/lang/String;

.field private final signature:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/aptoide/sdk/billing/AccountIdentifiers;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJLjava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aptoide/sdk/billing/AccountIdentifiers;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const-string v0, "orderId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originalJson"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "products"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchaseToken"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "signature"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/aptoide/sdk/billing/Purchase;->accountIdentifiers:Lcom/aptoide/sdk/billing/AccountIdentifiers;

    .line 8
    iput-object p2, p0, Lcom/aptoide/sdk/billing/Purchase;->developerPayload:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/aptoide/sdk/billing/Purchase;->orderId:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/aptoide/sdk/billing/Purchase;->originalJson:Ljava/lang/String;

    .line 11
    iput-object p5, p0, Lcom/aptoide/sdk/billing/Purchase;->packageName:Ljava/lang/String;

    .line 12
    iput-object p6, p0, Lcom/aptoide/sdk/billing/Purchase;->products:Ljava/util/List;

    .line 13
    iput p7, p0, Lcom/aptoide/sdk/billing/Purchase;->purchaseState:I

    .line 14
    iput-wide p8, p0, Lcom/aptoide/sdk/billing/Purchase;->purchaseTime:J

    .line 15
    iput-object p10, p0, Lcom/aptoide/sdk/billing/Purchase;->purchaseToken:Ljava/lang/String;

    .line 16
    iput-object p11, p0, Lcom/aptoide/sdk/billing/Purchase;->signature:Ljava/lang/String;

    .line 17
    iput-boolean p12, p0, Lcom/aptoide/sdk/billing/Purchase;->isAutoRenewing:Z

    return-void
.end method


# virtual methods
.method public final getAccountIdentifiers()Lcom/aptoide/sdk/billing/AccountIdentifiers;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/aptoide/sdk/billing/Purchase;->accountIdentifiers:Lcom/aptoide/sdk/billing/AccountIdentifiers;

    return-object v0
.end method

.method public final getDeveloperPayload()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/aptoide/sdk/billing/Purchase;->developerPayload:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrderId()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/aptoide/sdk/billing/Purchase;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public final getOriginalJson()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/aptoide/sdk/billing/Purchase;->originalJson:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/aptoide/sdk/billing/Purchase;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getProducts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/aptoide/sdk/billing/Purchase;->products:Ljava/util/List;

    return-object v0
.end method

.method public final getPurchaseState()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/aptoide/sdk/billing/Purchase;->purchaseState:I

    return v0
.end method

.method public final getPurchaseTime()J
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/aptoide/sdk/billing/Purchase;->purchaseTime:J

    return-wide v0
.end method

.method public final getPurchaseToken()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/aptoide/sdk/billing/Purchase;->purchaseToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/aptoide/sdk/billing/Purchase;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public final isAutoRenewing()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/aptoide/sdk/billing/Purchase;->isAutoRenewing:Z

    return v0
.end method
