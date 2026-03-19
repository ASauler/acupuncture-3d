.class public final La/a/a/e/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/e/a/a$b;
    }
.end annotation


# static fields
.field private static a:Z = false


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 1

    sget-boolean v0, La/a/a/e/a/a;->a:Z

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, La/a/a/e/a/a$b;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/a/a/e/a/a$b;-><init>(La/a/a/e/a/a$a;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, La/a/a/e/a/a;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, La/a/a/e/a/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La/a/a/e/a/a$b;-><init>(Ljava/lang/String;La/a/a/e/a/a$a;)V

    throw v0
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, La/a/a/e/a/a;->a:Z

    return-void
.end method
