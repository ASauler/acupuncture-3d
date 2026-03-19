.class public Lcom/vesal/jlsx/international/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vesal/jlsx/international/utils/FileUtils$FileOperateCallback;
    }
.end annotation


# static fields
.field private static final FAILED:I = 0x0

.field private static final SUCCESS:I = 0x1

.field private static instance:Lcom/vesal/jlsx/international/utils/FileUtils;


# instance fields
.field private callback:Lcom/vesal/jlsx/international/utils/FileUtils$FileOperateCallback;

.field private context:Landroid/content/Context;

.field private errorStr:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private volatile isSuccess:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetcallback(Lcom/vesal/jlsx/international/utils/FileUtils;)Lcom/vesal/jlsx/international/utils/FileUtils$FileOperateCallback;
    .locals 0

    iget-object p0, p0, Lcom/vesal/jlsx/international/utils/FileUtils;->callback:Lcom/vesal/jlsx/international/utils/FileUtils$FileOperateCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontext(Lcom/vesal/jlsx/international/utils/FileUtils;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/vesal/jlsx/international/utils/FileUtils;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeterrorStr(Lcom/vesal/jlsx/international/utils/FileUtils;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vesal/jlsx/international/utils/FileUtils;->errorStr:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethandler(Lcom/vesal/jlsx/international/utils/FileUtils;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/vesal/jlsx/international/utils/FileUtils;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisSuccess(Lcom/vesal/jlsx/international/utils/FileUtils;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/vesal/jlsx/international/utils/FileUtils;->isSuccess:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mcopyAssetsToDst(Lcom/vesal/jlsx/international/utils/FileUtils;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vesal/jlsx/international/utils/FileUtils;->copyAssetsToDst(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/vesal/jlsx/international/utils/FileUtils$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vesal/jlsx/international/utils/FileUtils$1;-><init>(Lcom/vesal/jlsx/international/utils/FileUtils;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vesal/jlsx/international/utils/FileUtils;->handler:Landroid/os/Handler;

    .line 33
    iput-object p1, p0, Lcom/vesal/jlsx/international/utils/FileUtils;->context:Landroid/content/Context;

    return-void
.end method

.method private copyAssetsToDst(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const-string v0, "db"

    const-string v1, ""

    const/4 v2, 0x0

    .line 71
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 74
    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 76
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 79
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 80
    invoke-virtual {p2, v0, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    .line 83
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 84
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    const/4 p1, 0x1

    .line 86
    iput-boolean p1, p0, Lcom/vesal/jlsx/international/utils/FileUtils;->isSuccess:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vesal/jlsx/international/utils/FileUtils;->errorStr:Ljava/lang/String;

    .line 90
    iput-boolean v2, p0, Lcom/vesal/jlsx/international/utils/FileUtils;->isSuccess:Z

    :goto_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/vesal/jlsx/international/utils/FileUtils;
    .locals 1

    .line 27
    sget-object v0, Lcom/vesal/jlsx/international/utils/FileUtils;->instance:Lcom/vesal/jlsx/international/utils/FileUtils;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/vesal/jlsx/international/utils/FileUtils;

    invoke-direct {v0, p0}, Lcom/vesal/jlsx/international/utils/FileUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vesal/jlsx/international/utils/FileUtils;->instance:Lcom/vesal/jlsx/international/utils/FileUtils;

    .line 29
    :cond_0
    sget-object p0, Lcom/vesal/jlsx/international/utils/FileUtils;->instance:Lcom/vesal/jlsx/international/utils/FileUtils;

    return-object p0
.end method


# virtual methods
.method public copyAssetsToSD(Ljava/lang/String;Ljava/lang/String;)Lcom/vesal/jlsx/international/utils/FileUtils;
    .locals 1

    .line 52
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/vesal/jlsx/international/utils/FileUtils$2;

    invoke-direct {v0, p0, p1}, Lcom/vesal/jlsx/international/utils/FileUtils$2;-><init>(Lcom/vesal/jlsx/international/utils/FileUtils;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 61
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-object p0
.end method

.method public setFileOperateCallback(Lcom/vesal/jlsx/international/utils/FileUtils$FileOperateCallback;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/vesal/jlsx/international/utils/FileUtils;->callback:Lcom/vesal/jlsx/international/utils/FileUtils$FileOperateCallback;

    return-void
.end method
