package com.google.ar.core;

import android.hardware.camera2.CameraDevice;
import android.os.Handler;

/* JADX INFO: compiled from: SharedCamera.java */
/* JADX INFO: loaded from: classes3.dex */
final class al extends CameraDevice.StateCallback {
    public static final /* synthetic */ int d = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Handler f204a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ CameraDevice.StateCallback f205b;
    final /* synthetic */ SharedCamera c;

    al(SharedCamera sharedCamera, Handler handler, CameraDevice.StateCallback stateCallback) {
        this.c = sharedCamera;
        this.f204a = handler;
        this.f205b = stateCallback;
    }

    @Override // android.hardware.camera2.CameraDevice.StateCallback
    public final void onClosed(CameraDevice cameraDevice) {
        this.f204a.post(new aj(this.f205b, cameraDevice, (byte[]) null));
        this.c.onDeviceClosed(cameraDevice);
    }

    @Override // android.hardware.camera2.CameraDevice.StateCallback
    public final void onDisconnected(CameraDevice cameraDevice) {
        this.f204a.post(new aj(this.f205b, cameraDevice, (char[]) null));
        this.c.onDeviceDisconnected(cameraDevice);
    }

    @Override // android.hardware.camera2.CameraDevice.StateCallback
    public final void onError(final CameraDevice cameraDevice, final int i) {
        Handler handler = this.f204a;
        final CameraDevice.StateCallback stateCallback = this.f205b;
        handler.post(new Runnable(stateCallback, cameraDevice, i) { // from class: com.google.ar.core.ak

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final CameraDevice.StateCallback f202a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final CameraDevice f203b;
            private final int c;

            {
                this.f202a = stateCallback;
                this.f203b = cameraDevice;
                this.c = i;
            }

            @Override // java.lang.Runnable
            public final void run() {
                CameraDevice.StateCallback stateCallback2 = this.f202a;
                CameraDevice cameraDevice2 = this.f203b;
                int i2 = this.c;
                int i3 = al.d;
                stateCallback2.onError(cameraDevice2, i2);
            }
        });
        this.c.close();
    }

    @Override // android.hardware.camera2.CameraDevice.StateCallback
    public final void onOpened(CameraDevice cameraDevice) {
        this.c.sharedCameraInfo.b(cameraDevice);
        this.f204a.post(new aj(this.f205b, cameraDevice));
        this.c.onDeviceOpened(cameraDevice);
        this.c.sharedCameraInfo.e(this.c.getGpuSurfaceTexture());
        this.c.sharedCameraInfo.g(this.c.getGpuSurface());
    }
}
