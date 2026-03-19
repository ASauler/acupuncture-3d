package com.wikitude.common.arcore.internal;

import a.a.a.c.a.b;
import a.a.a.c.a.c;
import a.a.a.c.a.d;
import android.app.Activity;
import android.content.Context;
import com.wikitude.common.CallStatus;
import com.wikitude.common.camera.CameraSettings;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;

/* JADX INFO: loaded from: classes2.dex */
public final class NativeArCoreInterface implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f443a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d f444b;

    public static class a implements b.InterfaceC0000b {
        @Override // a.a.a.c.a.b.InterfaceC0000b
        public void a(int i) {
            NativeArCoreInterface.isSupportedCallback(i);
        }
    }

    public NativeArCoreInterface(Context context, long j) {
        this.f443a = j;
        this.f444b = new d((Activity) context, this);
    }

    public static int getCurrentSupportedState(Context context) {
        return b.a(context);
    }

    public static void isSupported(Context context) {
        b.a(context, new a());
    }

    public static native void isSupportedCallback(int i);

    private native void nativeCameraError(long j, int i, String str);

    private native void updateFrameDataNative(long j, int i, int i2, long j2, ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3, int i3, int i4, int i5, float[] fArr, float[] fArr2);

    private native void updateNativeCameraToSurfaceAngle(long j, float f);

    private native void updatePointCloudNative(long j, FloatBuffer floatBuffer, int i, float[] fArr);

    @Override // a.a.a.c.a.c
    public void a(float f) {
        updateNativeCameraToSurfaceAngle(this.f443a, f);
    }

    @Override // a.a.a.c.a.c
    public void a(int i, int i2, long j, ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3, int i3, int i4, int i5, float[] fArr, float[] fArr2) {
        updateFrameDataNative(this.f443a, i, i2, j, byteBuffer, byteBuffer2, byteBuffer3, i3, i4, i5, fArr, fArr2);
    }

    @Override // a.a.a.c.a.c
    public void a(CallStatus callStatus) {
        nativeCameraError(this.f443a, callStatus.getError().getCode(), callStatus.getError().getMessage());
    }

    @Override // a.a.a.c.a.c
    public void a(FloatBuffer floatBuffer, int i, float[] fArr) {
        updatePointCloudNative(this.f443a, floatBuffer, i, fArr);
    }

    public CallStatus addTrackingAnchor() {
        return this.f444b.a();
    }

    public CallStatus canStartTracking() {
        return this.f444b.b();
    }

    public float[] convertScreenCoordinateToPointCloudCoordinate(float f, float f2) {
        return this.f444b.a(f, f2);
    }

    public float getFieldOfView() {
        return this.f444b.d();
    }

    public float[] getModelMatrix() {
        return this.f444b.e();
    }

    public boolean getTrackingEnabled() {
        return this.f444b.f();
    }

    public int getTrackingState() {
        return this.f444b.g().ordinal();
    }

    public float[] getViewMatrix() {
        return this.f444b.h();
    }

    public void prepareUpdate() {
        this.f444b.i();
    }

    public void resetTracking() {
        this.f444b.j();
    }

    public CallStatus setFocusMode(CameraSettings.CameraFocusMode cameraFocusMode) {
        return this.f444b.a(cameraFocusMode);
    }

    public boolean setTextureId(int i) {
        return this.f444b.b(i);
    }

    public void setTrackingEnabled(boolean z) {
        this.f444b.a(z);
    }

    public void start() {
        this.f444b.k();
    }

    public void stop() {
        this.f444b.l();
    }

    public boolean surfaceChanged(int i, int i2) {
        return this.f444b.a(i, i2);
    }

    public void update() {
        this.f444b.m();
    }
}
