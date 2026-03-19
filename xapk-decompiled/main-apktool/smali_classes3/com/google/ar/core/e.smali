.class final enum Lcom/google/ar/core/e;
.super Lcom/google/ar/core/ArCoreApk$Availability;
.source "ArCoreApk.java"


# direct methods
.method constructor <init>()V
    .locals 4

    const/16 v0, 0x64

    const/4 v1, 0x0

    const-string v2, "UNSUPPORTED_DEVICE_NOT_CAPABLE"

    const/4 v3, 0x3

    .line 1
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/ar/core/ArCoreApk$Availability;-><init>(Ljava/lang/String;IILcom/google/ar/core/a;)V

    return-void
.end method


# virtual methods
.method public final isUnsupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
