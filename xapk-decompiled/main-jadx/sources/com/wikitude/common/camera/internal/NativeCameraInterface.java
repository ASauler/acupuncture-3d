package com.wikitude.common.camera.internal;

import a.a.a.d.a.a;
import a.a.a.d.a.b;
import a.a.a.d.a.e;
import android.content.Context;
import android.graphics.PointF;
import com.wikitude.common.CallStatus;
import com.wikitude.common.CallValue;
import com.wikitude.common.camera.CameraSettings;
import com.wikitude.common.internal.CallValueF;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class NativeCameraInterface implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f452a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f453b;

    public NativeCameraInterface(Context context, long j) {
        this.f452a = new e(context, this);
        this.f453b = j;
    }

    private native void nativeCameraError(long j, int i, String str);

    private native void nativeCameraOpened(long j);

    private native void nativeCameraReleased(long j);

    private native void nativeSetCameraFrameColorSpace(long j, int i);

    private native void nativeSetCameraOrientation(long j, int i);

    private native void nativeSetCameraPosition(long j, CameraSettings.CameraPosition cameraPosition);

    private native void nativeUpdate(long j, long j2, byte[] bArr, int i);

    private native void nativeUpdateCamera2(long j, long j2, ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3, int i, int i2, int i3);

    private native void nativeUpdateCameraFieldOfView(long j, float f);

    private native void nativeUpdatePreviewSize(long j, int i, int i2);

    @Override // a.a.a.d.a.b
    public void a() {
        nativeCameraOpened(this.f453b);
    }

    @Override // a.a.a.d.a.b
    public void a(float f) {
        nativeUpdateCameraFieldOfView(this.f453b, f);
    }

    @Override // a.a.a.d.a.b
    public void a(int i) {
        nativeSetCameraFrameColorSpace(this.f453b, i);
    }

    @Override // a.a.a.d.a.b
    public void a(int i, int i2) {
        nativeUpdatePreviewSize(this.f453b, i, i2);
    }

    @Override // a.a.a.d.a.b
    public void a(long j, ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3, int i, int i2, int i3) {
        nativeUpdateCamera2(this.f453b, j, byteBuffer, byteBuffer2, byteBuffer3, i, i2, i3);
    }

    @Override // a.a.a.d.a.b
    public void a(long j, byte[] bArr, int i) {
        nativeUpdate(this.f453b, j, bArr, i);
    }

    @Override // a.a.a.d.a.b
    public void a(a aVar, String str) {
        nativeCameraError(this.f453b, aVar.a(), str);
    }

    @Override // a.a.a.d.a.b
    public void a(CameraSettings.CameraPosition cameraPosition) {
        nativeSetCameraPosition(this.f453b, cameraPosition);
    }

    @Override // a.a.a.d.a.b
    public void b() {
        nativeCameraReleased(this.f453b);
    }

    @Override // a.a.a.d.a.b
    public void b(int i) {
        nativeSetCameraOrientation(this.f453b, i);
    }

    public void doStart() {
        CallStatus callStatusB = this.f452a.b();
        if (callStatusB.isSuccess()) {
            return;
        }
        nativeCameraError(this.f453b, callStatusB.getError().getCode(), callStatusB.getError().getMessage());
    }

    public void doStop() {
        this.f452a.c();
    }

    public CallValue<AndroidCamera> findCameraMatchingCharacteristics(CameraSettings.CameraPosition cameraPosition, CameraSettings.CameraResolution cameraResolution, CameraSettings.CameraFocusMode cameraFocusMode, boolean z, CameraSettings.Camera2SupportLevel camera2SupportLevel) {
        return this.f452a.a(cameraPosition, cameraResolution, cameraFocusMode, z, camera2SupportLevel);
    }

    public CallValue<CameraSettings.CameraFocusMode> getFocusMode() {
        return this.f452a.a().c();
    }

    public CallValueF getManualFocusDistance() {
        CallValue<Float> callValueG = this.f452a.a().g();
        return !callValueG.isSuccess() ? CallValueF.a(callValueG.getError()) : CallValueF.a(callValueG.getValue().floatValue());
    }

    public CallValueF getMaximumZoomFactor() {
        CallValue<Float> callValueM = this.f452a.a().m();
        return !callValueM.isSuccess() ? CallValueF.a(callValueM.getError()) : CallValueF.a(callValueM.getValue().floatValue());
    }

    public CallValue<CameraSettings.TorchMode> getTorchMode() {
        return this.f452a.a().l();
    }

    public CallValueF getZoomFactor() {
        CallValue<Float> callValueI = this.f452a.a().i();
        return !callValueI.isSuccess() ? CallValueF.a(callValueI.getError()) : CallValueF.a(callValueI.getValue().floatValue());
    }

    public CallStatus isExposurePointOfInterestSupported() {
        return this.f452a.a().j();
    }

    public CallStatus isFocusModeSupported(CameraSettings.CameraFocusMode cameraFocusMode) {
        return this.f452a.a().b(cameraFocusMode);
    }

    public CallStatus isFocusPointOfInterestSupported() {
        return this.f452a.a().e();
    }

    public CallStatus isManualFocusSupported() {
        return this.f452a.a().k();
    }

    public CallStatus isTorchModeSupported(CameraSettings.TorchMode torchMode) {
        return this.f452a.a().b(torchMode);
    }

    public CallStatus isZoomFactorSupported(float f) {
        return this.f452a.a().c(f);
    }

    public void setActiveCamera(AndroidCamera androidCamera) {
        this.f452a.a(androidCamera);
    }

    public CallStatus setExposurePointOfInterest(float f, float f2) {
        return this.f452a.a().b(new PointF(f, f2));
    }

    public CallStatus setFocusMode(CameraSettings.CameraFocusMode cameraFocusMode) {
        return this.f452a.a().a(cameraFocusMode);
    }

    public CallStatus setFocusPointOfInterest(float f, float f2) {
        return this.f452a.a().a(new PointF(f, f2));
    }

    public CallStatus setManualFocusDistance(float f) {
        return this.f452a.a().a(f);
    }

    public CallStatus setTorchMode(CameraSettings.TorchMode torchMode) {
        return this.f452a.a().a(torchMode);
    }

    public CallStatus setZoomFactor(float f) {
        return this.f452a.a().b(f);
    }
}
