.class public final Lcom/aptoide/sdk/billing/listeners/PurchaseData;
.super Ljava/lang/Object;
.source "SDKWebResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/billing/listeners/PurchaseData$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSDKWebResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SDKWebResponse.kt\ncom/aptoide/sdk/billing/listeners/PurchaseData\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,130:1\n1#2:131\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\"\u0008\u0086\u0008\u0018\u0000 12\u00020\u0001:\u00011B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004BY\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0013J\t\u0010!\u001a\u00020\u0006H\u00c6\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\t\u0010#\u001a\u00020\u0006H\u00c6\u0003J\t\u0010$\u001a\u00020\u0006H\u00c6\u0003J\t\u0010%\u001a\u00020\u0006H\u00c6\u0003J\t\u0010&\u001a\u00020\u000bH\u00c6\u0003J\t\u0010\'\u001a\u00020\u0006H\u00c6\u0003J\t\u0010(\u001a\u00020\u000eH\u00c6\u0003J\t\u0010)\u001a\u00020\u0010H\u00c6\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003Jq\u0010+\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\u00062\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00062\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001J\u0013\u0010,\u001a\u00020\u00102\u0008\u0010-\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010.\u001a\u00020\u000eH\u00d6\u0001J\u0006\u0010/\u001a\u00020\u0006J\t\u00100\u001a\u00020\u0006H\u00d6\u0001R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0016R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0015R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0015R\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0015R\u0011\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0015R\u0011\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0015R\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0011\u0010\u000c\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0015\u00a8\u00062"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/listeners/PurchaseData;",
        "",
        "jsonObject",
        "Lorg/json/JSONObject;",
        "(Lorg/json/JSONObject;)V",
        "orderId",
        "",
        "packageName",
        "productId",
        "productType",
        "purchaseTime",
        "",
        "purchaseToken",
        "purchaseState",
        "",
        "isAutoRenewing",
        "",
        "developerPayload",
        "obfuscatedExternalAccountId",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V",
        "getDeveloperPayload",
        "()Ljava/lang/String;",
        "()Z",
        "getObfuscatedExternalAccountId",
        "getOrderId",
        "getPackageName",
        "getProductId",
        "getProductType",
        "getPurchaseState",
        "()I",
        "getPurchaseTime",
        "()J",
        "getPurchaseToken",
        "component1",
        "component10",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toJson",
        "toString",
        "Companion",
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


# static fields
.field private static final Companion:Lcom/aptoide/sdk/billing/listeners/PurchaseData$Companion;

.field public static final DEVELOPER_PAYLOAD:Ljava/lang/String; = "developerPayload"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IS_AUTO_RENEWING:Ljava/lang/String; = "isAutoRenewing"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OBFUSCATED_EXTERNAL_ACCOUNT_ID:Ljava/lang/String; = "obfuscatedExternalAccountId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ORDER_ID:Ljava/lang/String; = "orderId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PACKAGE_NAME:Ljava/lang/String; = "packageName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRODUCT_ID:Ljava/lang/String; = "productId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRODUCT_TYPE:Ljava/lang/String; = "productType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PURCHASE_STATE:Ljava/lang/String; = "purchaseState"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PURCHASE_TIME:Ljava/lang/String; = "purchaseTime"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PURCHASE_TOKEN:Ljava/lang/String; = "purchaseToken"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final developerPayload:Ljava/lang/String;

.field private final isAutoRenewing:Z

.field private final obfuscatedExternalAccountId:Ljava/lang/String;

.field private final orderId:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final productId:Ljava/lang/String;

.field private final productType:Ljava/lang/String;

.field private final purchaseState:I

.field private final purchaseTime:J

.field private final purchaseToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/aptoide/sdk/billing/listeners/PurchaseData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aptoide/sdk/billing/listeners/PurchaseData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->Companion:Lcom/aptoide/sdk/billing/listeners/PurchaseData$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "orderId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchaseToken"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->orderId:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->packageName:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->productId:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->productType:Ljava/lang/String;

    .line 78
    iput-wide p5, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->purchaseTime:J

    .line 79
    iput-object p7, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->purchaseToken:Ljava/lang/String;

    .line 80
    iput p8, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->purchaseState:I

    .line 81
    iput-boolean p9, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->isAutoRenewing:Z

    .line 82
    iput-object p10, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->developerPayload:Ljava/lang/String;

    .line 83
    iput-object p11, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->obfuscatedExternalAccountId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 14

    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orderId"

    .line 105
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "optString(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "packageName"

    .line 106
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "productId"

    .line 107
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "productType"

    .line 108
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, v1

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lez v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    const/4 v8, 0x0

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v8

    :goto_1
    if-nez v1, :cond_2

    const-string v1, "INAPP"

    :cond_2
    move-object v5, v1

    const-string v1, "purchaseTime"

    .line 109
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    const-string v1, "purchaseToken"

    .line 110
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchaseState"

    .line 111
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "isAutoRenewing"

    .line 112
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v12

    const-string v1, "developerPayload"

    .line 113
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v13, v1

    check-cast v13, Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-lez v13, :cond_3

    move v13, v6

    goto :goto_2

    :cond_3
    move v13, v7

    :goto_2
    if-eqz v13, :cond_4

    move-object v13, v1

    goto :goto_3

    :cond_4
    move-object v13, v8

    :goto_3
    const-string v1, "obfuscatedExternalAccountId"

    .line 114
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_5

    goto :goto_4

    :cond_5
    move v6, v7

    :goto_4
    if-eqz v6, :cond_6

    goto :goto_5

    :cond_6
    move-object p1, v8

    :goto_5
    move-object v1, p0

    move-wide v6, v9

    move-object v8, v11

    move v9, v0

    move v10, v12

    move-object v11, v13

    move-object v12, p1

    .line 104
    invoke-direct/range {v1 .. v12}, Lcom/aptoide/sdk/billing/listeners/PurchaseData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/aptoide/sdk/billing/listeners/PurchaseData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/aptoide/sdk/billing/listeners/PurchaseData;
    .locals 12

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->orderId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->productId:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->productType:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-wide v6, v0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->purchaseTime:J

    goto :goto_4

    :cond_4
    move-wide/from16 v6, p5

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->purchaseToken:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget v9, v0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->purchaseState:I

    goto :goto_6

    :cond_6
    move/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-boolean v10, v0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->isAutoRenewing:Z

    goto :goto_7

    :cond_7
    move/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->developerPayload:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->obfuscatedExternalAccountId:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v1, p11

    :goto_9
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object/from16 p4, v5

    move-wide/from16 p5, v6

    move-object/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IZLjava/lang/String;Ljava/lang/String;)Lcom/aptoide/sdk/billing/listeners/PurchaseData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->obfuscatedExternalAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->productType:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->purchaseTime:J

    return-wide v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->purchaseToken:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->purchaseState:I

    return v0
