package a.a.a.j.a;

import android.view.Choreographer;

/* JADX INFO: loaded from: classes.dex */
public final class a implements Choreographer.FrameCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a.a.a.l.a.a f88a = new a.a.a.l.a.a("RenderThread");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f89b;
    private int c;

    /* JADX INFO: renamed from: a.a.a.j.a.a$a, reason: collision with other inner class name */
    public class RunnableC0006a implements Runnable {
        public RunnableC0006a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Choreographer.getInstance().postFrameCallback(a.this);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Choreographer.getInstance().removeFrameCallback(a.this);
        }
    }

    public interface c {
        void a();
    }

    public void a() {
        this.f88a.a(new b());
        this.f88a.b();
    }

    public void a(int i) {
        this.c = i;
    }

    public void a(c cVar) {
        this.f89b = cVar;
        this.f88a.a();
        this.f88a.a(new RunnableC0006a());
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long j) {
        Choreographer.getInstance().postFrameCallback(this);
        this.f89b.a();
    }
}
