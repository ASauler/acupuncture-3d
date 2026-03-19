package com.vesal.jlsx.international.utils;

import android.util.Log;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.modules.core.DeviceEventManagerModule;

/* JADX INFO: loaded from: classes2.dex */
public class RNEventEmitter {
    private static final String TAG = "EventEmitter";
    public static ReactContext mReactContext;

    public static void onGoogleLoginCallback(String str) {
        ReactContext reactContext = mReactContext;
        if (reactContext == null) {
            Log.e(TAG, "ReactContext is null");
        } else {
            ((DeviceEventManagerModule.RCTDeviceEventEmitter) reactContext.getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)).emit("onGoogleLoginCallback", str);
        }
    }

    public static void onGooglePayCallback(String str) {
        ReactContext reactContext = mReactContext;
        if (reactContext == null) {
            Log.e(TAG, "ReactContext is null");
        } else {
            ((DeviceEventManagerModule.RCTDeviceEventEmitter) reactContext.getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)).emit("onGooglePayCallback", str);
        }
    }

    public static void onGooglePayConsumeCallback(String str) {
        ReactContext reactContext = mReactContext;
        if (reactContext == null) {
            Log.e(TAG, "ReactContext is null");
        } else {
            ((DeviceEventManagerModule.RCTDeviceEventEmitter) reactContext.getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)).emit("onGooglePayConsumeCallback", str);
        }
    }

    public static void onFbLoginCallback(String str) {
        ReactContext reactContext = mReactContext;
        if (reactContext == null) {
            Log.e(TAG, "ReactContext is null");
        } else {
            ((DeviceEventManagerModule.RCTDeviceEventEmitter) reactContext.getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)).emit("onFbLoginCallback", str);
        }
    }

    public static void onPayLogRecord(String str) {
        ReactContext reactContext = mReactContext;
        if (reactContext == null) {
            Log.e(TAG, "ReactContext is null");
        } else {
            ((DeviceEventManagerModule.RCTDeviceEventEmitter) reactContext.getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)).emit("onPayLogUpload", str);
        }
    }

    public static void onGoogleServiceConnected(String str) {
        ReactContext reactContext = mReactContext;
        if (reactContext == null) {
            Log.e(TAG, "ReactContext is null");
        } else {
            ((DeviceEventManagerModule.RCTDeviceEventEmitter) reactContext.getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)).emit("onGoogleServiceConnected", str);
        }
    }

    public static void onMainActivityResume() {
        ReactContext reactContext = mReactContext;
        if (reactContext == null) {
            Log.e(TAG, "ReactContext is null");
        } else {
            ((DeviceEventManagerModule.RCTDeviceEventEmitter) reactContext.getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)).emit("onGooglePayStart", "");
        }
    }

    public static void onAptoideConsumeCallback(String str) {
        ReactContext reactContext = mReactContext;
        if (reactContext == null) {
            Log.e(TAG, "ReactContext is null");
        } else {
            ((DeviceEventManagerModule.RCTDeviceEventEmitter) reactContext.getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)).emit("onAptoideConsumeCallback", str);
        }
    }
}
