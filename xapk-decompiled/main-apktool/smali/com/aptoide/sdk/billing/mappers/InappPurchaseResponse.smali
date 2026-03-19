.class public final Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;
.super Ljava/lang/Object;
.source "InappPurchaseResponseMapper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001f\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0087\u0001\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0002\u0010\u0011J\u0010\u0010\"\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001bJ\u000b\u0010#\u001a\u0004\u0018\u00010\u000eH\u00c6\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0010H\u00c6\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\'\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0092\u0001\u0010-\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u00c6\u0001\u00a2\u0006\u0002\u0010.J\u0013\u0010/\u001a\u0002002\u0008\u00101\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00102\u001a\u00020\u0003H\u00d6\u0001J\t\u00103\u001a\u00020\u0005H\u00d6\u0001R\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0015R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0015R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u001c\u001a\u0004\u0008\u001a\u0010\u001bR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0015R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0015R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0015R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0015R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0015\u00a8\u00064"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;",
        "",
        "responseCode",
        "",
        "uid",
        "",
        "sku",
        "domain",
        "type",
        "status",
        "state",
        "payload",
        "created",
        "buyer",
        "Lcom/aptoide/sdk/billing/mappers/Buyer;",
        "order",
        "Lcom/aptoide/sdk/billing/mappers/Order;",
        "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/mappers/Buyer;Lcom/aptoide/sdk/billing/mappers/Order;)V",
        "getBuyer",
        "()Lcom/aptoide/sdk/billing/mappers/Buyer;",
        "getCreated",
        "()Ljava/lang/String;",
        "getDomain",
        "getOrder",
        "()Lcom/aptoide/sdk/billing/mappers/Order;",
        "getPayload",
        "getResponseCode",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getSku",
        "getState",
        "getStatus",
        "getType",
        "getUid",
        "component1",
        "component10",
        "component11",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/mappers/Buyer;Lcom/aptoide/sdk/billing/mappers/Order;)Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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
.field private final buyer:Lcom/aptoide/sdk/billing/mappers/Buyer;

.field private final created:Ljava/lang/String;

.field private final domain:Ljava/lang/String;

.field private final order:Lcom/aptoide/sdk/billing/mappers/Order;

.field private final payload:Ljava/lang/String;

.field private final responseCode:Ljava/lang/Integer;

.field private final sku:Ljava/lang/String;

.field private final state:Ljava/lang/String;

.field private final status:Ljava/lang/String;

.field private final type:Ljava/lang/String;

.field private final uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/mappers/Buyer;Lcom/aptoide/sdk/billing/mappers/Order;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->responseCode:Ljava/lang/Integer;

    .line 90
    iput-object p2, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->uid:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->sku:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->domain:Ljava/lang/String;

    .line 93
    iput-object p5, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->type:Ljava/lang/String;

    .line 94
    iput-object p6, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->status:Ljava/lang/String;

    .line 95
    iput-object p7, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->state:Ljava/lang/String;

    .line 96
    iput-object p8, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->payload:Ljava/lang/String;

    .line 97
    iput-object p9, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->created:Ljava/lang/String;

    .line 98
    iput-object p10, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->buyer:Lcom/aptoide/sdk/billing/mappers/Buyer;

    .line 99
    iput-object p11, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->order:Lcom/aptoide/sdk/billing/mappers/Order;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/mappers/Buyer;Lcom/aptoide/sdk/billing/mappers/Order;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object v4, p4

    :goto_2
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_3

    move-object v5, v2

    goto :goto_3

    :cond_3
    move-object/from16 v5, p5

    :goto_3
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_4

    move-object v6, v2

    goto :goto_4

    :cond_4
    move-object/from16 v6, p6

    :goto_4
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_5

    move-object v7, v2

    goto :goto_5

    :cond_5
    move-object/from16 v7, p7

    :goto_5
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_6

    move-object v8, v2

    goto :goto_6

    :cond_6
    move-object/from16 v8, p8

    :goto_6
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_7

    move-object v9, v2

    goto :goto_7

    :cond_7
    move-object/from16 v9, p9

    :goto_7
    and-int/lit16 v10, v0, 0x200

    if-eqz v10, :cond_8

    move-object v10, v2

    goto :goto_8

    :cond_8
    move-object/from16 v10, p10

    :goto_8
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_9

    goto :goto_9

    :cond_9
    move-object/from16 v2, p11

    :goto_9
    move-object p2, p0

    move-object p3, p1

    move-object p4, v1

    move-object/from16 p5, v3

    move-object/from16 p6, v4

    move-object/from16 p7, v5

    move-object/from16 p8, v6

    move-object/from16 p9, v7

    move-object/from16 p10, v8

    move-object/from16 p11, v9

    move-object/from16 p12, v10

    move-object/from16 p13, v2

    .line 88
    invoke-direct/range {p2 .. p13}, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/mappers/Buyer;Lcom/aptoide/sdk/billing/mappers/Order;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/mappers/Buyer;Lcom/aptoide/sdk/billing/mappers/Order;ILjava/lang/Object;)Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;
    .locals 12

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->responseCode:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->uid:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->sku:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->domain:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->type:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->status:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->state:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->payload:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->created:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->buyer:Lcom/aptoide/sdk/billing/mappers/Buyer;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->order:Lcom/aptoide/sdk/billing/mappers/Order;

    goto :goto_a

    :cond_a
    move-object/from16 v1, p11

    :goto_a
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->copy(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/mappers/Buyer;Lcom/aptoide/sdk/billing/mappers/Order;)Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->responseCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component10()Lcom/aptoide/sdk/billing/mappers/Buyer;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->buyer:Lcom/aptoide/sdk/billing/mappers/Buyer;

    return-object v0
