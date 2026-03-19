package cn.voidar.engine;

import java.util.concurrent.Semaphore;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int f147a = 640;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f148b = 480;
    protected int c = 30;
    protected int d = 2;
    protected boolean e = false;
    protected boolean f = false;
    public String g = "";
    protected int h = 1;
    protected Semaphore i = new Semaphore(1);
    protected Semaphore j = new Semaphore(2);
    protected float k = 0.0f;

    public String a(String str) {
        return "";
    }

    public void a() {
    }

    public void a(int i) {
    }

    public void a(int i, int i2) {
        this.f148b = i2;
        this.f147a = i;
    }

    public void a(boolean z) {
        this.e = z;
    }

    protected void a(byte[] bArr, double d, double d2) {
        VoidARNative.newImageAvailable(this.f147a, this.f148b, bArr, AndroidDevice.lockOrientation != -1 ? AndroidDevice.lockOrientation : AndroidDevice.screenOrientation, d, d2);
    }

    public void b() {
    }

    public void b(int i) {
        this.d = i;
    }

    public void c() {
    }

    public float d() {
        return this.k;
    }

    public int e() {
        return this.h;
    }
}
