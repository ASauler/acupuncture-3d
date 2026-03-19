package com.wikitude.common.camera.internal;

import com.wikitude.common.camera.CameraSettings;

/* JADX INFO: loaded from: classes2.dex */
public class AndroidCamera {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f450a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CameraSettings.CameraPosition f451b;
    private final CameraSettings.CameraResolution c;
    private final CameraSettings.CameraFocusMode d;
    private final boolean e;
    private final CameraSettings.Camera2SupportLevel f;

    public AndroidCamera(String str, CameraSettings.CameraPosition cameraPosition, CameraSettings.CameraResolution cameraResolution, CameraSettings.CameraFocusMode cameraFocusMode) {
        this.f450a = str;
        this.f451b = cameraPosition;
        this.c = cameraResolution;
        this.d = cameraFocusMode;
        this.e = false;
        this.f = CameraSettings.Camera2SupportLevel.LEGACY;
    }

    public AndroidCamera(String str, CameraSettings.CameraPosition cameraPosition, CameraSettings.CameraResolution cameraResolution, CameraSettings.CameraFocusMode cameraFocusMode, boolean z, CameraSettings.Camera2SupportLevel camera2SupportLevel) {
        this.f450a = str;
        this.f451b = cameraPosition;
        this.c = cameraResolution;
        this.d = cameraFocusMode;
        this.e = z;
        this.f = camera2SupportLevel;
    }

    public CameraSettings.CameraFocusMode getCameraFocusMode() {
        return this.d;
    }

    public CameraSettings.CameraPosition getCameraPosition() {
        return this.f451b;
    }

    public CameraSettings.CameraResolution getCameraResolution() {
        return this.c;
    }

    public String getId() {
        return this.f450a;
    }

    public CameraSettings.Camera2SupportLevel getMinCamera2SupportLevel() {
        return this.f;
    }

    public boolean isUsingCamera2() {
        return this.e;
    }
}
