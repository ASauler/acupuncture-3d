.class public final Lcom/aptoide/sdk/billing/managers/ApiKeysManager;
.super Ljava/lang/Object;
.source "ApiKeysManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\nJ\u0006\u0010\u000c\u001a\u00020\nR\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/managers/ApiKeysManager;",
        "",
        "()V",
        "privateKeysNativeHelper",
        "Lcom/aptoide/sdk/billing/helpers/PrivateKeysNativeHelper;",
        "getPrivateKeysNativeHelper",
        "()Lcom/aptoide/sdk/billing/helpers/PrivateKeysNativeHelper;",
        "privateKeysNativeHelper$delegate",
        "Lkotlin/Lazy;",
        "getIndicativeApiKey",
        "",
        "getMatomoApiKey",
        "getMatomoUrl",
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
.field public static final INSTANCE:Lcom/aptoide/sdk/billing/managers/ApiKeysManager;

.field private static final privateKeysNativeHelper$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/billing/managers/ApiKeysManager;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/managers/ApiKeysManager;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/billing/managers/ApiKeysManager;->INSTANCE:Lcom/aptoide/sdk/billing/managers/ApiKeysManager;

    .line 7
    sget-object v0, Lcom/aptoide/sdk/billing/managers/ApiKeysManager$privateKeysNativeHelper$2;->INSTANCE:Lcom/aptoide/sdk/billing/managers/ApiKeysManager$privateKeysNativeHelper$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/billing/managers/ApiKeysManager;->privateKeysNativeHelper$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getPrivateKeysNativeHelper()Lcom/aptoide/sdk/billing/helpers/PrivateKeysNativeHelper;
    .locals 1

    .line 7
    sget-object v0, Lcom/aptoide/sdk/billing/managers/ApiKeysManager;->privateKeysNativeHelper$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aptoide/sdk/billing/helpers/PrivateKeysNativeHelper;

    return-object v0
.end method


# virtual methods
.method public final getIndicativeApiKey()Ljava/lang/String;
    .locals 3

    .line 10
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/managers/ApiKeysManager;->getPrivateKeysNativeHelper()Lcom/aptoide/sdk/billing/helpers/PrivateKeysNativeHelper;

    move-result-object v0

    const-string v1, "release"

    const-string v2, "INDICATIVE_API_KEY"

    invoke-virtual {v0, v1, v2}, Lcom/aptoide/sdk/billing/helpers/PrivateKeysNativeHelper;->getApiKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMatomoApiKey()Ljava/lang/String;
    .locals 3

    .line 19
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/managers/ApiKeysManager;->getPrivateKeysNativeHelper()Lcom/aptoide/sdk/billing/helpers/PrivateKeysNativeHelper;

    move-result-object v0

    const-string v1, "release"

    const-string v2, "MATOMO_API_KEY"

    invoke-virtual {v0, v1, v2}, Lcom/aptoide/sdk/billing/helpers/PrivateKeysNativeHelper;->getApiKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMatomoUrl()Ljava/lang/String;
    .locals 3

    .line 16
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/managers/ApiKeysManager;->getPrivateKeysNativeHelper()Lcom/aptoide/sdk/billing/helpers/PrivateKeysNativeHelper;

    move-result-object v0

    const-string v1, "release"

    const-string v2, "MATOMO_URL"

    invoke-virtual {v0, v1, v2}, Lcom/aptoide/sdk/billing/helpers/PrivateKeysNativeHelper;->getApiKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
