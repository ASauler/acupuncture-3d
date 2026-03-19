package cn.voidar.engine.a;

import android.opengl.GLES20;

/* JADX INFO: loaded from: classes.dex */
public class c {

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final c f140a = new c();
    }

    private c() {
    }

    public static c a() {
        return a.f140a;
    }

    public void a(String str) {
        int iGlGetError = GLES20.glGetError();
        if (iGlGetError != 0) {
            throw new RuntimeException(str + ": glError " + iGlGetError);
        }
    }
}
