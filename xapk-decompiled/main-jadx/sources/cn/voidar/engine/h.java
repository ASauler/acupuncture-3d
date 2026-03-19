package cn.voidar.engine;

import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.opengl.Matrix;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

/* JADX INFO: loaded from: classes.dex */
public class h implements SurfaceTexture.OnFrameAvailableListener {
    private final float[] d;
    private int e;
    private Boolean g;
    private SurfaceTexture h;
    private FloatBuffer k;
    private int m;
    private int n;
    private int o;
    private int p;
    private int f = -12345;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f162a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f163b = 0;
    private float[] i = new float[16];
    private int[] j = new int[4];
    private int l = -1;
    public boolean c = false;
    private int q = 0;
    private int r = 0;

    public h() {
        float[] fArr = {-1.0f, -1.0f, 0.0f, 0.0f, 0.0f, 1.0f, -1.0f, 0.0f, 1.0f, 0.0f, -1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f};
        this.d = fArr;
        FloatBuffer floatBufferAsFloatBuffer = ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.k = floatBufferAsFloatBuffer;
        floatBufferAsFloatBuffer.put(fArr).position(0);
        Matrix.setIdentityM(this.i, 0);
        this.g = Boolean.FALSE;
    }

    private int a(int i, String str) {
        int iGlCreateShader = GLES20.glCreateShader(i);
        GLES20.glShaderSource(iGlCreateShader, str);
        GLES20.glCompileShader(iGlCreateShader);
        int[] iArr = new int[1];
        GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
        if (iArr[0] == 0) {
            GLES20.glDeleteShader(iGlCreateShader);
            iGlCreateShader = 0;
        }
        a("loadShader shaderType = " + i);
        return iGlCreateShader;
    }

    private int a(String str, String str2) {
        int iA = a(35633, str);
        this.q = iA;
        int i = 0;
        if (iA == 0) {
            return 0;
        }
        int iA2 = a(35632, str2);
        this.r = iA2;
        if (iA2 == 0) {
            return 0;
        }
        int iGlCreateProgram = GLES20.glCreateProgram();
        if (iGlCreateProgram == 0) {
            i.a().c("Could not create program");
            return 0;
        }
        GLES20.glAttachShader(iGlCreateProgram, this.q);
        GLES20.glAttachShader(iGlCreateProgram, this.r);
        GLES20.glLinkProgram(iGlCreateProgram);
        int[] iArr = new int[1];
        GLES20.glGetProgramiv(iGlCreateProgram, 35714, iArr, 0);
        if (iArr[0] != 1) {
            GLES20.glDeleteProgram(iGlCreateProgram);
        } else {
            i = iGlCreateProgram;
        }
        a("createProgram");
        return i;
    }

