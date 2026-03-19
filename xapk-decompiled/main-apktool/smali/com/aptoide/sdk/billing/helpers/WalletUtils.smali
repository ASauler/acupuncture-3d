.class public final Lcom/aptoide/sdk/billing/helpers/WalletUtils;
.super Ljava/lang/Object;
.source "WalletUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletUtils.kt\ncom/aptoide/sdk/billing/helpers/WalletUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,243:1\n1855#2,2:244\n*S KotlinDebug\n*F\n+ 1 WalletUtils.kt\ncom/aptoide/sdk/billing/helpers/WalletUtils\n*L\n147#1:244,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010!\u001a\u00020\u00182\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020#H\u0002J\u0010\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020#H\u0002J\u0018\u0010(\u001a\u00020&2\u0006\u0010)\u001a\u00020*2\u0006\u0010\'\u001a\u00020#H\u0002J\u0010\u0010+\u001a\u0004\u0018\u00010\u00182\u0006\u0010,\u001a\u00020\nJ\u0010\u0010-\u001a\u0004\u0018\u00010\u00182\u0006\u0010,\u001a\u00020\nJ\u0008\u0010.\u001a\u00020/H\u0002J\u0008\u00100\u001a\u00020\u0018H\u0002J\u0010\u00101\u001a\u0002022\u0008\u00103\u001a\u0004\u0018\u00010\u0018J\u0008\u00104\u001a\u000202H\u0002J\u0006\u00105\u001a\u000202J\u0008\u00106\u001a\u000207H\u0002J\u0010\u00108\u001a\u0002072\u0008\u00109\u001a\u0004\u0018\u00010\u0018J\u0010\u0010:\u001a\u00020&2\u0008\u0010;\u001a\u0004\u0018\u00010<J\u0010\u0010=\u001a\u00020&2\u0008\u0010>\u001a\u0004\u0018\u00010\u0018J\u0016\u0010?\u001a\u00020&2\u0006\u0010@\u001a\u00020&2\u0006\u0010A\u001a\u00020\u0018J \u0010B\u001a\u00020&2\u0006\u0010C\u001a\u00020\u00182\u0006\u0010A\u001a\u00020\u00182\u0008\u0010D\u001a\u0004\u0018\u00010ER\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0017\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R \u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0012\"\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u0017\u001a\u00020\u00188FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001a\"\u0004\u0008\u001f\u0010 \u00a8\u0006F"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/helpers/WalletUtils;",
        "",
        "()V",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "currentPaymentFlowMethod",
        "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;",
        "getCurrentPaymentFlowMethod",
        "()Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;",
        "setCurrentPaymentFlowMethod",
        "(Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;)V",
        "localPaymentFlowMethods",
        "",
        "getLocalPaymentFlowMethods",
        "()Ljava/util/List;",
        "paymentFlowMethods",
        "getPaymentFlowMethods",
        "setPaymentFlowMethods",
        "(Ljava/util/List;)V",
        "userAgent",
        "",
        "getUserAgent",
        "()Ljava/lang/String;",
        "userAgent$delegate",
        "Lkotlin/Lazy;",
        "webPaymentUrl",
        "getWebPaymentUrl",
        "setWebPaymentUrl",
        "(Ljava/lang/String;)V",
        "buildUserAgent",
        "widthPixels",
        "",
        "heightPixels",
        "createBundleWithResponseCode",
        "Landroid/os/Bundle;",
        "responseCode",
        "createIntentBundle",
        "intent",
        "Landroid/content/Intent;",
        "getBillingIabActionNameFromPaymentFlowMethod",
        "paymentFlowMethod",
        "getBillingPackageNameFromPaymentFlowMethod",
        "getDisplayMetrics",
        "Landroid/util/DisplayMetrics;",
        "getWalletIdForUserSession",
        "isAppAvailableToBind",
        "",
        "action",
        "isMainThread",
        "isUriBillingSupported",
        "launchAnalytics",
        "",
        "startAnalytics",
        "packageName",
        "startInstallFlow",
        "buyItemProperties",
        "Lcom/aptoide/sdk/billing/BuyItemProperties;",
        "startServiceUnavailableDialog",
        "message",
        "startWalletPayment",
        "bundle",
        "skuType",
        "startWebFirstPayment",
        "sku",
        "webViewDetails",
        "Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;",
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
.field public static final INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

.field public static context:Landroid/content/Context;

.field private static currentPaymentFlowMethod:Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;

.field private static final localPaymentFlowMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;",
            ">;"
        }
    .end annotation
