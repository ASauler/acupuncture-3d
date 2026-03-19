package com.vesal.jlsx.international;

import android.app.Application;
import android.content.Context;
import com.facebook.appevents.UserDataStore;
import com.facebook.react.PackageList;
import com.facebook.react.ReactApplication;
import com.facebook.react.ReactInstanceManager;
import com.facebook.react.ReactNativeHost;
import com.facebook.react.ReactPackage;
import com.facebook.react.flipper.ReactNativeFlipper;
import com.facebook.soloader.SoLoader;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.twitter.sdk.android.core.DefaultLogger;
import com.twitter.sdk.android.core.Twitter;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterConfig;
import com.vesal.jlsx.international.aptoide.CatappultPackage;
import com.vesal.jlsx.international.consts.Constants;
import com.vesal.jlsx.international.google.SubscribePayPackage;
import com.vesal.jlsx.international.module.CommonPackage;
import com.vesal.jlsx.international.module.ContextPackage;
import com.vesal.jlsx.international.module.FbLoginPackage;
import com.vesal.jlsx.international.module.GoogleLoginPackage;
import com.vesal.jlsx.international.module.PayPackage;
import com.vesal.jlsx.international.module.TwitterLoginPackage;
import com.vesal.jlsx.international.module.VoiceReactPackage;
import com.vesal.jlsx.international.utils.FileUtils;
import com.vesal.jlsx.international.utils.SharedPreferenceData;
import com.vesal.jlsx.international.utils.SharedPreferencesUtil;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class MainApplication extends Application implements ReactApplication {
    private final ReactNativeHost mReactNativeHost = new ReactNativeHost(this) { // from class: com.vesal.jlsx.international.MainApplication.1
        @Override // com.facebook.react.ReactNativeHost
        protected String getJSMainModuleName() {
            return FirebaseAnalytics.Param.INDEX;
        }

        @Override // com.facebook.react.ReactNativeHost
        public boolean getUseDeveloperSupport() {
            return false;
        }

        @Override // com.facebook.react.ReactNativeHost
        protected List<ReactPackage> getPackages() {
            ArrayList<ReactPackage> packages = new PackageList(this).getPackages();
            packages.add(new ContextPackage());
            packages.add(new CommonPackage());
            packages.add(new PayPackage());
            packages.add(new GoogleLoginPackage());
            packages.add(new VoiceReactPackage());
            packages.add(new FbLoginPackage());
            packages.add(new TwitterLoginPackage());
            packages.add(new SubscribePayPackage());
            packages.add(new CatappultPackage());
            return packages;
        }

        @Override // com.facebook.react.ReactNativeHost
        protected String getJSBundleFile() {
            return super.getJSBundleFile();
        }
    };

    private static void initializeFlipper(Context context, ReactInstanceManager reactInstanceManager) {
    }

    @Override // com.facebook.react.ReactApplication
    public ReactNativeHost getReactNativeHost() {
        return this.mReactNativeHost;
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        SharedPreferencesUtil.init(getApplicationContext());
        SoLoader.init((Context) this, false);
        initializeFlipper(this, getReactNativeHost().getReactInstanceManager());
        File file = new File(getExternalFilesDir("").getAbsolutePath() + File.separator + UserDataStore.DATE_OF_BIRTH, Constants.DB_FILE_NAME);
        if (325 > SharedPreferenceData.getLastVersion() || !file.exists() || file.length() == 0) {
            FileUtils.getInstance(this).copyAssetsToSD(Constants.DB_FILE_NAME, Constants.DB_FILE_NAME);
            FileUtils.getInstance(this).copyAssetsToSD(Constants.DB_FILE_EN_NAME, Constants.DB_FILE_EN_NAME);
            FileUtils.getInstance(this).copyAssetsToSD(Constants.DB_FILE_FT_NAME, Constants.DB_FILE_FT_NAME);
            FileUtils.getInstance(this).copyAssetsToSD(Constants.DB_FILE_JP_NAME, Constants.DB_FILE_JP_NAME);
            SharedPreferenceData.setLastVersion(BuildConfig.VERSION_CODE);
        }
        ReactNativeFlipper.initializeFlipper(this, this.mReactNativeHost.getReactInstanceManager());
        initTwitter();
    }

    private void initTwitter() {
        Twitter.initialize(new TwitterConfig.Builder(this).logger(new DefaultLogger(3)).twitterAuthConfig(new TwitterAuthConfig(getApplicationContext().getString(R.string.twitter_comsumer_key), getApplicationContext().getString(R.string.twitter_comsumer_secret))).debug(true).build());
    }
}
