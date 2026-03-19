package cn.voidar.engine;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.opengl.GLES20;
import android.util.Log;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class VideoCapture {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static cn.voidar.engine.a.d f126a;
    private static Object n = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private g f127b;
    private cn.voidar.engine.a c;
    private a h;
    private MediaMuxer j;
    private String p;
    private int d = 0;
    private int e = 0;
    private cn.voidar.engine.a.f f = null;
    private b g = null;
    private boolean i = false;
    private boolean k = false;
    private volatile int l = 0;
    private volatile int m = 0;
    private long o = 0;
    private boolean q = false;

    private class a extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f131b = false;
        private boolean c = false;

        a() {
        }

        public void a() {
            this.f131b = true;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            synchronized (VideoCapture.this.c) {
                VideoCapture.this.c.a();
            }
            while (!this.f131b) {
                synchronized (VideoCapture.this.c) {
                    VideoCapture.this.c.b(false);
                    VideoCapture.this.c.a(false);
                }
            }
            this.f131b = false;
            synchronized (VideoCapture.this.c) {
                VideoCapture.this.c.a(true);
                VideoCapture.this.c.b(true);
                VideoCapture.this.c.b();
            }
        }
    }

    private class b extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private cn.voidar.engine.a.f f133b;
        private int d;
        private boolean c = false;
        private boolean e = false;

        b(cn.voidar.engine.a.f fVar) {
            this.f133b = fVar;
        }

        public void a() {
            this.c = true;
        }

        public void a(int i) {
            this.d = i;
            this.e = true;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (!this.c) {
                if (this.e) {
                    synchronized (VideoCapture.this.f127b) {
                        this.f133b.a();
                        VideoCapture.this.f127b.c();
                        GLES20.glViewport(0, 0, VideoCapture.this.d, VideoCapture.this.e);
                        VideoCapture.f126a.a(this.d);
                        VideoCapture.this.f127b.d();
                        this.e = false;
                        this.f133b.b();
                    }
                }
            }
            this.c = false;
            synchronized (VideoCapture.this.f127b) {
                VideoCapture.this.f127b.b();
                VideoCapture.this.f127b.a();
            }
        }
    }

    public static String getDirectoryDCIM() {
        return j.a();
    }

    public int addTrack(MediaFormat mediaFormat, int i) {
        int iAddTrack;
        if (this.k) {
            return -1;
        }
        if (i == 1) {
            this.q = true;
        }
        synchronized (n) {
            iAddTrack = this.j.addTrack(mediaFormat);
            this.l++;
            if (this.l == this.m) {
                this.j.start();
                this.k = true;
                i.a().a("Mutex Started");
            }
        }
        return iAddTrack;
    }

    public void captureFrame(int i) {
        this.g.a(i);
    }

    public void captureSamples(float[] fArr) {
    }

    public void encoderFinished() {
        i.a().a("encoderFinished");
        try {
            if (this.k) {
                this.k = false;
                this.j.stop();
                this.j.release();
            }
        } catch (Exception e) {
            e.printStackTrace();
            i.a().c("encoderFinished Error:" + e.toString());
        }
        this.j = null;
        this.l = 0;
        i.a().a("encoderFinished VIDEO_CAPTURE_SUCCESS");
        j.a(UnityActivityHelper.f120a, this.p);
        UnityActivityHelper.sendMessageToUnity("VIDEO_CAPTURE_SUCCESS", this.p);
    }

    public long getTimeUs() {
        return System.nanoTime() - this.o;
    }

    public void initCapturing(int i, int i2, int i3, int i4) {
        if (f126a == null) {
            f126a = new cn.voidar.engine.a.d();
        }
        if (this.f == null) {
            this.f = new cn.voidar.engine.a.f();
        }
        this.d = i;
        this.e = i2;
        this.g = new b(this.f);
        this.f127b = new g(this);
        this.h = new a();
        this.c = new cn.voidar.engine.a(this);
        this.m = 2;
        this.q = false;
    }

    public boolean isAudioTrackReady() {
        return this.q;
    }

    public boolean isRunning() {
        return this.i;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [cn.voidar.engine.VideoCapture$1] */
    public void startCapturing(final String str) {
        if (this.f127b == null) {
            return;
        }
        this.p = str;
        try {
            this.j = new MediaMuxer(str, 0);
        } catch (IOException e) {
            i.a().c(Log.getStackTraceString(e));
        }
        this.o = System.nanoTime();
        new Thread() { // from class: cn.voidar.engine.VideoCapture.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                synchronized (VideoCapture.this.f127b) {
                    VideoCapture.this.f127b.a(str, VideoCapture.this.d, VideoCapture.this.e);
                    VideoCapture.this.g.start();
                    VideoCapture.this.i = true;
                }
                synchronized (VideoCapture.this.c) {
                    VideoCapture.this.h.start();
                }
            }
        }.start();
    }

    public void stopCapturing() {
        i.a().a("--- stopCapturing");
        this.i = false;
        this.g.a();
        this.h.a();
    }

    public void writeSampleData(int i, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
        synchronized (n) {
            if ((bufferInfo.flags & 4) != 0) {
                this.m--;
                i.a().a("+++++++++++++++++++ signalEndOfTrack trackIndex=" + i + " encoderCount=" + this.m);
            }
            if (this.k) {
                i.a().a("MPEG4Writer writeSampleData trackIndex=" + i + " _bufferInfo size=" + bufferInfo.size + " time=" + bufferInfo.presentationTimeUs + " flag = " + bufferInfo.flags);
                this.j.writeSampleData(i, byteBuffer, bufferInfo);
            } else {
                i.a().c("MPEG4Writer skip writeSampleData trackIndex=" + i + " _bufferInfo size=" + bufferInfo.size + " time=" + bufferInfo.presentationTimeUs + " flag = " + bufferInfo.flags);
            }
            if (this.m == 0) {
                i.a().a("+++++++++++++++++++allTracksFinished");
                encoderFinished();
            }
        }
    }
}
