.class public final Lcom/aptoide/sdk/core/analytics/events/SdkIsFeatureSupportedLabels;
.super Ljava/lang/Object;
.source "SdkIsFeatureSupportedEvents.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/aptoide/sdk/core/analytics/events/SdkIsFeatureSupportedLabels;",
        "",
        "()V",
        "FEATURE",
        "",
        "RESULT",
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
.field public static final FEATURE:Ljava/lang/String; = "feature"

.field public static final INSTANCE:Lcom/aptoide/sdk/core/analytics/events/SdkIsFeatureSupportedLabels;

.field public static final RESULT:Ljava/lang/String; = "result"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkIsFeatureSupportedLabels;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkIsFeatureSupportedLabels;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkIsFeatureSupportedLabels;->INSTANCE:Lcom/aptoide/sdk/core/analytics/events/SdkIsFeatureSupportedLabels;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
