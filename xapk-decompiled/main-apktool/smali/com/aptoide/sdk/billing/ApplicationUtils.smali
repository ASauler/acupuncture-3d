.class public final Lcom/aptoide/sdk/billing/ApplicationUtils;
.super Ljava/lang/Object;
.source "ApplicationUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nApplicationUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApplicationUtils.kt\ncom/aptoide/sdk/billing/ApplicationUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,276:1\n1#2:277\n731#3,9:278\n731#3,9:289\n37#4,2:287\n37#4,2:298\n*S KotlinDebug\n*F\n+ 1 ApplicationUtils.kt\ncom/aptoide/sdk/billing/ApplicationUtils\n*L\n245#1:278,9\n257#1:289,9\n245#1:287,2\n257#1:298,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0007H\u0002J \u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007H\u0002J\u0010\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0004H\u0002J\"\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J(\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0018\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J(\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J \u0010\u001c\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0008\u001a\u00020\u000eH\u0002J\u0018\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J<\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u000e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u00072\u0008\u0010 \u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J0\u0010!\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0019H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/ApplicationUtils;",
        "",
        "()V",
        "minimumErrorLevel",
        "",
        "startingErrorCode",
        "getObjectFromJson",
        "",
        "data",
        "Lorg/json/JSONObject;",
        "objectId",
        "defaultValue",
        "getResponseCodeFromIntent",
        "intent",
        "Landroid/content/Intent;",
        "getResponseDesc",
        "code",
        "handleActivityResult",
        "",
        "resultCode",
        "purchaseFinishedListener",
        "Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;",
        "handleCanceledResult",
        "responseCode",
        "sdkAnalytics",
        "Lcom/aptoide/sdk/core/analytics/SdkAnalytics;",
        "handleDataNull",
        "handleFailureBillingResult",
        "handlePurchaseDataNull",
        "handleSignatureVerificationFailed",
        "handleSuccessfulResult",
        "purchaseData",
        "dataSignature",
        "handleUnknownFailureResult",
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
.field public static final INSTANCE:Lcom/aptoide/sdk/billing/ApplicationUtils;

.field private static final minimumErrorLevel:I = -0x3e8

