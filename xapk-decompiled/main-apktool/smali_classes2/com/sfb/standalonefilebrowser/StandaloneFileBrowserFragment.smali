.class public Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment;
.super Landroid/app/Fragment;
.source "StandaloneFileBrowserFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;
    }
.end annotation


# static fields
.field public static final PICKFILE_RESULT_CODE:I = 0x1


# instance fields
.field private fileBrowserAndroidListener:Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserAndroidListener;

.field private intentType:Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;

.field private multiple:Ljava/lang/Boolean;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 21
    sget-object v0, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;->FILE:Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;

    iput-object v0, p0, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment;->intentType:Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;

    return-void
.end method

.method private getFileCopyPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p1

    .line 66
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v2, :cond_1

    .line 67
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "_display_name"

    .line 68
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_3

    :cond_1
    move-object v3, v0

    :goto_0
    if-eqz v2, :cond_2

    .line 76
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 80
    :cond_2
    :try_start_2
    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v0

    .line 84
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 87
    :try_start_3
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/16 v4, 0x1000

    :try_start_4
    new-array v4, v4, [B

    .line 90
    :goto_1
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_4

    .line 91
    invoke-virtual {v2, v4, v3, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 93
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 97
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 99
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_1
    move-exception v1

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v2, v0

    :goto_2
    if-eqz v2, :cond_5

    .line 97
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 99
    :cond_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 100
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    return-object v0

    :catchall_3
    move-exception p1

    :goto_3
    if-eqz v0, :cond_6

    .line 76
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 78
    :cond_6
    throw p1

    :catch_1
    move-object v2, v0

    :catch_2
    if-eqz v2, :cond_7

    .line 76
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 109
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 110
    iget-object v0, p0, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment;->fileBrowserAndroidListener:Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserAndroidListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 p1, -0x1

    const-string v0, ""

    if-ne p2, p1, :cond_5

    .line 117
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    move-object p2, v0

    .line 118
    :goto_0
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-ge p1, v1, :cond_3

    if-eq p2, v0, :cond_2

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "|"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 122
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment;->getFileCopyPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    move-object v0, p2

    goto :goto_1

    .line 125
    :cond_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 126
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment;->getFileCopyPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment;->fileBrowserAndroidListener:Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserAndroidListener;

    invoke-interface {p1, v0}, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserAndroidListener;->onFilesSelected(Ljava/lang/String;)V

    .line 132
    :goto_2
    invoke-virtual {p0}, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 41
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 42
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 43
    iget-object v1, p0, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment;->intentType:Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;

    sget-object v2, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;->IMAGE:Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "android.intent.action.PICK"

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 47
    iget-object v1, p0, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment;->multiple:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    .line 48
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.GET_CONTENT"

    .line 52
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "*/*"

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    :cond_1
    :goto_0
    invoke-virtual {p0, v0, v3}, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public setFileBrowserAndroidListener(Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserAndroidListener;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment;->fileBrowserAndroidListener:Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserAndroidListener;

    return-void
.end method

.method public setIntentType(Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment;->intentType:Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;

    return-void
.end method

.method public setMultiple(Ljava/lang/Boolean;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment;->multiple:Ljava/lang/Boolean;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment;->title:Ljava/lang/String;

    return-void
.end method
