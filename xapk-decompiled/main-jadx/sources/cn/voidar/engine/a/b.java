package cn.voidar.engine.a;

import android.opengl.EGL14;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.Matrix;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final float[] f138a = new float[16];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private EGLDisplay f139b;
    private EGLSurface c;
    private EGLSurface d;
    private EGLContext e;
    private final float[] f = new float[16];
    private int g = 0;
    private int h = 0;

    public void a() {
        if (this.g == 0 || this.h == 0) {
            return;
        }
        float[] fArr = f138a;
        System.arraycopy(fArr, 0, this.f, 0, fArr.length);
        this.f139b = EGL14.eglGetCurrentDisplay();
        this.c = EGL14.eglGetCurrentSurface(12377);
        this.d = EGL14.eglGetCurrentSurface(12378);
        this.e = EGL14.eglGetCurrentContext();
    }

    public void a(int i, int i2) {
        this.g = i;
        this.h = i2;
        Matrix.orthoM(f138a, 0, 0.0f, i, 0.0f, i2, -1.0f, 1.0f);
    }

    public void b() {
        if (this.g == 0 || this.h == 0) {
            return;
        }
        if (!EGL14.eglMakeCurrent(this.f139b, this.c, this.d, this.e)) {
            throw new RuntimeException("Failed to restore EGL state.");
        }
        float[] fArr = this.f;
        float[] fArr2 = f138a;
        System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
    }

    public float[] c() {
        return f138a;
    }
}
