.class public final Lcom/aptoide/sdk/billing/WalletBinderUtil;
.super Ljava/lang/Object;
.source "WalletBinderUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/billing/WalletBinderUtil$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletBinderUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletBinderUtil.kt\ncom/aptoide/sdk/billing/WalletBinderUtil\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,213:1\n1855#2,2:214\n*S KotlinDebug\n*F\n+ 1 WalletBinderUtil.kt\ncom/aptoide/sdk/billing/WalletBinderUtil\n*L\n70#1:214,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J(\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J \u0010\u0013\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0007J(\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0018H\u0007J(\u0010\u0019\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0018H\u0002J\u0018\u0010\u001a\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002R*\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@BX\u0087\u000e\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0006\u0010\u0002\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/WalletBinderUtil;",
        "",
        "()V",
        "<set-?>",
        "Lcom/aptoide/sdk/billing/helpers/BindType;",
        "bindType",
        "getBindType$annotations",
        "getBindType",
        "()Lcom/aptoide/sdk/billing/helpers/BindType;",
        "billingServiceInstalledBehaviour",
        "",
        "context",
        "Landroid/content/Context;",
        "connection",
        "Landroid/content/ServiceConnection;",
        "serviceIntent",
        "Landroid/content/Intent;",
        "paymentFlowMethod",
        "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;",
        "bindBillingService",
        "finishBillingRepository",
        "",
        "initializeBillingRepository",
        "paymentFlowMethods",
        "",
        "processPaymentMethods",
        "walletBindingFailedBehaviour",
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
.field public static final INSTANCE:Lcom/aptoide/sdk/billing/WalletBinderUtil;

