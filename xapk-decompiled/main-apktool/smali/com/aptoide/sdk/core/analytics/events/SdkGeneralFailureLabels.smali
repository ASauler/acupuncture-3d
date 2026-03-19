.class public final Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureLabels;
.super Ljava/lang/Object;
.source "SdkGeneralFailureEvents.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureLabels;",
        "",
        "()V",
        "API_KEY",
        "",
        "DATA",
        "SIGNED_DATA",
        "STEP",
        "TYPE",
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
.field public static final API_KEY:Ljava/lang/String; = "api_key"

.field public static final DATA:Ljava/lang/String; = "data"

.field public static final INSTANCE:Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureLabels;

.field public static final SIGNED_DATA:Ljava/lang/String; = "signed_data"

.field public static final STEP:Ljava/lang/String; = "step"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureLabels;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureLabels;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureLabels;->INSTANCE:Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureLabels;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
