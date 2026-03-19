.class public Lcom/wikitude/common/meta/internal/NativeMetadataInterface;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/h/a/b;


# instance fields
.field private final a:La/a/a/h/a/c;

.field private final b:J


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/wikitude/common/meta/internal/NativeMetadataInterface;->b:J

    new-instance v0, La/a/a/h/a/c;

    invoke-direct {v0, p1, p0}, La/a/a/h/a/c;-><init>(Landroid/content/Context;La/a/a/h/a/b;)V

    iput-object v0, p0, Lcom/wikitude/common/meta/internal/NativeMetadataInterface;->a:La/a/a/h/a/c;

    invoke-virtual {v0}, La/a/a/h/a/c;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, La/a/a/h/a/c;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, La/a/a/h/a/c;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, La/a/a/h/a/c;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, La/a/a/h/a/c;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, La/a/a/h/a/c;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, La/a/a/h/a/c;->h()Z

    move-result v10

    move-object v1, p0

    move-wide v2, p2

    invoke-direct/range {v1 .. v10}, Lcom/wikitude/common/meta/internal/NativeMetadataInterface;->metadataAvailable(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private native metadataAvailable(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method private native onErrorNative(JILjava/lang/String;)V
.end method


# virtual methods
.method public a(La/a/a/h/a/a;Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/wikitude/common/meta/internal/NativeMetadataInterface;->b:J

    invoke-virtual {p1}, La/a/a/h/a/a;->a()I

    move-result p1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/wikitude/common/meta/internal/NativeMetadataInterface;->onErrorNative(JILjava/lang/String;)V

    return-void
.end method

.method public destroyTemporaryDirectory()V
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/meta/internal/NativeMetadataInterface;->a:La/a/a/h/a/c;

    invoke-virtual {v0}, La/a/a/h/a/c;->a()V

    return-void
.end method

.method public setRecurringInstantiation()V
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/meta/internal/NativeMetadataInterface;->a:La/a/a/h/a/c;

    invoke-virtual {v0}, La/a/a/h/a/c;->i()V

    return-void
.end method
