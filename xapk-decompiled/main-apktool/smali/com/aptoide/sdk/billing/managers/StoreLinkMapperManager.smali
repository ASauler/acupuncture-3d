.class public final Lcom/aptoide/sdk/billing/managers/StoreLinkMapperManager;
.super Ljava/lang/Object;
.source "StoreLinkMapperManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\u0008J\u0006\u0010\t\u001a\u00020\nJ\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/managers/StoreLinkMapperManager;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "storeLinkMapperRepository",
        "Lcom/aptoide/sdk/billing/repositories/StoreLinkMapperRepository;",
        "getNewVersionAvailability",
        "Lcom/aptoide/sdk/billing/mappers/NewVersionAvailableResponse;",
        "getReferralDeeplink",
        "Lcom/aptoide/sdk/billing/mappers/ReferralDeeplinkResponse;",
        "getStoreDeepLink",
        "Lcom/aptoide/sdk/billing/mappers/StoreLinkResponse;",
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
.field private final context:Landroid/content/Context;

.field private final storeLinkMapperRepository:Lcom/aptoide/sdk/billing/repositories/StoreLinkMapperRepository;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aptoide/sdk/billing/managers/StoreLinkMapperManager;->context:Landroid/content/Context;

    .line 21
    new-instance p1, Lcom/aptoide/sdk/billing/repositories/StoreLinkMapperRepository;

    new-instance v0, Lcom/aptoide/sdk/billing/service/BdsService;

    const-string v1, "https://store-link-mapper.aptoide.com"

    const/16 v2, 0xbb8

    invoke-direct {v0, v1, v2}, Lcom/aptoide/sdk/billing/service/BdsService;-><init>(Ljava/lang/String;I)V

    invoke-direct {p1, v0}, Lcom/aptoide/sdk/billing/repositories/StoreLinkMapperRepository;-><init>(Lcom/aptoide/sdk/billing/service/BdsService;)V

    iput-object p1, p0, Lcom/aptoide/sdk/billing/managers/StoreLinkMapperManager;->storeLinkMapperRepository:Lcom/aptoide/sdk/billing/repositories/StoreLinkMapperRepository;

    return-void
.end method


# virtual methods
.method public final getNewVersionAvailability()Lcom/aptoide/sdk/billing/mappers/NewVersionAvailableResponse;
    .locals 9

    const-string v0, "Getting New Version Availability."

    .line 48
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/GetOemIdForPackage;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/GetOemIdForPackage;

    sget-object v1, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aptoide/sdk/billing/usecases/GetOemIdForPackage;->invoke(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 50
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/ingameupdates/GetInstallerAppPackage;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/ingameupdates/GetInstallerAppPackage;

    iget-object v1, p0, Lcom/aptoide/sdk/billing/managers/StoreLinkMapperManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/aptoide/sdk/billing/usecases/ingameupdates/GetInstallerAppPackage;->invoke(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 51
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/GetAppInstalledVersion;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/GetAppInstalledVersion;

    iget-object v1, p0, Lcom/aptoide/sdk/billing/managers/StoreLinkMapperManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aptoide/sdk/billing/managers/StoreLinkMapperManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/aptoide/sdk/billing/usecases/GetAppInstalledVersion;->invoke(Ljava/lang/String;Landroid/content/Context;)I

    move-result v7

    .line 53
    :try_start_0
    sget-object v0, Lcom/aptoide/sdk/core/device/QGenerator;->INSTANCE:Lcom/aptoide/sdk/core/device/QGenerator;

    sget-object v1, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aptoide/sdk/core/device/QGenerator;->generateQ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logWarning(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    move-object v8, v0

    .line 60
    iget-object v3, p0, Lcom/aptoide/sdk/billing/managers/StoreLinkMapperManager;->storeLinkMapperRepository:Lcom/aptoide/sdk/billing/repositories/StoreLinkMapperRepository;

    .line 61
    iget-object v0, p0, Lcom/aptoide/sdk/billing/managers/StoreLinkMapperManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v0, "getPackageName(...)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual/range {v3 .. v8}, Lcom/aptoide/sdk/billing/repositories/StoreLinkMapperRepository;->getNewVersionAvailability(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/aptoide/sdk/billing/mappers/NewVersionAvailableResponse;

    move-result-object v0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "New Version Availability received: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getReferralDeeplink()Lcom/aptoide/sdk/billing/mappers/ReferralDeeplinkResponse;
    .locals 5

    const-string v0, "Getting Referral Deeplink value."

    .line 36
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/GetOemIdForPackage;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/GetOemIdForPackage;

    sget-object v1, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aptoide/sdk/billing/usecases/GetOemIdForPackage;->invoke(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 38
    sget-object v1, Lcom/aptoide/sdk/billing/usecases/ingameupdates/GetInstallerAppPackage;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/ingameupdates/GetInstallerAppPackage;

    iget-object v2, p0, Lcom/aptoide/sdk/billing/managers/StoreLinkMapperManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/aptoide/sdk/billing/usecases/ingameupdates/GetInstallerAppPackage;->invoke(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/aptoide/sdk/billing/managers/StoreLinkMapperManager;->storeLinkMapperRepository:Lcom/aptoide/sdk/billing/repositories/StoreLinkMapperRepository;

    iget-object v3, p0, Lcom/aptoide/sdk/billing/managers/StoreLinkMapperManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getPackageName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1, v0}, Lcom/aptoide/sdk/billing/repositories/StoreLinkMapperRepository;->getReferralDeeplink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aptoide/sdk/billing/mappers/ReferralDeeplinkResponse;

    move-result-object v0

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Referral Deeplink received: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getStoreDeepLink()Lcom/aptoide/sdk/billing/mappers/StoreLinkResponse;
    .locals 5

    const-string v0, "Getting Store Deeplink value."

    .line 24
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/GetOemIdForPackage;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/GetOemIdForPackage;

    sget-object v1, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aptoide/sdk/billing/usecases/GetOemIdForPackage;->invoke(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 26
    sget-object v1, Lcom/aptoide/sdk/billing/usecases/ingameupdates/GetInstallerAppPackage;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/ingameupdates/GetInstallerAppPackage;

    iget-object v2, p0, Lcom/aptoide/sdk/billing/managers/StoreLinkMapperManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/aptoide/sdk/billing/usecases/ingameupdates/GetInstallerAppPackage;->invoke(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/aptoide/sdk/billing/managers/StoreLinkMapperManager;->storeLinkMapperRepository:Lcom/aptoide/sdk/billing/repositories/StoreLinkMapperRepository;

    iget-object v3, p0, Lcom/aptoide/sdk/billing/managers/StoreLinkMapperManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getPackageName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1, v0}, Lcom/aptoide/sdk/billing/repositories/StoreLinkMapperRepository;->getStoreDeeplink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aptoide/sdk/billing/mappers/StoreLinkResponse;

    move-result-object v0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Store Deeplink received: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    return-object v0
.end method
