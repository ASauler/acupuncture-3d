package org.matomo.sdk.extra;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import java.io.File;
import net.lingala.zip4j.util.InternalZipConstants;
import org.matomo.sdk.Matomo;
import org.matomo.sdk.QueryParams;
import org.matomo.sdk.TrackMe;
import org.matomo.sdk.Tracker;
import org.matomo.sdk.tools.Checksum;
import timber.log.Timber;

/* JADX INFO: loaded from: classes4.dex */
public class DownloadTracker {
    private static final String INSTALL_SOURCE_GOOGLE_PLAY = "com.android.vending";
    protected static final String TAG = Matomo.tag(DownloadTracker.class);
    private final Context mContext;
    private final boolean mInternalTracking;
    private final PackageManager mPackMan;
    private final PackageInfo mPkgInfo;
    private final SharedPreferences mPreferences;
    private final Object mTrackOnceLock;
    private final Tracker mTracker;
    private String mVersion;

    public interface Extra {

        public static abstract class Custom implements Extra {
        }

        public static class None implements Extra {
            @Override // org.matomo.sdk.extra.DownloadTracker.Extra
            public String buildExtraIdentifier() {
                return null;
            }

            @Override // org.matomo.sdk.extra.DownloadTracker.Extra
            public boolean isIntensiveWork() {
                return false;
            }
        }

        String buildExtraIdentifier();

        boolean isIntensiveWork();

        public static class ApkChecksum implements Extra {
            private PackageInfo mPackageInfo;

            @Override // org.matomo.sdk.extra.DownloadTracker.Extra
            public boolean isIntensiveWork() {
                return true;
            }

            public ApkChecksum(Context context) {
                try {
                    this.mPackageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
                } catch (Exception e) {
                    Timber.tag(DownloadTracker.TAG).e(e);
                    this.mPackageInfo = null;
                }
            }

            public ApkChecksum(PackageInfo packageInfo) {
                this.mPackageInfo = packageInfo;
            }

            @Override // org.matomo.sdk.extra.DownloadTracker.Extra
            public String buildExtraIdentifier() {
                PackageInfo packageInfo = this.mPackageInfo;
                if (packageInfo == null || packageInfo.applicationInfo == null || this.mPackageInfo.applicationInfo.sourceDir == null) {
                    return null;
                }
                try {
                    return Checksum.getMD5Checksum(new File(this.mPackageInfo.applicationInfo.sourceDir));
                } catch (Exception e) {
                    Timber.tag(DownloadTracker.TAG).e(e);
                    return null;
                }
            }
        }
    }

    public DownloadTracker(Tracker tracker) {
        this(tracker, getOurPackageInfo(tracker.getMatomo().getContext()));
    }

    private static PackageInfo getOurPackageInfo(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e) {
            Timber.tag(TAG).e(e);
            throw new RuntimeException(e);
        }
    }

    public DownloadTracker(Tracker tracker, PackageInfo packageInfo) {
        this.mTrackOnceLock = new Object();
        this.mTracker = tracker;
        Context context = tracker.getMatomo().getContext();
        this.mContext = context;
        this.mPreferences = tracker.getPreferences();
        this.mPackMan = tracker.getMatomo().getContext().getPackageManager();
        this.mPkgInfo = packageInfo;
        this.mInternalTracking = packageInfo.packageName.equals(context.getPackageName());
    }

    public void setVersion(String str) {
        this.mVersion = str;
    }

    public String getVersion() {
        String str = this.mVersion;
        return str != null ? str : Integer.toString(this.mPkgInfo.versionCode);
    }

    public void trackOnce(TrackMe trackMe, Extra extra) {
        String str = "downloaded:" + this.mPkgInfo.packageName + ":" + getVersion();
        synchronized (this.mTrackOnceLock) {
            if (!this.mPreferences.getBoolean(str, false)) {
                this.mPreferences.edit().putBoolean(str, true).apply();
                trackNewAppDownload(trackMe, extra);
            }
        }
    }

    public void trackNewAppDownload(final TrackMe trackMe, final Extra extra) {
        final boolean z = this.mInternalTracking && "com.android.vending".equals(this.mPackMan.getInstallerPackageName(this.mPkgInfo.packageName));
        if (z) {
            Timber.tag(TAG).d("Google Play is install source, deferring tracking.", new Object[0]);
        }
        Thread thread = new Thread(new Runnable() { // from class: org.matomo.sdk.extra.DownloadTracker$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m2637x9d3493ae(z, trackMe, extra);
            }
        });
        if (z || extra.isIntensiveWork()) {
            thread.start();
        } else {
            thread.run();
        }
    }

    /* JADX INFO: renamed from: lambda$trackNewAppDownload$0$org-matomo-sdk-extra-DownloadTracker, reason: not valid java name */
    /* synthetic */ void m2637x9d3493ae(boolean z, TrackMe trackMe, Extra extra) {
        if (z) {
            try {
                Thread.sleep(3000L);
            } catch (Exception e) {
                Timber.tag("ContentValues").e(e);
            }
        }
        trackNewAppDownloadInternal(trackMe, extra);
    }

    private void trackNewAppDownloadInternal(TrackMe trackMe, Extra extra) {
        String string;
        String str = TAG;
        Timber.tag(str).d("Tracking app download...", new Object[0]);
        StringBuilder sb = new StringBuilder("http://");
        sb.append(this.mPkgInfo.packageName).append(":").append(getVersion());
        String strBuildExtraIdentifier = extra.buildExtraIdentifier();
        if (strBuildExtraIdentifier != null) {
            sb.append(InternalZipConstants.ZIP_FILE_SEPARATOR).append(strBuildExtraIdentifier);
        }
        String installerPackageName = this.mPackMan.getInstallerPackageName(this.mPkgInfo.packageName);
        if (installerPackageName != null && installerPackageName.length() > 200) {
            installerPackageName = installerPackageName.substring(0, 200);
        }
        if (installerPackageName != null && installerPackageName.equals("com.android.vending") && (string = this.mTracker.getMatomo().getPreferences().getString("referrer.extras", null)) != null) {
            installerPackageName = installerPackageName + "/?" + string;
        }
        if (installerPackageName != null) {
            installerPackageName = "http://" + installerPackageName;
        }
        this.mTracker.track(trackMe.set(QueryParams.EVENT_CATEGORY, "Application").set(QueryParams.EVENT_ACTION, "downloaded").set(QueryParams.ACTION_NAME, "application/downloaded").set(QueryParams.URL_PATH, "/application/downloaded").set(QueryParams.DOWNLOAD, sb.toString()).set(QueryParams.REFERRER, installerPackageName));
        Timber.tag(str).d("... app download tracked.", new Object[0]);
    }
}
