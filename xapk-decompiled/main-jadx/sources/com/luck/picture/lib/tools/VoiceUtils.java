package com.luck.picture.lib.tools;

import android.content.Context;
import android.media.SoundPool;
import com.luck.picture.lib.R;

/* JADX INFO: loaded from: classes2.dex */
public class VoiceUtils {
    private static VoiceUtils instance;
    private int soundID;
    private SoundPool soundPool;

    public static VoiceUtils getInstance() {
        if (instance == null) {
            synchronized (VoiceUtils.class) {
                if (instance == null) {
                    instance = new VoiceUtils();
                }
            }
        }
        return instance;
    }

    public void init(Context context) {
        initPool(context);
    }

    private void initPool(Context context) {
        if (this.soundPool == null) {
            SoundPool soundPool = new SoundPool(1, 3, 0);
            this.soundPool = soundPool;
            this.soundID = soundPool.load(context.getApplicationContext(), R.raw.picture_music, 1);
        }
    }

    public void play() {
        SoundPool soundPool = this.soundPool;
        if (soundPool != null) {
            soundPool.play(this.soundID, 0.1f, 0.5f, 0, 1, 1.0f);
        }
    }

    public void releaseSoundPool() {
        try {
            SoundPool soundPool = this.soundPool;
            if (soundPool != null) {
                soundPool.release();
                this.soundPool = null;
            }
            instance = null;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
