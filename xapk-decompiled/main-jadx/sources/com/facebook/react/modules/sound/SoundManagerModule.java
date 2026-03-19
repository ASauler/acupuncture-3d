package com.facebook.react.modules.sound;

import android.media.AudioManager;
import com.facebook.fbreact.specs.NativeSoundManagerSpec;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.module.annotations.ReactModule;
import com.luck.picture.lib.config.PictureMimeType;

/* JADX INFO: loaded from: classes3.dex */
@ReactModule(name = NativeSoundManagerSpec.NAME)
public class SoundManagerModule extends NativeSoundManagerSpec {
    public SoundManagerModule(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
    }

    @Override // com.facebook.fbreact.specs.NativeSoundManagerSpec
    public void playTouchSound() {
        AudioManager audioManager = (AudioManager) getReactApplicationContext().getSystemService(PictureMimeType.MIME_TYPE_PREFIX_AUDIO);
        if (audioManager != null) {
            audioManager.playSoundEffect(0);
        }
    }
}
