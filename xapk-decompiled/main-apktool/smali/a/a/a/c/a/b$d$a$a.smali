.class public La/a/a/c/a/b$d$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/a/c/a/b$d$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/a/a/c/a/b$d$a;


# direct methods
.method public constructor <init>(La/a/a/c/a/b$d$a;)V
    .locals 0

    iput-object p1, p0, La/a/a/c/a/b$d$a$a;->a:La/a/a/c/a/b$d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, La/a/a/c/a/b$d$a$a;->a:La/a/a/c/a/b$d$a;

    iget-object v1, v0, La/a/a/c/a/b$d$a;->a:Landroid/content/Context;

    iget-object v0, v0, La/a/a/c/a/b$d$a;->b:La/a/a/c/a/b$b;

    invoke-static {v1, v0}, La/a/a/c/a/b$d;->b(Landroid/content/Context;La/a/a/c/a/b$b;)V

    return-void
.end method
