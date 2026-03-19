.class public final Lcom/aptoide/sdk/billing/usecases/GetQueriesListForPayflowPriority;
.super Lcom/aptoide/sdk/billing/usecases/UseCase;
.source "GetQueriesListForPayflowPriority.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGetQueriesListForPayflowPriority.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetQueriesListForPayflowPriority.kt\ncom/aptoide/sdk/billing/usecases/GetQueriesListForPayflowPriority\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,77:1\n1#2:78\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0002J\u0015\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0006H\u0086\u0002\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/usecases/GetQueriesListForPayflowPriority;",
        "Lcom/aptoide/sdk/billing/usecases/UseCase;",
        "()V",
        "handleGamesHubPackage",
        "",
        "invoke",
        "",
        "",
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
.field public static final INSTANCE:Lcom/aptoide/sdk/billing/usecases/GetQueriesListForPayflowPriority;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/billing/usecases/GetQueriesListForPayflowPriority;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/usecases/GetQueriesListForPayflowPriority;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/billing/usecases/GetQueriesListForPayflowPriority;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/GetQueriesListForPayflowPriority;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/usecases/UseCase;-><init>()V

    return-void
.end method

.method private final handleGamesHubPackage()I
    .locals 3

    .line 63
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/GetAppInstalledVersion;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/GetAppInstalledVersion;

    .line 65
    sget-object v1, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.dti.folderlauncher"

    .line 63
    invoke-virtual {v0, v2, v1}, Lcom/aptoide/sdk/billing/usecases/GetAppInstalledVersion;->invoke(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final invoke()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 12
    invoke-super {p0}, Lcom/aptoide/sdk/billing/usecases/UseCase;->invokeUseCase()V

    .line 14
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/GetAppInstalledVersion;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/GetAppInstalledVersion;

    sget-object v1, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aptoide/sdk/billing/usecases/GetAppInstalledVersion;->invoke(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 17
    sget-object v1, Lcom/aptoide/sdk/billing/usecases/GetAppInstalledVersion;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/GetAppInstalledVersion;

    .line 19
    sget-object v2, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.appcoins.wallet"

    .line 17
    invoke-virtual {v1, v3, v2}, Lcom/aptoide/sdk/billing/usecases/GetAppInstalledVersion;->invoke(Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 21
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/usecases/GetQueriesListForPayflowPriority;->handleGamesHubPackage()I

    move-result v2

    .line 23
    sget-object v3, Lcom/aptoide/sdk/billing/usecases/GetAppInstalledVersion;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/GetAppInstalledVersion;

    .line 25
    sget-object v4, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v4}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.aptoide.android.aptoidegames"

    .line 23
    invoke-virtual {v3, v5, v4}, Lcom/aptoide/sdk/billing/usecases/GetAppInstalledVersion;->invoke(Ljava/lang/String;Landroid/content/Context;)I

    move-result v3

    .line 28
    sget-object v4, Lcom/aptoide/sdk/billing/usecases/GetAppInstalledVersion;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/GetAppInstalledVersion;

    sget-object v5, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v5}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "cm.aptoide.pt"

    invoke-virtual {v4, v6, v5}, Lcom/aptoide/sdk/billing/usecases/GetAppInstalledVersion;->invoke(Ljava/lang/String;Landroid/content/Context;)I

    move-result v4

    .line 30
    new-instance v5, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;

    sget-object v6, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v6}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;-><init>(Landroid/content/Context;)V

    .line 32
    sget-object v6, Lcom/aptoide/sdk/billing/usecases/GetOemIdForPackage;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/GetOemIdForPackage;

    sget-object v7, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v7}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v8}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/aptoide/sdk/billing/usecases/GetOemIdForPackage;->invoke(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 33
    invoke-virtual {v5}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->getWalletId()Ljava/lang/String;

    move-result-object v5

    .line 35
    sget-object v7, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v7}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/aptoide/sdk/core/ui/UIUtilsKt;->getScreenWidthInDp(Landroid/content/Context;)I

    move-result v7

    .line 36
    sget-object v8, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v8}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/aptoide/sdk/core/ui/UIUtilsKt;->getScreenHeightInDp(Landroid/content/Context;)I

    move-result v8

    .line 38
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v9, Ljava/util/Map;

    .line 40
    sget-object v10, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v10}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "getPackageName(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "package"

    invoke-interface {v9, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "package_vercode"

    .line 41
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "sdk_vercode"

    const-string v10, "1001"

    .line 42
    invoke-interface {v9, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    const-string/jumbo v10, "wallet_vercode"

    .line 43
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eq v2, v0, :cond_1

    const-string v1, "gh_vercode"

    .line 44
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eq v3, v0, :cond_2

    const-string v1, "aptoide_games_vercode"

    .line 46
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eq v4, v0, :cond_3

    const-string/jumbo v0, "vanilla_vercode"

    .line 48
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_3
    sget-object v0, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/billing/helpers/UserCountryUtils;->getUserCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "locale"

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v6, :cond_5

    const-string v0, "oemid"

    .line 50
    invoke-interface {v9, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz v5, :cond_6

    const-string v0, "guest_id"

    .line 51
    invoke-interface {v9, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string/jumbo v0, "screen_width_dp"

    .line 52
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "screen_height_dp"

    .line 53
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v9
.end method
