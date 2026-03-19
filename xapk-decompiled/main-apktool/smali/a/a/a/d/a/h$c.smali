.class public La/a/a/d/a/h$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/d/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/a/a/d/a/h;


# direct methods
.method public constructor <init>(La/a/a/d/a/h;)V
    .locals 0

    iput-object p1, p0, La/a/a/d/a/h$c;->a:La/a/a/d/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 12

    iget-object v0, p0, La/a/a/d/a/h$c;->a:La/a/a/d/a/h;

    invoke-static {v0}, La/a/a/d/a/h;->a(La/a/a/d/a/h;)La/a/a/d/a/h$d;

    move-result-object v0

    sget-object v1, La/a/a/d/a/h$d;->b:La/a/a/d/a/h$d;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v11

    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v10

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v9

    iget-object v3, p0, La/a/a/d/a/h$c;->a:La/a/a/d/a/h;

    invoke-static {v3}, La/a/a/d/a/h;->o(La/a/a/d/a/h;)La/a/a/d/a/b;

    move-result-object v3

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    aget-object v2, v0, v2

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-interface/range {v3 .. v11}, La/a/a/d/a/b;->a(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    :cond_0
    return-void
.end method
