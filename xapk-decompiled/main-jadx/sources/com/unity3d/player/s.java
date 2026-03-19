package com.unity3d.player;

/* JADX INFO: loaded from: classes2.dex */
final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f423a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f424b = false;
    private boolean c = false;
    private boolean d = true;
    private boolean e = false;

    s() {
    }

    static void a() {
        f423a = true;
    }

    static void b() {
        f423a = false;
    }

    static boolean c() {
        return f423a;
    }

    final void a(boolean z) {
        this.f424b = z;
    }

    final void b(boolean z) {
        this.d = z;
    }

    final void c(boolean z) {
        this.e = z;
    }

    final void d(boolean z) {
        this.c = z;
    }

    final boolean d() {
        return this.d;
    }

    final boolean e() {
        return this.e;
    }

    final boolean e(boolean z) {
        if (f423a) {
            return ((!z && !this.f424b) || this.d || this.c) ? false : true;
        }
        return false;
    }

    final boolean f() {
        return this.c;
    }

    public final String toString() {
        return super.toString();
    }
}
