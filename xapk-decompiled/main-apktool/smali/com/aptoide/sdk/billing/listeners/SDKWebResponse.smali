.class public final Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;
.super Ljava/lang/Object;
.source "SDKWebResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/billing/listeners/SDKWebResponse$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSDKWebResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SDKWebResponse.kt\ncom/aptoide/sdk/billing/listeners/SDKWebResponse\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,130:1\n1#2:131\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 %2\u00020\u0001:\u0001%B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B1\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\rJ\t\u0010\u0015\u001a\u00020\u0006H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J7\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u00c6\u0001J\u0010\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0012\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u000bH\u0002J\u0013\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010!\u001a\u00020\u0006H\u00d6\u0001J\u0012\u0010\"\u001a\u00020#2\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u000bJ\t\u0010$\u001a\u00020\u000bH\u00d6\u0001R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006&"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;",
        "",
        "jsonObject",
        "Lorg/json/JSONObject;",
        "(Lorg/json/JSONObject;)V",
        "responseCode",
        "",
        "(I)V",
        "purchaseData",
        "Lcom/aptoide/sdk/billing/listeners/PurchaseData;",
        "dataSignature",
        "",
        "orderReference",
        "(ILcom/aptoide/sdk/billing/listeners/PurchaseData;Ljava/lang/String;Ljava/lang/String;)V",
        "getDataSignature",
        "()Ljava/lang/String;",
        "getOrderReference",
        "getPurchaseData",
        "()Lcom/aptoide/sdk/billing/listeners/PurchaseData;",
        "getResponseCode",
        "()I",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "createActivityResultFromResponseCode",
        "createPaymentResponseBundle",
        "Landroid/content/Intent;",
        "skuType",
        "equals",
        "",
        "other",
        "hashCode",
        "toSDKPaymentResponse",
        "Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;",
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
.field private static final Companion:Lcom/aptoide/sdk/billing/listeners/SDKWebResponse$Companion;

.field public static final DATA_SIGNATURE:Ljava/lang/String; = "dataSignature"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ORDER_REFERENCE:Ljava/lang/String; = "orderReference"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PURCHASE_DATA:Ljava/lang/String; = "purchaseData"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESPONSE_CODE:Ljava/lang/String; = "responseCode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final dataSignature:Ljava/lang/String;

.field private final orderReference:Ljava/lang/String;

.field private final purchaseData:Lcom/aptoide/sdk/billing/listeners/PurchaseData;

