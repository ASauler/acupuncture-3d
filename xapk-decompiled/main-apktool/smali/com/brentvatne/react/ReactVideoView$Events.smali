.class public final enum Lcom/brentvatne/react/ReactVideoView$Events;
.super Ljava/lang/Enum;
.source "ReactVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brentvatne/react/ReactVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Events"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/brentvatne/react/ReactVideoView$Events;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brentvatne/react/ReactVideoView$Events;

.field public static final enum EVENT_END:Lcom/brentvatne/react/ReactVideoView$Events;

.field public static final enum EVENT_ERROR:Lcom/brentvatne/react/ReactVideoView$Events;

.field public static final enum EVENT_FULLSCREEN_DID_DISMISS:Lcom/brentvatne/react/ReactVideoView$Events;

.field public static final enum EVENT_FULLSCREEN_DID_PRESENT:Lcom/brentvatne/react/ReactVideoView$Events;

.field public static final enum EVENT_FULLSCREEN_WILL_DISMISS:Lcom/brentvatne/react/ReactVideoView$Events;

.field public static final enum EVENT_FULLSCREEN_WILL_PRESENT:Lcom/brentvatne/react/ReactVideoView$Events;

.field public static final enum EVENT_LOAD:Lcom/brentvatne/react/ReactVideoView$Events;

.field public static final enum EVENT_LOAD_START:Lcom/brentvatne/react/ReactVideoView$Events;

.field public static final enum EVENT_PROGRESS:Lcom/brentvatne/react/ReactVideoView$Events;

.field public static final enum EVENT_READY_FOR_DISPLAY:Lcom/brentvatne/react/ReactVideoView$Events;

.field public static final enum EVENT_RESUME:Lcom/brentvatne/react/ReactVideoView$Events;

.field public static final enum EVENT_SEEK:Lcom/brentvatne/react/ReactVideoView$Events;

.field public static final enum EVENT_STALLED:Lcom/brentvatne/react/ReactVideoView$Events;

