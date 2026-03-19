.class public Lorg/matomo/sdk/extra/DownloadTracker$Extra$None;
.super Ljava/lang/Object;
.source "DownloadTracker.java"

# interfaces
.implements Lorg/matomo/sdk/extra/DownloadTracker$Extra;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/matomo/sdk/extra/DownloadTracker$Extra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "None"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildExtraIdentifier()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isIntensiveWork()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
