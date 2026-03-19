package org.matomo.sdk.tools;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.util.Locale;
import org.matomo.sdk.Matomo;
import timber.log.Timber;

/* JADX INFO: loaded from: classes4.dex */
public class DeviceHelper {
    private static final String TAG = Matomo.tag(DeviceHelper.class);
    private final BuildInfo mBuildInfo;
    private final Context mContext;
    private final PropertySource mPropertySource;

    public DeviceHelper(Context context, PropertySource propertySource, BuildInfo buildInfo) {
        this.mContext = context;
        this.mPropertySource = propertySource;
        this.mBuildInfo = buildInfo;
    }

    public String getUserLanguage() {
        return Locale.getDefault().getLanguage();
    }

    public String getUserAgent() {
        String httpAgent = this.mPropertySource.getHttpAgent();
        if (httpAgent != null && !httpAgent.startsWith("Apache-HttpClient/UNAVAILABLE (java")) {
            return httpAgent;
        }
        String jVMVersion = this.mPropertySource.getJVMVersion();
        if (jVMVersion == null) {
            jVMVersion = "0.0.0";
        }
        return String.format(Locale.US, "Dalvik/%s (Linux; U; Android %s; %s Build/%s)", jVMVersion, this.mBuildInfo.getRelease(), this.mBuildInfo.getModel(), this.mBuildInfo.getBuildId());
    }

    public int[] getResolution() {
        try {
            Display defaultDisplay = ((WindowManager) this.mContext.getSystemService("window")).getDefaultDisplay();
            DisplayMetrics displayMetrics = new DisplayMetrics();
            defaultDisplay.getRealMetrics(displayMetrics);
            int i = displayMetrics.widthPixels;
            int i2 = displayMetrics.heightPixels;
            if (i == -1 || i2 == -1) {
                DisplayMetrics displayMetrics2 = new DisplayMetrics();
                defaultDisplay.getMetrics(displayMetrics2);
                i = displayMetrics2.widthPixels;
                i2 = displayMetrics2.heightPixels;
            }
            return new int[]{i, i2};
        } catch (NullPointerException e) {
            Timber.tag(TAG).e(e, "Window service was not available from this context", new Object[0]);
            return null;
        }
    }
}
