.class public final Lcom/aptoide/sdk/billing/webpayment/WebPaymentManager;
.super Ljava/lang/Object;
.source "WebPaymentManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J1\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00032\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00032\u0008\u0010\r\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0002\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/webpayment/WebPaymentManager;",
        "",
        "packageName",
        "",
        "(Ljava/lang/String;)V",
        "getPackageName",
        "()Ljava/lang/String;",
        "webPaymentRepository",
        "Lcom/aptoide/sdk/billing/webpayment/WebPaymentRepository;",
        "getWebPaymentUrl",
        "",
        "sku",
        "developerPayload",
        "obfuscatedAccountId",
        "freeTrial",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V",
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
.field private final packageName:Ljava/lang/String;

.field private final webPaymentRepository:Lcom/aptoide/sdk/billing/webpayment/WebPaymentRepository;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentManager;->packageName:Ljava/lang/String;

    .line 13
    new-instance p1, Lcom/aptoide/sdk/billing/webpayment/WebPaymentRepository;

    new-instance v0, Lcom/aptoide/sdk/billing/service/BdsService;

    const-string v1, "https://payflowsdk.aptoide.com/api"

    const/16 v2, 0xbb8

    invoke-direct {v0, v1, v2}, Lcom/aptoide/sdk/billing/service/BdsService;-><init>(Ljava/lang/String;I)V

    invoke-direct {p1, v0}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentRepository;-><init>(Lcom/aptoide/sdk/billing/service/BdsService;)V

    iput-object p1, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentManager;->webPaymentRepository:Lcom/aptoide/sdk/billing/webpayment/WebPaymentRepository;

    return-void
.end method


# virtual methods
.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentManager;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getWebPaymentUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 10

    const-string/jumbo v0, "sku"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;

    sget-object v1, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;-><init>(Landroid/content/Context;)V

    .line 22
    sget-object v1, Lcom/aptoide/sdk/billing/usecases/GetOemIdForPackage;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/GetOemIdForPackage;

    iget-object v2, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentManager;->packageName:Ljava/lang/String;

    sget-object v3, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v3}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/aptoide/sdk/billing/usecases/GetOemIdForPackage;->invoke(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 23
    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->getWalletId()Ljava/lang/String;

    move-result-object v5

    .line 26
    iget-object v1, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentManager;->webPaymentRepository:Lcom/aptoide/sdk/billing/webpayment/WebPaymentRepository;

    .line 27
    iget-object v2, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentManager;->packageName:Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/billing/helpers/UserCountryUtils;->getUserCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    .line 26
    invoke-virtual/range {v1 .. v9}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentRepository;->getWebPaymentUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    .line 36
    sget-object v1, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v1, v0}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->setWebPaymentUrl(Ljava/lang/String;)V

    return-void
.end method
