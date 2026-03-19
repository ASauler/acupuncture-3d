package com.vesal.jlsx.international.module;

import android.util.Log;
import android.view.inputmethod.InputMethodManager;
import com.facebook.infer.annotation.Assertions;
import com.facebook.react.bridge.Callback;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.messaging.FirebaseMessaging;
import com.vesal.jlsx.international.BuildConfig;
import com.vesal.jlsx.international.consts.Constants;
import com.vesal.jlsx.international.utils.FileUtils;
import com.vesal.jlsx.international.utils.SharedPreferenceData;

/* JADX INFO: loaded from: classes2.dex */
public class CommonModule extends ReactContextBaseJavaModule {
    private static final String TAG = "acucommon";
    private ReactApplicationContext reactContext;

    @Override // com.facebook.react.bridge.NativeModule
    public String getName() {
        return "CommonModule";
    }

    @ReactMethod
    public void initSDK() {
    }

    @ReactMethod
    public void test3() {
    }

    CommonModule(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
        this.reactContext = reactApplicationContext;
    }

    @ReactMethod(isBlockingSynchronousMethod = true)
    public String getDisplayHeight() {
        return String.valueOf(getCurrentActivity().getResources().getDisplayMetrics().heightPixels);
    }

    @ReactMethod
    public void SetLayout(String str) {
        SharedPreferenceData.setDisplayOrientation(str);
    }

    @ReactMethod(isBlockingSynchronousMethod = true)
    public String GetLayout() {
        return SharedPreferenceData.getDisplayOrientation();
    }

    @ReactMethod
    public void getFcmToken(final Callback callback) {
        FirebaseMessaging.getInstance().getToken().addOnCompleteListener(new OnCompleteListener<String>() { // from class: com.vesal.jlsx.international.module.CommonModule.1
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public void onComplete(Task<String> task) {
                if (!task.isSuccessful()) {
                    Log.w(CommonModule.TAG, "Fetching FCM registration token failed", task.getException());
                    return;
                }
                String result = task.getResult();
                Log.d(CommonModule.TAG, result);
                callback.invoke(result);
            }
        });
    }

    @ReactMethod
    public void inputMethod() {
        ((InputMethodManager) Assertions.assertNotNull(getCurrentActivity().getSystemService("input_method"))).showSoftInput(getCurrentActivity().getCurrentFocus(), 0);
    }

    @ReactMethod
    public void exitApp() {
        System.out.println("调用退出APP");
        System.exit(0);
    }

    @ReactMethod
    public void resetDb() {
        FileUtils.getInstance(this.reactContext).copyAssetsToSD(Constants.DB_FILE_NAME, Constants.DB_FILE_NAME);
        FileUtils.getInstance(this.reactContext).copyAssetsToSD(Constants.DB_FILE_EN_NAME, Constants.DB_FILE_EN_NAME);
        FileUtils.getInstance(this.reactContext).setFileOperateCallback(new FileUtils.FileOperateCallback() { // from class: com.vesal.jlsx.international.module.CommonModule.2
            @Override // com.vesal.jlsx.international.utils.FileUtils.FileOperateCallback
            public void onSuccess() {
                CommonModule.this.copyDbDone(true);
            }

            @Override // com.vesal.jlsx.international.utils.FileUtils.FileOperateCallback
            public void onFailed(String str) {
                CommonModule.this.copyDbDone(false);
            }
        });
        FileUtils.getInstance(this.reactContext).copyAssetsToSD(Constants.DB_FILE_FT_NAME, Constants.DB_FILE_FT_NAME);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void copyDbDone(boolean z) {
        SharedPreferenceData.setLastVersion(z ? BuildConfig.VERSION_CODE : 0);
        System.exit(0);
    }
}
