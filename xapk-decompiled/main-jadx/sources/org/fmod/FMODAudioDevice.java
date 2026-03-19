package org.fmod;

import android.media.AudioTrack;
import android.util.Log;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes4.dex */
public class FMODAudioDevice implements Runnable {
    private static int h = 0;
    private static int i = 1;
    private static int j = 2;
    private static int k = 3;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile Thread f492a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile boolean f493b = false;
    private AudioTrack c = null;
    private boolean d = false;
    private ByteBuffer e = null;
    private byte[] f = null;
    private volatile a g;

    private native int fmodGetInfo(int i2);

    private native int fmodProcess(ByteBuffer byteBuffer);

    private void releaseAudioTrack() {
        AudioTrack audioTrack = this.c;
        if (audioTrack != null) {
            if (audioTrack.getState() == 1) {
                this.c.stop();
            }
            this.c.release();
            this.c = null;
        }
        this.e = null;
        this.f = null;
        this.d = false;
    }

    public synchronized void close() {
        stop();
    }

    native int fmodProcessMicData(ByteBuffer byteBuffer, int i2);

    public boolean isRunning() {
        return this.f492a != null && this.f492a.isAlive();
    }

    @Override // java.lang.Runnable
    public void run() {
        int i2 = 3;
        while (this.f493b) {
            if (!this.d && i2 > 0) {
                releaseAudioTrack();
                int iFmodGetInfo = fmodGetInfo(h);
                int iRound = Math.round(AudioTrack.getMinBufferSize(iFmodGetInfo, 3, 2) * 1.1f) & (-4);
                int iFmodGetInfo2 = fmodGetInfo(i);
                int iFmodGetInfo3 = fmodGetInfo(j) * iFmodGetInfo2 * 4;
                AudioTrack audioTrack = new AudioTrack(3, iFmodGetInfo, 3, 2, iFmodGetInfo3 > iRound ? iFmodGetInfo3 : iRound, 1);
                this.c = audioTrack;
                boolean z = audioTrack.getState() == 1;
                this.d = z;
                if (z) {
                    ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(iFmodGetInfo2 * 2 * 2);
                    this.e = byteBufferAllocateDirect;
                    this.f = new byte[byteBufferAllocateDirect.capacity()];
                    this.c.play();
                    i2 = 3;
                } else {
                    Log.e("FMOD", "AudioTrack failed to initialize (status " + this.c.getState() + ")");
                    releaseAudioTrack();
                    i2--;
                }
            }
            if (this.d) {
                if (fmodGetInfo(k) == 1) {
                    fmodProcess(this.e);
                    ByteBuffer byteBuffer = this.e;
                    byteBuffer.get(this.f, 0, byteBuffer.capacity());
                    this.c.write(this.f, 0, this.e.capacity());
                    this.e.position(0);
                } else {
                    releaseAudioTrack();
                }
            }
        }
        releaseAudioTrack();
    }

    public synchronized void start() {
        if (this.f492a != null) {
            stop();
        }
        this.f492a = new Thread(this, "FMODAudioDevice");
        this.f492a.setPriority(10);
        this.f493b = true;
        this.f492a.start();
        if (this.g != null) {
            this.g.b();
        }
    }

    public synchronized int startAudioRecord(int i2, int i3, int i4) {
        if (this.g == null) {
            this.g = new a(this, i2, i3);
            this.g.b();
        }
        return this.g.a();
    }

    public synchronized void stop() {
        while (this.f492a != null) {
            this.f493b = false;
            try {
                this.f492a.join();
                this.f492a = null;
            } catch (InterruptedException unused) {
            }
        }
        if (this.g != null) {
            this.g.c();
        }
    }

    public synchronized void stopAudioRecord() {
        if (this.g != null) {
            this.g.c();
            this.g = null;
        }
    }
}
