.class public Lcom/keiwando/lib_nativefileso/NativeFileOpenActivity;
.super Landroid/app/Activity;
.source "NativeFileOpenActivity.java"


# instance fields
.field private final REQUEST_CODE:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    .line 15
    iput v0, p0, Lcom/keiwando/lib_nativefileso/NativeFileOpenActivity;->REQUEST_CODE:I

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 89
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnActivity result "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Plugin DEBUG"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v2, :cond_3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    if-eqz p3, :cond_3

    .line 97
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p2

    if-nez p2, :cond_1

    .line 101
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 103
    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result p3

    if-ge v1, p3, :cond_2

    .line 104
    invoke-virtual {p2, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 108
    :cond_2
    :goto_2
    invoke-static {}, Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;->getInstance()Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;

    move-result-object p2

    invoke-virtual {p0}, Lcom/keiwando/lib_nativefileso/NativeFileOpenActivity;->getCacheDir()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p0}, Lcom/keiwando/lib_nativefileso/NativeFileOpenActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2, p1, p3, v0}, Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;->saveFilesInCacheDir(Ljava/util/ArrayList;Ljava/io/File;Landroid/content/ContentResolver;)V

    .line 112
    :cond_3
    invoke-virtual {p0}, Lcom/keiwando/lib_nativefileso/NativeFileOpenActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/keiwando/lib_nativefileso/NativeFileOpenActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "openedFromNativeFileSO"

    const/4 v1, 0x0

    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "Plugin DEBUG"

    if-eqz v0, :cond_3

    .line 27
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "mimetypes"

    .line 29
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "*/*"

    .line 30
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.LOCAL_ONLY"

    const/4 v5, 0x1

    .line 31
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "canOpenMultiple"

    .line 32
    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "android.intent.extra.ALLOW_MULTIPLE"

    .line 34
    invoke-virtual {v0, p1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    if-eqz v3, :cond_2

    const-string p1, ""

    .line 37
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, " "

    .line 38
    invoke-virtual {v3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 40
    array-length v3, p1

    if-ne v3, v5, :cond_1

    .line 41
    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v1, "android.intent.extra.MIME_TYPES"

    .line 43
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    :goto_0
    const-string p1, "android.intent.category.OPENABLE"

    .line 47
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "Showing Chooser"

    .line 49
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Select a file"

    .line 51
    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, v5}, Lcom/keiwando/lib_nativefileso/NativeFileOpenActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_4

    :cond_3
    const-string v0, "Opened externally"

    .line 55
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.action.SEND"

    const-string v4, "android.intent.extra.STREAM"

    if-ne v1, v3, :cond_4

    .line 61
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const-string v3, "android.intent.action.SEND_MULTIPLE"

    if-ne v1, v3, :cond_5

    .line 64
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_2

    :cond_5
    const-string v3, "android.intent.action.VIEW"

    if-eq v1, v3, :cond_7

    const-string v3, "android.intent.action.EDIT"

    if-ne v1, v3, :cond_6

    goto :goto_1

    :cond_6
    const-string p1, "Intent action not known."

    .line 68
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 66
    :cond_7
    :goto_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    if-eqz v0, :cond_8

    .line 73
    invoke-static {}, Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;->getInstance()Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/keiwando/lib_nativefileso/NativeFileOpenActivity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lcom/keiwando/lib_nativefileso/NativeFileOpenActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/keiwando/lib_nativefileso/NativeFileOpenURLBuffer;->saveFilesInCacheDir(Ljava/util/ArrayList;Ljava/io/File;Landroid/content/ContentResolver;)V

    .line 75
    invoke-virtual {p0}, Lcom/keiwando/lib_nativefileso/NativeFileOpenActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/keiwando/lib_nativefileso/NativeFileOpenActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const v0, 0x10008000

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, p1}, Lcom/keiwando/lib_nativefileso/NativeFileOpenActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :cond_8
    const-string p1, "No Uris"

    .line 80
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_3
    invoke-virtual {p0}, Lcom/keiwando/lib_nativefileso/NativeFileOpenActivity;->finish()V

    :goto_4
    return-void
.end method
