.class public final Lcom/aptoide/sdk/core/device/DeviceInformation;
.super Ljava/lang/Object;
.source "DeviceInformationHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000b\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/aptoide/sdk/core/device/DeviceInformation;",
        "",
        "osVersion",
        "",
        "brand",
        "model",
        "language",
        "isProbablyEmulator",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V",
        "getBrand",
        "()Ljava/lang/String;",
        "()Z",
        "getLanguage",
        "getModel",
        "getOsVersion",
        "aptoide-core_release"
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
.field private final brand:Ljava/lang/String;

.field private final isProbablyEmulator:Z

.field private final language:Ljava/lang/String;

.field private final model:Ljava/lang/String;

.field private final osVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "osVersion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "brand"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "language"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/aptoide/sdk/core/device/DeviceInformation;->osVersion:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/aptoide/sdk/core/device/DeviceInformation;->brand:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/aptoide/sdk/core/device/DeviceInformation;->model:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/aptoide/sdk/core/device/DeviceInformation;->language:Ljava/lang/String;

    .line 21
    iput-boolean p5, p0, Lcom/aptoide/sdk/core/device/DeviceInformation;->isProbablyEmulator:Z

    return-void
.end method


# virtual methods
.method public final getBrand()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/aptoide/sdk/core/device/DeviceInformation;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/aptoide/sdk/core/device/DeviceInformation;->language:Ljava/lang/String;

    return-object v0
.end method

.method public final getModel()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/aptoide/sdk/core/device/DeviceInformation;->model:Ljava/lang/String;

    return-object v0
.end method

.method public final getOsVersion()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/aptoide/sdk/core/device/DeviceInformation;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final isProbablyEmulator()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/aptoide/sdk/core/device/DeviceInformation;->isProbablyEmulator:Z

    return v0
.end method
