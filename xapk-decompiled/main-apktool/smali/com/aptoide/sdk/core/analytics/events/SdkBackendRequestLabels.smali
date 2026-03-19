.class public final Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestLabels;
.super Ljava/lang/Object;
.source "SdkBackendRequestEvents.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestLabels;",
        "",
        "()V",
        "BODY",
        "",
        "ERROR_MESSAGE",
        "HEADERS",
        "METHOD",
        "NETWORK_SPEED",
        "PATHS",
        "QUERIES",
        "RESPONSE_CODE",
        "RESPONSE_MESSAGE",
        "TYPE",
        "URL",
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
.field public static final BODY:Ljava/lang/String; = "body"

.field public static final ERROR_MESSAGE:Ljava/lang/String; = "error_message"

.field public static final HEADERS:Ljava/lang/String; = "headers"

.field public static final INSTANCE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestLabels;

.field public static final METHOD:Ljava/lang/String; = "method"

.field public static final NETWORK_SPEED:Ljava/lang/String; = "network_speed"

.field public static final PATHS:Ljava/lang/String; = "paths"

.field public static final QUERIES:Ljava/lang/String; = "queries"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "response_code"

.field public static final RESPONSE_MESSAGE:Ljava/lang/String; = "response_message"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final URL:Ljava/lang/String; = "url"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestLabels;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestLabels;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestLabels;->INSTANCE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestLabels;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