.end method

.method public final component11()Lcom/aptoide/sdk/billing/mappers/Order;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->order:Lcom/aptoide/sdk/billing/mappers/Order;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->state:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->payload:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->created:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/mappers/Buyer;Lcom/aptoide/sdk/billing/mappers/Order;)Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;
    .locals 13

    new-instance v12, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;

    move-object v0, v12

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/mappers/Buyer;Lcom/aptoide/sdk/billing/mappers/Order;)V

    return-object v12
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;

    iget-object v1, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->responseCode:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->responseCode:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->uid:Ljava/lang/String;

    iget-object v3, p1, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->uid:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->sku:Ljava/lang/String;

    iget-object v3, p1, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->sku:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->domain:Ljava/lang/String;

    iget-object v3, p1, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->domain:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->status:Ljava/lang/String;

    iget-object v3, p1, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->status:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->state:Ljava/lang/String;

    iget-object v3, p1, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->state:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->payload:Ljava/lang/String;

    iget-object v3, p1, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->payload:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->created:Ljava/lang/String;

    iget-object v3, p1, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->created:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->buyer:Lcom/aptoide/sdk/billing/mappers/Buyer;

    iget-object v3, p1, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->buyer:Lcom/aptoide/sdk/billing/mappers/Buyer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->order:Lcom/aptoide/sdk/billing/mappers/Order;

    iget-object p1, p1, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->order:Lcom/aptoide/sdk/billing/mappers/Order;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getBuyer()Lcom/aptoide/sdk/billing/mappers/Buyer;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->buyer:Lcom/aptoide/sdk/billing/mappers/Buyer;

    return-object v0
.end method

.method public final getCreated()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->created:Ljava/lang/String;

    return-object v0
.end method

.method public final getDomain()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrder()Lcom/aptoide/sdk/billing/mappers/Order;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->order:Lcom/aptoide/sdk/billing/mappers/Order;

    return-object v0
.end method

.method public final getPayload()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->payload:Ljava/lang/String;

    return-object v0
.end method

.method public final getResponseCode()Ljava/lang/Integer;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->responseCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSku()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public final getState()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->state:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final getUid()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->responseCode:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->uid:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->sku:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->domain:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->type:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->status:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->state:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->payload:Ljava/lang/String;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->created:Ljava/lang/String;

    if-nez v2, :cond_8

    move v2, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->buyer:Lcom/aptoide/sdk/billing/mappers/Buyer;

    if-nez v2, :cond_9

    move v2, v1

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/mappers/Buyer;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->order:Lcom/aptoide/sdk/billing/mappers/Order;

    if-nez v2, :cond_a

    goto :goto_a

    :cond_a
    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/mappers/Order;->hashCode()I

    move-result v1

    :goto_a
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    iget-object v0, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->responseCode:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->uid:Ljava/lang/String;

    iget-object v2, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->sku:Ljava/lang/String;

    iget-object v3, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->domain:Ljava/lang/String;

    iget-object v4, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->type:Ljava/lang/String;

    iget-object v5, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->status:Ljava/lang/String;

    iget-object v6, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->state:Ljava/lang/String;

    iget-object v7, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->payload:Ljava/lang/String;

    iget-object v8, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->created:Ljava/lang/String;

    iget-object v9, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->buyer:Lcom/aptoide/sdk/billing/mappers/Buyer;

    iget-object v10, p0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->order:Lcom/aptoide/sdk/billing/mappers/Order;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "InappPurchaseResponse(responseCode="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", uid="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sku="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", created="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", buyer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", order="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