.field private static final startingErrorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/billing/ApplicationUtils;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/ApplicationUtils;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/billing/ApplicationUtils;->INSTANCE:Lcom/aptoide/sdk/billing/ApplicationUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getObjectFromJson(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 234
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object p2, p1

    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private final getObjectFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 237
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object p2, p1

    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    move-object p3, p1

    :goto_2
    return-object p3
.end method

.method private final getResponseCodeFromIntent(Landroid/content/Intent;)I
    .locals 2

    const-string v0, "RESPONSE_CODE"

    const/4 v1, 0x6

    .line 231
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private final getResponseDesc(I)Ljava/lang/String;
    .locals 6

    const-string v0, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    .line 241
    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "/"

    .line 245
    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v0

    .line 278
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_2

    .line 279
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 280
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 281
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 245
    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    if-nez v5, :cond_0

    .line 282
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 286
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_1
    check-cast v0, Ljava/util/Collection;

    new-array v1, v3, [Ljava/lang/String;

    .line 288
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 245
    check-cast v0, [Ljava/lang/String;

    const-string v1, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    .line 247
    check-cast v1, Ljava/lang/CharSequence;

    new-instance v5, Lkotlin/text/Regex;

    .line 257
    invoke-direct {v5, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v3}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v1

    .line 289
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 290
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 291
    :cond_3
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 292
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 257
    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v3

    :goto_2
    if-nez v5, :cond_3

    .line 293
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/util/ListIterator;->nextIndex()I

    move-result v2

    add-int/2addr v2, v4

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    goto :goto_3

    .line 297
    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_3
    check-cast v1, Ljava/util/Collection;

    new-array v2, v3, [Ljava/lang/String;

    .line 299
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 257
    check-cast v1, [Ljava/lang/String;

    const/16 v2, -0x3e8

    if-gt p1, v2, :cond_7

    rsub-int v0, p1, -0x3e8

    .line 261
    array-length v2, v1

    if-ge v0, v2, :cond_6

    .line 262
    aget-object p1, v1, v0

    goto :goto_5

    .line 264
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ":Unknown IAB Helper Error"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_7
    if-ltz p1, :cond_9

    .line 266
    array-length v1, v0

    if-lt p1, v1, :cond_8

    goto :goto_4

    .line 269
    :cond_8
    aget-object p1, v0, p1

    goto :goto_5

    .line 267
    :cond_9
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ":Unknown"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_5
    return-object p1
.end method

.method public static final handleActivityResult(ILandroid/content/Intent;Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;)V
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "purchaseFinishedListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v0

    if-nez p1, :cond_0

    .line 28
    sget-object p0, Lcom/aptoide/sdk/billing/ApplicationUtils;->INSTANCE:Lcom/aptoide/sdk/billing/ApplicationUtils;

    invoke-direct {p0, p2, v0}, Lcom/aptoide/sdk/billing/ApplicationUtils;->handleDataNull(Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;Lcom/aptoide/sdk/core/analytics/SdkAnalytics;)V

    return-void

    .line 32
    :cond_0
    sget-object v1, Lcom/aptoide/sdk/billing/ApplicationUtils;->INSTANCE:Lcom/aptoide/sdk/billing/ApplicationUtils;

    invoke-direct {v1, p1}, Lcom/aptoide/sdk/billing/ApplicationUtils;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v3

    const-string v2, "INAPP_PURCHASE_DATA"

    .line 33
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "INAPP_DATA_SIGNATURE"

    .line 34
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v2, -0x1

    if-ne p0, v2, :cond_1

    if-nez v3, :cond_1

    move v2, v3

    move-object v3, p1

    move-object v6, p2

    move-object v7, v0

    .line 37
    invoke-direct/range {v1 .. v7}, Lcom/aptoide/sdk/billing/ApplicationUtils;->handleSuccessfulResult(ILandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;Lcom/aptoide/sdk/core/analytics/SdkAnalytics;)V

    goto :goto_0

    :cond_1
    if-ne p0, v2, :cond_2

    .line 47
    invoke-direct {v1, v3, p1, p2, v0}, Lcom/aptoide/sdk/billing/ApplicationUtils;->handleFailureBillingResult(ILandroid/content/Intent;Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;Lcom/aptoide/sdk/core/analytics/SdkAnalytics;)V

    goto :goto_0

    :cond_2
    if-nez p0, :cond_3

    .line 49
    invoke-direct {v1, v3, p1, p2, v0}, Lcom/aptoide/sdk/billing/ApplicationUtils;->handleCanceledResult(ILandroid/content/Intent;Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;Lcom/aptoide/sdk/core/analytics/SdkAnalytics;)V

    goto :goto_0

    :cond_3
    move v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, v0

    .line 51
    invoke-direct/range {v1 .. v6}, Lcom/aptoide/sdk/billing/ApplicationUtils;->handleUnknownFailureResult(IILandroid/content/Intent;Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;Lcom/aptoide/sdk/core/analytics/SdkAnalytics;)V

    :goto_0
    return-void
.end method

.method private final handleCanceledResult(ILandroid/content/Intent;Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;Lcom/aptoide/sdk/core/analytics/SdkAnalytics;)V
    .locals 7

    .line 199
    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/ApplicationUtils;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Purchase canceled - Response: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 200
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Bundle: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p4

    .line 201
    invoke-static/range {v0 .. v6}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendPurchaseResultEvent$default(Lcom/aptoide/sdk/core/analytics/SdkAnalytics;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 203
    sget-object p1, Lcom/aptoide/sdk/billing/BillingResult;->Companion:Lcom/aptoide/sdk/billing/BillingResult$Companion;

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/BillingResult$Companion;->newBuilder()Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->setResponseCode(I)Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->build()Lcom/aptoide/sdk/billing/BillingResult;

    move-result-object p1

    .line 204
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 202
    invoke-interface {p3, p1, p2}, Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/aptoide/sdk/billing/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method private final handleDataNull(Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;Lcom/aptoide/sdk/core/analytics/SdkAnalytics;)V
    .locals 8

    const-string v0, "Null data in IAB activity result."

    .line 124
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "Null data in IAB activity result."

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v1, p2

    .line 125
    invoke-static/range {v1 .. v7}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendPurchaseResultEvent$default(Lcom/aptoide/sdk/core/analytics/SdkAnalytics;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 130
    sget-object p2, Lcom/aptoide/sdk/billing/BillingResult;->Companion:Lcom/aptoide/sdk/billing/BillingResult$Companion;

    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/BillingResult$Companion;->newBuilder()Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object p2

    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->setResponseCode(I)Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->build()Lcom/aptoide/sdk/billing/BillingResult;

    move-result-object p2

    .line 131
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 129
    invoke-interface {p1, p2, v0}, Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/aptoide/sdk/billing/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method private final handleFailureBillingResult(ILandroid/content/Intent;Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;Lcom/aptoide/sdk/core/analytics/SdkAnalytics;)V
    .locals 7

    .line 180
    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/ApplicationUtils;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Result code was OK but in-app billing response was not OK: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bundle: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "Result code was OK but in-app billing response was not OK."

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, p4

    move v1, p1

    .line 183
    invoke-static/range {v0 .. v6}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendPurchaseResultEvent$default(Lcom/aptoide/sdk/core/analytics/SdkAnalytics;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 188
    sget-object p2, Lcom/aptoide/sdk/billing/BillingResult;->Companion:Lcom/aptoide/sdk/billing/BillingResult$Companion;

    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/BillingResult$Companion;->newBuilder()Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->setResponseCode(I)Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->build()Lcom/aptoide/sdk/billing/BillingResult;

    move-result-object p1

    .line 189
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 187
    invoke-interface {p3, p1, p2}, Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/aptoide/sdk/billing/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method private final handlePurchaseDataNull(Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;Lcom/aptoide/sdk/core/analytics/SdkAnalytics;Landroid/content/Intent;)V
    .locals 7

    const-string v0, "BUG: either purchaseData or dataSignature is null."

    .line 140
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Extras: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "Either purchaseData or dataSignature is null."

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, p2

    .line 142
    invoke-static/range {v0 .. v6}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendPurchaseResultEvent$default(Lcom/aptoide/sdk/core/analytics/SdkAnalytics;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 147
    sget-object p2, Lcom/aptoide/sdk/billing/BillingResult;->Companion:Lcom/aptoide/sdk/billing/BillingResult$Companion;

    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/BillingResult$Companion;->newBuilder()Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object p2

    const/4 p3, 0x6

    invoke-virtual {p2, p3}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->setResponseCode(I)Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->build()Lcom/aptoide/sdk/billing/BillingResult;

    move-result-object p2

    .line 148
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 146
    invoke-interface {p1, p2, p3}, Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/aptoide/sdk/billing/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method private final handleSignatureVerificationFailed(Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;Lcom/aptoide/sdk/core/analytics/SdkAnalytics;)V
    .locals 8

    const-string v0, "Signature verification failed."

    .line 156
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "Signature verification failed."

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v1, p2

    .line 157
    invoke-static/range {v1 .. v7}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendPurchaseResultEvent$default(Lcom/aptoide/sdk/core/analytics/SdkAnalytics;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 162
    sget-object p2, Lcom/aptoide/sdk/billing/BillingResult;->Companion:Lcom/aptoide/sdk/billing/BillingResult$Companion;

    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/BillingResult$Companion;->newBuilder()Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object p2

    const/4 v0, 0x5

    .line 163
    invoke-virtual {p2, v0}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->setResponseCode(I)Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object p2

    const/4 v0, 0x0

    .line 165
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/billing/helpers/BillingResultHelper;->getMessageFromErrorType(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-virtual {p2, v0}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object p2

    .line 167
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->build()Lcom/aptoide/sdk/billing/BillingResult;

    move-result-object p2

    .line 168
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 161
    invoke-interface {p1, p2, v0}, Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/aptoide/sdk/billing/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method private final handleSuccessfulResult(ILandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;Lcom/aptoide/sdk/core/analytics/SdkAnalytics;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v13, p4

    move-object/from16 v15, p5

    move-object/from16 v14, p6

    const-string v2, "0"

    const-string v3, ""

    const-string v4, "Successful ResultCode from Purchase."

    .line 63
    invoke-static {v4}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Purchase data: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Data signature: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Extras: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    if-nez v13, :cond_0

    move-object/from16 v0, p2

    move-object v2, v14

    goto/16 :goto_2

    .line 73
    :cond_0
    sget-object v4, Lcom/aptoide/sdk/core/security/PurchasesSecurityHelper;->INSTANCE:Lcom/aptoide/sdk/core/security/PurchasesSecurityHelper;

    const/4 v5, 0x0

    invoke-static {v13, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/aptoide/sdk/core/security/PurchasesSecurityHelper;->verifyPurchase(Ljava/lang/String;[B)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 75
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "obfuscatedExternalAccountId"

    .line 77
    invoke-direct {v1, v4, v5}, Lcom/aptoide/sdk/billing/ApplicationUtils;->getObjectFromJson(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    new-instance v6, Lcom/aptoide/sdk/billing/AccountIdentifiers;

    invoke-direct {v6, v5}, Lcom/aptoide/sdk/billing/AccountIdentifiers;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 79
    :goto_0
    new-instance v12, Lcom/aptoide/sdk/billing/Purchase;

    const-string v6, "developerPayload"

    .line 81
    invoke-direct {v1, v4, v6}, Lcom/aptoide/sdk/billing/ApplicationUtils;->getObjectFromJson(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "orderId"

    .line 82
    invoke-direct {v1, v4, v7, v3}, Lcom/aptoide/sdk/billing/ApplicationUtils;->getObjectFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "packageName"

    .line 84
    invoke-direct {v1, v4, v8, v3}, Lcom/aptoide/sdk/billing/ApplicationUtils;->getObjectFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "productId"

    .line 85
    invoke-direct {v1, v4, v9, v3}, Lcom/aptoide/sdk/billing/ApplicationUtils;->getObjectFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const-string v10, "purchaseState"

    .line 86
    invoke-direct {v1, v4, v10, v2}, Lcom/aptoide/sdk/billing/ApplicationUtils;->getObjectFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "decode(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    const-string v11, "purchaseTime"

    .line 87
    invoke-direct {v1, v4, v11, v2}, Lcom/aptoide/sdk/billing/ApplicationUtils;->getObjectFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    const-string v2, "purchaseToken"

    .line 88
    invoke-direct {v1, v4, v2, v3}, Lcom/aptoide/sdk/billing/ApplicationUtils;->getObjectFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v2, "isAutoRenewing"

    const-string v3, "false"

    .line 90
    invoke-direct {v1, v4, v2, v3}, Lcom/aptoide/sdk/billing/ApplicationUtils;->getObjectFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v19

    move-object v2, v12

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object/from16 v6, p3

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move-wide/from16 v10, v16

    move-object v0, v12

    move-object/from16 v12, v18

    move-object/from16 v13, p4

    move/from16 v14, v19

    .line 79
    invoke-direct/range {v2 .. v14}, Lcom/aptoide/sdk/billing/Purchase;-><init>(Lcom/aptoide/sdk/billing/AccountIdentifiers;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJLjava/lang/String;Ljava/lang/String;Z)V

    .line 93
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v2

    check-cast v9, Ljava/util/List;

    .line 94
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v2, Lcom/aptoide/sdk/billing/usecases/mmp/SendSuccessfulPurchaseResponseEvent;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/mmp/SendSuccessfulPurchaseResponseEvent;

    invoke-virtual {v2, v0}, Lcom/aptoide/sdk/billing/usecases/mmp/SendSuccessfulPurchaseResponseEvent;->invoke(Lcom/aptoide/sdk/billing/Purchase;)V

    .line 98
    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v4

    .line 99
    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/Purchase;->getProducts()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object/from16 v2, p6

    move/from16 v3, p1

    .line 96
    invoke-static/range {v2 .. v8}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendPurchaseResultEvent$default(Lcom/aptoide/sdk/core/analytics/SdkAnalytics;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 102
    sget-object v0, Lcom/aptoide/sdk/billing/BillingResult;->Companion:Lcom/aptoide/sdk/billing/BillingResult$Companion;

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/BillingResult$Companion;->newBuilder()Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object v0

    move/from16 v2, p1

    invoke-virtual {v0, v2}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->setResponseCode(I)Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->build()Lcom/aptoide/sdk/billing/BillingResult;

    move-result-object v0

    .line 101
    invoke-interface {v15, v0, v9}, Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/aptoide/sdk/billing/BillingResult;Ljava/util/List;)V

    const-string v0, "Purchase result successfully sent."

    .line 105
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse purchase data: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "Purchase failed with parsing error."

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object/from16 v2, p6

    .line 108
    invoke-static/range {v2 .. v8}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendPurchaseResultEvent$default(Lcom/aptoide/sdk/core/analytics/SdkAnalytics;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 114
    sget-object v0, Lcom/aptoide/sdk/billing/BillingResult;->Companion:Lcom/aptoide/sdk/billing/BillingResult$Companion;

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/BillingResult$Companion;->newBuilder()Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->setResponseCode(I)Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->build()Lcom/aptoide/sdk/billing/BillingResult;

    move-result-object v0

    .line 115
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 113
    invoke-interface {v15, v0, v2}, Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/aptoide/sdk/billing/BillingResult;Ljava/util/List;)V

    goto :goto_1

    :cond_2
    move-object v2, v14

    .line 119
    invoke-direct {v1, v15, v2}, Lcom/aptoide/sdk/billing/ApplicationUtils;->handleSignatureVerificationFailed(Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;Lcom/aptoide/sdk/core/analytics/SdkAnalytics;)V

    :goto_1
    return-void

    :cond_3
    move-object v2, v14

    move-object/from16 v0, p2

    .line 69
    :goto_2
    invoke-direct {v1, v15, v2, v0}, Lcom/aptoide/sdk/billing/ApplicationUtils;->handlePurchaseDataNull(Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;Lcom/aptoide/sdk/core/analytics/SdkAnalytics;Landroid/content/Intent;)V

    return-void
.end method

.method private final handleUnknownFailureResult(IILandroid/content/Intent;Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;Lcom/aptoide/sdk/core/analytics/SdkAnalytics;)V
    .locals 10

    .line 217
    invoke-direct {p0, p2}, Lcom/aptoide/sdk/billing/ApplicationUtils;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Purchase failed. Result code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". Response: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bundle: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 222
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v3, p5

    move v4, p2

    .line 220
    invoke-static/range {v3 .. v9}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendPurchaseResultEvent$default(Lcom/aptoide/sdk/core/analytics/SdkAnalytics;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 225
    sget-object p1, Lcom/aptoide/sdk/billing/BillingResult;->Companion:Lcom/aptoide/sdk/billing/BillingResult$Companion;

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/BillingResult$Companion;->newBuilder()Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object p1

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->setResponseCode(I)Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->build()Lcom/aptoide/sdk/billing/BillingResult;

    move-result-object p1

    .line 226
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 224
    invoke-interface {p4, p1, p2}, Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/aptoide/sdk/billing/BillingResult;Ljava/util/List;)V

    return-void
.end method
