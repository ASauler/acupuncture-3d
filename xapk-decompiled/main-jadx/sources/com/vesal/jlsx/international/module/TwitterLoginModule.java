package com.vesal.jlsx.international.module;

import android.util.Log;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.Callback;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.WritableMap;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.OAuthCredential;
import com.google.firebase.auth.OAuthProvider;
import com.twitter.sdk.android.core.Result;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.TwitterSession;

/* JADX INFO: loaded from: classes2.dex */
public class TwitterLoginModule extends ReactContextBaseJavaModule {
    private final String TAG;
    private ReactApplicationContext context;

    @Override // com.facebook.react.bridge.NativeModule
    public String getName() {
        return "TwitterLoginModule";
    }

    public TwitterLoginModule(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
        this.TAG = "TWITTER_LOGIN";
        this.context = reactApplicationContext;
    }

    @ReactMethod
    public void login1(final Callback callback) {
        OAuthProvider.Builder builderNewBuilder = OAuthProvider.newBuilder("twitter.com");
        FirebaseAuth firebaseAuth = FirebaseAuth.getInstance();
        Task<AuthResult> pendingAuthResult = firebaseAuth.getPendingAuthResult();
        if (pendingAuthResult != null) {
            pendingAuthResult.addOnSuccessListener(new OnSuccessListener<AuthResult>() { // from class: com.vesal.jlsx.international.module.TwitterLoginModule.2
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public void onSuccess(AuthResult authResult) {
                    TwitterLoginModule.this.loginSuccess(((OAuthCredential) authResult.getCredential()).getAccessToken(), ((OAuthCredential) authResult.getCredential()).getSecret(), callback);
                }
            }).addOnFailureListener(new OnFailureListener() { // from class: com.vesal.jlsx.international.module.TwitterLoginModule.1
                @Override // com.google.android.gms.tasks.OnFailureListener
                public void onFailure(Exception exc) {
                    exc.printStackTrace();
                    Log.e("TWITTERLOGIN", "FAILUURE" + exc.getMessage());
                    TwitterLoginModule.this.loginFailed(callback);
                }
            });
        } else {
            firebaseAuth.startActivityForSignInWithProvider(getCurrentActivity(), builderNewBuilder.build()).addOnSuccessListener(new OnSuccessListener<AuthResult>() { // from class: com.vesal.jlsx.international.module.TwitterLoginModule.4
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public void onSuccess(AuthResult authResult) {
                    TwitterLoginModule.this.loginSuccess(((OAuthCredential) authResult.getCredential()).getAccessToken(), ((OAuthCredential) authResult.getCredential()).getSecret(), callback);
                }
            }).addOnFailureListener(new OnFailureListener() { // from class: com.vesal.jlsx.international.module.TwitterLoginModule.3
                @Override // com.google.android.gms.tasks.OnFailureListener
                public void onFailure(Exception exc) {
                    exc.printStackTrace();
                    Log.e("TWITTERLOGIN", "FAILUURE" + exc.getMessage());
                    TwitterLoginModule.this.loginFailed(callback);
                }
            });
        }
    }

    @ReactMethod
    public void login(final Callback callback) {
        new TwitterLoginUtils(getCurrentActivity()).setOnLoginByTwitterClick(new com.twitter.sdk.android.core.Callback<TwitterSession>() { // from class: com.vesal.jlsx.international.module.TwitterLoginModule.5
            @Override // com.twitter.sdk.android.core.Callback
            public void success(Result<TwitterSession> result) {
                Log.e("TWITTER_LOGIN", "step2");
                TwitterAuthToken authToken = result.data.getAuthToken();
                String str = authToken.token;
                String str2 = authToken.secret;
                String userName = result.data.getUserName();
                long userId = result.data.getUserId();
                Log.e("TWITTERLOGIN", "authorize.token=" + str);
                Log.e("TWITTERLOGIN", "authorize.tokenSecret=" + str2);
                Log.e("TWITTERLOGIN", "authorize.userName=" + userName);
                Log.e("TWITTERLOGIN", "authorize.userId=" + userId + "");
                TwitterLoginModule.this.loginSuccess(str, str2, callback);
            }

            @Override // com.twitter.sdk.android.core.Callback
            public void failure(TwitterException twitterException) {
                Log.e("TWITTER_LOGIN", "step5");
                Log.e("TWITTER_LOGIN", "login fail:", twitterException);
                TwitterLoginModule.this.loginFailed(callback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loginSuccess(String str, String str2, Callback callback) {
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putString("authToken", str);
        writableMapCreateMap.putString("authTokenSecret", str2);
        writableMapCreateMap.putBoolean("success", true);
        callback.invoke(writableMapCreateMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loginFailed(Callback callback) {
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putBoolean("'success'", false);
        callback.invoke(writableMapCreateMap);
    }
}
