package com.learnium.RNDeviceInfo;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.android.installreferrer.api.InstallReferrerClient;
import com.android.installreferrer.api.InstallReferrerStateListener;
import com.android.installreferrer.api.ReferrerDetails;

/* JADX INFO: loaded from: classes2.dex */
public class RNInstallReferrerClient {
    private InstallReferrerStateListener installReferrerStateListener = new InstallReferrerStateListener() { // from class: com.learnium.RNDeviceInfo.RNInstallReferrerClient.1
        @Override // com.android.installreferrer.api.InstallReferrerStateListener
        public void onInstallReferrerSetupFinished(int i) {
            if (i != 0) {
                if (i == 1) {
                    Log.d("InstallReferrerState", "SERVICE_UNAVAILABLE");
                    return;
                } else {
                    if (i != 2) {
                        return;
                    }
                    Log.d("InstallReferrerState", "FEATURE_NOT_SUPPORTED");
                    return;
                }
            }
            try {
                Log.d("InstallReferrerState", "OK");
                ReferrerDetails installReferrer = RNInstallReferrerClient.this.mReferrerClient.getInstallReferrer();
                installReferrer.getInstallReferrer();
                installReferrer.getReferrerClickTimestampSeconds();
                installReferrer.getInstallBeginTimestampSeconds();
                SharedPreferences.Editor editorEdit = RNInstallReferrerClient.this.sharedPreferences.edit();
                editorEdit.putString("installReferrer", RNInstallReferrerClient.this.getInstallReferrer());
                editorEdit.apply();
                RNInstallReferrerClient.this.mReferrerClient.endConnection();
            } catch (Exception e) {
                System.err.println("RNInstallReferrerClient exception. getInstallReferrer will be unavailable: " + e.getMessage());
                e.printStackTrace(System.err);
            }
        }

        @Override // com.android.installreferrer.api.InstallReferrerStateListener
        public void onInstallReferrerServiceDisconnected() {
            Log.d("RNInstallReferrerClient", "InstallReferrerService disconnected");
        }
    };
    private InstallReferrerClient mReferrerClient;
    private SharedPreferences sharedPreferences;

    RNInstallReferrerClient(Context context) {
        this.sharedPreferences = context.getSharedPreferences("react-native-device-info", 0);
        InstallReferrerClient installReferrerClientBuild = InstallReferrerClient.newBuilder(context).build();
        this.mReferrerClient = installReferrerClientBuild;
        try {
            installReferrerClientBuild.startConnection(this.installReferrerStateListener);
        } catch (Exception e) {
            System.err.println("RNInstallReferrerClient exception. getInstallReferrer will be unavailable: " + e.getMessage());
            e.printStackTrace(System.err);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getInstallReferrer() {
        try {
            return this.mReferrerClient.getInstallReferrer().getInstallReferrer();
        } catch (Exception e) {
            System.err.println("RNInstallReferrerClient exception. getInstallReferrer will be unavailable: " + e.getMessage());
            e.printStackTrace(System.err);
            return null;
        }
    }
}
