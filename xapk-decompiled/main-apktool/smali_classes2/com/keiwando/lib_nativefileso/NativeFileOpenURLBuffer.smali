.class public Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;
.super Ljava/lang/Object;
.source "NativeFileOpenURLBuffer.java"


# static fields
.field private static final NATIVE_SO_DIR:Ljava/lang/String; = "NativeFileSO"

.field private static final instance:Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;


# instance fields
.field private openedFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/keiwando/lib_nativefileso/OpenedFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;

    invoke-direct {v0}, Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;-><init>()V

    sput-object v0, Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;->instance:Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;->openedFiles:Ljava/util/ArrayList;

    return-void
.end method

.method private clearDirectory(Ljava/io/File;)V
    .locals 3

    .line 212
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 214
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 215
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getFileSizeFromUri(Landroid/net/Uri;Landroid/content/ContentResolver;)J
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    move-object v1, p1

    .line 149
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_0

    .line 153
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "_size"

    .line 154
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 157
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-wide v0
.end method

.method private getFilenameFromUri(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    move-object v1, p1

    .line 119
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 123
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "_display_name"

    .line 124
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 127
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "Plugin DEBUG"

    const-string v2, "Could not retrieve filename"

    .line 128
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    .line 131
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :goto_1
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_0
    throw p1

    :cond_1
    :goto_2
    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    :goto_3
    if-nez v0, :cond_3

    .line 136
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 p2, 0x2f

    .line 137
    invoke-virtual {v0, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_3

    add-int/lit8 p2, p2, 0x1

    .line 139
    invoke-virtual {v0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "File Path: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Plugin Debug"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Filename: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getInstance()Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;
    .locals 1

    .line 24
    sget-object v0, Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;->instance:Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;

    return-object v0
.end method

.method private getNativeSODir(Ljava/io/File;)Ljava/io/File;
    .locals 2

    .line 203
    new-instance v0, Ljava/io/File;

    const-string v1, "NativeFileSO"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-object v0
.end method


# virtual methods
.method public freeMemory(Ljava/io/File;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;->openedFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 198
    invoke-direct {p0, p1}, Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;->getNativeSODir(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;->clearDirectory(Ljava/io/File;)V

    const-string p1, "Plugin DEBUG"

    const-string v0, "Freed Memory"

    .line 199
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getNumberOfLoadedFiles()I
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;->openedFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getOpenedFileAtIndex(I)Lcom/keiwando/lib_nativefileso/OpenedFile;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;->openedFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keiwando/lib_nativefileso/OpenedFile;

    return-object p1
.end method

.method public loadFileFromUri(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcom/keiwando/lib_nativefileso/OpenedFile;
    .locals 8

    const-string v0, "File size: "

    const-string v1, "Start loading file"

    const-string v2, "Plugin DEBUG"

    .line 39
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 43
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_0

    return-object v1

    .line 49
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;->getFileSizeFromUri(Landroid/net/Uri;Landroid/content/ContentResolver;)J

    move-result-wide v4

    const-wide/32 v6, 0x7fffffff

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    const-string v5, "Plugin Debug"

    .line 50
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 56
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v6, 0x400

    new-array v6, v6, [B

    .line 59
    :goto_0
    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-eq v7, v5, :cond_1

    .line 60
    invoke-virtual {v4, v6, v0, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_1

    .line 66
    :cond_2
    new-array v5, v4, [B

    .line 67
    invoke-virtual {v3, v5, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-object v0, v5

    .line 70
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;->getFilenameFromUri(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p2

    const-string v4, "A file was loaded in Plugin!"

    .line 72
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 75
    new-instance v3, Lcom/keiwando/lib_nativefileso/OpenedFile;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p2, v0, p1}, Lcom/keiwando/lib_nativefileso/OpenedFile;-><init>(Ljava/lang/String;[BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p1

    .line 82
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-string p1, "EXCEPTION: File did not finish loading!"

    .line 83
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_1
    move-exception p1

    .line 78
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-object v1
.end method

.method public loadFromTempDir(Ljava/io/File;Landroid/content/ContentResolver;)V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 182
    invoke-direct {p0, p1}, Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;->getNativeSODir(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 185
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;->getFilenameFromUri(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 186
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;->getFileSizeFromUri(Landroid/net/Uri;Landroid/content/ContentResolver;)J

    .line 187
    new-instance v5, Lcom/keiwando/lib_nativefileso/OpenedFile;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v4, v1, v3}, Lcom/keiwando/lib_nativefileso/OpenedFile;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    .line 189
    iget-object v3, p0, Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;->openedFiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "Plugin DEBUG"

    const-string v4, "Loaded file from Cache Dir"

    .line 190
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public refreshBufferWithUris(Ljava/util/ArrayList;Landroid/content/ContentResolver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/content/ContentResolver;",
            ")V"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;->openedFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 29
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 30
    invoke-virtual {p0, v0, p2}, Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;->loadFileFromUri(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcom/keiwando/lib_nativefileso/OpenedFile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v1, p0, Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;->openedFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public saveFileFromUriToFolder(Landroid/net/Uri;Ljava/io/File;Landroid/content/ContentResolver;)V
    .locals 2

    const-string v0, "Plugin DEBUG"

    const-string v1, "Start loading file"

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :try_start_0
    invoke-virtual {p3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 100
    :cond_0
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p2, 0x2800

    new-array p2, p2, [B

    .line 104
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    .line 105
    invoke-virtual {p3, p2, v1, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 113
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 111
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public saveFilesInCacheDir(Ljava/util/ArrayList;Ljava/io/File;Landroid/content/ContentResolver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/io/File;",
            "Landroid/content/ContentResolver;",
            ")V"
        }
    .end annotation

    .line 165
    new-instance v0, Ljava/io/File;

    const-string v1, "NativeFileSO"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 167
    invoke-direct {p0, v0}, Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;->clearDirectory(Ljava/io/File;)V

    .line 169
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    .line 171
    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p2, p3}, Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;->getFilenameFromUri(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0, p2, v1, p3}, Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;->saveFileFromUriToFolder(Landroid/net/Uri;Ljava/io/File;Landroid/content/ContentResolver;)V

    const-string p2, "Plugin DEBUG"

    const-string v1, "Saved file in Cache Dir"

    .line 174
    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method
