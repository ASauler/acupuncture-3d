package a.a.a.h.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f84a = "wikitude-tmp";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f85b = "wikitude-docs";
    private static final String c = "NON_RECURRING_INSTANTIATION";
    private static final String d = "wikitude-preferences";
    private final String e;
    private final String f = Build.VERSION.RELEASE;
    private final String g = Build.MANUFACTURER;
    private final String h;
    private final File i;
    private final File j;
    private final b k;
    private final boolean l;
    private final SharedPreferences m;

    public c(Context context, b bVar) {
        String str = Build.MODEL;
        this.h = str;
        this.k = bVar;
        String strValueOf = String.valueOf(System.currentTimeMillis());
        File filesDir = context.getFilesDir();
        File file = new File(new File(filesDir, f84a), strValueOf);
        this.i = file;
        File file2 = new File(filesDir, f85b);
        this.j = file2;
        this.e = (Build.BRAND.equals("Lenovo") && str.equals("A6")) ? "lenovo_hmd" : "Android";
        if (!a(file)) {
            bVar.a(a.UnableToCreateDirectory, "Could not create temp directory " + file);
        }
        if (!a(file2)) {
            bVar.a(a.UnableToCreateDirectory, "Could not create doc directory " + file2);
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences(d, 0);
        this.m = sharedPreferences;
        this.l = sharedPreferences.getBoolean(c, true);
    }

    private boolean a(File file) {
        return file.exists() || file.mkdirs();
    }

    private void b(File file) {
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                b(file2);
            }
        }
        if (file.delete()) {
            return;
        }
        this.k.a(a.UnableToDeleteDirectory, "Could not delete file or directory: " + file);
    }

    public void a() {
        b(this.i);
    }

    public String b() {
        return this.j.getAbsolutePath();
    }

    public String c() {
        return this.g;
    }

    public String d() {
        return this.h;
    }

    public String e() {
        return this.e;
    }

    public String f() {
        return this.f;
    }

    public String g() {
        return this.i.getAbsolutePath();
    }

    public boolean h() {
        return this.l;
    }

    public void i() {
        this.m.edit().putBoolean(c, false).apply();
    }
}
