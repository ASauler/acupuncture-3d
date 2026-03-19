.class public final Lcom/aptoide/sdk/billing/usecases/ingameupdates/LaunchAppUpdate;
.super Lcom/aptoide/sdk/billing/usecases/UseCase;
.source "LaunchAppUpdate.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLaunchAppUpdate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LaunchAppUpdate.kt\ncom/aptoide/sdk/billing/usecases/ingameupdates/LaunchAppUpdate\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,60:1\n1855#2,2:61\n1#3:63\n*S KotlinDebug\n*F\n+ 1 LaunchAppUpdate.kt\ncom/aptoide/sdk/billing/usecases/ingameupdates/LaunchAppUpdate\n*L\n26#1:61,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0011\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0006H\u0086\u0002J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0004H\u0002\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/usecases/ingameupdates/LaunchAppUpdate;",
        "Lcom/aptoide/sdk/billing/usecases/UseCase;",
        "()V",
        "getDefaultStoreDeepLink",
        "",
        "context",
        "Landroid/content/Context;",
        "invoke",
        "",
        "launchDeeplink",
        "",
        "deeplink",
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
.field public static final INSTANCE:Lcom/aptoide/sdk/billing/usecases/ingameupdates/LaunchAppUpdate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/billing/usecases/ingameupdates/LaunchAppUpdate;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/usecases/ingameupdates/LaunchAppUpdate;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/billing/usecases/ingameupdates/LaunchAppUpdate;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/ingameupdates/LaunchAppUpdate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/usecases/UseCase;-><init>()V

    return-void
.end method

.method private final getDefaultStoreDeepLink(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 56
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/ingameupdates/GetVanillaDeepLink;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/ingameupdates/GetVanillaDeepLink;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getPackageName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/aptoide/sdk/billing/usecases/ingameupdates/GetVanillaDeepLink;->invoke(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    sget-object v1, Lcom/aptoide/sdk/billing/usecases/ingameupdates/IsAppInstalled;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/ingameupdates/IsAppInstalled;

    const-string v3, "cm.aptoide.pt"

    invoke-virtual {v1, p1, v3}, Lcom/aptoide/sdk/billing/usecases/ingameupdates/IsAppInstalled;->invoke(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 58
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/ingameupdates/GetDefaultMarketDeepLink;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/ingameupdates/GetDefaultMarketDeepLink;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/aptoide/sdk/billing/usecases/ingameupdates/GetDefaultMarketDeepLink;->invoke(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private final launchDeeplink(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v1, 0x8000

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 45
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 46
    sget-object p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendLaunchAppUpdateResultEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 49
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendLaunchAppUpdateDeeplinkFailureEvent(Ljava/lang/String;)V

    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to launch App Update Deeplink: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public final invoke(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-super {p0}, Lcom/aptoide/sdk/billing/usecases/UseCase;->invokeUseCase()V

    const-string v0, "LaunchAppUpdate"

    .line 18
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/aptoide/sdk/billing/managers/StoreLinkMapperManager;

    invoke-direct {v0, p1}, Lcom/aptoide/sdk/billing/managers/StoreLinkMapperManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/managers/StoreLinkMapperManager;->getStoreDeepLink()Lcom/aptoide/sdk/billing/mappers/StoreLinkResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/mappers/StoreLinkResponse;->getStoreLinkMethods()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_3

    .line 24
    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/usecases/ingameupdates/LaunchAppUpdate;->getDefaultStoreDeepLink(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/aptoide/sdk/billing/usecases/ingameupdates/LaunchAppUpdate;->launchDeeplink(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_3

    .line 26
    :cond_3
    check-cast v0, Ljava/lang/Iterable;

    .line 61
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aptoide/sdk/billing/mappers/StoreLinkMethod;

    .line 27
    sget-object v2, Lcom/aptoide/sdk/billing/usecases/ingameupdates/LaunchAppUpdate;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/ingameupdates/LaunchAppUpdate;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/mappers/StoreLinkMethod;->getDeeplink()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p1, v1}, Lcom/aptoide/sdk/billing/usecases/ingameupdates/LaunchAppUpdate;->launchDeeplink(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    .line 33
    :cond_5
    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/usecases/ingameupdates/LaunchAppUpdate;->getDefaultStoreDeepLink(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/aptoide/sdk/billing/usecases/ingameupdates/LaunchAppUpdate;->launchDeeplink(Landroid/content/Context;Ljava/lang/String;)Z

    :goto_3
    return-void
.end method
