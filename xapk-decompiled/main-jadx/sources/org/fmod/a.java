package org.fmod;

import android.media.AudioRecord;
import android.util.Log;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes4.dex */
final class a implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FMODAudioDevice f494a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ByteBuffer f495b;
    private final int c;
    private final int d;
    private final int e = 2;
    private volatile Thread f;
    private volatile boolean g;
    private AudioRecord h;
    private boolean i;

    a(FMODAudioDevice fMODAudioDevice, int i, int i2) {
        this.f494a = fMODAudioDevice;
        this.c = i;
        this.d = i2;
        this.f495b = ByteBuffer.allocateDirect(AudioRecord.getMinBufferSize(i, i2, 2));
    }

    private void d() {
        AudioRecord audioRecord = this.h;
        if (audioRecord != null) {
            if (audioRecord.getState() == 1) {
                this.h.stop();
            }
            this.h.release();
            this.h = null;
        }
        this.f495b.position(0);
        this.i = false;
    }

    public final int a() {
        return this.f495b.capacity();
    }

    public final void b() {
        if (this.f != null) {
            c();
        }
        this.g = true;
        this.f = new Thread(this);
        this.f.start();
    }

    public final void c() {
        while (this.f != null) {
            this.g = false;
            try {
                this.f.join();
                this.f = null;
            } catch (InterruptedException unused) {
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = 3;
        while (this.g) {
            if (!this.i && i > 0) {
                d();
                AudioRecord audioRecord = new AudioRecord(1, this.c, this.d, this.e, this.f495b.capacity());
                this.h = audioRecord;
                boolean z = audioRecord.getState() == 1;
                this.i = z;
                if (z) {
                    this.f495b.position(0);
                    this.h.startRecording();
                    i = 3;
                } else {
                    Log.e("FMOD", "AudioRecord failed to initialize (status " + this.h.getState() + ")");
                    i--;
                    d();
                }
            }
            if (this.i && this.h.getRecordingState() == 3) {
                AudioRecord audioRecord2 = this.h;
                ByteBuffer byteBuffer = this.f495b;
                this.f494a.fmodProcessMicData(this.f495b, audioRecord2.read(byteBuffer, byteBuffer.capacity()));
                this.f495b.position(0);
            }
        }
        d();
    }
}
