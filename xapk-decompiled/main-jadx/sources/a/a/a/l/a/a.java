package a.a.a.l.a;

import android.os.Handler;
import android.os.HandlerThread;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f105a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private HandlerThread f106b;
    private Handler c;

    public a(String str) {
        this.f105a = str;
    }

    public boolean a() {
        if (this.f106b != null) {
            a.a.a.e.a.a.a("startBackgroundThread: background thread is already running");
            return false;
        }
        HandlerThread handlerThread = new HandlerThread(this.f105a);
        this.f106b = handlerThread;
        handlerThread.start();
        this.c = new Handler(this.f106b.getLooper());
        return true;
    }

    public boolean a(Runnable runnable) {
        return a(runnable, 0L);
    }

    public boolean a(Runnable runnable, long j) {
        Handler handler;
        if (this.f106b == null || (handler = this.c) == null) {
            a.a.a.e.a.a.a("post: background thread is already running");
            return false;
        }
        handler.postDelayed(runnable, j);
        return true;
    }

    public boolean b() {
        HandlerThread handlerThread = this.f106b;
        if (handlerThread != null) {
            handlerThread.quitSafely();
            try {
                try {
                    this.f106b.join();
                    this.f106b = null;
                    this.c = null;
                    return true;
                } catch (InterruptedException e) {
                    a.a.a.e.a.a.a("stopBackgroundThread: interruption while safely stopping the thread. " + e.getMessage());
                    this.f106b = null;
                    this.c = null;
                }
            } catch (Throwable th) {
                this.f106b = null;
                this.c = null;
                throw th;
            }
        } else {
            a.a.a.e.a.a.a("stopBackgroundThread: trying to stop non-existing thread");
        }
        return false;
    }

    public void finalize() throws Throwable {
        super.finalize();
        if (this.f106b != null) {
            a.a.a.e.a.a.a("Background thread " + this.f105a + " is destroyed before it is stopped");
        }
    }
}
