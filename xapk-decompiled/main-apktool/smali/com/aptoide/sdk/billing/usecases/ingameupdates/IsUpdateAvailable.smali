.class public final Lcom/aptoide/sdk/billing/usecases/ingameupdates/IsUpdateAvailable;
.super Lcom/aptoide/sdk/billing/usecases/UseCase;
.source "IsUpdateAvailable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0011\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0086\u0002\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/usecases/ingameupdates/IsUpdateAvailable;",
        "Lcom/aptoide/sdk/billing/usecases/UseCase;",
        "()V",
        "invoke",
        "",
        "context",
        "Landroid/content/Context;",
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
.field public static final INSTANCE:Lcom/aptoide/sdk/billing/usecases/ingameupdates/IsUpdateAvailable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/billing/usecases/ingameupdates/IsUpdateAvailable;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/usecases/ingameupdates/IsUpdateAvailable;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/billing/usecases/ingameupdates/IsUpdateAvailable;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/ingameupdates/IsUpdateAvailable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/usecases/UseCase;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-super {p0}, Lcom/aptoide/sdk/billing/usecases/UseCase;->invokeUseCase()V

    .line 15
    :try_start_0
    new-instance v0, Lcom/aptoide/sdk/billing/managers/StoreLinkMapperManager;

    invoke-direct {v0, p1}, Lcom/aptoide/sdk/billing/managers/StoreLinkMapperManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/managers/StoreLinkMapperManager;->getNewVersionAvailability()Lcom/aptoide/sdk/billing/mappers/NewVersionAvailableResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/mappers/NewVersionAvailableResponse;->isNewVersionAvailable()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to verify if update available: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    .line 18
    sget-object p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendAppUpdateAvailableFailureToObtainResult()V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method
