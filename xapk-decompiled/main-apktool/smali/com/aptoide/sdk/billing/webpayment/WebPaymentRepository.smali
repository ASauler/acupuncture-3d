.class public final Lcom/aptoide/sdk/billing/webpayment/WebPaymentRepository;
.super Ljava/lang/Object;
.source "WebPaymentRepository.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebPaymentRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebPaymentRepository.kt\ncom/aptoide/sdk/billing/webpayment/WebPaymentRepository\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,84:1\n1#2:85\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004JY\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00062\u0008\u0010\r\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0002\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/webpayment/WebPaymentRepository;",
        "",
        "bdsService",
        "Lcom/aptoide/sdk/billing/service/BdsService;",
        "(Lcom/aptoide/sdk/billing/service/BdsService;)V",
        "getWebPaymentUrl",
        "",
        "packageName",
        "locale",
        "oemId",
        "walletId",
        "sku",
        "developerPayload",
        "obfuscatedAccountId",
        "freeTrial",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;",
        "waitForCountDown",
        "",
        "countDownLatch",
        "Ljava/util/concurrent/CountDownLatch;",
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
.field private final bdsService:Lcom/aptoide/sdk/billing/service/BdsService;


# direct methods
.method public static synthetic $r8$lambda$LSrsmR-d7vkC652vFxYqAZW8fN4(Ljava/util/concurrent/CountDownLatch;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/aptoide/sdk/billing/service/RequestResponse;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentRepository;->getWebPaymentUrl$lambda$8(Ljava/util/concurrent/CountDownLatch;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/aptoide/sdk/billing/service/RequestResponse;)V

    return-void
.end method

.method public constructor <init>(Lcom/aptoide/sdk/billing/service/BdsService;)V
    .locals 1

    const-string v0, "bdsService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentRepository;->bdsService:Lcom/aptoide/sdk/billing/service/BdsService;

    return-void
.end method

.method private static final getWebPaymentUrl$lambda$8(Ljava/util/concurrent/CountDownLatch;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/aptoide/sdk/billing/service/RequestResponse;)V
    .locals 1

    const-string v0, "$countDownLatch"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$webPaymentUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentResponseMapper;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentResponseMapper;-><init>()V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentResponseMapper;->map(Lcom/aptoide/sdk/billing/service/RequestResponse;)Lcom/aptoide/sdk/billing/webpayment/WebPaymentResponse;

    move-result-object p2

    .line 54
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentResponse;->getResponseCode()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 55
    invoke-static {v0}, Lcom/aptoide/sdk/billing/utils/ServiceUtils;->isSuccess(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentResponse;->getWebPaymentUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 59
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private final waitForCountDown(Ljava/util/concurrent/CountDownLatch;)V
    .locals 3

    .line 78
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v1, v2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Timeout for WebPaymentUrl request: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final getWebPaymentUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    const-string v8, "packageName"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v8, "sku"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v9, Ljava/util/concurrent/CountDownLatch;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 28
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 31
    sget-object v11, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;->Companion:Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$Companion;

    .line 32
    sget-object v12, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v12}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getPaymentFlowMethods()Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v12

    .line 31
    invoke-virtual {v11, v12}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$Companion;->getPaymentFlowFromPayflowMethod(Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    .line 35
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v12, Ljava/util/Map;

    const-string v13, "package"

    .line 36
    invoke-interface {v12, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "sdk_vercode"

    const-string v13, "1001"

    .line 37
    invoke-interface {v12, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_0

    const-string v1, "locale"

    .line 38
    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v3, :cond_1

    const-string v1, "oemid"

    .line 39
    invoke-interface {v12, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v4, :cond_2

    const-string v1, "guest_id"

    .line 40
    invoke-interface {v12, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_2
    invoke-interface {v12, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_3

    const-string v1, "metadata"

    .line 42
    invoke-interface {v12, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v7, :cond_4

    const-string v1, "obfuscated_account_id"

    .line 43
    invoke-interface {v12, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz p8, :cond_5

    .line 44
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "free_trial"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz v11, :cond_6

    const-string v1, "payment_flow"

    .line 45
    invoke-interface {v12, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getLanguage(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "lang_code"

    invoke-interface {v12, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v1, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;->Companion:Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$Companion;

    sget-object v2, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getPaymentFlowMethods()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$Companion;->getPaymentUrlVersionFromPayflowMethod(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 51
    new-instance v2, Lcom/aptoide/sdk/billing/webpayment/WebPaymentRepository$$ExternalSyntheticLambda0;

    invoke-direct {v2, v9, v10}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentRepository$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CountDownLatch;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 61
    iget-object v13, v0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentRepository;->bdsService:Lcom/aptoide/sdk/billing/service/BdsService;

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/payment_url"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "GET"

    .line 64
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v16

    .line 66
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v18

    .line 67
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v19

    .line 69
    sget-object v21, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->WEB_PAYMENT_URL:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    move-object/from16 v17, v12

    move-object/from16 v20, v2

    .line 61
    invoke-virtual/range {v13 .. v21}, Lcom/aptoide/sdk/billing/service/BdsService;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/aptoide/sdk/billing/service/ServiceResponseListener;Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;)V

    .line 72
    invoke-direct {v0, v9}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentRepository;->waitForCountDown(Ljava/util/concurrent/CountDownLatch;)V

    .line 73
    iget-object v1, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method
