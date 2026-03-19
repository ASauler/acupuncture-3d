.class public Lcom/sfb/standalonefilebrowser/StandaloneFileBrowser;
.super Ljava/lang/Object;
.source "StandaloneFileBrowser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showOpenFileDialog(Landroid/app/Activity;Ljava/lang/String;ZLcom/sfb/standalonefilebrowser/StandaloneFileBrowserAndroidListener;)V
    .locals 1

    .line 8
    new-instance v0, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment;

    invoke-direct {v0}, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment;-><init>()V

    .line 9
    invoke-virtual {v0, p3}, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment;->setFileBrowserAndroidListener(Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserAndroidListener;)V

    .line 10
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment;->setMultiple(Ljava/lang/Boolean;)V

    .line 11
    invoke-virtual {v0, p1}, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment;->setTitle(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public static showOpenImageDialog(Landroid/app/Activity;Ljava/lang/String;ZLcom/sfb/standalonefilebrowser/StandaloneFileBrowserAndroidListener;)V
    .locals 1

    .line 17
    new-instance v0, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment;

    invoke-direct {v0}, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment;-><init>()V

    .line 18
    invoke-virtual {v0, p3}, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment;->setFileBrowserAndroidListener(Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserAndroidListener;)V

    .line 19
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment;->setMultiple(Ljava/lang/Boolean;)V

    .line 20
    invoke-virtual {v0, p1}, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment;->setTitle(Ljava/lang/String;)V

    .line 21
    sget-object p1, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;->IMAGE:Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;

    invoke-virtual {v0, p1}, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment;->setIntentType(Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;)V

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method
