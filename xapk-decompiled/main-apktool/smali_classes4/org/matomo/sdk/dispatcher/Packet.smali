.class public Lorg/matomo/sdk/dispatcher/Packet;
.super Ljava/lang/Object;
.source "Packet.java"


# instance fields
.field private final mEventCount:I

.field private final mPostData:Lorg/json/JSONObject;

.field private final mTargetURL:Ljava/lang/String;

.field private final mTimeStamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 27
    invoke-direct {p0, p1, v0, v1}, Lorg/matomo/sdk/dispatcher/Packet;-><init>(Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/matomo/sdk/dispatcher/Packet;->mTargetURL:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lorg/matomo/sdk/dispatcher/Packet;->mPostData:Lorg/json/JSONObject;

    .line 40
    iput p3, p0, Lorg/matomo/sdk/dispatcher/Packet;->mEventCount:I

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/matomo/sdk/dispatcher/Packet;->mTimeStamp:J

    return-void
.end method


# virtual methods
.method public getEventCount()I
    .locals 1

    .line 69
    iget v0, p0, Lorg/matomo/sdk/dispatcher/Packet;->mEventCount:I

    return v0
.end method

.method public getPostData()Lorg/json/JSONObject;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/matomo/sdk/dispatcher/Packet;->mPostData:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getTargetURL()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/matomo/sdk/dispatcher/Packet;->mTargetURL:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 60
    iget-wide v0, p0, Lorg/matomo/sdk/dispatcher/Packet;->mTimeStamp:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Packet("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lorg/matomo/sdk/dispatcher/Packet;->mPostData:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    const-string v1, "type=POST, data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/matomo/sdk/dispatcher/Packet;->mPostData:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "type=GET, data="

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/matomo/sdk/dispatcher/Packet;->mTargetURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ")"

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
