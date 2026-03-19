.class final enum Lcom/google/ar/core/c;
.super Lcom/google/ar/core/ArCoreApk$Availability;
.source "ArCoreApk.java"


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_CHECKING"

    .line 1
    invoke-direct {p0, v2, v0, v0, v1}, Lcom/google/ar/core/ArCoreApk$Availability;-><init>(Ljava/lang/String;IILcom/google/ar/core/a;)V

    return-void
.end method


# virtual methods
.method public final isTransient()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isUnknown()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
