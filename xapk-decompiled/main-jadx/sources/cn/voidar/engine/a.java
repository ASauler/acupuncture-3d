package cn.voidar.engine;

import android.media.AudioRecord;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.view.Surface;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected MediaCodec f134a;
    private VideoCapture h;
    private AudioRecord i;
    protected int c = -1;
    private int j = 44100;
    private int k = 16000;
    private int l = 1;
    long d = 0;
    long e = 0;
    protected int f = 0;
    protected final int g = 10;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected MediaCodec.BufferInfo f135b = new MediaCodec.BufferInfo();

    public a(VideoCapture videoCapture) {
        this.h = videoCapture;
        MediaFormat mediaFormatCreateAudioFormat = MediaFormat.createAudioFormat("audio/mp4a-latm", this.j, this.l);
        mediaFormatCreateAudioFormat.setInteger("aac-profile", 2);
        mediaFormatCreateAudioFormat.setInteger("sample-rate", this.j);
        mediaFormatCreateAudioFormat.setInteger("channel-count", this.l);
        mediaFormatCreateAudioFormat.setInteger("bitrate", this.k);
        mediaFormatCreateAudioFormat.setInteger("max-input-size", 16384);
        try {
            MediaCodec mediaCodecCreateEncoderByType = MediaCodec.createEncoderByType("audio/mp4a-latm");
            this.f134a = mediaCodecCreateEncoderByType;
            mediaCodecCreateEncoderByType.configure(mediaFormatCreateAudioFormat, (Surface) null, (MediaCrypto) null, 1);
        } catch (IOException unused) {
        }
    }

    private long a(long j, long j2) {
        int i = this.j;
        long j3 = (j2 * 1000000) / ((long) i);
        long j4 = j - j3;
        if (this.e == 0) {
            this.d = j4;
            this.e = 0L;
        }
        long j5 = this.d + ((this.e * 1000000) / ((long) i));
        if (j4 - j5 >= j3 * 2) {
            this.d = j4;
            this.e = 0L;
        } else {
            j4 = j5;
        }
        this.e += j2;
        return j4;
    }

    public void a() {
        int i = this.l == 1 ? 16 : 12;
        int minBufferSize = AudioRecord.getMinBufferSize(this.j, i, 2);
        i.a().a("minBufferSize = " + minBufferSize);
        this.f134a.start();
        if (minBufferSize > 0) {
            AudioRecord audioRecord = new AudioRecord(5, this.j, i, 2, minBufferSize * 4);
            this.i = audioRecord;
            audioRecord.startRecording();
        }
    }

    public void a(boolean z) {
        try {
            ByteBuffer[] inputBuffers = this.f134a.getInputBuffers();
            int iDequeueInputBuffer = this.f134a.dequeueInputBuffer(-1L);
            if (iDequeueInputBuffer >= 0) {
                ByteBuffer byteBuffer = inputBuffers[iDequeueInputBuffer];
                byteBuffer.clear();
                int i = this.i.read(byteBuffer, 2048);
                long jA = a(this.h.getTimeUs() / 1000, i / 2);
                if (i == -3) {
                    i.a().c(">>> Audio encodeSamples error: invalid operation");
                }
                if (i == -2) {
                    i.a().c(">>> Audio encodeSamples error: bad value");
                }
                if (!z) {
                    this.f134a.queueInputBuffer(iDequeueInputBuffer, 0, i, jA, 0);
                } else {
                    i.a().a("AudioEncoder endOfStream");
                    this.f134a.queueInputBuffer(iDequeueInputBuffer, 0, i, jA, 4);
                }
            }
        } catch (Throwable th) {
            i.a().c("Error:" + th.toString());
            th.printStackTrace();
        }
    }

    public void b() {
        this.i.stop();
        this.f134a.stop();
        this.f134a.release();
        this.f134a = null;
        this.d = 0L;
        this.e = 0L;
        this.f = 0;
        i.a().a("AudioEncoder  stop");
    }

    public synchronized void b(boolean z) {
        MediaCodec mediaCodec = this.f134a;
        loop0: while (true) {
            ByteBuffer[] outputBuffers = mediaCodec.getOutputBuffers();
            while (true) {
                int iDequeueOutputBuffer = this.f134a.dequeueOutputBuffer(this.f135b, 10000L);
                if (iDequeueOutputBuffer == -1) {
                    if (!z) {
                        break loop0;
                    }
                    int i = this.f + 1;
                    this.f = i;
                    if (i > 10) {
                        break loop0;
                    }
                } else {
                    if (iDequeueOutputBuffer == -3) {
                        break;
                    }
                    if (iDequeueOutputBuffer == -2) {
                        MediaFormat outputFormat = this.f134a.getOutputFormat();
                        int iAddTrack = this.h.addTrack(outputFormat, 1);
                        if (iAddTrack != -1) {
                            this.c = iAddTrack;
                        }
                        i.a().a("MPEG4Writer ++++++++++++Audio Encoder  trackIndex=" + this.c + " newFormat=" + outputFormat.toString());
                    } else if (iDequeueOutputBuffer < 0) {
                        continue;
                    } else {
                        ByteBuffer byteBuffer = outputBuffers[iDequeueOutputBuffer];
                        if (byteBuffer == null) {
                            throw new RuntimeException("encoderOutputBuffer " + iDequeueOutputBuffer + " was null");
                        }
                        if ((this.f135b.flags & 2) != 0) {
                            this.f135b.size = 0;
                        }
                        if (this.f135b.size != 0) {
                            byteBuffer.position(this.f135b.offset);
                            byteBuffer.limit(this.f135b.offset + this.f135b.size);
                            this.h.writeSampleData(this.c, byteBuffer, this.f135b);
                        }
                        this.f134a.releaseOutputBuffer(iDequeueOutputBuffer, false);
                    }
                }
            }
            mediaCodec = this.f134a;
        }
    }
}
