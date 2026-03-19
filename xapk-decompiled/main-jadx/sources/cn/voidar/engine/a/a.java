package cn.voidar.engine.a;

import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLExt;
import android.opengl.EGLSurface;
import android.view.Surface;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private EGLDisplay f136a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private EGLContext f137b;
    private EGLSurface c;
    private Surface d;
    private final float[] e = new float[16];

    public a(Surface surface, EGLContext eGLContext) {
        surface.getClass();
        this.d = surface;
        a(eGLContext);
    }

    private void a(EGLContext eGLContext) {
        EGLDisplay eGLDisplayEglGetDisplay = EGL14.eglGetDisplay(0);
        this.f136a = eGLDisplayEglGetDisplay;
        if (eGLDisplayEglGetDisplay == EGL14.EGL_NO_DISPLAY) {
            throw new RuntimeException("Failed to get EGL display.");
        }
        int[] iArr = new int[2];
        if (!EGL14.eglInitialize(this.f136a, iArr, 0, iArr, 1)) {
            this.f136a = null;
            throw new RuntimeException("Failed to initialize EGL.");
        }
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        if (!EGL14.eglChooseConfig(this.f136a, new int[]{12324, 8, 12323, 8, 12322, 8, 12352, 4, 12610, 1, 12344}, 0, eGLConfigArr, 0, 1, new int[1], 0)) {
            throw new RuntimeException("Failed to find RGB888 recordable ES2 EGL config.");
        }
        this.f137b = EGL14.eglCreateContext(this.f136a, eGLConfigArr[0], eGLContext, new int[]{12440, 2, 12344}, 0);
        a("eglCreateContext");
        if (this.f137b == null) {
            throw new RuntimeException("Null EGL context.");
        }
        this.c = EGL14.eglCreateWindowSurface(this.f136a, eGLConfigArr[0], this.d, new int[]{12344}, 0);
        a("eglCreateWindowSurface");
        if (this.c == null) {
            throw new RuntimeException("Null EGL surface.");
        }
    }

    private void a(String str) {
        boolean z = false;
        while (EGL14.eglGetError() != 12288) {
            z = true;
        }
        if (z) {
            throw new RuntimeException("EGL error encountered.");
        }
    }

    public void a() {
        if (EGL14.eglGetCurrentContext().equals(this.f137b)) {
            EGL14.eglMakeCurrent(this.f136a, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT);
        }
        EGL14.eglDestroySurface(this.f136a, this.c);
        EGL14.eglDestroyContext(this.f136a, this.f137b);
        this.d.release();
        this.f136a = null;
        this.f137b = null;
        this.c = null;
        this.d = null;
    }

    public void a(long j) {
        EGLExt.eglPresentationTimeANDROID(this.f136a, this.c, j);
    }

    public void a(float[] fArr) {
        float[] fArr2 = this.e;
        System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
    }

    public void b() {
        EGLDisplay eGLDisplay = this.f136a;
        EGLSurface eGLSurface = this.c;
        if (!EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.f137b)) {
            throw new RuntimeException("Failed to make EGL context and surface current.");
        }
    }

    public boolean c() {
        return EGL14.eglSwapBuffers(this.f136a, this.c);
    }
}