.end method

.method public final component8()Z
    .locals 1

    iget-boolean v0, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->isAutoRenewing:Z

    return v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->developerPayload:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IZLjava/lang/String;Ljava/lang/String;)Lcom/aptoide/sdk/billing/listeners/PurchaseData;
    .locals 13

    const-string v0, "orderId"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productId"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productType"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchaseToken"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;

    move-object v1, v0

    move-wide/from16 v6, p5

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lcom/aptoide/sdk/billing/listeners/PurchaseData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/aptoide/sdk/billing/listeners/PurchaseData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/aptoide/sdk/billing/listeners/PurchaseData;

    iget-object v1, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->orderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->orderId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->productId:Ljava/lang/String;

    iget-object v3, p1, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->productId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->productType:Ljava/lang/String;

    iget-object v3, p1, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->productType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->purchaseTime:J

    iget-wide v5, p1, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->purchaseTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->purchaseToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->purchaseToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->purchaseState:I

    iget v3, p1, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->purchaseState:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->isAutoRenewing:Z

    iget-boolean v3, p1, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->isAutoRenewing:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->developerPayload:Ljava/lang/String;

    iget-object v3, p1, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->developerPayload:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->obfuscatedExternalAccountId:Ljava/lang/String;

    iget-object p1, p1, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->obfuscatedExternalAccountId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getDeveloperPayload()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->developerPayload:Ljava/lang/String;

    return-object v0
.end method

.method public final getObfuscatedExternalAccountId()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->obfuscatedExternalAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrderId()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getProductId()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public final getProductType()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->productType:Ljava/lang/String;

    return-object v0
.end method

.method public final getPurchaseState()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->purchaseState:I

    return v0
.end method

.method public final getPurchaseTime()J
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->purchaseTime:J

    return-wide v0
.end method

.method public final getPurchaseToken()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->purchaseToken:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->orderId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->productId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->productType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->purchaseTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->purchaseToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->purchaseState:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->isAutoRenewing:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->developerPayload:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->obfuscatedExternalAccountId:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final isAutoRenewing()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->isAutoRenewing:Z

    return v0
.end method

.method public final toJson()Ljava/lang/String;
    .locals 5

    .line 86
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "orderId"

    .line 87
    iget-object v2, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->orderId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "packageName"

    .line 88
    iget-object v2, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "productId"

    .line 89
    iget-object v2, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "purchaseTime"

    .line 90
    iget-wide v2, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->purchaseTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "purchaseToken"

    .line 91
    iget-object v2, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->purchaseToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "purchaseState"

    .line 92
    iget v2, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->purchaseState:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    iget-object v1, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->productType:Ljava/lang/String;

    const-string/jumbo v2, "subs"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "isAutoRenewing"

    .line 94
    iget-boolean v2, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->isAutoRenewing:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->developerPayload:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    :goto_1
    if-nez v1, :cond_3

    const-string v1, "developerPayload"

    .line 97
    iget-object v4, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->developerPayload:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    :cond_3
    iget-object v1, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->obfuscatedExternalAccountId:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    move v3, v2

    :cond_5
    :goto_2
    if-nez v3, :cond_6

    const-string v1, "obfuscatedExternalAccountId"

    .line 100
    iget-object v2, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->obfuscatedExternalAccountId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    :cond_6
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    iget-object v0, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->orderId:Ljava/lang/String;

    iget-object v1, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->productId:Ljava/lang/String;

    iget-object v3, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->productType:Ljava/lang/String;

    iget-wide v4, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->purchaseTime:J

    iget-object v6, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->purchaseToken:Ljava/lang/String;

    iget v7, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->purchaseState:I

    iget-boolean v8, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->isAutoRenewing:Z

    iget-object v9, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->developerPayload:Ljava/lang/String;

    iget-object v10, p0, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->obfuscatedExternalAccountId:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "PurchaseData(orderId="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", packageName="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", purchaseTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", purchaseToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", purchaseState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAutoRenewing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", developerPayload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", obfuscatedExternalAccountId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
