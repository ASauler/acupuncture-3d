.class public interface abstract Lorg/matomo/sdk/extra/DownloadTracker$Extra;
.super Ljava/lang/Object;
.source "DownloadTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/matomo/sdk/extra/DownloadTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Extra"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/matomo/sdk/extra/DownloadTracker$Extra$None;,
        Lorg/matomo/sdk/extra/DownloadTracker$Extra$Custom;,
        Lorg/matomo/sdk/extra/DownloadTracker$Extra$ApkChecksum;
    }
.end annotation


# virtual methods
.method public abstract buildExtraIdentifier()Ljava/lang/String;
.end method

.method public abstract isIntensiveWork()Z
.end method
