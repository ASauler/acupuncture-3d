.class public Lcom/keiwando/lib_nativefileso/NativeFileSO;
.super Ljava/lang/Object;
.source "NativeFileSO.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.keiwando.nativefileso.{applicationId}.provider"

.field private static final fileBuffer:Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    invoke-static {}, Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;->getInstance()Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;

    move-result-object v0

    sput-object v0, Lcom/keiwando/lib_nativefileso/NativeFileSO;->fileBuffer:Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FreeMemory(Landroid/app/Activity;)V
    .locals 1

    .line 31
    sget-object v0, Lcom/keiwando/lib_nativefileso/NativeFileSO;->fileBuffer:Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;

    invoke-virtual {p0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;->freeMemory(Ljava/io/File;)V

    return-void
.end method

.method public static GetLoadedFileAtIndex(I)Lcom/keiwando/lib_nativefileso/OpenedFile;
    .locals 1

    .line 27
    sget-object v0, Lcom/keiwando/lib_nativefileso/NativeFileSO;->fileBuffer:Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;

    invoke-virtual {v0, p0}, Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;->getOpenedFileAtIndex(I)Lcom/keiwando/lib_nativefileso/OpenedFile;

    move-result-object p0

    return-object p0
.end method

.method public static GetNumberOfLoadedFiles()I
    .locals 1

    .line 23
    sget-object v0, Lcom/keiwando/lib_nativefileso/NativeFileSO;->fileBuffer:Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;

    invoke-virtual {v0}, Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;->getNumberOfLoadedFiles()I

    move-result v0

    return v0
.end method

.method public static LoadTemporaryFiles(Landroid/app/Activity;)V
    .locals 2

    .line 19
    sget-object v0, Lcom/keiwando/lib_nativefileso/NativeFileSO;->fileBuffer:Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;

    invoke-virtual {p0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;->loadFromTempDir(Ljava/io/File;Landroid/content/ContentResolver;)V

    return-void
.end method

.method public static OpenFile(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keiwando/lib_nativefileso/NativeFileOpenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mimetypes"

    .line 37
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "openedFromNativeFileSO"

    const/4 v1, 0x1

    .line 38
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 40
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static OpenFiles(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keiwando/lib_nativefileso/NativeFileOpenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mimetypes"

    .line 46
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "openedFromNativeFileSO"

    const/4 v1, 0x1

    .line 47
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "canOpenMultiple"

    .line 48
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static SaveFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 55
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p1, "{applicationId}"

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.keiwando.nativefileso.{applicationId}.provider"

    invoke-virtual {v2, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-static {p0, p1, v0}, Lcom/keiwando/lib_nativefileso/androidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    .line 63
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 65
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "Share"

    .line 67
    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
