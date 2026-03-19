.class final Landroidx/camera/core/ImageYuvToRgbConverter;
.super Ljava/lang/Object;
.source "ImageYuvToRgbConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/ImageYuvToRgbConverter$Result;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageYuvToRgbConverter"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "yuv_to_rgb_jni"

    .line 35
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native convertAndroid420ToABGR(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IILandroid/view/Surface;III)I
.end method

.method public static convertYUVToRGB(Landroidx/camera/core/ImageProxy;Landroidx/camera/core/impl/ImageReaderProxy;)Landroidx/camera/core/ImageProxy;
    .locals 5

    .line 63
    invoke-static {p0}, Landroidx/camera/core/ImageYuvToRgbConverter;->isSupportedYUVFormat(Landroidx/camera/core/ImageProxy;)Z

    move-result v0

    const-string v1, "Unsupported format for YUV to RGB"

    const/4 v2, 0x0

    const-string v3, "ImageYuvToRgbConverter"

    if-nez v0, :cond_0

    .line 64
    invoke-static {v3, v1}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 70
    :cond_0
    invoke-interface {p1}, Landroidx/camera/core/impl/ImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 69
    invoke-static {p0, v0}, Landroidx/camera/core/ImageYuvToRgbConverter;->convertYUVToRGBInternal(Landroidx/camera/core/ImageProxy;Landroid/view/Surface;)Landroidx/camera/core/ImageYuvToRgbConverter$Result;

    move-result-object v0

    .line 72
    sget-object v4, Landroidx/camera/core/ImageYuvToRgbConverter$Result;->ERROR_CONVERSION:Landroidx/camera/core/ImageYuvToRgbConverter$Result;

    if-ne v0, v4, :cond_1

    const-string p0, "YUV to RGB conversion failure"

    .line 73
    invoke-static {v3, p0}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 77
    :cond_1
    sget-object v4, Landroidx/camera/core/ImageYuvToRgbConverter$Result;->ERROR_FORMAT:Landroidx/camera/core/ImageYuvToRgbConverter$Result;

    if-ne v0, v4, :cond_2

    .line 78
    invoke-static {v3, v1}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 83
    :cond_2
    invoke-interface {p1}, Landroidx/camera/core/impl/ImageReaderProxy;->acquireLatestImage()Landroidx/camera/core/ImageProxy;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 87
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->close()V

    :cond_3
    return-object p1
.end method

.method private static convertYUVToRGBInternal(Landroidx/camera/core/ImageProxy;Landroid/view/Surface;)Landroidx/camera/core/ImageYuvToRgbConverter$Result;
    .locals 11

    .line 114
    invoke-static {p0}, Landroidx/camera/core/ImageYuvToRgbConverter;->isSupportedYUVFormat(Landroidx/camera/core/ImageProxy;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    sget-object p0, Landroidx/camera/core/ImageYuvToRgbConverter$Result;->ERROR_FORMAT:Landroidx/camera/core/ImageYuvToRgbConverter$Result;

    return-object p0

    .line 118
    :cond_0
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v8

    .line 119
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result v9

    const/4 v10, 0x0

    .line 121
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getRowStride()I

    move-result v2

    .line 122
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v0

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getRowStride()I

    move-result v4

    .line 123
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v0

    const/4 v5, 0x2

    aget-object v0, v0, v5

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getRowStride()I

    move-result v6

    .line 124
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getPixelStride()I

    move-result v7

    .line 127
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 129
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-interface {v1}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 131
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object p0

    aget-object p0, p0, v5

    invoke-interface {p0}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    move v1, v2

    move-object v2, v3

    move v3, v4

    move-object v4, p0

    move v5, v6

    move v6, v7

    move-object v7, p1

    .line 126
    invoke-static/range {v0 .. v10}, Landroidx/camera/core/ImageYuvToRgbConverter;->convertAndroid420ToABGR(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IILandroid/view/Surface;III)I

    move-result p0

    if-eqz p0, :cond_1

    .line 139
    sget-object p0, Landroidx/camera/core/ImageYuvToRgbConverter$Result;->ERROR_CONVERSION:Landroidx/camera/core/ImageYuvToRgbConverter$Result;

    return-object p0

    .line 141
    :cond_1
    sget-object p0, Landroidx/camera/core/ImageYuvToRgbConverter$Result;->SUCCESS:Landroidx/camera/core/ImageYuvToRgbConverter$Result;

    return-object p0
.end method

.method private static isSupportedYUVFormat(Landroidx/camera/core/ImageProxy;)Z
    .locals 2

    .line 99
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getFormat()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    .line 100
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object p0

    array-length p0, p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
