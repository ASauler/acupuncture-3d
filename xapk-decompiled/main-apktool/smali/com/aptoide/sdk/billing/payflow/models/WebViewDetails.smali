.class public final Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;
.super Ljava/lang/Object;
.source "WebViewDetails.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$Companion;,
        Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 !2\u00020\u0001:\u0002!\"B)\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\tJ\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J2\u0010\u0016\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0017J\u0013\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u00d6\u0003J\u0006\u0010\u001c\u001a\u00020\u0019J\u0006\u0010\u001d\u001a\u00020\u0019J\t\u0010\u001e\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u000e\"\u0004\u0008\u0012\u0010\u0010\u00a8\u0006#"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;",
        "Ljava/io/Serializable;",
        "forcedScreenOrientation",
        "",
        "landscapeScreenDimensions",
        "Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;",
        "portraitScreenDimensions",
        "(Ljava/lang/Integer;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;)V",
        "getForcedScreenOrientation",
        "()Ljava/lang/Integer;",
        "setForcedScreenOrientation",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getLandscapeScreenDimensions",
        "()Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;",
        "setLandscapeScreenDimensions",
        "(Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;)V",
        "getPortraitScreenDimensions",
        "setPortraitScreenDimensions",
        "component1",
        "component2",
        "component3",
        "copy",
        "(Ljava/lang/Integer;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;)Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;",
        "equals",
        "",
        "other",
        "",
        "hasLandscapeDetails",
        "hasPortraitDetails",
        "hashCode",
        "toString",
        "",
        "Companion",
        "OrientedScreenDimensions",
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
.field public static final Companion:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$Companion;


# instance fields
.field private forcedScreenOrientation:Ljava/lang/Integer;

.field private landscapeScreenDimensions:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;

.field private portraitScreenDimensions:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->Companion:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;-><init>(Ljava/lang/Integer;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->forcedScreenOrientation:Ljava/lang/Integer;

    .line 8
    iput-object p2, p0, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->landscapeScreenDimensions:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;

    .line 9
    iput-object p3, p0, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->portraitScreenDimensions:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;-><init>(Ljava/lang/Integer;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;Ljava/lang/Integer;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;ILjava/lang/Object;)Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->forcedScreenOrientation:Ljava/lang/Integer;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->landscapeScreenDimensions:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->portraitScreenDimensions:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->copy(Ljava/lang/Integer;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;)Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->forcedScreenOrientation:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component2()Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->landscapeScreenDimensions:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;

    return-object v0
.end method

.method public final component3()Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->portraitScreenDimensions:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;

    return-object v0
.end method

.method public final copy(Ljava/lang/Integer;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;)Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;

    invoke-direct {v0, p1, p2, p3}, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;-><init>(Ljava/lang/Integer;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;

    iget-object v1, p0, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->forcedScreenOrientation:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->forcedScreenOrientation:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->landscapeScreenDimensions:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;

    iget-object v3, p1, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->landscapeScreenDimensions:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->portraitScreenDimensions:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;

    iget-object p1, p1, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->portraitScreenDimensions:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getForcedScreenOrientation()Ljava/lang/Integer;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->forcedScreenOrientation:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getLandscapeScreenDimensions()Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->landscapeScreenDimensions:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;

    return-object v0
.end method

.method public final getPortraitScreenDimensions()Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->portraitScreenDimensions:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;

    return-object v0
.end method

.method public final hasLandscapeDetails()Z
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->landscapeScreenDimensions:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;->getHeightDp()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 16
    iget-object v0, p0, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->landscapeScreenDimensions:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;->getHeightPercentage()Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_6

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->landscapeScreenDimensions:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;->getWidthDp()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->landscapeScreenDimensions:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;->getWidthPercentage()Ljava/lang/Double;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_6

    :cond_5
    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method public final hasPortraitDetails()Z
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->portraitScreenDimensions:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;->getHeightDp()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 24
    iget-object v0, p0, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->portraitScreenDimensions:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;->getHeightPercentage()Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_6

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->portraitScreenDimensions:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;->getWidthDp()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->portraitScreenDimensions:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;->getWidthPercentage()Ljava/lang/Double;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_6

    :cond_5
    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->forcedScreenOrientation:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->landscapeScreenDimensions:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->portraitScreenDimensions:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final setForcedScreenOrientation(Ljava/lang/Integer;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->forcedScreenOrientation:Ljava/lang/Integer;

    return-void
.end method

.method public final setLandscapeScreenDimensions(Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->landscapeScreenDimensions:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;

    return-void
.end method

.method public final setPortraitScreenDimensions(Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->portraitScreenDimensions:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->forcedScreenOrientation:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->landscapeScreenDimensions:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;

    iget-object v2, p0, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->portraitScreenDimensions:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "WebViewDetails(forcedScreenOrientation="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", landscapeScreenDimensions="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", portraitScreenDimensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
