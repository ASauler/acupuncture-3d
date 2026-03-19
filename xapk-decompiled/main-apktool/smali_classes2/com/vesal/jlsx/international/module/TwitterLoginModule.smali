.class public Lcom/vesal/jlsx/international/module/TwitterLoginModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "TwitterLoginModule.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private context:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method static bridge synthetic -$$Nest$mloginFailed(Lcom/vesal/jlsx/international/module/TwitterLoginModule;Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vesal/jlsx/international/module/TwitterLoginModule;->loginFailed(Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mloginSuccess(Lcom/vesal/jlsx/international/module/TwitterLoginModule;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/vesal/jlsx/international/module/TwitterLoginModule;->loginSuccess(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const-string v0, "TWITTER_LOGIN"

    .line 37
    iput-object v0, p0, Lcom/vesal/jlsx/international/module/TwitterLoginModule;->TAG:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/vesal/jlsx/international/module/TwitterLoginModule;->context:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-void
.end method

.method private loginFailed(Lcom/facebook/react/bridge/Callback;)V
    .locals 3

    .line 160
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "\'success\'"

    const/4 v2, 0x0

    .line 161
    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 162
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method private loginSuccess(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 2

    .line 152
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "authToken"

    .line 153
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "authTokenSecret"

    .line 154
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "success"

    const/4 p2, 0x1

    .line 155
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 156
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "TwitterLoginModule"

    return-object v0
.end method

.method public login(Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 123
    new-instance v0, Lcom/vesal/jlsx/international/module/TwitterLoginUtils;

    invoke-virtual {p0}, Lcom/vesal/jlsx/international/module/TwitterLoginModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vesal/jlsx/international/module/TwitterLoginUtils;-><init>(Landroid/app/Activity;)V

    .line 124
    new-instance v1, Lcom/vesal/jlsx/international/module/TwitterLoginModule$5;

    invoke-direct {v1, p0, p1}, Lcom/vesal/jlsx/international/module/TwitterLoginModule$5;-><init>(Lcom/vesal/jlsx/international/module/TwitterLoginModule;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, v1}, Lcom/vesal/jlsx/international/module/TwitterLoginUtils;->setOnLoginByTwitterClick(Lcom/twitter/sdk/android/core/Callback;)V

    return-void
.end method

.method public login1(Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "twitter.com"

    .line 53
    invoke-static {v0}, Lcom/google/firebase/auth/OAuthProvider;->newBuilder(Ljava/lang/String;)Lcom/google/firebase/auth/OAuthProvider$Builder;

    move-result-object v0

    .line 54
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getPendingAuthResult()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 58
    new-instance v0, Lcom/vesal/jlsx/international/module/TwitterLoginModule$2;

    invoke-direct {v0, p0, p1}, Lcom/vesal/jlsx/international/module/TwitterLoginModule$2;-><init>(Lcom/vesal/jlsx/international/module/TwitterLoginModule;Lcom/facebook/react/bridge/Callback;)V

    .line 59
    invoke-virtual {v2, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/vesal/jlsx/international/module/TwitterLoginModule$1;

    invoke-direct {v1, p0, p1}, Lcom/vesal/jlsx/international/module/TwitterLoginModule$1;-><init>(Lcom/vesal/jlsx/international/module/TwitterLoginModule;Lcom/facebook/react/bridge/Callback;)V

    .line 76
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/vesal/jlsx/international/module/TwitterLoginModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/firebase/auth/OAuthProvider$Builder;->build()Lcom/google/firebase/auth/OAuthProvider;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/auth/FirebaseAuth;->startActivityForSignInWithProvider(Landroid/app/Activity;Lcom/google/firebase/auth/FederatedAuthProvider;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/vesal/jlsx/international/module/TwitterLoginModule$4;

    invoke-direct {v1, p0, p1}, Lcom/vesal/jlsx/international/module/TwitterLoginModule$4;-><init>(Lcom/vesal/jlsx/international/module/TwitterLoginModule;Lcom/facebook/react/bridge/Callback;)V

    .line 91
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/vesal/jlsx/international/module/TwitterLoginModule$3;

    invoke-direct {v1, p0, p1}, Lcom/vesal/jlsx/international/module/TwitterLoginModule$3;-><init>(Lcom/vesal/jlsx/international/module/TwitterLoginModule;Lcom/facebook/react/bridge/Callback;)V

    .line 107
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    :goto_0
    return-void
.end method
