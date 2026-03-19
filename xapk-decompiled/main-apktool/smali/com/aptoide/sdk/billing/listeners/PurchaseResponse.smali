.class public final Lcom/aptoide/sdk/billing/listeners/PurchaseResponse;
.super Ljava/lang/Object;
.source "PurchaseResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0003J#\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/listeners/PurchaseResponse;",
        "",
        "responseCode",
        "",
        "purchases",
        "",
        "Lcom/aptoide/sdk/billing/Purchase;",
        "(ILjava/util/List;)V",
        "getPurchases",
        "()Ljava/util/List;",
        "getResponseCode",
        "()I",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "android-aptoide-billing_release"
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
.field private final purchases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field private final responseCode:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/Purchase;",
            ">;)V"
        }
    .end annotation

    const-string v0, "purchases"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseResponse;->responseCode:I

    iput-object p2, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseResponse;->purchases:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/aptoide/sdk/billing/listeners/PurchaseResponse;ILjava/util/List;ILjava/lang/Object;)Lcom/aptoide/sdk/billing/listeners/PurchaseResponse;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseResponse;->responseCode:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseResponse;->purchases:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/aptoide/sdk/billing/listeners/PurchaseResponse;->copy(ILjava/util/List;)Lcom/aptoide/sdk/billing/listeners/PurchaseResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseResponse;->responseCode:I

    return v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/Purchase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseResponse;->purchases:Ljava/util/List;

    return-object v0
.end method

.method public final copy(ILjava/util/List;)Lcom/aptoide/sdk/billing/listeners/PurchaseResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/Purchase;",
            ">;)",
            "Lcom/aptoide/sdk/billing/listeners/PurchaseResponse;"
        }
    .end annotation

    const-string v0, "purchases"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/aptoide/sdk/billing/listeners/PurchaseResponse;

    invoke-direct {v0, p1, p2}, Lcom/aptoide/sdk/billing/listeners/PurchaseResponse;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/aptoide/sdk/billing/listeners/PurchaseResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/aptoide/sdk/billing/listeners/PurchaseResponse;

    iget v1, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseResponse;->responseCode:I

    iget v3, p1, Lcom/aptoide/sdk/billing/listeners/PurchaseResponse;->responseCode:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseResponse;->purchases:Ljava/util/List;

    iget-object p1, p1, Lcom/aptoide/sdk/billing/listeners/PurchaseResponse;->purchases:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getPurchases()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/Purchase;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseResponse;->purchases:Ljava/util/List;

    return-object v0
.end method

.method public final getResponseCode()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseResponse;->responseCode:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseResponse;->responseCode:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseResponse;->purchases:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseResponse;->responseCode:I

    iget-object v1, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseResponse;->purchases:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PurchaseResponse(responseCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", purchases="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
