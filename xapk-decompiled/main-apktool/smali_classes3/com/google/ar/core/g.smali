.class final enum Lcom/google/ar/core/g;
.super Lcom/google/ar/core/ArCoreApk$Availability;
.source "ArCoreApk.java"


# direct methods
.method constructor <init>()V
    .locals 4

    const/16 v0, 0xca

    const/4 v1, 0x0

    const-string v2, "SUPPORTED_APK_TOO_OLD"

    const/4 v3, 0x5

    .line 1
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/ar/core/ArCoreApk$Availability;-><init>(Ljava/lang/String;IILcom/google/ar/core/a;)V

    return-void
.end method


# virtual methods
.method public final isSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
