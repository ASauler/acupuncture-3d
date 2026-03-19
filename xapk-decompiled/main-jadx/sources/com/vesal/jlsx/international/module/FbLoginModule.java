package com.vesal.jlsx.international.module;

import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.util.Base64;
import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.login.LoginManager;
import com.facebook.react.bridge.Callback;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.vesal.jlsx.international.BuildConfig;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class FbLoginModule extends ReactContextBaseJavaModule {
    private ReactApplicationContext reactContext;

    @Override // com.facebook.react.bridge.NativeModule
    public String getName() {
        return "FbLoginModule";
    }

    public FbLoginModule(ReactApplicationContext reactApplicationContext) {
        this.reactContext = reactApplicationContext;
    }

    @ReactMethod(isBlockingSynchronousMethod = true)
    public boolean test() {
        AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
        boolean z = (currentAccessToken == null || currentAccessToken.isExpired()) ? false : true;
        Log.e("isLoggedIn", z + "");
        return z;
    }

    @ReactMethod
    public void login(Callback callback) {
        try {
            for (Signature signature : this.reactContext.getPackageManager().getPackageInfo(BuildConfig.APPLICATION_ID, 64).signatures) {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA");
                messageDigest.update(signature.toByteArray());
                Log.d("KeyHash:", Base64.encodeToString(messageDigest.digest(), 0));
            }
        } catch (PackageManager.NameNotFoundException | NoSuchAlgorithmException unused) {
        }
        LoginManager.getInstance().logInWithReadPermissions(this.reactContext.getCurrentActivity(), Arrays.asList("public_profile"));
    }
}