.field public static final enum EVENT_TIMED_METADATA:Lcom/brentvatne/react/ReactVideoView$Events;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/brentvatne/react/ReactVideoView$Events;
    .locals 14

    .line 56
    sget-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_LOAD_START:Lcom/brentvatne/react/ReactVideoView$Events;

    sget-object v1, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_LOAD:Lcom/brentvatne/react/ReactVideoView$Events;

    sget-object v2, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_ERROR:Lcom/brentvatne/react/ReactVideoView$Events;

    sget-object v3, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_PROGRESS:Lcom/brentvatne/react/ReactVideoView$Events;

    sget-object v4, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_TIMED_METADATA:Lcom/brentvatne/react/ReactVideoView$Events;

    sget-object v5, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_SEEK:Lcom/brentvatne/react/ReactVideoView$Events;

    sget-object v6, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_END:Lcom/brentvatne/react/ReactVideoView$Events;

    sget-object v7, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_STALLED:Lcom/brentvatne/react/ReactVideoView$Events;

    sget-object v8, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_RESUME:Lcom/brentvatne/react/ReactVideoView$Events;

    sget-object v9, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_READY_FOR_DISPLAY:Lcom/brentvatne/react/ReactVideoView$Events;

    sget-object v10, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_FULLSCREEN_WILL_PRESENT:Lcom/brentvatne/react/ReactVideoView$Events;

    sget-object v11, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_FULLSCREEN_DID_PRESENT:Lcom/brentvatne/react/ReactVideoView$Events;

    sget-object v12, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_FULLSCREEN_WILL_DISMISS:Lcom/brentvatne/react/ReactVideoView$Events;

    sget-object v13, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_FULLSCREEN_DID_DISMISS:Lcom/brentvatne/react/ReactVideoView$Events;

    filled-new-array/range {v0 .. v13}, [Lcom/brentvatne/react/ReactVideoView$Events;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 57
    new-instance v0, Lcom/brentvatne/react/ReactVideoView$Events;

    const/4 v1, 0x0

    const-string v2, "onVideoLoadStart"

    const-string v3, "EVENT_LOAD_START"

    invoke-direct {v0, v3, v1, v2}, Lcom/brentvatne/react/ReactVideoView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_LOAD_START:Lcom/brentvatne/react/ReactVideoView$Events;

    .line 58
    new-instance v0, Lcom/brentvatne/react/ReactVideoView$Events;

    const/4 v1, 0x1

    const-string v2, "onVideoLoad"

    const-string v3, "EVENT_LOAD"

    invoke-direct {v0, v3, v1, v2}, Lcom/brentvatne/react/ReactVideoView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_LOAD:Lcom/brentvatne/react/ReactVideoView$Events;

    .line 59
    new-instance v0, Lcom/brentvatne/react/ReactVideoView$Events;

    const/4 v1, 0x2

    const-string v2, "onVideoError"

    const-string v3, "EVENT_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/brentvatne/react/ReactVideoView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_ERROR:Lcom/brentvatne/react/ReactVideoView$Events;

    .line 60
    new-instance v0, Lcom/brentvatne/react/ReactVideoView$Events;

    const/4 v1, 0x3

    const-string v2, "onVideoProgress"

    const-string v3, "EVENT_PROGRESS"

    invoke-direct {v0, v3, v1, v2}, Lcom/brentvatne/react/ReactVideoView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_PROGRESS:Lcom/brentvatne/react/ReactVideoView$Events;

    .line 61
    new-instance v0, Lcom/brentvatne/react/ReactVideoView$Events;

    const/4 v1, 0x4

    const-string v2, "onTimedMetadata"

    const-string v3, "EVENT_TIMED_METADATA"

    invoke-direct {v0, v3, v1, v2}, Lcom/brentvatne/react/ReactVideoView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_TIMED_METADATA:Lcom/brentvatne/react/ReactVideoView$Events;

    .line 62
    new-instance v0, Lcom/brentvatne/react/ReactVideoView$Events;

    const/4 v1, 0x5

    const-string v2, "onVideoSeek"

    const-string v3, "EVENT_SEEK"

    invoke-direct {v0, v3, v1, v2}, Lcom/brentvatne/react/ReactVideoView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_SEEK:Lcom/brentvatne/react/ReactVideoView$Events;

    .line 63
    new-instance v0, Lcom/brentvatne/react/ReactVideoView$Events;

    const/4 v1, 0x6

    const-string v2, "onVideoEnd"

    const-string v3, "EVENT_END"

    invoke-direct {v0, v3, v1, v2}, Lcom/brentvatne/react/ReactVideoView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_END:Lcom/brentvatne/react/ReactVideoView$Events;

    .line 64
    new-instance v0, Lcom/brentvatne/react/ReactVideoView$Events;

    const/4 v1, 0x7

    const-string v2, "onPlaybackStalled"

    const-string v3, "EVENT_STALLED"

    invoke-direct {v0, v3, v1, v2}, Lcom/brentvatne/react/ReactVideoView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_STALLED:Lcom/brentvatne/react/ReactVideoView$Events;

    .line 65
    new-instance v0, Lcom/brentvatne/react/ReactVideoView$Events;

    const/16 v1, 0x8

    const-string v2, "onPlaybackResume"

    const-string v3, "EVENT_RESUME"

    invoke-direct {v0, v3, v1, v2}, Lcom/brentvatne/react/ReactVideoView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_RESUME:Lcom/brentvatne/react/ReactVideoView$Events;

    .line 66
    new-instance v0, Lcom/brentvatne/react/ReactVideoView$Events;

    const/16 v1, 0x9

    const-string v2, "onReadyForDisplay"

    const-string v3, "EVENT_READY_FOR_DISPLAY"

    invoke-direct {v0, v3, v1, v2}, Lcom/brentvatne/react/ReactVideoView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_READY_FOR_DISPLAY:Lcom/brentvatne/react/ReactVideoView$Events;

    .line 67
    new-instance v0, Lcom/brentvatne/react/ReactVideoView$Events;

    const/16 v1, 0xa

    const-string v2, "onVideoFullscreenPlayerWillPresent"

    const-string v3, "EVENT_FULLSCREEN_WILL_PRESENT"

    invoke-direct {v0, v3, v1, v2}, Lcom/brentvatne/react/ReactVideoView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_FULLSCREEN_WILL_PRESENT:Lcom/brentvatne/react/ReactVideoView$Events;

    .line 68
    new-instance v0, Lcom/brentvatne/react/ReactVideoView$Events;

    const/16 v1, 0xb

    const-string v2, "onVideoFullscreenPlayerDidPresent"

    const-string v3, "EVENT_FULLSCREEN_DID_PRESENT"

    invoke-direct {v0, v3, v1, v2}, Lcom/brentvatne/react/ReactVideoView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_FULLSCREEN_DID_PRESENT:Lcom/brentvatne/react/ReactVideoView$Events;

    .line 69
    new-instance v0, Lcom/brentvatne/react/ReactVideoView$Events;

    const/16 v1, 0xc

    const-string v2, "onVideoFullscreenPlayerWillDismiss"

    const-string v3, "EVENT_FULLSCREEN_WILL_DISMISS"

    invoke-direct {v0, v3, v1, v2}, Lcom/brentvatne/react/ReactVideoView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_FULLSCREEN_WILL_DISMISS:Lcom/brentvatne/react/ReactVideoView$Events;

    .line 70
    new-instance v0, Lcom/brentvatne/react/ReactVideoView$Events;

    const/16 v1, 0xd

    const-string v2, "onVideoFullscreenPlayerDidDismiss"

    const-string v3, "EVENT_FULLSCREEN_DID_DISMISS"

    invoke-direct {v0, v3, v1, v2}, Lcom/brentvatne/react/ReactVideoView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_FULLSCREEN_DID_DISMISS:Lcom/brentvatne/react/ReactVideoView$Events;

    .line 56
    invoke-static {}, Lcom/brentvatne/react/ReactVideoView$Events;->$values()[Lcom/brentvatne/react/ReactVideoView$Events;

    move-result-object v0

    sput-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->$VALUES:[Lcom/brentvatne/react/ReactVideoView$Events;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput-object p3, p0, Lcom/brentvatne/react/ReactVideoView$Events;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brentvatne/react/ReactVideoView$Events;
    .locals 1

    .line 56
    const-class v0, Lcom/brentvatne/react/ReactVideoView$Events;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/brentvatne/react/ReactVideoView$Events;

    return-object p0
.end method

.method public static values()[Lcom/brentvatne/react/ReactVideoView$Events;
    .locals 1

    .line 56
    sget-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->$VALUES:[Lcom/brentvatne/react/ReactVideoView$Events;

    invoke-virtual {v0}, [Lcom/brentvatne/react/ReactVideoView$Events;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brentvatne/react/ReactVideoView$Events;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView$Events;->mName:Ljava/lang/String;

    return-object v0
.end method
