.class public final Lcom/wikitude/common/rendering/internal/NativeInternalRenderingInterface;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/j/a/d;


# instance fields
.field private final a:J

.field private final b:La/a/a/j/a/a;

.field private final c:La/a/a/j/a/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;J[I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/wikitude/common/rendering/internal/NativeInternalRenderingInterface;->a:J

    new-instance p2, La/a/a/j/a/b;

    invoke-direct {p2, p0}, La/a/a/j/a/b;-><init>(La/a/a/j/a/d;)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p4, v1

    invoke-static {}, Lcom/wikitude/common/rendering/RenderSettings$b;->values()[Lcom/wikitude/common/rendering/RenderSettings$b;

    move-result-object v3

    aget-object v2, v3, v2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p4, La/a/a/j/a/c;

    invoke-direct {p4, p1, p2, p0, p3}, La/a/a/j/a/c;-><init>(Landroid/content/Context;La/a/a/j/a/b;La/a/a/j/a/d;Ljava/util/List;)V

    iput-object p4, p0, Lcom/wikitude/common/rendering/internal/NativeInternalRenderingInterface;->c:La/a/a/j/a/c;

    new-instance p1, La/a/a/j/a/a;

    invoke-direct {p1}, La/a/a/j/a/a;-><init>()V

    iput-object p1, p0, Lcom/wikitude/common/rendering/internal/NativeInternalRenderingInterface;->b:La/a/a/j/a/a;

    return-void
.end method

.method public static synthetic a(Lcom/wikitude/common/rendering/internal/NativeInternalRenderingInterface;)La/a/a/j/a/c;
    .locals 0

    iget-object p0, p0, Lcom/wikitude/common/rendering/internal/NativeInternalRenderingInterface;->c:La/a/a/j/a/c;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-wide v0, p0, Lcom/wikitude/common/rendering/internal/NativeInternalRenderingInterface;->a:J

    invoke-virtual {p0, v0, v1}, Lcom/wikitude/common/rendering/internal/NativeInternalRenderingInterface;->surfaceCreatedNative(J)V

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-wide v0, p0, Lcom/wikitude/common/rendering/internal/NativeInternalRenderingInterface;->a:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/wikitude/common/rendering/internal/NativeInternalRenderingInterface;->setRenderingAPINative(JI)V

    return-void
.end method

.method public a(II)V
    .locals 2

    iget-wide v0, p0, Lcom/wikitude/common/rendering/internal/NativeInternalRenderingInterface;->a:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/wikitude/common/rendering/internal/NativeInternalRenderingInterface;->surfaceChangedNative(JII)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-wide v0, p0, Lcom/wikitude/common/rendering/internal/NativeInternalRenderingInterface;->a:J

    invoke-virtual {p0, v0, v1}, Lcom/wikitude/common/rendering/internal/NativeInternalRenderingInterface;->updateNative(J)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-wide v0, p0, Lcom/wikitude/common/rendering/internal/NativeInternalRenderingInterface;->a:J

    invoke-virtual {p0, v0, v1}, Lcom/wikitude/common/rendering/internal/NativeInternalRenderingInterface;->drawFrameNative(J)V

    return-void
.end method

.method public native drawFrameNative(J)V
.end method

.method public getGLView()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/rendering/internal/NativeInternalRenderingInterface;->c:La/a/a/j/a/c;

    return-object v0
.end method

.method public resume()V
    .locals 2

    iget-object v0, p0, Lcom/wikitude/common/rendering/internal/NativeInternalRenderingInterface;->b:La/a/a/j/a/a;

    new-instance v1, Lcom/wikitude/common/rendering/internal/NativeInternalRenderingInterface$a;

    invoke-direct {v1, p0}, Lcom/wikitude/common/rendering/internal/NativeInternalRenderingInterface$a;-><init>(Lcom/wikitude/common/rendering/internal/NativeInternalRenderingInterface;)V

    invoke-virtual {v0, v1}, La/a/a/j/a/a;->a(La/a/a/j/a/a$c;)V

    return-void
.end method

.method public setPreferredFramesPerSecond(I)V
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/rendering/internal/NativeInternalRenderingInterface;->b:La/a/a/j/a/a;

    invoke-virtual {v0, p1}, La/a/a/j/a/a;->a(I)V

    return-void
.end method

.method public native setRenderingAPINative(JI)V
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/rendering/internal/NativeInternalRenderingInterface;->c:La/a/a/j/a/c;

    invoke-virtual {v0}, La/a/a/j/a/c;->onResume()V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/rendering/internal/NativeInternalRenderingInterface;->c:La/a/a/j/a/c;

    invoke-virtual {v0}, La/a/a/j/a/c;->onPause()V

    return-void
.end method

.method public native surfaceChangedNative(JII)V
.end method

.method public native surfaceCreatedNative(J)V
.end method

.method public suspend()V
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/rendering/internal/NativeInternalRenderingInterface;->b:La/a/a/j/a/a;

    invoke-virtual {v0}, La/a/a/j/a/a;->a()V

    return-void
.end method

.method public native updateNative(J)V
.end method
