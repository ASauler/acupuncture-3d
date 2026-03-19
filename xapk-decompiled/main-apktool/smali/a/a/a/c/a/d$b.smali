.class public La/a/a/c/a/d$b;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/c/a/d$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/c/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/a/a/c/a/d;


# direct methods
.method public constructor <init>(La/a/a/c/a/d;)V
    .locals 0

    iput-object p1, p0, La/a/a/c/a/d$b;->a:La/a/a/c/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ar/core/HitResult;)V
    .locals 1

    iget-object v0, p0, La/a/a/c/a/d$b;->a:La/a/a/c/a/d;

    invoke-virtual {p1}, Lcom/google/ar/core/HitResult;->createAnchor()Lcom/google/ar/core/Anchor;

    move-result-object p1

    invoke-static {v0, p1}, La/a/a/c/a/d;->a(La/a/a/c/a/d;Lcom/google/ar/core/Anchor;)Lcom/google/ar/core/Anchor;

    return-void
.end method
