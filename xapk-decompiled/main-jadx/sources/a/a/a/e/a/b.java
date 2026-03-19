package a.a.a.e.a;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f55a = false;

    public static void a(String str, String str2) {
        if (f55a) {
            Log.d(str, str2);
        }
    }

    public static void a(String str, String str2, Throwable th) {
        if (f55a) {
            Log.d(str, str2, th);
        }
    }

    public static void a(String str, Throwable th) {
        if (f55a) {
            Log.w(str, "", th);
        }
    }

    public static void a(boolean z) {
        f55a = z;
    }

    public static void b(String str, String str2) {
        if (f55a) {
            Log.e(str, str2);
        }
    }

    public static void b(String str, String str2, Throwable th) {
        if (f55a) {
            Log.e(str, str2, th);
        }
    }

    public static void c(String str, String str2) {
        if (f55a) {
            Log.i(str, str2);
        }
    }

    public static void c(String str, String str2, Throwable th) {
        if (f55a) {
            Log.i(str, str2, th);
        }
    }

    public static void d(String str, String str2) {
        if (f55a) {
            Log.v(str, str2);
        }
    }

    public static void d(String str, String str2, Throwable th) {
        if (f55a) {
            Log.v(str, str2, th);
        }
    }

    public static void e(String str, String str2) {
        if (f55a) {
            Log.w(str, str2);
        }
    }

    public static void e(String str, String str2, Throwable th) {
        if (f55a) {
            Log.w(str, str2, th);
        }
    }
}
