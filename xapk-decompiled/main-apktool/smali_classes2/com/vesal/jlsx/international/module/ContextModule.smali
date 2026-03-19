.class public Lcom/vesal/jlsx/international/module/ContextModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "ContextModule.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const-string v0, "google_pay"

    .line 26
    iput-object v0, p0, Lcom/vesal/jlsx/international/module/ContextModule;->TAG:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/vesal/jlsx/international/module/ContextModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 32
    sput-object p1, Lcom/vesal/jlsx/international/utils/RNEventEmitter;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "ContextModule"

    return-object v0
.end method
