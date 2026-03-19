.class public Lcom/vesal/jlsx/international/utils/RNEventEmitter;
.super Ljava/lang/Object;
.source "RNEventEmitter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EventEmitter"

.field public static mReactContext:Lcom/facebook/react/bridge/ReactContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onAptoideConsumeCallback(Ljava/lang/String;)V
    .locals 2

    .line 95
    sget-object v0, Lcom/vesal/jlsx/international/utils/RNEventEmitter;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    if-nez v0, :cond_0

    const-string p0, "EventEmitter"

    const-string v0, "ReactContext is null"

    .line 96
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 99
    :cond_0
    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v1, "onAptoideConsumeCallback"

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static onFbLoginCallback(Ljava/lang/String;)V
    .locals 2

    .line 55
    sget-object v0, Lcom/vesal/jlsx/international/utils/RNEventEmitter;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    if-nez v0, :cond_0

    const-string p0, "EventEmitter"

    const-string v0, "ReactContext is null"

    .line 56
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 59
    :cond_0
    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v1, "onFbLoginCallback"

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static onGoogleLoginCallback(Ljava/lang/String;)V
    .locals 2

    .line 19
    sget-object v0, Lcom/vesal/jlsx/international/utils/RNEventEmitter;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    if-nez v0, :cond_0

    const-string p0, "EventEmitter"

    const-string v0, "ReactContext is null"

    .line 20
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 23
    :cond_0
    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v1, "onGoogleLoginCallback"

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static onGooglePayCallback(Ljava/lang/String;)V
    .locals 2

    .line 31
    sget-object v0, Lcom/vesal/jlsx/international/utils/RNEventEmitter;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    if-nez v0, :cond_0

    const-string p0, "EventEmitter"

    const-string v0, "ReactContext is null"

    .line 32
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 35
    :cond_0
    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v1, "onGooglePayCallback"

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static onGooglePayConsumeCallback(Ljava/lang/String;)V
    .locals 2

    .line 43
    sget-object v0, Lcom/vesal/jlsx/international/utils/RNEventEmitter;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    if-nez v0, :cond_0

    const-string p0, "EventEmitter"

    const-string v0, "ReactContext is null"

    .line 44
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 47
    :cond_0
    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v1, "onGooglePayConsumeCallback"

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static onGoogleServiceConnected(Ljava/lang/String;)V
    .locals 2

    .line 77
    sget-object v0, Lcom/vesal/jlsx/international/utils/RNEventEmitter;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    if-nez v0, :cond_0

    const-string p0, "EventEmitter"

    const-string v0, "ReactContext is null"

    .line 78
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 81
    :cond_0
    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v1, "onGoogleServiceConnected"

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static onMainActivityResume()V
    .locals 3

    .line 85
    sget-object v0, Lcom/vesal/jlsx/international/utils/RNEventEmitter;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    if-nez v0, :cond_0

    const-string v0, "EventEmitter"

    const-string v1, "ReactContext is null"

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 91
    :cond_0
    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v1, "onGooglePayStart"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static onPayLogRecord(Ljava/lang/String;)V
    .locals 2

    .line 66
    sget-object v0, Lcom/vesal/jlsx/international/utils/RNEventEmitter;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    if-nez v0, :cond_0

    const-string p0, "EventEmitter"

    const-string v0, "ReactContext is null"

    .line 67
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 70
    :cond_0
    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v1, "onPayLogUpload"

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
