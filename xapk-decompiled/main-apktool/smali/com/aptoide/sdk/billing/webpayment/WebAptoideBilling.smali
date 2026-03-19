.class public final Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;
.super Ljava/lang/Object;
.source "WebAptoideBilling.kt"

# interfaces
.implements Lcom/appcoins/billing/AppcoinsBilling;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebAptoideBilling.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebAptoideBilling.kt\ncom/aptoide/sdk/billing/webpayment/WebAptoideBilling\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,264:1\n1#2:265\n1549#3:266\n1620#3,3:267\n*S KotlinDebug\n*F\n+ 1 WebAptoideBilling.kt\ncom/aptoide/sdk/billing/webpayment/WebAptoideBilling\n*L\n232#1:266\n232#1:267,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\u0018\u0000 ,2\u00020\u00012\u00020\u0002:\u0001,B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\n\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\u0008\u0010\n\u001a\u00020\u000bH\u0002J \u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\u00050\rj\u0008\u0012\u0004\u0012\u00020\u0005`\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J \u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0005H\u0002J \u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0005H\u0016JF\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u00052\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u00052\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0005H\u0016J(\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u000bH\u0016J \u0010!\u001a\u00020\"2\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u000b2\u0006\u0010#\u001a\u00020\u000bH\u0002J\u001a\u0010$\u001a\u00020%2\u0006\u0010\u0019\u001a\u00020\u00052\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0005H\u0002J \u0010&\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0005H\u0016J\u0018\u0010\'\u001a\u00020%2\u0006\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0012H\u0002J.\u0010(\u001a\u0012\u0012\u0004\u0012\u00020)0\rj\u0008\u0012\u0004\u0012\u00020)`\u000e2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00050*2\u0006\u0010\u0013\u001a\u00020\u0005H\u0002J2\u0010+\u001a\u00020\"2\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u00052\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0005H\u0002R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006-"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;",
        "Lcom/appcoins/billing/AppcoinsBilling;",
        "Ljava/io/Serializable;",
        "()V",
        "walletId",
        "",
        "getWalletId",
        "()Ljava/lang/String;",
        "asBinder",
        "Landroid/os/IBinder;",
        "buildEmptyBundle",
        "Landroid/os/Bundle;",
        "buildResponse",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "skuDetailsResultV2",
        "Lcom/aptoide/sdk/billing/SkuDetailsResultV2;",
        "consumeGuestPurchase",
        "",
        "packageName",
        "purchaseToken",
        "consumePurchase",
        "apiVersion",
        "getBuyIntent",
        "sku",
        "type",
        "developerPayload",
        "oemid",
        "guestWalletId",
        "getPurchases",
        "continuationToken",
        "getSkuDetails",
        "skusBundle",
        "getSkuDetailsFromService",
        "",
        "responseWs",
        "hasRequiredFields",
        "",
        "isBillingSupported",
        "isTypeSupported",
        "requestSkuDetails",
        "Lcom/aptoide/sdk/billing/SkuDetailsV2;",
        "",
        "setBuyItemPropertiesForPayflow",
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
.field public static final Companion:Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling$Companion;

.field private static final MAX_SKUS_SEND_WS:I = 0x31

.field private static final SUPPORTED_API_VERSION:I = 0x3

.field private static buyItemProperties:Lcom/aptoide/sdk/billing/BuyItemProperties;

.field private static webAptoideBillingInstance:Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;


