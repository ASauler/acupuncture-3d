.class final Lcom/unity3d/splash/services/core/api/DeviceInfo$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unity3d/splash/services/core/device/IVolumeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/splash/services/core/api/DeviceInfo;->registerVolumeChangeListener(Ljava/lang/Integer;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private _streamType:I

.field final synthetic val$streamType:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/splash/services/core/api/DeviceInfo$1;->val$streamType:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/unity3d/splash/services/core/api/DeviceInfo$1;->_streamType:I

    return-void
.end method


# virtual methods
.method public final getStreamType()I
    .locals 1

    iget v0, p0, Lcom/unity3d/splash/services/core/api/DeviceInfo$1;->_streamType:I

    return v0
.end method

.method public final onVolumeChanged(I)V
    .locals 5

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->DEVICEINFO:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/core/api/DeviceInfo$DeviceInfoEvent;->VOLUME_CHANGED:Lcom/unity3d/splash/services/core/api/DeviceInfo$DeviceInfoEvent;

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/api/DeviceInfo$1;->getStreamType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v4, p0, Lcom/unity3d/splash/services/core/api/DeviceInfo$1;->_streamType:I

    invoke-static {v4}, Lcom/unity3d/splash/services/core/device/Device;->getStreamMaxVolume(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, p1, v4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    return-void
.end method
