.class public final Lcom/aptoide/sdk/billing/PriceV2;
.super Ljava/lang/Object;
.source "SkuDetailsV2.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u000cJ\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\tH\u00c6\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003JG\u0010\u001d\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bH\u00c6\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010!\u001a\u00020\"H\u00d6\u0001J\t\u0010#\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0010R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006$"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/PriceV2;",
        "",
        "currency",
        "",
        "label",
        "symbol",
        "micros",
        "",
        "appc",
        "Lcom/aptoide/sdk/billing/AppcV2;",
        "trial",
        "Lcom/aptoide/sdk/billing/Trial;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/aptoide/sdk/billing/AppcV2;Lcom/aptoide/sdk/billing/Trial;)V",
        "getAppc",
        "()Lcom/aptoide/sdk/billing/AppcV2;",
        "getCurrency",
        "()Ljava/lang/String;",
        "getLabel",
        "getMicros",
        "()D",
        "getSymbol",
        "getTrial",
        "()Lcom/aptoide/sdk/billing/Trial;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
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
.field private final appc:Lcom/aptoide/sdk/billing/AppcV2;

.field private final currency:Ljava/lang/String;

.field private final label:Ljava/lang/String;

.field private final micros:D

.field private final symbol:Ljava/lang/String;

.field private final trial:Lcom/aptoide/sdk/billing/Trial;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/aptoide/sdk/billing/AppcV2;Lcom/aptoide/sdk/billing/Trial;)V
    .locals 1

    const-string v0, "currency"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "symbol"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appc"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/aptoide/sdk/billing/PriceV2;->currency:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/aptoide/sdk/billing/PriceV2;->label:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/aptoide/sdk/billing/PriceV2;->symbol:Ljava/lang/String;

    .line 9
    iput-wide p4, p0, Lcom/aptoide/sdk/billing/PriceV2;->micros:D

    .line 10
    iput-object p6, p0, Lcom/aptoide/sdk/billing/PriceV2;->appc:Lcom/aptoide/sdk/billing/AppcV2;

    .line 11
    iput-object p7, p0, Lcom/aptoide/sdk/billing/PriceV2;->trial:Lcom/aptoide/sdk/billing/Trial;

    return-void
.end method

.method public static synthetic copy$default(Lcom/aptoide/sdk/billing/PriceV2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/aptoide/sdk/billing/AppcV2;Lcom/aptoide/sdk/billing/Trial;ILjava/lang/Object;)Lcom/aptoide/sdk/billing/PriceV2;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/aptoide/sdk/billing/PriceV2;->currency:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/aptoide/sdk/billing/PriceV2;->label:Ljava/lang/String;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/aptoide/sdk/billing/PriceV2;->symbol:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-wide p4, p0, Lcom/aptoide/sdk/billing/PriceV2;->micros:D

    :cond_3
    move-wide v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p6, p0, Lcom/aptoide/sdk/billing/PriceV2;->appc:Lcom/aptoide/sdk/billing/AppcV2;

    :cond_4
    move-object v3, p6

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p7, p0, Lcom/aptoide/sdk/billing/PriceV2;->trial:Lcom/aptoide/sdk/billing/Trial;

    :cond_5
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-object p5, v0

    move-wide p6, v1

    move-object p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/aptoide/sdk/billing/PriceV2;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/aptoide/sdk/billing/AppcV2;Lcom/aptoide/sdk/billing/Trial;)Lcom/aptoide/sdk/billing/PriceV2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/PriceV2;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/PriceV2;->label:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/PriceV2;->symbol:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()D
    .locals 2

    iget-wide v0, p0, Lcom/aptoide/sdk/billing/PriceV2;->micros:D

    return-wide v0
.end method

.method public final component5()Lcom/aptoide/sdk/billing/AppcV2;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/PriceV2;->appc:Lcom/aptoide/sdk/billing/AppcV2;

    return-object v0
.end method

