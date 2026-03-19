.class public final La/a/a/h/a/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "wikitude-tmp"

.field private static final b:Ljava/lang/String; = "wikitude-docs"

.field private static final c:Ljava/lang/String; = "NON_RECURRING_INSTANTIATION"

.field private static final d:Ljava/lang/String; = "wikitude-preferences"


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/io/File;

.field private final j:Ljava/io/File;

.field private final k:La/a/a/h/a/b;

.field private final l:Z

.field private final m:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;La/a/a/h/a/b;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, La/a/a/h/a/c;->f:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, La/a/a/h/a/c;->g:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, La/a/a/h/a/c;->h:Ljava/lang/String;

    iput-object p2, p0, La/a/a/h/a/c;->k:La/a/a/h/a/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "wikitude-tmp"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, La/a/a/h/a/c;->i:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string/jumbo v4, "wikitude-docs"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, La/a/a/h/a/c;->j:Ljava/io/File;

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v4, "Lenovo"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "A6"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "lenovo_hmd"

    goto :goto_0

    :cond_0
    const-string v0, "Android"

    :goto_0
    iput-object v0, p0, La/a/a/h/a/c;->e:Ljava/lang/String;

    invoke-direct {p0, v3}, La/a/a/h/a/c;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, La/a/a/h/a/a;->a:La/a/a/h/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Could not create temp directory "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, La/a/a/h/a/b;->a(La/a/a/h/a/a;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, v1}, La/a/a/h/a/c;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, La/a/a/h/a/a;->a:La/a/a/h/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not create doc directory "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, La/a/a/h/a/b;->a(La/a/a/h/a/a;Ljava/lang/String;)V

    :cond_2
    const-string/jumbo p2, "wikitude-preferences"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, La/a/a/h/a/c;->m:Landroid/content/SharedPreferences;

    const-string p2, "NON_RECURRING_INSTANTIATION"

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, La/a/a/h/a/c;->l:Z

    return-void
.end method

.method private a(Ljava/io/File;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private b(Ljava/io/File;)V
    .locals 4

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-direct {p0, v3}, La/a/a/h/a/c;->b(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, La/a/a/h/a/c;->k:La/a/a/h/a/b;

    sget-object v1, La/a/a/h/a/a;->b:La/a/a/h/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not delete file or directory: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, La/a/a/h/a/b;->a(La/a/a/h/a/a;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, La/a/a/h/a/c;->i:Ljava/io/File;

    invoke-direct {p0, v0}, La/a/a/h/a/c;->b(Ljava/io/File;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/h/a/c;->j:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/h/a/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/h/a/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/h/a/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/h/a/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/h/a/c;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, La/a/a/h/a/c;->l:Z

    return v0
.end method

.method public i()V
    .locals 3

    iget-object v0, p0, La/a/a/h/a/c;->m:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "NON_RECURRING_INSTANTIATION"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
