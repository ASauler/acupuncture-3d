.class public final Lcom/aptoide/sdk/core/analytics/events/SdkInstallWalletDialogEvents;
.super Ljava/lang/Object;
.source "SdkInstallWalletDialogEvents.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/core/analytics/events/SdkInstallWalletDialogEvents$SdkInstallWalletDialog;,
        Lcom/aptoide/sdk/core/analytics/events/SdkInstallWalletDialogEvents$SdkInstallWalletDialogAction;,
        Lcom/aptoide/sdk/core/analytics/events/SdkInstallWalletDialogEvents$SdkInstallWalletDialogDownloadWalletFallback;,
        Lcom/aptoide/sdk/core/analytics/events/SdkInstallWalletDialogEvents$SdkInstallWalletDialogDownloadWalletVanilla;,
        Lcom/aptoide/sdk/core/analytics/events/SdkInstallWalletDialogEvents$SdkInstallWalletDialogSuccess;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0005\n\u000b\u000c\r\u000eB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/aptoide/sdk/core/analytics/events/SdkInstallWalletDialogEvents;",
        "",
        "()V",
        "INSTALL_WALLET_DIALOG_FLOW",
        "",
        "SDK_INSTALL_WALLET_DIALOG",
        "SDK_INSTALL_WALLET_DIALOG_ACTION",
        "SDK_INSTALL_WALLET_DIALOG_DOWNLOAD_WALLET_FALLBACK",
        "SDK_INSTALL_WALLET_DIALOG_DOWNLOAD_WALLET_VANILLA",
        "SDK_INSTALL_WALLET_DIALOG_SUCCESS",
        "SdkInstallWalletDialog",
        "SdkInstallWalletDialogAction",
        "SdkInstallWalletDialogDownloadWalletFallback",
        "SdkInstallWalletDialogDownloadWalletVanilla",
        "SdkInstallWalletDialogSuccess",
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


# static fields
.field public static final INSTALL_WALLET_DIALOG_FLOW:Ljava/lang/String; = "install_wallet_dialog"

.field public static final INSTANCE:Lcom/aptoide/sdk/core/analytics/events/SdkInstallWalletDialogEvents;

.field public static final SDK_INSTALL_WALLET_DIALOG:Ljava/lang/String; = "sdk_install_wallet_dialog"

.field public static final SDK_INSTALL_WALLET_DIALOG_ACTION:Ljava/lang/String; = "sdk_install_wallet_dialog_action"

.field public static final SDK_INSTALL_WALLET_DIALOG_DOWNLOAD_WALLET_FALLBACK:Ljava/lang/String; = "sdk_install_wallet_dialog_download_wallet_fallback"

.field public static final SDK_INSTALL_WALLET_DIALOG_DOWNLOAD_WALLET_VANILLA:Ljava/lang/String; = "sdk_install_wallet_dialog_download_wallet_vanilla"

.field public static final SDK_INSTALL_WALLET_DIALOG_SUCCESS:Ljava/lang/String; = "sdk_install_wallet_dialog_success"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkInstallWalletDialogEvents;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkInstallWalletDialogEvents;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkInstallWalletDialogEvents;->INSTANCE:Lcom/aptoide/sdk/core/analytics/events/SdkInstallWalletDialogEvents;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
