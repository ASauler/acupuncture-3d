.class public La/a/a/d/a/g$a;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/d/a/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/a/d/a/g;-><init>(La/a/a/d/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/a/a/d/a/b;

.field public final synthetic b:La/a/a/d/a/g;


# direct methods
.method public constructor <init>(La/a/a/d/a/g;La/a/a/d/a/b;)V
    .locals 0

    iput-object p1, p0, La/a/a/d/a/g$a;->b:La/a/a/d/a/g;

    iput-object p2, p0, La/a/a/d/a/g$a;->a:La/a/a/d/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/a/a/d/a/a;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, La/a/a/d/a/g$a;->b:La/a/a/d/a/g;

    invoke-virtual {v0}, La/a/a/d/a/g;->f()V

    iget-object v0, p0, La/a/a/d/a/g$a;->a:La/a/a/d/a/b;

    invoke-interface {v0, p1, p2}, La/a/a/d/a/b;->a(La/a/a/d/a/a;Ljava/lang/String;)V

    return-void
.end method
