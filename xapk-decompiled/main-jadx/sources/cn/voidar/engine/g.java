package cn.voidar.engine;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.opengl.EGL14;
import android.view.Surface;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f160a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f161b;
    private String c;
    private cn.voidar.engine.a.a f;
    private MediaFormat h;
    private MediaCodec.BufferInfo i;
    private VideoCapture k;
    private boolean d = false;
    private MediaCodec g = null;
    private int j = -1;
    private cn.voidar.engine.a.b e = new cn.voidar.engine.a.b();

    public g(VideoCapture videoCapture) {
        this.k = videoCapture;
    }

    private void a(int i, int i2) {
        this.e.a(i, i2);
        this.e.a();
        this.g.configure(this.h, (Surface) null, (MediaCrypto) null, 1);
        this.f = new cn.voidar.engine.a.a(this.g.createInputSurface(), EGL14.eglGetCurrentContext());
        this.g.start();
        this.f.b();
        this.e.b();
    }

    private void a(boolean z) {
        if (z) {
            i.a().a("Video Encoder sending EOS to encoder");
            this.g.signalEndOfInputStream();
        }
        if (!this.k.isAudioTrackReady()) {
            return;
        }
        while (true) {
            ByteBuffer[] outputBuffers = this.g.getOutputBuffers();
            while (true) {
                int iDequeueOutputBuffer = this.g.dequeueOutputBuffer(this.i, 10000L);
                if (iDequeueOutputBuffer == -1 && !z) {
                    return;
                }
                if (iDequeueOutputBuffer == -3) {
                    break;
                }
                if (iDequeueOutputBuffer == -2) {
                    MediaFormat outputFormat = this.g.getOutputFormat();
                    int iAddTrack = this.k.addTrack(outputFormat, 0);
                    if (iAddTrack != -1) {
                        this.j = iAddTrack;
                    }
                    i.a().a("MPEG4Writer ++++++++++++Video Encoder  trackIndex=" + this.j + " newFormat=" + outputFormat.toString());
                } else if (iDequeueOutputBuffer < 0) {
                    continue;
                } else {
                    ByteBuffer byteBuffer = outputBuffers[iDequeueOutputBuffer];
                    if (byteBuffer == null) {
                        throw new RuntimeException("encoderOutputBuffer " + iDequeueOutputBuffer + " was null");
                    }
                    if ((this.i.flags & 2) != 0) {
                        this.i.size = 0;
                    }
                    if (this.i.size != 0) {
                        byteBuffer.position(this.i.offset);
                        byteBuffer.limit(this.i.offset + this.i.size);
                        if (z) {
                            this.i.flags |= 4;
                        }
                        this.k.writeSampleData(this.j, byteBuffer, this.i);
                    }
                    this.g.releaseOutputBuffer(iDequeueOutputBuffer, false);
                    if ((this.i.flags & 4) != 0) {
                        if (z) {
                            return;
                        }
                        i.a().a("MP4Recorder reached end of stream unexpectedly");
                        return;
                    }
                }
            }
        }
    }

    public void a() {
        this.g.stop();
        this.g.release();
        this.f.a();
        this.j = -1;
        i.a().a("VideoEncoder  stop");
    }

    public void a(String str, int i, int i2) {
        this.c = str;
        this.f160a = i;
        this.f161b = i2;
        MediaFormat mediaFormatCreateVideoFormat = MediaFormat.createVideoFormat("video/avc", i, i2);
        this.h = mediaFormatCreateVideoFormat;
        mediaFormatCreateVideoFormat.setInteger("color-format", 2130708361);
        this.h.setInteger("bitrate", 14000000);
        this.h.setInteger("frame-rate", 30);
        this.h.setInteger("i-frame-interval", 5);
        try {
            this.g = MediaCodec.createEncoderByType("video/avc");
        } catch (Throwable th) {
            i.a().c("runVideoEncoding error: " + th);
        }
        this.i = new MediaCodec.BufferInfo();
    }

    public void b() {
        i.a().a("VideoEncoder  signalEndOfInputStream");
        a(true);
    }

    public void c() {
        if (!this.d) {
            i.a().a("MP4Recorder beginCaptureFrame config videoWidth=" + this.f160a + "  videoHeight=" + this.f161b);
            a(this.f160a, this.f161b);
            this.d = true;
        }
        this.e.a();
        this.f.b();
        this.f.a(this.e.c());
    }

    public void d() {
        a(false);
        this.f.a(this.k.getTimeUs());
        this.f.c();
        this.e.b();
    }
}
