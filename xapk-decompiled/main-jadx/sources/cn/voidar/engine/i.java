package cn.voidar.engine;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class i {
    private static i c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f164a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f165b;

    i(String str, int i) {
        this.f164a = str;
        this.f165b = i;
    }

    static i a() {
        if (c == null) {
            c = new i("VoidAR_JAR", 0);
        }
        return c;
    }

    private void a(int i, String str) {
        if (i >= b()) {
            if (i == 80) {
                Log.e(this.f164a, str);
            } else {
                Log.d(this.f164a, str);
            }
        }
    }

    void a(String str) {
        a(10, str);
    }

    public int b() {
        return this.f165b;
    }

    void b(String str) {
        a(20, str);
    }

    void c(String str) {
        a(80, str);
    }
}
