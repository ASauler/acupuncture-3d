.class public Lcom/reactnative/unity/view/UnityNativeModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "UnityNativeModule.java"

# interfaces
.implements Lcom/reactnative/unity/view/UnityEventListener;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 14
    invoke-static {p0}, Lcom/reactnative/unity/view/UnityUtils;->addUnityEventListener(Lcom/reactnative/unity/view/UnityEventListener;)V

    return-void
.end method


# virtual methods
.method public createUnity(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 29
    invoke-virtual {p0}, Lcom/reactnative/unity/view/UnityNativeModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/reactnative/unity/view/UnityNativeModule$1;

    invoke-direct {v1, p0, p1}, Lcom/reactnative/unity/view/UnityNativeModule$1;-><init>(Lcom/reactnative/unity/view/UnityNativeModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-static {v0, v1}, Lcom/reactnative/unity/view/UnityUtils;->createPlayer(Landroid/app/Activity;Lcom/reactnative/unity/view/UnityUtils$CreateCallback;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "UnityNativeModule"

    return-object v0
.end method

.method public isReady(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 24
    invoke-static {}, Lcom/reactnative/unity/view/UnityUtils;->isUnityReady()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcom/reactnative/unity/view/UnityNativeModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 55
    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v1, "onUnityMessage"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public pause()V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 44
    invoke-static {}, Lcom/reactnative/unity/view/UnityUtils;->pause()V

    return-void
.end method

.method public postMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 39
    invoke-static {p1, p2, p3}, Lcom/reactnative/unity/view/UnityUtils;->postMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public resume()V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 49
    invoke-static {}, Lcom/reactnative/unity/view/UnityUtils;->resume()V

    return-void
.end method
