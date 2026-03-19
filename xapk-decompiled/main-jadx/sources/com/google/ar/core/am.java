package com.google.ar.core;

import android.hardware.camera2.CameraCaptureSession;

/* JADX INFO: loaded from: classes3.dex */
final /* synthetic */ class am implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CameraCaptureSession.StateCallback f206a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CameraCaptureSession f207b;
    private final /* synthetic */ int c = 0;

    am(CameraCaptureSession.StateCallback stateCallback, CameraCaptureSession cameraCaptureSession) {
        this.f206a = stateCallback;
        this.f207b = cameraCaptureSession;
    }

    am(CameraCaptureSession.StateCallback stateCallback, CameraCaptureSession cameraCaptureSession, byte[] bArr) {
        this.f206a = stateCallback;
        this.f207b = cameraCaptureSession;
    }

    am(CameraCaptureSession.StateCallback stateCallback, CameraCaptureSession cameraCaptureSession, char[] cArr) {
        this.f206a = stateCallback;
        this.f207b = cameraCaptureSession;
    }

    am(CameraCaptureSession.StateCallback stateCallback, CameraCaptureSession cameraCaptureSession, int[] iArr) {
        this.f206a = stateCallback;
        this.f207b = cameraCaptureSession;
    }

    am(CameraCaptureSession.StateCallback stateCallback, CameraCaptureSession cameraCaptureSession, short[] sArr) {
        this.f206a = stateCallback;
        this.f207b = cameraCaptureSession;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.c;
        if (i == 0) {
            CameraCaptureSession.StateCallback stateCallback = this.f206a;
            CameraCaptureSession cameraCaptureSession = this.f207b;
            int i2 = an.d;
            stateCallback.onConfigured(cameraCaptureSession);
            return;
        }
        if (i == 1) {
            CameraCaptureSession.StateCallback stateCallback2 = this.f206a;
            CameraCaptureSession cameraCaptureSession2 = this.f207b;
            int i3 = an.d;
            stateCallback2.onClosed(cameraCaptureSession2);
            return;
        }
        if (i == 2) {
            CameraCaptureSession.StateCallback stateCallback3 = this.f206a;
            CameraCaptureSession cameraCaptureSession3 = this.f207b;
            int i4 = an.d;
            stateCallback3.onConfigureFailed(cameraCaptureSession3);
            return;
        }
        if (i != 3) {
            CameraCaptureSession.StateCallback stateCallback4 = this.f206a;
            CameraCaptureSession cameraCaptureSession4 = this.f207b;
            int i5 = an.d;
            stateCallback4.onActive(cameraCaptureSession4);
            return;
        }
        CameraCaptureSession.StateCallback stateCallback5 = this.f206a;
        CameraCaptureSession cameraCaptureSession5 = this.f207b;
        int i6 = an.d;
        stateCallback5.onReady(cameraCaptureSession5);
    }
}