.field private final responseCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->Companion:Lcom/aptoide/sdk/billing/listeners/SDKWebResponse$Companion;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;-><init>(ILcom/aptoide/sdk/billing/listeners/PurchaseData;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILcom/aptoide/sdk/billing/listeners/PurchaseData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->responseCode:I

    .line 17
    iput-object p2, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->purchaseData:Lcom/aptoide/sdk/billing/listeners/PurchaseData;

    .line 18
    iput-object p3, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->dataSignature:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->orderReference:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/aptoide/sdk/billing/listeners/PurchaseData;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    .line 15
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;-><init>(ILcom/aptoide/sdk/billing/listeners/PurchaseData;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 7

    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "responseCode"

    .line 22
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "purchaseData"

    .line 23
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 24
    move-object v5, v1

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-eqz v5, :cond_1

    goto :goto_1

    .line 27
    :cond_1
    new-instance v5, Lcom/aptoide/sdk/billing/listeners/PurchaseData;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/aptoide/sdk/billing/listeners/PurchaseData;-><init>(Lorg/json/JSONObject;)V

    goto :goto_2

    :cond_2
    :goto_1
    move-object v5, v4

    :goto_2
    const-string v1, "dataSignature"

    .line 30
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_3

    move v6, v2

    goto :goto_3

    :cond_3
    move v6, v3

    :goto_3
    if-eqz v6, :cond_4

    move-object v1, v4

    :cond_4
    check-cast v1, Ljava/lang/String;

    goto :goto_4

    :cond_5
    move-object v1, v4

    :goto_4
    const-string v6, "orderReference"

    .line 31
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_6

    goto :goto_5

    :cond_6
    move v2, v3

    :goto_5
    if-eqz v2, :cond_7

    goto :goto_6

    :cond_7
    move-object v4, p1

    :goto_6
    check-cast v4, Ljava/lang/String;

    .line 21
    :cond_8
    invoke-direct {p0, v0, v5, v1, v4}, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;-><init>(ILcom/aptoide/sdk/billing/listeners/PurchaseData;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;ILcom/aptoide/sdk/billing/listeners/PurchaseData;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->responseCode:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->purchaseData:Lcom/aptoide/sdk/billing/listeners/PurchaseData;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->dataSignature:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->orderReference:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->copy(ILcom/aptoide/sdk/billing/listeners/PurchaseData;Ljava/lang/String;Ljava/lang/String;)Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;

    move-result-object p0

    return-object p0
.end method

.method private final createActivityResultFromResponseCode(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x1

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x0

    goto :goto_0

    :pswitch_1
    const/4 p1, -0x1

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private final createPaymentResponseBundle(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5

    .line 44
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 45
    iget v1, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->responseCode:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Putting RESPONSE_CODE_EXTRA with -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->purchaseData:Lcom/aptoide/sdk/billing/listeners/PurchaseData;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->toJson()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Putting INAPP_PURCHASE_DATA with -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->dataSignature:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Putting INAPP_DATA_SIGNATURE with -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->purchaseData:Lcom/aptoide/sdk/billing/listeners/PurchaseData;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->getPurchaseToken()Ljava/lang/String;

    move-result-object v2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Putting INAPP_PURCHASE_ID with -> "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->orderReference:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Putting ORDER_REFERENCE_EXTRA with -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    const-string v1, "RESPONSE_CODE"

    .line 50
    iget v2, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->responseCode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    iget-object v1, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->purchaseData:Lcom/aptoide/sdk/billing/listeners/PurchaseData;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->toJson()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "INAPP_PURCHASE_DATA"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    :cond_2
    iget-object v1, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->dataSignature:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "INAPP_DATA_SIGNATURE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    :cond_3
    iget-object v1, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->purchaseData:Lcom/aptoide/sdk/billing/listeners/PurchaseData;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "INAPP_PURCHASE_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    :cond_4
    iget-object v1, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->orderReference:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v2, "order_reference"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    if-eqz p1, :cond_6

    const-string v1, "SKU_TYPE"

    .line 55
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    return-object v0
.end method

.method public static synthetic toSDKPaymentResponse$default(Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;Ljava/lang/String;ILjava/lang/Object;)Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 37
    :cond_0
    invoke-virtual {p0, p1}, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->toSDKPaymentResponse(Ljava/lang/String;)Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->responseCode:I

    return v0
.end method

.method public final component2()Lcom/aptoide/sdk/billing/listeners/PurchaseData;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->purchaseData:Lcom/aptoide/sdk/billing/listeners/PurchaseData;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->dataSignature:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->orderReference:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ILcom/aptoide/sdk/billing/listeners/PurchaseData;Ljava/lang/String;Ljava/lang/String;)Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;-><init>(ILcom/aptoide/sdk/billing/listeners/PurchaseData;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;

    iget v1, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->responseCode:I

    iget v3, p1, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->responseCode:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->purchaseData:Lcom/aptoide/sdk/billing/listeners/PurchaseData;

    iget-object v3, p1, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->purchaseData:Lcom/aptoide/sdk/billing/listeners/PurchaseData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->dataSignature:Ljava/lang/String;

    iget-object v3, p1, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->dataSignature:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->orderReference:Ljava/lang/String;

    iget-object p1, p1, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->orderReference:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getDataSignature()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->dataSignature:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrderReference()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->orderReference:Ljava/lang/String;

    return-object v0
.end method

.method public final getPurchaseData()Lcom/aptoide/sdk/billing/listeners/PurchaseData;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->purchaseData:Lcom/aptoide/sdk/billing/listeners/PurchaseData;

    return-object v0
.end method

.method public final getResponseCode()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->responseCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->responseCode:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->purchaseData:Lcom/aptoide/sdk/billing/listeners/PurchaseData;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->dataSignature:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->orderReference:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final toSDKPaymentResponse(Ljava/lang/String;)Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;
    .locals 2

    .line 38
    new-instance v0, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;

    .line 39
    iget v1, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->responseCode:I

    invoke-direct {p0, v1}, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->createActivityResultFromResponseCode(I)I

    move-result v1

    .line 40
    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->createPaymentResponseBundle(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 38
    invoke-direct {v0, v1, p1}, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;-><init>(ILandroid/content/Intent;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->responseCode:I

    iget-object v1, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->purchaseData:Lcom/aptoide/sdk/billing/listeners/PurchaseData;

    iget-object v2, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->dataSignature:Ljava/lang/String;

    iget-object v3, p0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->orderReference:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SDKWebResponse(responseCode="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", purchaseData="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataSignature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", orderReference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
