.class public final Lcom/aptoide/sdk/billing/usecases/ingameupdates/GetInstallerAppPackage;
.super Lcom/aptoide/sdk/billing/usecases/UseCase;
.source "GetInstallerAppPackage.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGetInstallerAppPackage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetInstallerAppPackage.kt\ncom/aptoide/sdk/billing/usecases/ingameupdates/GetInstallerAppPackage\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,41:1\n1#2:42\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0086\u0002J\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u0004*\u00020\u00082\u0006\u0010\t\u001a\u00020\u0004H\u0002J\u0014\u0010\n\u001a\u00020\u000b*\u00020\u00082\u0006\u0010\t\u001a\u00020\u0004H\u0002\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/usecases/ingameupdates/GetInstallerAppPackage;",
        "Lcom/aptoide/sdk/billing/usecases/UseCase;",
        "()V",
        "invoke",
        "",
        "context",
        "Landroid/content/Context;",
        "getInstallerInfo",
        "Landroid/content/pm/PackageManager;",
        "packageName",
        "isAppInstalled",
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
.field public static final INSTANCE:Lcom/aptoide/sdk/billing/usecases/ingameupdates/GetInstallerAppPackage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/billing/usecases/ingameupdates/GetInstallerAppPackage;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/usecases/ingameupdates/GetInstallerAppPackage;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/billing/usecases/ingameupdates/GetInstallerAppPackage;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/ingameupdates/GetInstallerAppPackage;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/usecases/UseCase;-><init>()V

    return-void
.end method

.method private final getInstallerInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 19
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    .line 20
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_1

    .line 24
    sget-object v1, Lcom/aptoide/sdk/billing/usecases/ingameupdates/GetInstallerAppPackage;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/ingameupdates/GetInstallerAppPackage;

    invoke-direct {v1, p1, p2}, Lcom/aptoide/sdk/billing/usecases/ingameupdates/GetInstallerAppPackage;->isAppInstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    move-object v0, p2

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "Failed to obtain the Installer App."

    .line 26
    invoke-static {p2, p1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_1
    return-object v0
.end method

.method private final isAppInstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 2

    const/16 v0, 0x80

    .line 33
    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Installer App: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " not installed."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p1, Ljava/lang/Exception;

    invoke-static {p2, p1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public final invoke(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-super {p0}, Lcom/aptoide/sdk/billing/usecases/UseCase;->invokeUseCase()V

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "getPackageManager(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "getPackageName(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/aptoide/sdk/billing/usecases/ingameupdates/GetInstallerAppPackage;->getInstallerInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
