package com.unity3d.player;

import android.app.Activity;
import android.content.Context;
import com.unity3d.player.u;
import java.util.concurrent.Semaphore;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes2.dex */
final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private UnityPlayer f433a;
    private a c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f434b = null;
    private final Semaphore d = new Semaphore(0);
    private final Lock e = new ReentrantLock();
    private u f = null;
    private int g = 2;
    private boolean h = false;
    private boolean i = false;

    /* JADX INFO: renamed from: com.unity3d.player.v$1, reason: invalid class name */
    final class AnonymousClass1 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f435a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f436b;
        final /* synthetic */ int c;
        final /* synthetic */ int d;
        final /* synthetic */ boolean e;
        final /* synthetic */ long f;
        final /* synthetic */ long g;

        AnonymousClass1(String str, int i, int i2, int i3, boolean z, long j, long j2) {
            this.f435a = str;
            this.f436b = i;
            this.c = i2;
            this.d = i3;
            this.e = z;
            this.f = j;
            this.g = j2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (v.this.f != null) {
                i.Log(5, "Video already playing");
                v.this.g = 2;
                v.this.d.release();
            } else {
                v.this.f = new u(v.this.f434b, this.f435a, this.f436b, this.c, this.d, this.e, this.f, this.g, new u.a() { // from class: com.unity3d.player.v.1.1
                    @Override // com.unity3d.player.u.a
                    public final void a(int i) {
                        v.this.e.lock();
                        v.this.g = i;
                        if (i == 3 && v.this.i) {
                            v.this.runOnUiThread(new Runnable() { // from class: com.unity3d.player.v.1.1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    v.this.d();
                                    v.this.f433a.resume();
                                }
                            });
                        }
                        if (i != 0) {
                            v.this.d.release();
                        }
                        v.this.e.unlock();
                    }
                });
                if (v.this.f != null) {
                    v.this.f433a.addView(v.this.f);
                }
            }
        }
    }

    public interface a {
        void a();
    }

    v(UnityPlayer unityPlayer) {
        this.f433a = null;
        this.f433a = unityPlayer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        u uVar = this.f;
        if (uVar != null) {
            this.f433a.removeViewFromPlayer(uVar);
            this.i = false;
            this.f.destroyPlayer();
            this.f = null;
            a aVar = this.c;
            if (aVar != null) {
                aVar.a();
            }
        }
    }

    static /* synthetic */ boolean h(v vVar) {
        vVar.i = true;
        return true;
    }

    public final void a() {
        this.e.lock();
        u uVar = this.f;
        if (uVar != null) {
            if (this.g == 0) {
                uVar.CancelOnPrepare();
            } else if (this.i) {
                boolean zA = uVar.a();
                this.h = zA;
                if (!zA) {
                    this.f.pause();
                }
            }
        }
        this.e.unlock();
    }

    public final boolean a(Context context, String str, int i, int i2, int i3, boolean z, long j, long j2, a aVar) {
        this.e.lock();
        this.c = aVar;
        this.f434b = context;
        this.d.drainPermits();
        this.g = 2;
        runOnUiThread(new AnonymousClass1(str, i, i2, i3, z, j, j2));
        boolean z2 = false;
        try {
            this.e.unlock();
            this.d.acquire();
            this.e.lock();
            if (this.g != 2) {
                z2 = true;
            }
        } catch (InterruptedException unused) {
        }
        runOnUiThread(new Runnable() { // from class: com.unity3d.player.v.2
            @Override // java.lang.Runnable
            public final void run() {
                v.this.f433a.pause();
            }
        });
        runOnUiThread((!z2 || this.g == 3) ? new Runnable() { // from class: com.unity3d.player.v.4
            @Override // java.lang.Runnable
            public final void run() {
                v.this.d();
                v.this.f433a.resume();
            }
        } : new Runnable() { // from class: com.unity3d.player.v.3
            @Override // java.lang.Runnable
            public final void run() {
                if (v.this.f != null) {
                    v.this.f433a.addViewToPlayer(v.this.f, true);
                    v.h(v.this);
                    v.this.f.requestFocus();
                }
            }
        });
        this.e.unlock();
        return z2;
    }

    public final void b() {
        this.e.lock();
        u uVar = this.f;
        if (uVar != null && this.i && !this.h) {
            uVar.start();
        }
        this.e.unlock();
    }

    public final void c() {
        this.e.lock();
        u uVar = this.f;
        if (uVar != null) {
            uVar.updateVideoLayout();
        }
        this.e.unlock();
    }

    protected final void runOnUiThread(Runnable runnable) {
        Context context = this.f434b;
        if (context instanceof Activity) {
            ((Activity) context).runOnUiThread(runnable);
        } else {
            i.Log(5, "Not running from an Activity; Ignoring execution request...");
        }
    }
}
