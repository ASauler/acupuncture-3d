package com.google.ar.core;

import android.hardware.camera2.CameraDevice;

/* JADX INFO: loaded from: classes3.dex */
final /* synthetic */ class aj implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CameraDevice.StateCallback f200a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CameraDevice f201b;
    private final /* synthetic */ int c = 0;

    aj(CameraDevice.StateCallback stateCallback, CameraDevice cameraDevice) {
        this.f200a = stateCallback;
        this.f201b = cameraDevice;
    }

    aj(CameraDevice.StateCallback stateCallback, CameraDevice cameraDevice, byte[] bArr) {
        this.f200a = stateCallback;
        this.f201b = cameraDevice;
    }

    aj(CameraDevice.StateCallback stateCallback, CameraDevice cameraDevice, char[] cArr) {
        this.f200a = stateCallback;
        this.f201b = cameraDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.c;
        if (i == 0) {
            CameraDevice.StateCallback stateCallback = this.f200a;
            CameraDevice cameraDevice = this.f201b;
            int i2 = al.d;
            stateCallback.onOpened(cameraDevice);
            return;
        }
        if (i != 1) {
            CameraDevice.StateCallback stateCallback2 = this.f200a;
            CameraDevice cameraDevice2 = this.f201b;
            int i3 = al.d;
            stateCallback2.onDisconnected(cameraDevice2);
            return;
        }
        CameraDevice.StateCallback stateCallback3 = this.f200a;
        CameraDevice cameraDevice3 = this.f201b;
        int i4 = al.d;
        stateCallback3.onClosed(cameraDevice3);
    }
}