# direct methods
.method public static synthetic $r8$lambda$vd-ZnvSj-K1HJ4M9vELhpTy7ogE(Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;->getSkuDetails$lambda$0(Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;->Companion:Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sput-object p0, Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;->webAptoideBillingInstance:Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;-><init>()V

    return-void
.end method

.method public static final synthetic access$getWebAptoideBillingInstance$cp()Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;
    .locals 1

    .line 32
    sget-object v0, Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;->webAptoideBillingInstance:Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;

    return-object v0
.end method

.method public static final synthetic access$setWebAptoideBillingInstance$cp(Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;)V
    .locals 0

    .line 32
    sput-object p0, Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;->webAptoideBillingInstance:Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;

    return-void
.end method

.method private final buildEmptyBundle()Landroid/os/Bundle;
    .locals 3

    .line 190
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 191
    sget-object v1, Lcom/aptoide/sdk/billing/ResponseCode;->OK:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result v1

    const-string v2, "RESPONSE_CODE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 194
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private final buildResponse(Lcom/aptoide/sdk/billing/SkuDetailsResultV2;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aptoide/sdk/billing/SkuDetailsResultV2;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 232
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/SkuDetailsResultV2;->getSkuDetailsList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 267
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 268
    check-cast v1, Lcom/aptoide/sdk/billing/SkuDetailsV2;

    .line 232
    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/SkuDetailsV2;->toSkuDetailsResponseString()Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 269
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 266
    check-cast v0, Ljava/util/Collection;

    .line 231
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method private final consumeGuestPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 187
    sget-object v0, Lcom/aptoide/sdk/billing/managers/ProductV2Manager;->INSTANCE:Lcom/aptoide/sdk/billing/managers/ProductV2Manager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/aptoide/sdk/billing/managers/ProductV2Manager;->consumePurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private static final getSkuDetails$lambda$0(Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$skusBundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$responseWs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$latch"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;->getSkuDetailsFromService(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private final getSkuDetailsFromService(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "ITEM_ID_LIST"

    .line 203
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 204
    check-cast p2, Ljava/util/List;

    invoke-direct {p0, p2, p1}, Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;->requestSkuDetails(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 205
    :goto_0
    new-instance p2, Lcom/aptoide/sdk/billing/SkuDetailsResultV2;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/aptoide/sdk/billing/SkuDetailsResultV2;-><init>(Ljava/util/List;I)V

    const-string p1, "RESPONSE_CODE"

    .line 206
    invoke-virtual {p3, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    invoke-direct {p0, p2}, Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;->buildResponse(Lcom/aptoide/sdk/billing/SkuDetailsResultV2;)Ljava/util/ArrayList;

    move-result-object p1

    const-string p2, "DETAILS_LIST"

    .line 208
    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method private final getWalletId()Ljava/lang/String;
    .locals 2

    .line 240
    new-instance v0, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;

    sget-object v1, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;-><init>(Landroid/content/Context;)V

    .line 241
    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->getWalletId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final hasRequiredFields(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "inapp"

    const/4 v1, 0x1

    .line 236
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    return v1
.end method

.method private final isTypeSupported(Ljava/lang/String;I)Z
    .locals 2

    const-string v0, "inapp"

    const/4 v1, 0x1

    .line 245
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final requestSkuDetails(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/aptoide/sdk/billing/SkuDetailsV2;",
            ">;"
        }
    .end annotation

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 215
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v3, v2, :cond_3

    :goto_0
    add-int/lit8 v4, v3, -0x1

    .line 216
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    rem-int/lit8 v4, v3, 0x31

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 218
    :cond_0
    sget-object v4, Lcom/aptoide/sdk/billing/managers/ProductV2Manager;->INSTANCE:Lcom/aptoide/sdk/billing/managers/ProductV2Manager;

    .line 221
    sget-object v5, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;->Companion:Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$Companion;

    sget-object v6, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v6}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getPaymentFlowMethods()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$Companion;->getPaymentFlowFromPayflowMethod(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 218
    invoke-virtual {v4, p2, v1, v5}, Lcom/aptoide/sdk/billing/managers/ProductV2Manager;->getSkuDetails(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/aptoide/sdk/billing/mappers/SkuDetailsResponse;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 223
    invoke-virtual {v4}, Lcom/aptoide/sdk/billing/mappers/SkuDetailsResponse;->getItems()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    :goto_1
    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 224
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_2
    if-eq v3, v2, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private final setBuyItemPropertiesForPayflow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Saving Buy Item Properties: packageName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " apiVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sku: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " developerPayload: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    .line 131
    new-instance v6, Lcom/aptoide/sdk/billing/DeveloperPayload;

    .line 133
    invoke-static {p5}, Lcom/aptoide/sdk/billing/helpers/PayloadHelper;->getPayload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {p5}, Lcom/aptoide/sdk/billing/helpers/PayloadHelper;->getObfuscatedAccountId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-static {p5}, Lcom/aptoide/sdk/billing/helpers/PayloadHelper;->getFreeTrial(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 131
    invoke-direct {v6, p5, v0, v1, v2}, Lcom/aptoide/sdk/billing/DeveloperPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 139
    new-instance p5, Lcom/aptoide/sdk/billing/BuyItemProperties;

    move-object v1, p5

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/aptoide/sdk/billing/BuyItemProperties;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/DeveloperPayload;)V

    .line 138
    sput-object p5, Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;->buyItemProperties:Lcom/aptoide/sdk/billing/BuyItemProperties;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public consumePurchase(ILjava/lang/String;Ljava/lang/String;)I
    .locals 2

    const-string v0, "packageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchaseToken"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Consuming Purchase."

    .line 169
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Purchase Token: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    .line 172
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;->getWalletId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 175
    invoke-direct {p0, v0, p2, p3}, Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;->consumeGuestPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 177
    :cond_0
    sget-object p1, Lcom/aptoide/sdk/billing/ResponseCode;->ERROR:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result p1

    .line 179
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Result of Consume: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    return p1
.end method

.method public getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    const-string p6, "packageName"

    invoke-static {p2, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p6, "sku"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p6, "type"

    invoke-static {p4, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "Getting Buy Intent."

    .line 83
    invoke-static {p6}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 84
    sget-object p6, Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;->buyItemProperties:Lcom/aptoide/sdk/billing/BuyItemProperties;

    new-instance p7, Ljava/lang/StringBuilder;

    const-string v0, "BuyItemProperties = ["

    invoke-direct {p7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p6

    const-string p7, "]"

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    .line 86
    invoke-direct {p0, p4, p3}, Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;->hasRequiredFields(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_2

    sget-object p6, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {p6}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getPaymentFlowMethods()Ljava/util/List;

    move-result-object p6

    check-cast p6, Ljava/util/Collection;

    invoke-interface {p6}, Ljava/util/Collection;->isEmpty()Z

    move-result p6

    xor-int/lit8 p6, p6, 0x1

    if-eqz p6, :cond_2

    .line 87
    sget-object p6, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {p6}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getPaymentFlowMethods()Ljava/util/List;

    move-result-object p6

    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p6

    const/4 p7, 0x0

    :cond_0
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;

    .line 88
    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Payment Method "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 89
    instance-of v1, v0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;

    if-eqz v1, :cond_1

    const-string p7, "Billing App is NOT installed. Starting WebPayment."

    .line 90
    invoke-static {p7}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 91
    new-instance p7, Lcom/aptoide/sdk/billing/webpayment/WebPaymentManager;

    invoke-direct {p7, p2}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentManager;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-static {p5}, Lcom/aptoide/sdk/billing/helpers/PayloadHelper;->getPayload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {p5}, Lcom/aptoide/sdk/billing/helpers/PayloadHelper;->getObfuscatedAccountId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-static {p5}, Lcom/aptoide/sdk/billing/helpers/PayloadHelper;->getFreeTrial(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    .line 92
    invoke-virtual {p7, p3, v1, v2, v3}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentManager;->getWebPaymentUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 98
    sget-object p7, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    check-cast v0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;->getWebViewDetails()Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;

    move-result-object v0

    invoke-virtual {p7, p3, p4, v0}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->startWebFirstPayment(Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;)Landroid/os/Bundle;

    move-result-object p7

    :cond_1
    if-eqz p7, :cond_0

    return-object p7

    .line 106
    :cond_2
    sget-object p6, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {p6}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object p6

    invoke-virtual {p6, p4}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendLaunchPurchaseTypeNotSupportedFailureEvent(Ljava/lang/String;)V

    const-string p6, "Failed to find available Payflow Method. Using fallback of install Wallet."

    .line 109
    invoke-static {p6}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p2

    move v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 110
    invoke-direct/range {v0 .. v5}, Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;->setBuyItemPropertiesForPayflow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    sget-object p1, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    sget-object p2, Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;->buyItemProperties:Lcom/aptoide/sdk/billing/BuyItemProperties;

    invoke-virtual {p1, p2}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->startInstallFlow(Lcom/aptoide/sdk/billing/BuyItemProperties;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9

    const-string p1, "packageName"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "type"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "Getting Purchases of type: "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 155
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;->buildEmptyBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 156
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;->getWalletId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p4, "INAPP"

    const/4 v0, 0x1

    .line 157
    invoke-static {p3, p4, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 158
    sget-object p4, Lcom/aptoide/sdk/billing/managers/ProductV2Manager;->INSTANCE:Lcom/aptoide/sdk/billing/managers/ProductV2Manager;

    invoke-virtual {p4, p2, p1, p3}, Lcom/aptoide/sdk/billing/managers/ProductV2Manager;->getPurchasesSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aptoide/sdk/billing/mappers/PurchasesResponse;

    move-result-object v2

    .line 160
    new-instance v0, Lcom/aptoide/sdk/billing/mappers/PurchasesBundleMapper;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/mappers/PurchasesBundleMapper;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3c

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/aptoide/sdk/billing/mappers/PurchasesBundleMapper;->mapGuestPurchases$default(Lcom/aptoide/sdk/billing/mappers/PurchasesBundleMapper;Landroid/os/Bundle;Lcom/aptoide/sdk/billing/mappers/PurchasesResponse;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    .line 162
    :cond_0
    sget-object p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendQueryPurchasesTypeNotSupportedErrorEvent(Ljava/lang/String;)V

    const-string p1, "Purchases type not available in WebPayments."

    .line 163
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method public getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8

    const-string p1, "packageName"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "type"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "skusBundle"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "Getting SKU Details."

    .line 54
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 55
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 56
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 57
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    new-instance v6, Ljava/lang/Thread;

    .line 61
    new-instance v7, Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling$$ExternalSyntheticLambda0;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling$$ExternalSyntheticLambda0;-><init>(Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/concurrent/CountDownLatch;)V

    .line 58
    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 61
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 63
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 65
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Failed to get SkuDetails: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    .line 66
    sget-object p1, Lcom/aptoide/sdk/billing/ResponseCode;->SERVICE_UNAVAILABLE:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result p1

    const-string p2, "RESPONSE_CODE"

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-direct {p0, p2, p4, p3}, Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;->getSkuDetailsFromService(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    :goto_0
    return-object p3
.end method

.method public isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1

    const-string v0, "packageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p2, "type"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object p2, Lcom/aptoide/sdk/billing/ResponseCode;->SERVICE_UNAVAILABLE:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result p2

    .line 42
    invoke-direct {p0, p3, p1}, Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;->isTypeSupported(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 43
    sget-object p1, Lcom/aptoide/sdk/billing/ResponseCode;->OK:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result p2

    :cond_0
    return p2
.end method