.field private static bindType:Lcom/aptoide/sdk/billing/helpers/BindType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/billing/WalletBinderUtil;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/WalletBinderUtil;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/billing/WalletBinderUtil;->INSTANCE:Lcom/aptoide/sdk/billing/WalletBinderUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final billingServiceInstalledBehaviour(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/content/Intent;Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;)Z
    .locals 1

    const/4 v0, 0x1

    .line 169
    invoke-virtual {p1, p3, p2, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    const-string p3, "binding"

    if-eqz p1, :cond_0

    const-string p1, "Binding to the wallet aidl."

    .line 170
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 171
    sget-object p1, Lcom/aptoide/sdk/billing/helpers/BindType;->AIDL:Lcom/aptoide/sdk/billing/helpers/BindType;

    sput-object p1, Lcom/aptoide/sdk/billing/WalletBinderUtil;->bindType:Lcom/aptoide/sdk/billing/helpers/BindType;

    .line 172
    sget-object p1, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {p1, p4}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->setCurrentPaymentFlowMethod(Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;)V

    .line 173
    sget-object p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object p1

    .line 174
    invoke-virtual {p4}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;->getName()Ljava/lang/String;

    move-result-object p2

    .line 173
    invoke-virtual {p1, p2, p3}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendServiceConnectedEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_0
    sget-object p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object p1

    .line 180
    invoke-virtual {p4}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;->getName()Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-virtual {p1, v0, p3}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendServiceConnectionFailureEvent(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Failed to Bind to Billing App."

    .line 183
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    .line 184
    instance-of p1, p4, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$Wallet;

    if-eqz p1, :cond_1

    .line 185
    invoke-direct {p0, p2, p4}, Lcom/aptoide/sdk/billing/WalletBinderUtil;->walletBindingFailedBehaviour(Landroid/content/ServiceConnection;Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final bindBillingService(Landroid/content/Context;Landroid/content/ServiceConnection;Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;)Z
    .locals 3

    .line 196
    invoke-virtual {p3}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to bind to a Billing App: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 198
    sget-object v0, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v0, p3}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getBillingIabActionNameFromPaymentFlowMethod(Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;)Ljava/lang/String;

    move-result-object v0

    .line 199
    sget-object v1, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v1, v0}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->isAppAvailableToBind(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    sget-object p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object p1

    .line 201
    invoke-virtual {p3}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "binding"

    .line 200
    invoke-virtual {p1, p2, p3}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendServiceConnectionFailureEvent(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 207
    :cond_0
    sget-object v1, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v1, p3}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getBillingPackageNameFromPaymentFlowMethod(Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;)Ljava/lang/String;

    move-result-object v1

    .line 208
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    invoke-direct {p0, p1, p2, v2, p3}, Lcom/aptoide/sdk/billing/WalletBinderUtil;->billingServiceInstalledBehaviour(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/content/Intent;Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;)Z

    move-result p1

    return p1
.end method

.method public static final finishBillingRepository(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    :try_start_0
    sget-object v0, Lcom/aptoide/sdk/billing/WalletBinderUtil;->bindType:Lcom/aptoide/sdk/billing/helpers/BindType;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/aptoide/sdk/billing/WalletBinderUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/helpers/BindType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 126
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/aptoide/sdk/billing/service/UnavailableBillingService;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {p1, v0}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_1

    .line 122
    :cond_2
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/aptoide/sdk/billing/UriCommunicationAptoideBilling;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    invoke-interface {p1, v0}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_1

    .line 117
    :cond_3
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    invoke-interface {p1, v0}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_1

    .line 114
    :cond_4
    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 130
    :goto_1
    sget-object p0, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->setCurrentPaymentFlowMethod(Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to finish Billing Repository: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public static final getBindType()Lcom/aptoide/sdk/billing/helpers/BindType;
    .locals 1

    .line 21
    sget-object v0, Lcom/aptoide/sdk/billing/WalletBinderUtil;->bindType:Lcom/aptoide/sdk/billing/helpers/BindType;

    return-object v0
.end method

.method public static synthetic getBindType$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final initializeBillingRepository(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ServiceConnection;",
            "Ljava/util/List<",
            "+",
            "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/aptoide/sdk/billing/WalletBinderUtil;->INSTANCE:Lcom/aptoide/sdk/billing/WalletBinderUtil;

    invoke-direct {v0, p0, p1, p2}, Lcom/aptoide/sdk/billing/WalletBinderUtil;->processPaymentMethods(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 35
    :cond_0
    move-object v1, p2

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Payment Flow methods from Payflow Service is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ". Processing local Payment Flows list."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 36
    invoke-static {p2}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 41
    sget-object p2, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getLocalPaymentFlowMethods()Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/aptoide/sdk/billing/WalletBinderUtil;->processPaymentMethods(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-void

    :cond_3
    const-string p0, "Creating WebAptoideBilling service as a fallback."

    .line 47
    invoke-static {p0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 48
    sget-object p0, Lcom/aptoide/sdk/billing/helpers/BindType;->BILLING_SERVICE_NOT_INSTALLED:Lcom/aptoide/sdk/billing/helpers/BindType;

    sput-object p0, Lcom/aptoide/sdk/billing/WalletBinderUtil;->bindType:Lcom/aptoide/sdk/billing/helpers/BindType;

    .line 49
    sget-object p0, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    .line 50
    new-instance p2, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;

    const-string/jumbo v1, "web_payment"

    const/4 v2, 0x1

    .line 53
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    .line 50
    invoke-direct/range {v0 .. v6}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;)V

    check-cast p2, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;

    .line 49
    invoke-virtual {p0, p2}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->setCurrentPaymentFlowMethod(Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;)V

    .line 59
    new-instance p0, Landroid/content/ComponentName;

    const-class p2, Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;

    const-string p2, "WebAptoideBilling"

    const-string v0, ""

    invoke-direct {p0, v0, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance p2, Lcom/aptoide/sdk/billing/helpers/IBinderWalletNotInstalled;

    invoke-direct {p2}, Lcom/aptoide/sdk/billing/helpers/IBinderWalletNotInstalled;-><init>()V

    check-cast p2, Landroid/os/IBinder;

    .line 58
    invoke-interface {p1, p0, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 62
    sget-object p0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {p0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object p0

    const-string p1, "install_wallet_dialog"

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendServiceConnectedEvent$default(Lcom/aptoide/sdk/core/analytics/SdkAnalytics;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private final processPaymentMethods(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ServiceConnection;",
            "Ljava/util/List<",
            "+",
            "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;",
            ">;)Z"
        }
    .end annotation

    if-eqz p3, :cond_5

    .line 70
    check-cast p3, Ljava/lang/Iterable;

    .line 214
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;

    .line 72
    instance-of v1, v0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$Wallet;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    .line 73
    :cond_1
    instance-of v1, v0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$GamesHub;

    :goto_0
    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_1

    .line 74
    :cond_2
    instance-of v1, v0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$AptoideGames;

    :goto_1
    if-eqz v1, :cond_3

    .line 76
    sget-object v1, Lcom/aptoide/sdk/billing/WalletBinderUtil;->INSTANCE:Lcom/aptoide/sdk/billing/WalletBinderUtil;

    invoke-direct {v1, p1, p2, v0}, Lcom/aptoide/sdk/billing/WalletBinderUtil;->bindBillingService(Landroid/content/Context;Landroid/content/ServiceConnection;Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 82
    :cond_3
    instance-of v1, v0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;

    const/4 v3, 0x2

    const-string v4, ""

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    const-string p1, "Creating WebAptoideBilling service."

    .line 83
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 84
    sget-object p1, Lcom/aptoide/sdk/billing/helpers/BindType;->BILLING_SERVICE_NOT_INSTALLED:Lcom/aptoide/sdk/billing/helpers/BindType;

    sput-object p1, Lcom/aptoide/sdk/billing/WalletBinderUtil;->bindType:Lcom/aptoide/sdk/billing/helpers/BindType;

    .line 85
    sget-object p1, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {p1, v0}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->setCurrentPaymentFlowMethod(Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;)V

    .line 87
    new-instance p1, Landroid/content/ComponentName;

    const-class p3, Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;

    const-string p3, "WebAptoideBilling"

    invoke-direct {p1, v4, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance p3, Lcom/aptoide/sdk/billing/helpers/IBinderWalletNotInstalled;

    invoke-direct {p3}, Lcom/aptoide/sdk/billing/helpers/IBinderWalletNotInstalled;-><init>()V

    check-cast p3, Landroid/os/IBinder;

    .line 86
    invoke-interface {p2, p1, p3}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 90
    sget-object p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object p1

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v5, v3, v5}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendServiceConnectedEvent$default(Lcom/aptoide/sdk/core/analytics/SdkAnalytics;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return v2

    .line 94
    :cond_4
    instance-of v1, v0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$UnavailableBilling;

    if-eqz v1, :cond_0

    const-string p1, "Creating UnavailableBillingService."

    .line 95
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 96
    sget-object p1, Lcom/aptoide/sdk/billing/helpers/BindType;->UNAVAILABLE_BILLING:Lcom/aptoide/sdk/billing/helpers/BindType;

    sput-object p1, Lcom/aptoide/sdk/billing/WalletBinderUtil;->bindType:Lcom/aptoide/sdk/billing/helpers/BindType;

    .line 97
    sget-object p1, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {p1, v0}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->setCurrentPaymentFlowMethod(Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;)V

    .line 99
    new-instance p1, Landroid/content/ComponentName;

    const-class p3, Lcom/aptoide/sdk/billing/service/UnavailableBillingService;

    const-string p3, "UnavailableBillingService"

    invoke-direct {p1, v4, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance p3, Lcom/aptoide/sdk/billing/helpers/IBinderWalletNotInstalled;

    invoke-direct {p3}, Lcom/aptoide/sdk/billing/helpers/IBinderWalletNotInstalled;-><init>()V

    check-cast p3, Landroid/os/IBinder;

    .line 98
    invoke-interface {p2, p1, p3}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 102
    sget-object p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object p1

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v5, v3, v5}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendServiceConnectedEvent$default(Lcom/aptoide/sdk/core/analytics/SdkAnalytics;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return v2

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method private final walletBindingFailedBehaviour(Landroid/content/ServiceConnection;Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;)Z
    .locals 4

    const-string v0, "Attempting URI Communication Protocol."

    .line 140
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    .line 141
    sget-object v0, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->isUriBillingSupported()Z

    move-result v0

    const-string/jumbo v1, "uri"

    if-eqz v0, :cond_0

    const-string v0, "Establishing URI Communication Protocol with Wallet."

    .line 142
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 143
    sget-object v0, Lcom/aptoide/sdk/billing/helpers/BindType;->URI_CONNECTION:Lcom/aptoide/sdk/billing/helpers/BindType;

    sput-object v0, Lcom/aptoide/sdk/billing/WalletBinderUtil;->bindType:Lcom/aptoide/sdk/billing/helpers/BindType;

    .line 144
    sget-object v0, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v0, p2}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->setCurrentPaymentFlowMethod(Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;)V

    .line 146
    new-instance v0, Landroid/content/ComponentName;

    const-class v2, Lcom/aptoide/sdk/billing/UriCommunicationAptoideBilling;

    const-string v2, "UriCommunicationAptoideBilling"

    const-string v3, ""

    invoke-direct {v0, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    new-instance v2, Lcom/aptoide/sdk/billing/helpers/IBinderWalletNotInstalled;

    invoke-direct {v2}, Lcom/aptoide/sdk/billing/helpers/IBinderWalletNotInstalled;-><init>()V

    check-cast v2, Landroid/os/IBinder;

    .line 145
    invoke-interface {p1, v0, v2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 149
    sget-object p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object p1

    .line 150
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;->getName()Ljava/lang/String;

    move-result-object p2

    .line 149
    invoke-virtual {p1, p2, v1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendServiceConnectedEvent(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "Failed to establish URI Communication Protocol with Wallet."

    .line 155
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 156
    sget-object p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object p1

    .line 157
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;->getName()Ljava/lang/String;

    move-result-object p2

    .line 156
    invoke-virtual {p1, p2, v1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendServiceConnectionFailureEvent(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
