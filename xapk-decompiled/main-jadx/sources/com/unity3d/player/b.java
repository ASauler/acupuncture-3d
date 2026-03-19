package com.unity3d.player;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Handler;
import android.provider.Settings;
import com.luck.picture.lib.config.PictureMimeType;

/* JADX INFO: loaded from: classes2.dex */
final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f375a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AudioManager f376b;
    private a c;

    private class a extends ContentObserver {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final InterfaceC0056b f378b;
        private final AudioManager c;
        private final int d;
        private int e;

        public a(Handler handler, AudioManager audioManager, int i, InterfaceC0056b interfaceC0056b) {
            super(handler);
            this.c = audioManager;
            this.d = 3;
            this.f378b = interfaceC0056b;
            this.e = audioManager.getStreamVolume(3);
        }

        @Override // android.database.ContentObserver
        public final boolean deliverSelfNotifications() {
            return super.deliverSelfNotifications();
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z, Uri uri) {
            int streamVolume;
            AudioManager audioManager = this.c;
            if (audioManager == null || this.f378b == null || (streamVolume = audioManager.getStreamVolume(this.d)) == this.e) {
                return;
            }
            this.e = streamVolume;
            this.f378b.onAudioVolumeChanged(streamVolume);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.player.b$b, reason: collision with other inner class name */
    public interface InterfaceC0056b {
        void onAudioVolumeChanged(int i);
    }

    public b(Context context) {
        this.f375a = context;
        this.f376b = (AudioManager) context.getSystemService(PictureMimeType.MIME_TYPE_PREFIX_AUDIO);
    }

    public final void a() {
        if (this.c != null) {
            this.f375a.getContentResolver().unregisterContentObserver(this.c);
            this.c = null;
        }
    }

    public final void a(InterfaceC0056b interfaceC0056b) {
        this.c = new a(new Handler(), this.f376b, 3, interfaceC0056b);
        this.f375a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this.c);
    }
}
