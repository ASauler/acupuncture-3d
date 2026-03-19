.class public final Lcom/wikitude/common/runtime/internal/NativeRuntimeInterface;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/k/a/c;


# instance fields
.field private final a:J

.field private final b:La/a/a/k/a/b;


# direct methods
.method private constructor <init>(Landroid/content/Context;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/wikitude/common/runtime/internal/NativeRuntimeInterface;->a:J

    new-instance p2, La/a/a/k/a/b;

    invoke-direct {p2, p1, p0}, La/a/a/k/a/b;-><init>(Landroid/content/Context;La/a/a/k/a/c;)V

    iput-object p2, p0, Lcom/wikitude/common/runtime/internal/NativeRuntimeInterface;->b:La/a/a/k/a/b;

    return-void
.end method

.method private native orientationChangedNative(JI)V
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-wide v0, p0, Lcom/wikitude/common/runtime/internal/NativeRuntimeInterface;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/wikitude/common/runtime/internal/NativeRuntimeInterface;->orientationChangedNative(JI)V

    return-void
.end method

.method public start()Lcom/wikitude/common/CallStatus;
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/runtime/internal/NativeRuntimeInterface;->b:La/a/a/k/a/b;

    invoke-virtual {v0}, La/a/a/k/a/b;->a()Lcom/wikitude/common/CallStatus;

    move-result-object v0

    return-object v0
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/runtime/internal/NativeRuntimeInterface;->b:La/a/a/k/a/b;

    invoke-virtual {v0}, La/a/a/k/a/b;->b()V

    return-void
.end method
