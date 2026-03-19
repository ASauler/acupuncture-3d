package cn.voidar.engine.a;

import android.opengl.GLES20;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f143a = "e";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f144b = -1;
    private int c = f144b;
    private HashMap<String, Integer> d = new HashMap<>();
    private c e;

    public e(c cVar) {
        this.e = cVar;
    }

    private int a(int i, String str) {
        int iGlCreateShader = GLES20.glCreateShader(i);
        this.e.a("glCreateShader");
        GLES20.glShaderSource(iGlCreateShader, str);
        this.e.a("glShaderSource");
        GLES20.glCompileShader(iGlCreateShader);
        this.e.a("glCompileShader");
        int[] iArr = new int[1];
        GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
        if (iArr[0] != 0) {
            return iGlCreateShader;
        }
        String strGlGetShaderInfoLog = GLES20.glGetShaderInfoLog(iGlCreateShader);
        GLES20.glDeleteShader(iGlCreateShader);
        throw new IllegalArgumentException("Shader compilation failed with: " + strGlGetShaderInfoLog);
    }

    public int a(String str) {
        if (this.d.containsKey(str)) {
            return this.d.get(str).intValue();
        }
        int iGlGetAttribLocation = GLES20.glGetAttribLocation(this.c, str);
        this.e.a("glGetAttribLocation " + str);
        if (iGlGetAttribLocation == -1) {
            iGlGetAttribLocation = GLES20.glGetUniformLocation(this.c, str);
            this.e.a("glGetUniformLocation " + str);
        }
        if (iGlGetAttribLocation == -1) {
            throw new IllegalStateException("Can't find a location for attribute " + str);
        }
        this.d.put(str, Integer.valueOf(iGlGetAttribLocation));
        return iGlGetAttribLocation;
    }

    public void a() {
        GLES20.glUseProgram(this.c);
    }

    public void a(String str, String str2) {
        int iA = f144b;
        if (str != null) {
            iA = a(35633, str);
        }
        if (iA == 0) {
            this.c = 0;
            return;
        }
        int iA2 = f144b;
        if (str2 != null) {
            iA2 = a(35632, str2);
        }
        if (iA2 == 0) {
            this.c = 0;
            return;
        }
        this.c = GLES20.glCreateProgram();
        this.e.a("glCreateProgram");
        GLES20.glAttachShader(this.c, iA);
        this.e.a("glAttachShader");
        GLES20.glAttachShader(this.c, iA2);
        this.e.a("glAttachShader");
        GLES20.glLinkProgram(this.c);
    }

    public void b() {
        GLES20.glUseProgram(0);
    }
}
