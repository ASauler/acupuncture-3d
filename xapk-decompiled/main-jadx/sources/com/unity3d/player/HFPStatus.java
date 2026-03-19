package com.unity3d.player;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import com.luck.picture.lib.config.PictureMimeType;

/* JADX INFO: loaded from: classes2.dex */
public class HFPStatus {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f283a;
    private AudioManager e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private BroadcastReceiver f284b = null;
    private Intent c = null;
    private boolean d = false;
    private int f = a.f286a;

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final int f286a = 1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f287b = 2;
        public static final int c = 3;
        private static final /* synthetic */ int[] d = {1, 2, 3};
    }

    public HFPStatus(Context context) {
        this.e = null;
        this.f283a = context;
        this.e = (AudioManager) context.getSystemService(PictureMimeType.MIME_TYPE_PREFIX_AUDIO);
        initHFPStatusJni();
    }

    private final native void deinitHFPStatusJni();

    private final native void initHFPStatusJni();

    public final void a() {
        deinitHFPStatusJni();
    }

    protected boolean getHFPStat() {
        return this.f == a.f287b;
    }

    protected void requestHFPStat() {
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.unity3d.player.HFPStatus.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                int intExtra = intent.getIntExtra("android.media.extra.SCO_AUDIO_STATE", -1);
                if (intExtra == 0) {
                    if (HFPStatus.this.d) {
                        HFPStatus.this.e.setMode(0);
                    }
                    HFPStatus.this.d = false;
                    return;
                }
                if (intExtra == 1) {
                    HFPStatus.this.f = a.f287b;
                    if (HFPStatus.this.d) {
                        HFPStatus.this.e.setMode(3);
                        return;
                    } else {
                        HFPStatus.this.e.stopBluetoothSco();
                        return;
                    }
                }
                if (intExtra != 2) {
                    return;
                }
                if (HFPStatus.this.f == a.f287b) {
                    HFPStatus.this.d = true;
                } else {
                    HFPStatus.this.f = a.c;
                }
            }
        };
        this.f284b = broadcastReceiver;
        this.c = this.f283a.registerReceiver(broadcastReceiver, new IntentFilter("android.media.ACTION_SCO_AUDIO_STATE_UPDATED"));
        try {
            this.e.startBluetoothSco();
        } catch (NullPointerException unused) {
            i.Log(5, "startBluetoothSco() failed. no bluetooth device connected.");
        }
    }
}
