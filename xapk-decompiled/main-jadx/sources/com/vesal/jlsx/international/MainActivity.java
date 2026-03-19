package com.vesal.jlsx.international;

import android.app.UiModeManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.WindowManager;
import com.aptoide.sdk.core.analytics.events.SdkInstallWalletDialogLabels;
import com.facebook.CallbackManager;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.login.LoginManager;
import com.facebook.login.LoginResult;
import com.facebook.react.ReactActivity;
import com.google.android.gms.auth.api.signin.GoogleSignIn;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.Task;
import com.learnium.RNDeviceInfo.DeviceType;
import com.reactnative.unity.view.UnityUtils;
import com.twitter.sdk.android.core.identity.TwitterAuthClient;
import com.vesal.jlsx.international.module.TwitterLoginUtils;
import com.vesal.jlsx.international.utils.RNEventEmitter;
import org.devio.rn.splashscreen.SplashScreen;

/* JADX INFO: loaded from: classes2.dex */
public class MainActivity extends ReactActivity {
    private static final int CODE_SIGN_IN = 12;
    private final String TAG = "mainaclog";
    private CallbackManager callbackManager;

    @Override // com.facebook.react.ReactActivity
    protected String getMainComponentName() {
        return "AcuNational";
    }

    @Override // com.facebook.react.ReactActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        checkPad();
        super.onCreate(bundle);
        UnityUtils.createPlayer(this, new UnityUtils.CreateCallback() { // from class: com.vesal.jlsx.international.MainActivity.1
            @Override // com.reactnative.unity.view.UnityUtils.CreateCallback
            public void onReady() {
                Log.e("mainaclog", "create finish");
            }
        });
        SplashScreen.show(this, true);
        this.callbackManager = CallbackManager.Factory.create();
        LoginManager.getInstance().registerCallback(this.callbackManager, new FacebookCallback<LoginResult>() { // from class: com.vesal.jlsx.international.MainActivity.2
            @Override // com.facebook.FacebookCallback
            public void onCancel() {
                Log.e("fbloginerr", SdkInstallWalletDialogLabels.CANCEL);
                RNEventEmitter.onFbLoginCallback("-1");
            }

            @Override // com.facebook.FacebookCallback
            public void onError(FacebookException facebookException) {
                Log.e("fbloginerr", facebookException.toString());
                RNEventEmitter.onFbLoginCallback(AppEventsConstants.EVENT_PARAM_VALUE_NO);
            }

            @Override // com.facebook.FacebookCallback
            public void onSuccess(LoginResult loginResult) {
                Log.d("mainaclog", "onSuccess() called with: loginResult = [" + loginResult.toString() + "]");
                Log.d("mainaclog", "onSuccess() called with: loginResult = [" + loginResult.getAccessToken().getToken() + "]");
                RNEventEmitter.onFbLoginCallback(loginResult.getAccessToken().getToken());
            }
        });
        getWindow().getDecorView().setSystemUiVisibility(8192);
        getWindow().addFlags(67108864);
    }

    @Override // com.facebook.react.ReactActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
    }

    @Override // com.facebook.react.ReactActivity, android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
    }

    private void hideSystemUI() {
        getWindow().getDecorView().setSystemUiVisibility(3846);
    }

    private void handleSignInResult(Task<GoogleSignInAccount> task) throws Throwable {
        try {
            GoogleSignInAccount result = task.getResult(ApiException.class);
            result.getPhotoUrl();
            Log.e("mainaclog", "account.getIdToken= " + result.getIdToken());
            Log.e("mainaclog", "account.getId= " + result.getId());
            Log.e("mainaclog", "account.getDisplayName= " + result.getDisplayName());
            Log.e("mainaclog", "account.getEmail= " + result.getEmail());
            Log.e("mainaclog", "account.getFamilyName= " + result.getFamilyName());
            Log.e("mainaclog", "account.getGivenName= " + result.getGivenName());
            Log.e("mainaclog", "account.getServerAuthCode= " + result.getServerAuthCode());
            Log.e("mainaclog", "account.getAccount= " + result.getAccount());
            Log.e("mainaclog", "account.getGrantedScopes= " + result.getGrantedScopes());
            Log.e("mainaclog", "account.getPhotoUrl= " + result.getPhotoUrl());
            Log.e("mainaclog", "account.getRequestedScopes= " + result.getRequestedScopes());
            RNEventEmitter.onGoogleLoginCallback(result.getIdToken());
        } catch (ApiException e) {
            Log.e("mainaclog", "signInResult:failed code=" + e.getStatusCode());
            Log.e("mainaclog", "signInResult:failed code=" + e.getMessage());
            RNEventEmitter.onGoogleLoginCallback("failed:" + e.getMessage());
        }
    }

    @Override // com.facebook.react.ReactActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) throws Throwable {
        super.onActivityResult(i, i2, intent);
        this.callbackManager.onActivityResult(i, i2, intent);
        if (i == 12) {
            handleSignInResult(GoogleSignIn.getSignedInAccountFromIntent(intent));
        } else if (i == new TwitterAuthClient().getRequestCode()) {
            new TwitterLoginUtils(this).onActivityResult(i, i2, intent);
        }
    }

    public void checkPad() {
        if (isTablet(this)) {
            setRequestedOrientation(6);
        } else {
            setRequestedOrientation(1);
        }
    }

    public static boolean isTablet(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }

    public String isPad() {
        return String.valueOf(getDeviceType().getValue() == DeviceType.TABLET.getValue() || getDeviceType().getValue() == DeviceType.TV.getValue());
    }

    public DeviceType getDeviceType() {
        if (getPackageManager().hasSystemFeature("amazon.hardware.fire_tv")) {
            return DeviceType.TV;
        }
        UiModeManager uiModeManager = (UiModeManager) getSystemService("uimode");
        if (uiModeManager != null && uiModeManager.getCurrentModeType() == 4) {
            return DeviceType.TV;
        }
        DeviceType deviceTypeFromResourceConfiguration = getDeviceTypeFromResourceConfiguration();
        return (deviceTypeFromResourceConfiguration == null || deviceTypeFromResourceConfiguration == DeviceType.UNKNOWN) ? getDeviceTypeFromPhysicalSize() : deviceTypeFromResourceConfiguration;
    }

    private DeviceType getDeviceTypeFromPhysicalSize() {
        WindowManager windowManager = (WindowManager) getSystemService("window");
        if (windowManager == null) {
            return DeviceType.UNKNOWN;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        double dSqrt = Math.sqrt(Math.pow(((double) displayMetrics.widthPixels) / ((double) displayMetrics.xdpi), 2.0d) + Math.pow(((double) displayMetrics.heightPixels) / ((double) displayMetrics.ydpi), 2.0d));
        if (dSqrt >= 3.0d && dSqrt <= 6.9d) {
            return DeviceType.HANDSET;
        }
        if (dSqrt > 6.9d && dSqrt <= 18.0d) {
            return DeviceType.TABLET;
        }
        return DeviceType.UNKNOWN;
    }

    private DeviceType getDeviceTypeFromResourceConfiguration() {
        int i = getResources().getConfiguration().smallestScreenWidthDp;
        if (i == 0) {
            return DeviceType.UNKNOWN;
        }
        return i >= 600 ? DeviceType.TABLET : DeviceType.HANDSET;
    }
}
