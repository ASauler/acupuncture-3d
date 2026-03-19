.class public final Lcom/aptoide/sdk/billing/usecases/LogGeneralInformation;
.super Lcom/aptoide/sdk/billing/usecases/UseCase;
.source "LogGeneralInformation.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0011\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0086\u0002\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/usecases/LogGeneralInformation;",
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
.field public static final INSTANCE:Lcom/aptoide/sdk/billing/usecases/LogGeneralInformation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/billing/usecases/LogGeneralInformation;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/usecases/LogGeneralInformation;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/billing/usecases/LogGeneralInformation;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/LogGeneralInformation;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/usecases/UseCase;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/aptoide/sdk/core/device/DeviceInformationHelperKt;->getDeviceInfo()Lcom/aptoide/sdk/core/device/DeviceInformation;

    move-result-object v0

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-virtual {v0}, Lcom/aptoide/sdk/core/device/DeviceInformation;->getOsVersion()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {v0}, Lcom/aptoide/sdk/core/device/DeviceInformation;->getBrand()Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-virtual {v0}, Lcom/aptoide/sdk/core/device/DeviceInformation;->getModel()Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-virtual {v0}, Lcom/aptoide/sdk/core/device/DeviceInformation;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 19
    invoke-virtual {v0}, Lcom/aptoide/sdk/core/device/DeviceInformation;->isProbablyEmulator()Z

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GeneralSDKInformation [ Package Name: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v5, " | OSVersion: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " | Brand: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " | Model: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " | Language: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " | Is Probably Emulator: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " | SDK Version: 1001 ]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    return-void
.end method
