package com.google.ar.core;

import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraDevice;
import android.view.Surface;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: SharedCamera.java */
/* JADX INFO: loaded from: classes3.dex */
final class ao {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private CameraDevice f210a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<String, List<Surface>> f211b = new HashMap();
    private SurfaceTexture c = null;
    private Surface d = null;

    private ao() {
    }

    public final CameraDevice a() {
        return this.f210a;
    }

    public final void b(CameraDevice cameraDevice) {
        this.f210a = cameraDevice;
    }

    public final void c(String str, List<Surface> list) {
        this.f211b.put(str, list);
    }

    public final SurfaceTexture d() {
        return this.c;
    }

    public final void e(SurfaceTexture surfaceTexture) {
        this.c = surfaceTexture;
    }

    public final Surface f() {
        return this.d;
    }

    public final void g(Surface surface) {
        this.d = surface;
    }

    /* synthetic */ ao(byte[] bArr) {
    }
}
