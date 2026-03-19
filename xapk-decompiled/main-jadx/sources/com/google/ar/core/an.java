package com.google.ar.core;

import android.hardware.camera2.CameraCaptureSession;
import android.os.Handler;

/* JADX INFO: compiled from: SharedCamera.java */
/* JADX INFO: loaded from: classes3.dex */
final class an extends CameraCaptureSession.StateCallback {
    public static final /* synthetic */ int d = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Handler f208a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ CameraCaptureSession.StateCallback f209b;
    final /* synthetic */ SharedCamera c;

    an(SharedCamera sharedCamera, Handler handler, CameraCaptureSession.StateCallback stateCallback) {
        this.c = sharedCamera;
        this.f208a = handler;
        this.f209b = stateCallback;
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public final void onActive(CameraCaptureSession cameraCaptureSession) {
        this.f208a.post(new am(this.f209b, cameraCaptureSession, (int[]) null));
        this.c.onCaptureSessionActive(cameraCaptureSession);
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public final void onClosed(CameraCaptureSession cameraCaptureSession) {
        this.f208a.post(new am(this.f209b, cameraCaptureSession, (byte[]) null));
        this.c.onCaptureSessionClosed(cameraCaptureSession);
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public final void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
        this.f208a.post(new am(this.f209b, cameraCaptureSession, (char[]) null));
        this.c.onCaptureSessionConfigureFailed(cameraCaptureSession);
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public final void onConfigured(CameraCaptureSession cameraCaptureSession) {
        ao unused = this.c.sharedCameraInfo;
        this.f208a.post(new am(this.f209b, cameraCaptureSession));
        this.c.onCaptureSessionConfigured(cameraCaptureSession);
        if (this.c.sharedCameraInfo.a() != null) {
            this.c.setDummyListenerToAvoidImageBufferStarvation();
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public final void onReady(CameraCaptureSession cameraCaptureSession) {
        this.f208a.post(new am(this.f209b, cameraCaptureSession, (short[]) null));
        this.c.onCaptureSessionReady(cameraCaptureSession);
    }
}
