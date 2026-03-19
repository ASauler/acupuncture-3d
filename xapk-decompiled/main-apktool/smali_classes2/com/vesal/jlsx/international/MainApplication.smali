.class public Lcom/vesal/jlsx/international/MainApplication;
.super Landroid/app/Application;
.source "MainApplication.java"

# interfaces
.implements Lcom/facebook/react/ReactApplication;


# instance fields
.field private final mReactNativeHost:Lcom/facebook/react/ReactNativeHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 45
    new-instance v0, Lcom/vesal/jlsx/international/MainApplication$1;

    invoke-direct {v0, p0, p0}, Lcom/vesal/jlsx/international/MainApplication$1;-><init>(Lcom/vesal/jlsx/international/MainApplication;Landroid/app/Application;)V

    iput-object v0, p0, Lcom/vesal/jlsx/international/MainApplication;->mReactNativeHost:Lcom/facebook/react/ReactNativeHost;

    return-void
.end method

.method private initTwitter()V
    .locals 5

    .line 118
    new-instance v0, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/twitter/sdk/android/core/DefaultLogger;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/twitter/sdk/android/core/DefaultLogger;-><init>(I)V

    .line 119
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->logger(Lcom/twitter/sdk/android/core/Logger;)Lcom/twitter/sdk/android/core/TwitterConfig$Builder;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 120
    invoke-virtual {p0}, Lcom/vesal/jlsx/international/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/vesal/jlsx/international/R$string;->twitter_comsumer_key:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {p0}, Lcom/vesal/jlsx/international/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/vesal/jlsx/international/R$string;->twitter_comsumer_secret:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->twitterAuthConfig(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Lcom/twitter/sdk/android/core/TwitterConfig$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 122
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->debug(Z)Lcom/twitter/sdk/android/core/TwitterConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->build()Lcom/twitter/sdk/android/core/TwitterConfig;

    move-result-object v0

    .line 123
    invoke-static {v0}, Lcom/twitter/sdk/android/core/Twitter;->initialize(Lcom/twitter/sdk/android/core/TwitterConfig;)V

    return-void
.end method

.method private static initializeFlipper(Landroid/content/Context;Lcom/facebook/react/ReactInstanceManager;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getReactNativeHost()Lcom/facebook/react/ReactNativeHost;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/vesal/jlsx/international/MainApplication;->mReactNativeHost:Lcom/facebook/react/ReactNativeHost;

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .line 94
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 96
    invoke-virtual {p0}, Lcom/vesal/jlsx/international/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vesal/jlsx/international/utils/SharedPreferencesUtil;->init(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 97
    invoke-static {p0, v0}, Lcom/facebook/soloader/SoLoader;->init(Landroid/content/Context;Z)V

    .line 98
    invoke-virtual {p0}, Lcom/vesal/jlsx/international/MainApplication;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/vesal/jlsx/international/MainApplication;->initializeFlipper(Landroid/content/Context;Lcom/facebook/react/ReactInstanceManager;)V

    .line 100
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/vesal/jlsx/international/MainApplication;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vesali-jlsx-international.db"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/vesal/jlsx/international/utils/SharedPreferenceData;->getLastVersion()I

    move-result v1

    const/16 v3, 0x145

    if-gt v3, v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 102
    :cond_0
    invoke-static {p0}, Lcom/vesal/jlsx/international/utils/FileUtils;->getInstance(Landroid/content/Context;)Lcom/vesal/jlsx/international/utils/FileUtils;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/vesal/jlsx/international/utils/FileUtils;->copyAssetsToSD(Ljava/lang/String;Ljava/lang/String;)Lcom/vesal/jlsx/international/utils/FileUtils;

    .line 103
    invoke-static {p0}, Lcom/vesal/jlsx/international/utils/FileUtils;->getInstance(Landroid/content/Context;)Lcom/vesal/jlsx/international/utils/FileUtils;

    move-result-object v0

    const-string v1, "vesali-jlsx-international_en.db"

    invoke-virtual {v0, v1, v1}, Lcom/vesal/jlsx/international/utils/FileUtils;->copyAssetsToSD(Ljava/lang/String;Ljava/lang/String;)Lcom/vesal/jlsx/international/utils/FileUtils;

    .line 104
    invoke-static {p0}, Lcom/vesal/jlsx/international/utils/FileUtils;->getInstance(Landroid/content/Context;)Lcom/vesal/jlsx/international/utils/FileUtils;

    move-result-object v0

    const-string v1, "vesali-jlsx-international_cht.db"

    invoke-virtual {v0, v1, v1}, Lcom/vesal/jlsx/international/utils/FileUtils;->copyAssetsToSD(Ljava/lang/String;Ljava/lang/String;)Lcom/vesal/jlsx/international/utils/FileUtils;

    .line 105
    invoke-static {p0}, Lcom/vesal/jlsx/international/utils/FileUtils;->getInstance(Landroid/content/Context;)Lcom/vesal/jlsx/international/utils/FileUtils;

    move-result-object v0

    const-string v1, "vesali-jlsx-international_jp.db"

    invoke-virtual {v0, v1, v1}, Lcom/vesal/jlsx/international/utils/FileUtils;->copyAssetsToSD(Ljava/lang/String;Ljava/lang/String;)Lcom/vesal/jlsx/international/utils/FileUtils;

    .line 106
    invoke-static {v3}, Lcom/vesal/jlsx/international/utils/SharedPreferenceData;->setLastVersion(I)V

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/vesal/jlsx/international/MainApplication;->mReactNativeHost:Lcom/facebook/react/ReactNativeHost;

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/react/flipper/ReactNativeFlipper;->initializeFlipper(Landroid/content/Context;Lcom/facebook/react/ReactInstanceManager;)V

    .line 114
    invoke-direct {p0}, Lcom/vesal/jlsx/international/MainApplication;->initTwitter()V

    return-void
.end method
