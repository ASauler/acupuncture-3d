package cn.voidar.engine.a;

import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.util.Log;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

/* JADX INFO: loaded from: classes.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    EGLConfig f145a;
    private EGL10 c;
    private EGLContext d;
    private EGLDisplay e;
    private EGLSurface f;
    private SurfaceTexture h;
    private int[] g = new int[1];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final int[] f146b = {12339, 4, 12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 0, 12325, 0, 12326, 0, 12344};

    public f() {
        this.f = null;
        EGL10 egl10 = (EGL10) EGLContext.getEGL();
        this.c = egl10;
        EGLDisplay eGLDisplayEglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        this.e = eGLDisplayEglGetDisplay;
        if (eGLDisplayEglGetDisplay == EGL10.EGL_NO_DISPLAY) {
            Log.e("SharedContext", "--- eglGetDisplay failed: " + GLUtils.getEGLErrorString(this.c.eglGetError()));
        }
        if (!this.c.eglInitialize(this.e, new int[2])) {
            Log.e("SharedContext", "--- eglInitialize failed: " + GLUtils.getEGLErrorString(this.c.eglGetError()));
        }
        EGLConfig eGLConfigC = c();
        this.f145a = eGLConfigC;
        if (eGLConfigC == null) {
            Log.e("SharedContext", "--- eglConfig not initialized");
        }
        this.d = this.c.eglCreateContext(this.e, this.f145a, this.c.eglGetCurrentContext(), new int[]{12440, 2, 12344});
        GLES20.glActiveTexture(33984);
        GLES20.glGenTextures(1, this.g, 0);
        GLES20.glBindTexture(36197, this.g[0]);
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.g[0]);
        this.h = surfaceTexture;
        EGLSurface eGLSurfaceEglCreateWindowSurface = this.c.eglCreateWindowSurface(this.e, this.f145a, surfaceTexture, null);
        this.f = eGLSurfaceEglCreateWindowSurface;
        if (eGLSurfaceEglCreateWindowSurface == null || eGLSurfaceEglCreateWindowSurface == EGL10.EGL_NO_SURFACE) {
            Log.e("SharedContext", "--- createWindowSurface returned error: " + GLUtils.getEGLErrorString(this.c.eglGetError()));
        }
    }

    private EGLConfig c() {
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        int[] iArr = new int[1];
        if (!this.c.eglChooseConfig(this.e, this.f146b, eGLConfigArr, 1, iArr)) {
            throw new IllegalArgumentException("eglChooseConfig failed " + GLUtils.getEGLErrorString(this.c.eglGetError()));
        }
        if (iArr[0] > 0) {
            return eGLConfigArr[0];
        }
        return null;
    }

    public void a() {
        EGL10 egl10 = this.c;
        EGLDisplay eGLDisplay = this.e;
        EGLSurface eGLSurface = this.f;
        if (egl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.d)) {
            return;
        }
        Log.e("SharedContext", "--- eglMakeCurrent failed: " + GLUtils.getEGLErrorString(this.c.eglGetError()));
    }

    public void b() {
        if (this.c.eglMakeCurrent(this.e, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT)) {
            return;
        }
        Log.e("SharedContext", "--- eglMakeCurrent failed: " + GLUtils.getEGLErrorString(this.c.eglGetError()));
    }
}
