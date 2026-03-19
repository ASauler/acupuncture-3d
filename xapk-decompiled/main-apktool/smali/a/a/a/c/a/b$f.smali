.class public final La/a/a/c/a/b$f;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/c/a/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/c/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(La/a/a/c/a/b$a;)V
    .locals 0

    invoke-direct {p0}, La/a/a/c/a/b$f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method

.method public a(Landroid/content/Context;La/a/a/c/a/b$b;)V
    .locals 0

    const/4 p1, 0x2

    invoke-interface {p2, p1}, La/a/a/c/a/b$b;->a(I)V

    return-void
.end method
