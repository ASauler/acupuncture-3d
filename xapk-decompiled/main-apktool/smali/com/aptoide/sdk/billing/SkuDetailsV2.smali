.class public final Lcom/aptoide/sdk/billing/SkuDetailsV2;
.super Ljava/lang/Object;
.source "SkuDetailsV2.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSkuDetailsV2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SkuDetailsV2.kt\ncom/aptoide/sdk/billing/SkuDetailsV2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,72:1\n1#2:73\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0007H\u00c6\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J?\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001J\u0010\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u0003J\u0006\u0010\u001f\u001a\u00020\u0003J\t\u0010 \u001a\u00020\u0003H\u00d6\u0001R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000b\u00a8\u0006!"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/SkuDetailsV2;",
        "",
        "sku",
        "",
        "title",
        "description",
        "price",
        "Lcom/aptoide/sdk/billing/PriceV2;",
        "period",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/PriceV2;Ljava/lang/String;)V",
        "getDescription",
        "()Ljava/lang/String;",
        "getPeriod",
        "getPrice",
        "()Lcom/aptoide/sdk/billing/PriceV2;",
        "getSku",
        "getTitle",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toSkuDetails",
        "Lcom/aptoide/sdk/billing/SkuDetails;",
        "type",
        "toSkuDetailsResponseString",
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
.field private final description:Ljava/lang/String;

.field private final period:Ljava/lang/String;

.field private final price:Lcom/aptoide/sdk/billing/PriceV2;

.field private final sku:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/PriceV2;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "sku"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "price"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->sku:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->title:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->description:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->price:Lcom/aptoide/sdk/billing/PriceV2;

    .line 29
    iput-object p5, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->period:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/PriceV2;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v3, p3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 24
    invoke-direct/range {v0 .. v5}, Lcom/aptoide/sdk/billing/SkuDetailsV2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/PriceV2;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/aptoide/sdk/billing/SkuDetailsV2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/PriceV2;Ljava/lang/String;ILjava/lang/Object;)Lcom/aptoide/sdk/billing/SkuDetailsV2;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->sku:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->title:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->description:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->price:Lcom/aptoide/sdk/billing/PriceV2;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->period:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/aptoide/sdk/billing/SkuDetailsV2;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/PriceV2;Ljava/lang/String;)Lcom/aptoide/sdk/billing/SkuDetailsV2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic toSkuDetails$default(Lcom/aptoide/sdk/billing/SkuDetailsV2;Ljava/lang/String;ILjava/lang/Object;)Lcom/aptoide/sdk/billing/SkuDetails;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "INAPP"

    .line 31
    :cond_0
    invoke-virtual {p0, p1}, Lcom/aptoide/sdk/billing/SkuDetailsV2;->toSkuDetails(Ljava/lang/String;)Lcom/aptoide/sdk/billing/SkuDetails;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lcom/aptoide/sdk/billing/PriceV2;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->price:Lcom/aptoide/sdk/billing/PriceV2;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->period:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/PriceV2;Ljava/lang/String;)Lcom/aptoide/sdk/billing/SkuDetailsV2;
    .locals 7

    const-string/jumbo v0, "sku"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "price"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/aptoide/sdk/billing/SkuDetailsV2;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/aptoide/sdk/billing/SkuDetailsV2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/PriceV2;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/aptoide/sdk/billing/SkuDetailsV2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/aptoide/sdk/billing/SkuDetailsV2;

    iget-object v1, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->sku:Ljava/lang/String;

    iget-object v3, p1, Lcom/aptoide/sdk/billing/SkuDetailsV2;->sku:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/aptoide/sdk/billing/SkuDetailsV2;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/aptoide/sdk/billing/SkuDetailsV2;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->price:Lcom/aptoide/sdk/billing/PriceV2;

    iget-object v3, p1, Lcom/aptoide/sdk/billing/SkuDetailsV2;->price:Lcom/aptoide/sdk/billing/PriceV2;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->period:Ljava/lang/String;

    iget-object p1, p1, Lcom/aptoide/sdk/billing/SkuDetailsV2;->period:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getPeriod()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->period:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrice()Lcom/aptoide/sdk/billing/PriceV2;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->price:Lcom/aptoide/sdk/billing/PriceV2;

    return-object v0
.end method