    private void h() {
        GLES20.glGetIntegerv(2978, this.j, 0);
        GLES20.glBindFramebuffer(36160, this.l);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, this.f);
        GLES20.glDisable(2929);
        GLES20.glDisable(2884);
        GLES20.glBindBuffer(34962, 0);
        GLES20.glBindBuffer(34963, 0);
        GLES20.glUseProgram(this.e);
        this.k.position(0);
        GLES20.glVertexAttribPointer(this.o, 3, 5126, false, 20, (Buffer) this.k);
        this.k.position(3);
        GLES20.glVertexAttribPointer(this.p, 3, 5126, false, 20, (Buffer) this.k);
        GLES20.glViewport(0, 0, this.f162a, this.f163b);
        GLES20.glEnableVertexAttribArray(this.o);
        GLES20.glEnableVertexAttribArray(this.p);
        float[] fArr = new float[16];
        Matrix.setIdentityM(fArr, 0);
        GLES20.glUniformMatrix4fv(this.m, 1, false, fArr, 0);
        GLES20.glUniformMatrix4fv(this.n, 1, false, this.i, 0);
        GLES20.glDrawArrays(5, 0, 4);
        GLES20.glBindFramebuffer(36160, 0);
        int[] iArr = this.j;
        GLES20.glViewport(iArr[0], iArr[1], iArr[2], iArr[3]);
        a("copyTexture");
    }

    private int i() {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        int i = iArr[0];
        GLES20.glBindTexture(36197, i);
        GLES20.glTexParameterf(36197, 10241, 9729.0f);
        GLES20.glTexParameterf(36197, 10240, 9729.0f);
        GLES20.glBindTexture(36197, 0);
        a("initTexture");
        return i;
    }

    public void a() {
        int iA = a("uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n", "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n");
        this.e = iA;
        this.o = GLES20.glGetAttribLocation(iA, "aPosition");
        a("glGetAttribLocation aPosition");
        if (this.o == -1) {
            throw new RuntimeException("Could not get attrib location for aPosition");
        }
        this.p = GLES20.glGetAttribLocation(this.e, "aTextureCoord");
        a("glGetAttribLocation aTextureCoord");
        if (this.p == -1) {
            throw new RuntimeException("Could not get attrib location for aTextureCoord");
        }
        this.m = GLES20.glGetUniformLocation(this.e, "uMVPMatrix");
        a("glGetUniformLocation uMVPMatrix");
        if (this.m == -1) {
            throw new RuntimeException("Could not get attrib location for uMVPMatrix");
        }
        this.n = GLES20.glGetUniformLocation(this.e, "uSTMatrix");
        a("glGetUniformLocation uSTMatrix");
        if (this.n == -1) {
            throw new RuntimeException("Could not get attrib location for uSTMatrix");
        }
        this.f = i();
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f);
        this.h = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(this);
        a("init");
    }

    public void a(int i) {
        if (this.f162a == 0 || this.f163b == 0) {
            return;
        }
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(3553, i);
        GLES20.glTexImage2D(3553, 0, 6407, this.f162a, this.f163b, 0, 6407, 33635, null);
        int[] iArr = new int[1];
        GLES20.glGenFramebuffers(1, iArr, 0);
        int i2 = iArr[0];
        this.l = i2;
        GLES20.glBindFramebuffer(36160, i2);
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, i, 0);
        GLES20.glClear(16384);
        GLES20.glBindFramebuffer(36160, 0);
        a("initFBO");
    }

    public void a(String str) {
        int iGlGetError = GLES20.glGetError();
        if (iGlGetError == 0) {
            return;
        }
        i.a().c(str + ": glError " + iGlGetError);
        throw new RuntimeException(str + ": glError " + iGlGetError);
    }

    public int b() {
        return this.f;
    }

    public boolean c() {
        return this.l != -1;
    }

    public SurfaceTexture d() {
        return this.h;
    }

    public void e() {
        synchronized (this.g) {
            if (this.g.booleanValue()) {
                this.h.updateTexImage();
                this.h.getTransformMatrix(this.i);
                h();
                this.g = Boolean.FALSE;
                this.c = true;
            }
        }
    }

    public int f() {
        int[] iArr = new int[1];
        GLES20.glActiveTexture(33984);
        a("createVideoTextures 2");
        GLES20.glGenTextures(1, iArr, 0);
        a("createVideoTextures 3");
        int i = iArr[0];
        GLES20.glBindTexture(3553, i);
        GLES20.glTexParameterf(3553, 10242, 33071.0f);
        GLES20.glTexParameterf(3553, 10243, 33071.0f);
        GLES20.glTexParameteri(3553, 10241, 9729);
        GLES20.glTexParameteri(3553, 10240, 9729);
        a("createVideoTextures 5");
        return i;
    }

    public void g() {
        i.a().a("------- onExit");
        int i = this.q;
        if (i != 0) {
            GLES20.glDeleteShader(i);
        }
        int i2 = this.r;
        if (i2 != 0) {
            GLES20.glDeleteShader(i2);
        }
        int i3 = this.e;
        if (i3 != 0) {
            GLES20.glDeleteProgram(i3);
        }
        GLES20.glDeleteTextures(1, new int[]{this.f}, 0);
        GLES20.glDeleteFramebuffers(1, new int[]{this.l}, 0);
        a("onExit = ");
        this.h.release();
        this.e = 0;
        this.q = 0;
        this.r = 0;
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public synchronized void onFrameAvailable(SurfaceTexture surfaceTexture) {
        synchronized (this.g) {
            this.g = Boolean.TRUE;
        }
    }
}
