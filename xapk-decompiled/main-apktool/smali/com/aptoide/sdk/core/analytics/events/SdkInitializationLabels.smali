.class public final Lcom/aptoide/sdk/core/analytics/events/SdkInitializationLabels;
.super Ljava/lang/Object;
.source "SdkInitializationEvents.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0012\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/aptoide/sdk/core/analytics/events/SdkInitializationLabels;",
        "",
        "()V",
        "APP_PACKAGE_NAME",
        "",
        "GUEST_ID",
        "INSTALLED",
        "MESSAGE",
        "METHOD",
        "METHOD_BINDING",
        "METHOD_URI",
        "OEMID",
        "PAYMENT_FLOW_LIST",
        "REMOVED",
        "SERVICE",
        "SERVICE_INSTALL_WALLET_DIALOG",
        "STATE",
        "UTM_CAMPAIGN",
        "UTM_CONTENT",
        "UTM_MEDIUM",
        "UTM_SOURCE",
        "UTM_TERM",
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
.field public static final APP_PACKAGE_NAME:Ljava/lang/String; = "app_package_name"

.field public static final GUEST_ID:Ljava/lang/String; = "guest_id"

.field public static final INSTALLED:Ljava/lang/String; = "installed"

.field public static final INSTANCE:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationLabels;

.field public static final MESSAGE:Ljava/lang/String; = "message"

.field public static final METHOD:Ljava/lang/String; = "method"

.field public static final METHOD_BINDING:Ljava/lang/String; = "binding"

.field public static final METHOD_URI:Ljava/lang/String; = "uri"

.field public static final OEMID:Ljava/lang/String; = "oemid"

.field public static final PAYMENT_FLOW_LIST:Ljava/lang/String; = "payment_flow_list"

.field public static final REMOVED:Ljava/lang/String; = "removed"

.field public static final SERVICE:Ljava/lang/String; = "service"

.field public static final SERVICE_INSTALL_WALLET_DIALOG:Ljava/lang/String; = "install_wallet_dialog"

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final UTM_CAMPAIGN:Ljava/lang/String; = "utm_campaign"

.field public static final UTM_CONTENT:Ljava/lang/String; = "utm_content"

.field public static final UTM_MEDIUM:Ljava/lang/String; = "utm_medium"

.field public static final UTM_SOURCE:Ljava/lang/String; = "utm_source"

.field public static final UTM_TERM:Ljava/lang/String; = "utm_term"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationLabels;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationLabels;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationLabels;->INSTANCE:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationLabels;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
