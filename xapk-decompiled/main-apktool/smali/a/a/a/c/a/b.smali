.class public final La/a/a/c/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/c/a/b$d;,
        La/a/a/c/a/b$e;,
        La/a/a/c/a/b$f;,
        La/a/a/c/a/b$c;,
        La/a/a/c/a/b$b;
    }
.end annotation


# static fields
.field private static a:La/a/a/c/a/b$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.google.ar.core.ArCoreApk"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v1, "com.google.ar.core.Config"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v1, "com.google.ar.core.Session"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v1, La/a/a/c/a/b$d;

    invoke-direct {v1, v0}, La/a/a/c/a/b$d;-><init>(La/a/a/c/a/b$a;)V

    sput-object v1, La/a/a/c/a/b;->a:La/a/a/c/a/b$c;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Wikitude"

    const-string v2, "Can\'t find ArCore. Make sure to add it as a dependency of the app."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, La/a/a/c/a/b$e;

    invoke-direct {v1, v0}, La/a/a/c/a/b$e;-><init>(La/a/a/c/a/b$a;)V

    sput-object v1, La/a/a/c/a/b;->a:La/a/a/c/a/b$c;

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 1

    sget-object v0, La/a/a/c/a/b;->a:La/a/a/c/a/b$c;

    invoke-interface {v0, p0}, La/a/a/c/a/b$c;->a(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;La/a/a/c/a/b$b;)V
    .locals 1

    sget-object v0, La/a/a/c/a/b;->a:La/a/a/c/a/b$c;

    invoke-interface {v0, p0, p1}, La/a/a/c/a/b$c;->a(Landroid/content/Context;La/a/a/c/a/b$b;)V

    return-void
.end method