.end field

.field private static paymentFlowMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;",
            ">;"
        }
    .end annotation
.end field

.field private static final userAgent$delegate:Lkotlin/Lazy;

.field private static webPaymentUrl:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$INfVl_g7ttVmjQb5K_BNBtXglTY(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-static {p0}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->isMainThread$lambda$1(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    .line 47
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->paymentFlowMethods:Ljava/util/List;

    const/4 v0, 0x3

    new-array v1, v0, [Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;

    .line 51
    new-instance v2, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$Wallet;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Integer;

    sget-object v5, Lcom/aptoide/sdk/billing/AptoideBillingClient$FeatureType;->SUBSCRIPTIONS:Ljava/lang/Integer;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const-string/jumbo v5, "wallet"

    invoke-direct {v2, v5, v3, v4}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$Wallet;-><init>(Ljava/lang/String;ILjava/util/List;)V

    aput-object v2, v1, v6

    .line 52
    new-instance v2, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$GamesHub;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    const-string v5, "games_hub_checkout"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v4}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$GamesHub;-><init>(Ljava/lang/String;ILjava/util/List;)V

    aput-object v2, v1, v3

    .line 53
    new-instance v2, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$AptoideGames;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    const-string v4, "aptoide_games"

    invoke-direct {v2, v4, v0, v3}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$AptoideGames;-><init>(Ljava/lang/String;ILjava/util/List;)V

    aput-object v2, v1, v6

    .line 50
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->localPaymentFlowMethods:Ljava/util/List;

    .line 58
    sget-object v0, Lcom/aptoide/sdk/billing/helpers/WalletUtils$userAgent$2;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils$userAgent$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->userAgent$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$buildUserAgent(Lcom/aptoide/sdk/billing/helpers/WalletUtils;II)Ljava/lang/String;
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->buildUserAgent(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDisplayMetrics(Lcom/aptoide/sdk/billing/helpers/WalletUtils;)Landroid/util/DisplayMetrics;
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    return-object p0
.end method

.method private final buildUserAgent(II)Ljava/lang/String;
    .locals 9

    .line 230
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "RELEASE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lkotlin/text/Regex;

    const-string v2, ";"

    .line 231
    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    .line 230
    invoke-virtual {v1, v0, v3}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "MODEL"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    new-instance v5, Lkotlin/text/Regex;

    invoke-direct {v5, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4, v3}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 235
    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v4, "PRODUCT"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, ";"

    const-string v5, " "

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "os.arch"

    .line 239
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 240
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "AptoideBillingSDK/1.1.0 (Linux; Android "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "; "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Build/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; 1001; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final createBundleWithResponseCode(I)Landroid/os/Bundle;
    .locals 2

    .line 224
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "RESPONSE_CODE"

    .line 225
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private final createIntentBundle(Landroid/content/Intent;I)Landroid/os/Bundle;
    .locals 2

    .line 218
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "BUY_INTENT"

    .line 219
    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "RESPONSE_CODE"

    .line 220
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private final getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 2

    .line 210
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    .line 211
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 212
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 213
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    return-object v1
.end method

.method private final getWalletIdForUserSession()Ljava/lang/String;
    .locals 2

    .line 205
    new-instance v0, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;

    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->getWalletId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private final isMainThread()Z
    .locals 4

    .line 191
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 192
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/aptoide/sdk/billing/helpers/WalletUtils$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/aptoide/sdk/billing/helpers/WalletUtils$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 195
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Timeout verifying MainThread: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logWarning(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static final isMainThread$lambda$1(Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    const-string v0, "$latch"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private final launchAnalytics()V
    .locals 4

    .line 178
    :try_start_0
    sget-object v0, Lcom/aptoide/sdk/core/analytics/indicative/IndicativeEventLogger;->INSTANCE:Lcom/aptoide/sdk/core/analytics/indicative/IndicativeEventLogger;

    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/aptoide/sdk/billing/managers/ApiKeysManager;->INSTANCE:Lcom/aptoide/sdk/billing/managers/ApiKeysManager;

    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/managers/ApiKeysManager;->getIndicativeApiKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/aptoide/sdk/core/analytics/indicative/IndicativeEventLogger;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to Launch Indicative."

    .line 180
    invoke-static {v1, v0}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 184
    :goto_0
    :try_start_1
    sget-object v0, Lcom/aptoide/sdk/core/analytics/matomo/MatomoEventLogger;->INSTANCE:Lcom/aptoide/sdk/core/analytics/matomo/MatomoEventLogger;

    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/aptoide/sdk/billing/managers/ApiKeysManager;->INSTANCE:Lcom/aptoide/sdk/billing/managers/ApiKeysManager;

    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/managers/ApiKeysManager;->getMatomoApiKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/aptoide/sdk/billing/managers/ApiKeysManager;->INSTANCE:Lcom/aptoide/sdk/billing/managers/ApiKeysManager;

    invoke-virtual {v3}, Lcom/aptoide/sdk/billing/managers/ApiKeysManager;->getMatomoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/aptoide/sdk/core/analytics/matomo/MatomoEventLogger;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "Failed to Launch Matomo."

    .line 186
    invoke-static {v1, v0}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final getBillingIabActionNameFromPaymentFlowMethod(Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;)Ljava/lang/String;
    .locals 1

    const-string v0, "paymentFlowMethod"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    instance-of v0, p1, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$Wallet;

    if-eqz v0, :cond_0

    const-string p1, "com.appcoins.wallet.iab.action.BIND"

    goto :goto_0

    .line 134
    :cond_0
    instance-of v0, p1, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$GamesHub;

    if-eqz v0, :cond_1

    const-string p1, "com.dti.folderlauncher.iab.action.BIND"

    goto :goto_0

    .line 135
    :cond_1
    instance-of p1, p1, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$AptoideGames;

    if-eqz p1, :cond_2

    const-string p1, "com.aptoide.android.aptoidegames.iab.action.BIND"

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final getBillingPackageNameFromPaymentFlowMethod(Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;)Ljava/lang/String;
    .locals 1

    const-string v0, "paymentFlowMethod"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    instance-of v0, p1, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$Wallet;

    if-eqz v0, :cond_0

    const-string p1, "com.appcoins.wallet"

    goto :goto_0

    .line 126
    :cond_0
    instance-of v0, p1, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$GamesHub;

    if-eqz v0, :cond_1

    const-string p1, "com.dti.folderlauncher"

    goto :goto_0

    .line 127
    :cond_1
    instance-of p1, p1, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$AptoideGames;

    if-eqz p1, :cond_2

    const-string p1, "com.aptoide.android.aptoidegames"

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 56
    sget-object v0, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "context"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCurrentPaymentFlowMethod()Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;
    .locals 1

    .line 48
    sget-object v0, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->currentPaymentFlowMethod:Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;

    return-object v0
.end method

.method public final getLocalPaymentFlowMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;",
            ">;"
        }
    .end annotation

    .line 49
    sget-object v0, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->localPaymentFlowMethods:Ljava/util/List;

    return-object v0
.end method

.method public final getPaymentFlowMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;",
            ">;"
        }
    .end annotation

    .line 47
    sget-object v0, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->paymentFlowMethods:Ljava/util/List;

    return-object v0
.end method

.method public final getUserAgent()Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->userAgent$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getWebPaymentUrl()Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->webPaymentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final isAppAvailableToBind(Ljava/lang/String;)Z
    .locals 4

    .line 140
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 141
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 146
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Resolve Information list contains "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " packages for action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 147
    move-object p1, v0

    check-cast p1, Ljava/lang/Iterable;

    .line 244
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Found following packages to bind: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    goto :goto_1

    .line 150
    :cond_1
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final isUriBillingSupported()Z
    .locals 5

    .line 159
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "appcoins://billing/communication/requester/1"

    const/16 v2, 0x7530

    const-string v3, "com.appcoins.wallet"

    const-string v4, "appcoins://billing/communication/processor/1"

    .line 158
    invoke-static {v0, v3, v4, v1, v2}, Lcom/aptoide/communication/requester/MessageRequesterFactory;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/aptoide/communication/SyncIpcMessageRequester;

    move-result-object v0

    .line 166
    new-instance v1, Lcom/aptoide/sdk/billing/UriCommunicationAptoideBilling;

    invoke-direct {v1, v0}, Lcom/aptoide/sdk/billing/UriCommunicationAptoideBilling;-><init>(Lcom/aptoide/communication/SyncIpcMessageRequester;)V

    const/4 v0, 0x0

    .line 168
    :try_start_0
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "inapp"

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v2, v3}, Lcom/aptoide/sdk/billing/UriCommunicationAptoideBilling;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 169
    sget-object v2, Lcom/aptoide/sdk/billing/ResponseCode;->OK:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Failed to verify if URI Communication Protocol is available."

    .line 171
    invoke-static {v2, v1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return v0
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sput-object p1, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->context:Landroid/content/Context;

    return-void
.end method

.method public final setCurrentPaymentFlowMethod(Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;)V
    .locals 0

    .line 48
    sput-object p1, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->currentPaymentFlowMethod:Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;

    return-void
.end method

.method public final setPaymentFlowMethods(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sput-object p1, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->paymentFlowMethods:Ljava/util/List;

    return-void
.end method

.method public final setWebPaymentUrl(Ljava/lang/String;)V
    .locals 0

    .line 55
    sput-object p1, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->webPaymentUrl:Ljava/lang/String;

    return-void
.end method

.method public final startAnalytics(Ljava/lang/String;)V
    .locals 4

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting Analytics for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 108
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->isAnalyticsEventLoggerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->launchAnalytics()V

    .line 110
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->setAnalyticsEventLoggerInitialized(Z)V

    .line 111
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getWalletIdForUserSession()Ljava/lang/String;

    move-result-object v0

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameters for analytics: walletId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " versionCode: 1001"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {v1}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    .line 118
    sget-object v1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    const/16 v2, 0x3e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/aptoide/sdk/core/device/DeviceInformationHelperKt;->getDeviceInfo()Lcom/aptoide/sdk/core/device/DeviceInformation;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->setupProperties(Ljava/lang/String;Ljava/lang/Integer;Lcom/aptoide/sdk/core/device/DeviceInformation;Ljava/lang/String;)V

    .line 119
    sget-object p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendStartConnectionEvent()V

    :cond_0
    return-void
.end method

.method public final startInstallFlow(Lcom/aptoide/sdk/billing/BuyItemProperties;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "Creating InstallWallet bundle."

    .line 92
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->newIntent(Landroid/content/Context;Lcom/aptoide/sdk/billing/BuyItemProperties;)Landroid/content/Intent;

    move-result-object p1

    .line 94
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Lcom/aptoide/sdk/billing/ResponseCode;->OK:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->createIntentBundle(Landroid/content/Intent;I)Landroid/os/Bundle;

    move-result-object p1

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InstallWallet intentBundle:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    return-object p1
.end method

.method public final startServiceUnavailableDialog(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "Creating BillingUnavailableDialog bundle."

    .line 100
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 101
    sget-object v0, Lcom/aptoide/sdk/billing/activities/UnavailableBillingDialogActivity;->Companion:Lcom/aptoide/sdk/billing/activities/UnavailableBillingDialogActivity$Companion;

    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/aptoide/sdk/billing/activities/UnavailableBillingDialogActivity$Companion;->newIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 102
    sget-object v0, Lcom/aptoide/sdk/billing/ResponseCode;->OK:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->createIntentBundle(Landroid/content/Intent;I)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public final startWalletPayment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "skuType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Creating Wallet bundle."

    .line 84
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/aptoide/sdk/billing/activities/BillingFlowActivity;->Companion:Lcom/aptoide/sdk/billing/activities/BillingFlowActivity$Companion;

    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/aptoide/sdk/billing/activities/BillingFlowActivity$Companion;->newIntent(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "RESPONSE_CODE"

    .line 86
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->createIntentBundle(Landroid/content/Intent;I)Landroid/os/Bundle;

    move-result-object p1

    .line 87
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "WalletPayment intentBundle:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    return-object p1
.end method

.method public final startWebFirstPayment(Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;)Landroid/os/Bundle;
    .locals 6

    const-string/jumbo v0, "sku"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "skuType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Creating WebPayment bundle."

    .line 66
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "WebPayment is not available in MainThread."

    .line 68
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    .line 69
    sget-object p1, Lcom/aptoide/sdk/billing/ResponseCode;->BILLING_UNAVAILABLE:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->createBundleWithResponseCode(I)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 71
    :cond_0
    sget-object v0, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->webPaymentUrl:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string p1, "Failure obtaining WebPayment URL."

    .line 72
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    .line 73
    sget-object p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendWebPaymentFailureToObtainUrlEvent()V

    .line 74
    sget-object p1, Lcom/aptoide/sdk/billing/ResponseCode;->ERROR:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->createBundleWithResponseCode(I)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 77
    :cond_1
    sget-object v0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->Companion:Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity$Companion;

    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->webPaymentUrl:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity$Companion;->newIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;)Landroid/content/Intent;

    move-result-object p1

    .line 78
    sget-object p2, Lcom/aptoide/sdk/billing/ResponseCode;->OK:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->createIntentBundle(Landroid/content/Intent;I)Landroid/os/Bundle;

    move-result-object p1

    .line 79
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "WebPayment intentBundle:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    return-object p1
.end method