.method public final component6()Lcom/aptoide/sdk/billing/Trial;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/PriceV2;->trial:Lcom/aptoide/sdk/billing/Trial;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/aptoide/sdk/billing/AppcV2;Lcom/aptoide/sdk/billing/Trial;)Lcom/aptoide/sdk/billing/PriceV2;
    .locals 9

    const-string v0, "currency"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "symbol"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appc"

    move-object v7, p6

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/aptoide/sdk/billing/PriceV2;

    move-object v1, v0

    move-wide v5, p4

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/aptoide/sdk/billing/PriceV2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/aptoide/sdk/billing/AppcV2;Lcom/aptoide/sdk/billing/Trial;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/aptoide/sdk/billing/PriceV2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/aptoide/sdk/billing/PriceV2;

    iget-object v1, p0, Lcom/aptoide/sdk/billing/PriceV2;->currency:Ljava/lang/String;

    iget-object v3, p1, Lcom/aptoide/sdk/billing/PriceV2;->currency:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/aptoide/sdk/billing/PriceV2;->label:Ljava/lang/String;

    iget-object v3, p1, Lcom/aptoide/sdk/billing/PriceV2;->label:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/aptoide/sdk/billing/PriceV2;->symbol:Ljava/lang/String;

    iget-object v3, p1, Lcom/aptoide/sdk/billing/PriceV2;->symbol:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/aptoide/sdk/billing/PriceV2;->micros:D

    iget-wide v5, p1, Lcom/aptoide/sdk/billing/PriceV2;->micros:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/aptoide/sdk/billing/PriceV2;->appc:Lcom/aptoide/sdk/billing/AppcV2;

    iget-object v3, p1, Lcom/aptoide/sdk/billing/PriceV2;->appc:Lcom/aptoide/sdk/billing/AppcV2;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/aptoide/sdk/billing/PriceV2;->trial:Lcom/aptoide/sdk/billing/Trial;

    iget-object p1, p1, Lcom/aptoide/sdk/billing/PriceV2;->trial:Lcom/aptoide/sdk/billing/Trial;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getAppc()Lcom/aptoide/sdk/billing/AppcV2;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/aptoide/sdk/billing/PriceV2;->appc:Lcom/aptoide/sdk/billing/AppcV2;

    return-object v0
.end method

.method public final getCurrency()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/aptoide/sdk/billing/PriceV2;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/aptoide/sdk/billing/PriceV2;->label:Ljava/lang/String;

    return-object v0
.end method

.method public final getMicros()D
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/aptoide/sdk/billing/PriceV2;->micros:D

    return-wide v0
.end method

.method public final getSymbol()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/aptoide/sdk/billing/PriceV2;->symbol:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrial()Lcom/aptoide/sdk/billing/Trial;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/aptoide/sdk/billing/PriceV2;->trial:Lcom/aptoide/sdk/billing/Trial;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/aptoide/sdk/billing/PriceV2;->currency:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/aptoide/sdk/billing/PriceV2;->label:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/aptoide/sdk/billing/PriceV2;->symbol:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/aptoide/sdk/billing/PriceV2;->micros:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/aptoide/sdk/billing/PriceV2;->appc:Lcom/aptoide/sdk/billing/AppcV2;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/AppcV2;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/aptoide/sdk/billing/PriceV2;->trial:Lcom/aptoide/sdk/billing/Trial;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/Trial;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/aptoide/sdk/billing/PriceV2;->currency:Ljava/lang/String;

    iget-object v1, p0, Lcom/aptoide/sdk/billing/PriceV2;->label:Ljava/lang/String;

    iget-object v2, p0, Lcom/aptoide/sdk/billing/PriceV2;->symbol:Ljava/lang/String;

    iget-wide v3, p0, Lcom/aptoide/sdk/billing/PriceV2;->micros:D

    iget-object v5, p0, Lcom/aptoide/sdk/billing/PriceV2;->appc:Lcom/aptoide/sdk/billing/AppcV2;

    iget-object v6, p0, Lcom/aptoide/sdk/billing/PriceV2;->trial:Lcom/aptoide/sdk/billing/Trial;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "PriceV2(currency="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", label="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", symbol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", micros="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
