package com.reactnative.unity.view;

import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.modules.core.DeviceEventManagerModule;
import com.reactnative.unity.view.UnityUtils;

/* JADX INFO: loaded from: classes2.dex */
public class UnityNativeModule extends ReactContextBaseJavaModule implements UnityEventListener {
    @Override // com.facebook.react.bridge.NativeModule
    public String getName() {
        return "UnityNativeModule";
    }

    public UnityNativeModule(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
        UnityUtils.addUnityEventListener(this);
    }

    @ReactMethod
    public void isReady(Promise promise) {
        promise.resolve(Boolean.valueOf(UnityUtils.isUnityReady()));
    }

    @ReactMethod
    public void createUnity(final Promise promise) {
        UnityUtils.createPlayer(getCurrentActivity(), new UnityUtils.CreateCallback() { // from class: com.reactnative.unity.view.UnityNativeModule.1
            @Override // com.reactnative.unity.view.UnityUtils.CreateCallback
            public void onReady() {
                promise.resolve(true);
            }
        });
    }

    @ReactMethod
    public void postMessage(String str, String str2, String str3) {
        UnityUtils.postMessage(str, str2, str3);
    }

    @ReactMethod
    public void pause() {
        UnityUtils.pause();
    }

    @ReactMethod
    public void resume() {
        UnityUtils.resume();
    }

    @Override // com.reactnative.unity.view.UnityEventListener
    public void onMessage(String str) {
        ((DeviceEventManagerModule.RCTDeviceEventEmitter) getReactApplicationContext().getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)).emit("onUnityMessage", str);
    }
}
