package cn.voidar.engine;

import android.app.Activity;
import android.content.res.AssetFileDescriptor;
import android.media.MediaPlayer;
import android.view.Surface;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class NativeVideoPlayer implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private MediaPlayer f116a;
    private a c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private h f117b = null;
    private boolean d = false;
    private float e = 1.0f;

    public enum a {
        NOT_READY(0),
        READY(1),
        PLAYING(2),
        PAUSED(3),
        END(4),
        STOPPED(5),
        ERROR(6);

        private int h;

        a(int i2) {
            this.h = i2;
        }

        public int a() {
            return this.h;
        }
    }

    public NativeVideoPlayer() {
        i.a().a("=== NativeVideoPlayer ===");
    }

    private void a() {
        MediaPlayer mediaPlayer = this.f116a;
        if (mediaPlayer == null) {
            this.f116a = new MediaPlayer();
        } else {
            mediaPlayer.reset();
            this.f117b.g();
        }
        this.f117b = new h();
        this.c = a.NOT_READY;
    }

    public boolean getAutoPlay() {
        return this.d;
    }

    public int getCurrentPosition() {
        MediaPlayer mediaPlayer = this.f116a;
        if (mediaPlayer == null || !mediaPlayer.isPlaying()) {
            return 0;
        }
        return this.f116a.getCurrentPosition();
    }

    public int getDuration() {
        if (this.c != a.NOT_READY) {
            return this.f116a.getDuration();
        }
        return 0;
    }

    public int getStatus() {
        return this.c.a();
    }

    public int getTextureHandle() {
        i.a().a("getTextureHandle");
        return this.f117b.f();
    }

    public int getTextureId() {
        return this.f117b.b();
    }

    public int getVideoHeight() {
        return getVideoRender().f163b;
    }

    public h getVideoRender() {
        return this.f117b;
    }

    public int getVideoWidth() {
        return getVideoRender().f162a;
    }

    public float getVolume() {
        return this.e;
    }

    public boolean isPlay() {
        return this.c == a.PLAYING;
    }

    public boolean isPlaying() {
        MediaPlayer mediaPlayer = this.f116a;
        if (mediaPlayer != null) {
            return mediaPlayer.isPlaying();
        }
        return false;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        this.c = a.END;
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        i.a().a("videoplay onError what = " + i);
        this.c = a.ERROR;
        return true;
    }

    public void onExit() {
        i.a().a("VideoPlay onExit");
        if (this.f116a != null) {
            pause();
            this.f116a.release();
            this.f116a = null;
            this.f117b.g();
            this.c = a.STOPPED;
        }
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        this.f117b.f162a = this.f116a.getVideoWidth();
        this.f117b.f163b = this.f116a.getVideoHeight();
        this.c = a.READY;
        if (this.d) {
            play();
        }
    }

    public void pause() {
        this.d = false;
        MediaPlayer mediaPlayer = this.f116a;
        if (mediaPlayer == null || !mediaPlayer.isPlaying()) {
            return;
        }
        this.f116a.pause();
        this.c = a.PAUSED;
    }

    public void play() {
        this.d = true;
        if (this.c != a.NOT_READY) {
            this.f116a.start();
            this.c = a.PLAYING;
        }
    }

    public void seekTo(float f) {
        i.a().a("seekTo = " + f);
        this.f116a.seekTo(((int) f) * 1000);
    }

    public void setActivity(Activity activity) {
        if (UnityActivityHelper.f120a == null) {
            UnityActivityHelper.f120a = activity;
        }
    }

    public void setAutoPlay(boolean z) {
        this.d = z;
    }

    public void setVideoSource(AssetFileDescriptor assetFileDescriptor) {
        try {
            this.f116a.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
            assetFileDescriptor.close();
            this.f117b.a();
            this.f116a.setSurface(new Surface(this.f117b.d()));
            this.f116a.setOnPreparedListener(this);
            this.f116a.setOnCompletionListener(this);
            this.f116a.setOnErrorListener(this);
            this.f116a.prepareAsync();
        } catch (IOException e) {
            i.a().c("setVideoSource error:" + e.toString());
        }
    }

    public void setVideoSource(String str) {
        try {
            this.f116a.setDataSource(str);
            this.f117b.a();
            this.f116a.setSurface(new Surface(this.f117b.d()));
            this.f116a.setOnPreparedListener(this);
            this.f116a.setOnCompletionListener(this);
            this.f116a.setOnErrorListener(this);
            this.f116a.prepareAsync();
        } catch (IOException e) {
            i.a().c("setVideoSource error " + e.toString());
        }
    }

    public void setVideoURL(String str) {
        AssetFileDescriptor assetFileDescriptorOpenFd;
        this.c = a.NOT_READY;
        if (UnityActivityHelper.f120a == null) {
            i.a().c(" setVideoURL Activity  null");
            return;
        }
        try {
            assetFileDescriptorOpenFd = UnityActivityHelper.f120a.getAssets().openFd(str);
        } catch (IOException unused) {
            assetFileDescriptorOpenFd = null;
        }
        a();
        if (assetFileDescriptorOpenFd != null) {
            i.a().a("set video source assets");
            setVideoSource(assetFileDescriptorOpenFd);
        } else {
            i.a().a("set video source file URL");
            setVideoSource(str);
        }
    }

    public void setVolume(float f) {
        if (this.f116a != null) {
            float fMax = Math.max(Math.min(f, 1.0f), 0.0f);
            this.e = fMax;
            this.f116a.setVolume(fMax, fMax);
        }
    }

    public int updateVideoTexture(int i) {
        if (!this.f117b.c()) {
            this.f117b.a(i);
        } else if (isPlay()) {
            this.f117b.e();
        }
        if (this.c != a.PLAYING || this.f117b.c) {
            return getStatus();
        }
        i.a().a("updateVideoTexture Buffer ready");
        return a.READY.a();
    }
}
