.class public final Lcom/aptoide/sdk/core/analytics/AnalyticsContent;
.super Ljava/lang/Object;
.source "AnalyticsContent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/aptoide/sdk/core/analytics/AnalyticsContent;",
        "",
        "()V",
        "BRAND",
        "",
        "GAME_PACKAGE_NAME",
        "IS_EMULATOR",
        "LANGUAGE",
        "MODEL",
        "OS_VERSION",
        "SDK_PACKAGE",
        "SDK_VERSION_CODE",
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
.field public static final BRAND:Ljava/lang/String; = "device_brand"

.field public static final GAME_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final INSTANCE:Lcom/aptoide/sdk/core/analytics/AnalyticsContent;

.field public static final IS_EMULATOR:Ljava/lang/String; = "probably_emulator"

.field public static final LANGUAGE:Ljava/lang/String; = "language"

.field public static final MODEL:Ljava/lang/String; = "device_model"

.field public static final OS_VERSION:Ljava/lang/String; = "os_version"

.field public static final SDK_PACKAGE:Ljava/lang/String; = "sdk_package"

.field public static final SDK_VERSION_CODE:Ljava/lang/String; = "version_code"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/core/analytics/AnalyticsContent;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/AnalyticsContent;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/AnalyticsContent;->INSTANCE:Lcom/aptoide/sdk/core/analytics/AnalyticsContent;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
