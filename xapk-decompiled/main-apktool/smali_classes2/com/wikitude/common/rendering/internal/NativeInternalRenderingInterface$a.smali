.class public Lcom/wikitude/common/rendering/internal/NativeInternalRenderingInterface$a;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/j/a/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wikitude/common/rendering/internal/NativeInternalRenderingInterface;->resume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/wikitude/common/rendering/internal/NativeInternalRenderingInterface;


# direct methods
.method public constructor <init>(Lcom/wikitude/common/rendering/internal/NativeInternalRenderingInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/wikitude/common/rendering/internal/NativeInternalRenderingInterface$a;->a:Lcom/wikitude/common/rendering/internal/NativeInternalRenderingInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/rendering/internal/NativeInternalRenderingInterface$a;->a:Lcom/wikitude/common/rendering/internal/NativeInternalRenderingInterface;

    invoke-static {v0}, Lcom/wikitude/common/rendering/internal/NativeInternalRenderingInterface;->a(Lcom/wikitude/common/rendering/internal/NativeInternalRenderingInterface;)La/a/a/j/a/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method
