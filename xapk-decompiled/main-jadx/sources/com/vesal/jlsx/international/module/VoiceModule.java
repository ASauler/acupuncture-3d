package com.vesal.jlsx.international.module;

import android.speech.tts.TextToSpeech;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class VoiceModule extends ReactContextBaseJavaModule {
    private boolean supportNative;
    private TextToSpeech textToSpeech;

    @Override // com.facebook.react.bridge.NativeModule
    public String getName() {
        return "VoiceModule";
    }

    @Override // com.facebook.react.bridge.BaseJavaModule, com.facebook.react.bridge.NativeModule
    public void onCatalystInstanceDestroy() {
    }

    public VoiceModule(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
        this.supportNative = true;
    }

    @ReactMethod
    public void init(int i) {
        this.textToSpeech = new TextToSpeech(getReactApplicationContext(), new TextToSpeech.OnInitListener() { // from class: com.vesal.jlsx.international.module.VoiceModule.1
            @Override // android.speech.tts.TextToSpeech.OnInitListener
            public void onInit(int i2) {
                int language;
                TextToSpeech unused = VoiceModule.this.textToSpeech;
                if (i2 != 0 || (language = VoiceModule.this.textToSpeech.setLanguage(Locale.CHINA)) == 1 || language == 0) {
                    return;
                }
                VoiceModule.this.supportNative = false;
            }
        });
    }

    @ReactMethod
    public void speak(String str) {
        System.out.println("msg: " + str + this.supportNative);
        if (this.supportNative) {
            this.textToSpeech.speak(str, 0, null, AppEventsConstants.EVENT_PARAM_VALUE_YES);
        }
    }

    @ReactMethod
    public void stopSpeak() {
        TextToSpeech textToSpeech = this.textToSpeech;
        if (textToSpeech == null || !textToSpeech.isSpeaking()) {
            return;
        }
        this.textToSpeech.stop();
    }
}
