.class public Lcom/vesal/jlsx/international/module/CommonModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "CommonModule.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "acucommon"


# instance fields
.field private reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method static bridge synthetic -$$Nest$mcopyDbDone(Lcom/vesal/jlsx/international/module/CommonModule;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vesal/jlsx/international/module/CommonModule;->copyDbDone(Z)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 44
    iput-object p1, p0, Lcom/vesal/jlsx/international/module/CommonModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-void
.end method

.method private copyDbDone(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0x145

    goto :goto_0

    :cond_0
    move p1, v0

    .line 193
    :goto_0
    invoke-static {p1}, Lcom/vesal/jlsx/international/utils/SharedPreferenceData;->setLastVersion(I)V

    .line 194
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method


# virtual methods
.method public GetLayout()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    .line 76
    invoke-static {}, Lcom/vesal/jlsx/international/utils/SharedPreferenceData;->getDisplayOrientation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public SetLayout(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 60
    invoke-static {p1}, Lcom/vesal/jlsx/international/utils/SharedPreferenceData;->setDisplayOrientation(Ljava/lang/String;)V

    return-void
.end method

.method public exitApp()V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 167
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u8c03\u7528\u9000\u51faAPP"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 168
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public getDisplayHeight()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    .line 55
    invoke-virtual {p0}, Lcom/vesal/jlsx/international/module/CommonModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFcmToken(Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 83
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/vesal/jlsx/international/module/CommonModule$1;

    invoke-direct {v1, p0, p1}, Lcom/vesal/jlsx/international/module/CommonModule$1;-><init>(Lcom/vesal/jlsx/international/module/CommonModule;Lcom/facebook/react/bridge/Callback;)V

    .line 84
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "CommonModule"

    return-object v0
.end method

.method public initSDK()V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public inputMethod()V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 161
    invoke-virtual {p0}, Lcom/vesal/jlsx/international/module/CommonModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 162
    invoke-virtual {p0}, Lcom/vesal/jlsx/international/module/CommonModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public resetDb()V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/vesal/jlsx/international/module/CommonModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {v0}, Lcom/vesal/jlsx/international/utils/FileUtils;->getInstance(Landroid/content/Context;)Lcom/vesal/jlsx/international/utils/FileUtils;

    move-result-object v0

    const-string v1, "vesali-jlsx-international.db"

    invoke-virtual {v0, v1, v1}, Lcom/vesal/jlsx/international/utils/FileUtils;->copyAssetsToSD(Ljava/lang/String;Ljava/lang/String;)Lcom/vesal/jlsx/international/utils/FileUtils;

    .line 174
    iget-object v0, p0, Lcom/vesal/jlsx/international/module/CommonModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {v0}, Lcom/vesal/jlsx/international/utils/FileUtils;->getInstance(Landroid/content/Context;)Lcom/vesal/jlsx/international/utils/FileUtils;

    move-result-object v0

    const-string v1, "vesali-jlsx-international_en.db"

    invoke-virtual {v0, v1, v1}, Lcom/vesal/jlsx/international/utils/FileUtils;->copyAssetsToSD(Ljava/lang/String;Ljava/lang/String;)Lcom/vesal/jlsx/international/utils/FileUtils;

    .line 175
    iget-object v0, p0, Lcom/vesal/jlsx/international/module/CommonModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {v0}, Lcom/vesal/jlsx/international/utils/FileUtils;->getInstance(Landroid/content/Context;)Lcom/vesal/jlsx/international/utils/FileUtils;

    move-result-object v0

    new-instance v1, Lcom/vesal/jlsx/international/module/CommonModule$2;

    invoke-direct {v1, p0}, Lcom/vesal/jlsx/international/module/CommonModule$2;-><init>(Lcom/vesal/jlsx/international/module/CommonModule;)V

    invoke-virtual {v0, v1}, Lcom/vesal/jlsx/international/utils/FileUtils;->setFileOperateCallback(Lcom/vesal/jlsx/international/utils/FileUtils$FileOperateCallback;)V

    .line 188
    iget-object v0, p0, Lcom/vesal/jlsx/international/module/CommonModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {v0}, Lcom/vesal/jlsx/international/utils/FileUtils;->getInstance(Landroid/content/Context;)Lcom/vesal/jlsx/international/utils/FileUtils;

    move-result-object v0

    const-string v1, "vesali-jlsx-international_cht.db"

    invoke-virtual {v0, v1, v1}, Lcom/vesal/jlsx/international/utils/FileUtils;->copyAssetsToSD(Ljava/lang/String;Ljava/lang/String;)Lcom/vesal/jlsx/international/utils/FileUtils;

    return-void
.end method

.method public test3()V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method
