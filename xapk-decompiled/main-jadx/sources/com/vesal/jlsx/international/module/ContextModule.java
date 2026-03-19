package com.vesal.jlsx.international.module;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.vesal.jlsx.international.utils.RNEventEmitter;

/* JADX INFO: loaded from: classes2.dex */
public class ContextModule extends ReactContextBaseJavaModule {
    private final String TAG;
    private ReactApplicationContext reactContext;

    @Override // com.facebook.react.bridge.NativeModule
    public String getName() {
        return "ContextModule";
    }

    ContextModule(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
        this.TAG = "google_pay";
        this.reactContext = reactApplicationContext;
        RNEventEmitter.mReactContext = reactApplicationContext;
    }
}
