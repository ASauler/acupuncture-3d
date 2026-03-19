package a.a.a.e.a;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f53a = false;

    public static class b extends AssertionError {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final long f54a = -2060234091280522349L;

        private b() {
        }

        private b(String str) {
            super(str);
        }
    }

    private a() {
    }

    public static void a(Object obj) {
        if (f53a && obj == null) {
            throw new b();
        }
    }

    public static void a(String str) {
        if (f53a) {
            throw new b(str);
        }
    }

    public static void a(boolean z) {
        f53a = z;
    }
}
