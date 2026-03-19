package com.vesal.jlsx.international.module;

import android.util.Log;
import android.widget.Toast;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.google.android.gms.auth.api.signin.GoogleSignIn;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.vesal.jlsx.international.R;

/* JADX INFO: loaded from: classes2.dex */
public class GoogleLoginModule extends ReactContextBaseJavaModule {
    private final String TAG;
    private GoogleSignInOptions googleSignInOptions;
    private ReactApplicationContext reactContext;

    @ReactMethod(isBlockingSynchronousMethod = true)
    public String getDisplayHeight() {
        return "";
    }

    @Override // com.facebook.react.bridge.NativeModule
    public String getName() {
        return "GoogleLoginModule";
    }

    GoogleLoginModule(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
        this.TAG = "google_pay";
        this.reactContext = reactApplicationContext;
    }

    private void getOptions() {
        if (this.googleSignInOptions == null) {
            this.googleSignInOptions = new GoogleSignInOptions.Builder(GoogleSignInOptions.DEFAULT_SIGN_IN).requestId().requestProfile().requestIdToken(getCurrentActivity().getString(R.string.default_web_client_id)).requestEmail().build();
        }
    }

    @ReactMethod(isBlockingSynchronousMethod = true)
    public String isSupport() {
        return apiAvailability() ? AppEventsConstants.EVENT_PARAM_VALUE_YES : AppEventsConstants.EVENT_PARAM_VALUE_NO;
    }

    private boolean apiAvailability() {
        return new GoogleApiAvailability().isGooglePlayServicesAvailable(this.reactContext.getCurrentActivity()) == 0;
    }

    @ReactMethod
    public void login() {
        if (new GoogleApiAvailability().isGooglePlayServicesAvailable(this.reactContext.getCurrentActivity()) == 0) {
            getOptions();
            getCurrentActivity().startActivityForResult(GoogleSignIn.getClient(getCurrentActivity(), this.googleSignInOptions).getSignInIntent(), 12);
            return;
        }
        Toast.makeText(this.reactContext, "GOOGLE_SERVICE_INVALID", 0).show();
    }

    @ReactMethod
    public void logout() {
        if (new GoogleApiAvailability().isGooglePlayServicesAvailable(this.reactContext.getCurrentActivity()) != 0) {
            Toast.makeText(this.reactContext, "GOOGLE_SERVICE_INVALID", 0).show();
        }
        getOptions();
        GoogleSignIn.getClient(getCurrentActivity(), this.googleSignInOptions).signOut().addOnCompleteListener(getCurrentActivity(), new OnCompleteListener<Void>() { // from class: com.vesal.jlsx.international.module.GoogleLoginModule.1
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public void onComplete(Task<Void> task) {
                Log.d("google_pay", "signOut: -----------------------------");
            }
        });
    }
}