.method public final getSku()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->sku:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->description:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->price:Lcom/aptoide/sdk/billing/PriceV2;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/PriceV2;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->period:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final toSkuDetails(Ljava/lang/String;)Lcom/aptoide/sdk/billing/SkuDetails;
    .locals 25

    move-object/from16 v0, p0

    const-string/jumbo v1, "type"

    move-object/from16 v5, p1

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v1, Lcom/aptoide/sdk/billing/SkuDetails;

    .line 34
    iget-object v4, v0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->sku:Ljava/lang/String;

    .line 36
    iget-object v2, v0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->price:Lcom/aptoide/sdk/billing/PriceV2;

    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/PriceV2;->getLabel()Ljava/lang/String;

    move-result-object v6

    .line 37
    iget-object v2, v0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->price:Lcom/aptoide/sdk/billing/PriceV2;

    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/PriceV2;->getMicros()D

    move-result-wide v2

    double-to-long v7, v2

    .line 38
    iget-object v2, v0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->price:Lcom/aptoide/sdk/billing/PriceV2;

    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/PriceV2;->getCurrency()Ljava/lang/String;

    move-result-object v9

    .line 39
    iget-object v2, v0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->price:Lcom/aptoide/sdk/billing/PriceV2;

    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/PriceV2;->getAppc()Lcom/aptoide/sdk/billing/AppcV2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/AppcV2;->getLabel()Ljava/lang/String;

    move-result-object v10

    .line 40
    iget-object v2, v0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->price:Lcom/aptoide/sdk/billing/PriceV2;

    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/PriceV2;->getAppc()Lcom/aptoide/sdk/billing/AppcV2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/AppcV2;->getMicros()D

    move-result-wide v2

    double-to-long v11, v2

    const-string v13, "APPC"

    .line 42
    iget-object v2, v0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->price:Lcom/aptoide/sdk/billing/PriceV2;

    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/PriceV2;->getLabel()Ljava/lang/String;

    move-result-object v14

    .line 43
    iget-object v2, v0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->price:Lcom/aptoide/sdk/billing/PriceV2;

    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/PriceV2;->getMicros()D

    move-result-wide v2

    double-to-long v2, v2

    .line 44
    iget-object v15, v0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->price:Lcom/aptoide/sdk/billing/PriceV2;

    invoke-virtual {v15}, Lcom/aptoide/sdk/billing/PriceV2;->getCurrency()Ljava/lang/String;

    move-result-object v17

    .line 45
    iget-object v15, v0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->title:Ljava/lang/String;

    move-object/from16 v16, v15

    .line 46
    iget-object v15, v0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->description:Ljava/lang/String;

    move-object/from16 v18, v15

    .line 47
    iget-object v15, v0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->period:Ljava/lang/String;

    move-wide/from16 v19, v2

    .line 48
    iget-object v2, v0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->price:Lcom/aptoide/sdk/billing/PriceV2;

    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/PriceV2;->getTrial()Lcom/aptoide/sdk/billing/Trial;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/Trial;->getPeriod()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v21, v2

    goto :goto_0

    :cond_0
    move-object/from16 v21, v3

    .line 49
    :goto_0
    iget-object v2, v0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->price:Lcom/aptoide/sdk/billing/PriceV2;

    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/PriceV2;->getTrial()Lcom/aptoide/sdk/billing/Trial;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/Trial;->getEndDate()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v22, v2

    goto :goto_1

    :cond_1
    move-object/from16 v22, v3

    :goto_1
    move-object v2, v1

    move-object/from16 v3, p1

    move-object/from16 v5, p1

    move-object/from16 v24, v15

    move-object/from16 v23, v18

    move-object/from16 v18, v16

    move-wide/from16 v15, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v24

    .line 32
    invoke-direct/range {v2 .. v22}, Lcom/aptoide/sdk/billing/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final toSkuDetailsResponseString()Ljava/lang/String;
    .locals 4

    .line 53
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "productId"

    .line 54
    iget-object v2, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->sku:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "type"

    const-string v2, "INAPP"

    .line 55
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    iget-object v1, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->price:Lcom/aptoide/sdk/billing/PriceV2;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/PriceV2;->getLabel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "price"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    iget-object v1, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->price:Lcom/aptoide/sdk/billing/PriceV2;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/PriceV2;->getCurrency()Ljava/lang/String;

    move-result-object v1

    const-string v2, "price_currency_code"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    iget-object v1, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->price:Lcom/aptoide/sdk/billing/PriceV2;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/PriceV2;->getMicros()D

    move-result-wide v1

    const-string v3, "price_amount_micros"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 59
    iget-object v1, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->price:Lcom/aptoide/sdk/billing/PriceV2;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/PriceV2;->getAppc()Lcom/aptoide/sdk/billing/AppcV2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/AppcV2;->getLabel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appc_price"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appc_price_currency_code"

    const-string v2, "APPC"

    .line 60
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    iget-object v1, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->price:Lcom/aptoide/sdk/billing/PriceV2;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/PriceV2;->getAppc()Lcom/aptoide/sdk/billing/AppcV2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/AppcV2;->getMicros()D

    move-result-wide v1

    const-string v3, "appc_price_amount_micros"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 62
    iget-object v1, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->price:Lcom/aptoide/sdk/billing/PriceV2;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/PriceV2;->getLabel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fiat_price"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    iget-object v1, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->price:Lcom/aptoide/sdk/billing/PriceV2;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/PriceV2;->getCurrency()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fiat_price_currency_code"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    iget-object v1, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->price:Lcom/aptoide/sdk/billing/PriceV2;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/PriceV2;->getMicros()D

    move-result-wide v1

    const-string v3, "fiat_price_amount_micros"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v1, "title"

    .line 65
    iget-object v2, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    iget-object v1, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->description:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "description"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->period:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "period"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->price:Lcom/aptoide/sdk/billing/PriceV2;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/PriceV2;->getTrial()Lcom/aptoide/sdk/billing/Trial;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/Trial;->getPeriod()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v2, "trial_period"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    :cond_2
    iget-object v1, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->price:Lcom/aptoide/sdk/billing/PriceV2;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/PriceV2;->getTrial()Lcom/aptoide/sdk/billing/Trial;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/Trial;->getEndDate()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v2, "trial_period_end_date"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->sku:Ljava/lang/String;

    iget-object v1, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->description:Ljava/lang/String;

    iget-object v3, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->price:Lcom/aptoide/sdk/billing/PriceV2;

    iget-object v4, p0, Lcom/aptoide/sdk/billing/SkuDetailsV2;->period:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SkuDetailsV2(sku="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", title="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", period="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
