package org.matomo.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.HashMap;
import java.util.Map;
import org.matomo.sdk.dispatcher.DefaultDispatcherFactory;
import org.matomo.sdk.dispatcher.DispatcherFactory;
import org.matomo.sdk.tools.BuildInfo;
import org.matomo.sdk.tools.Checksum;
import org.matomo.sdk.tools.DeviceHelper;
import org.matomo.sdk.tools.PropertySource;
import timber.log.Timber;

/* JADX INFO: loaded from: classes4.dex */
public class Matomo {
    private static final String BASE_PREFERENCE_FILE = "org.matomo.sdk";
    public static final String LOGGER_PREFIX = "MATOMO:";
    private static final String TAG = tag(Matomo.class);
    private static Matomo sInstance;
    private final SharedPreferences mBasePreferences;
    private final Context mContext;
    private final Map<Tracker, SharedPreferences> mPreferenceMap = new HashMap();
    private DispatcherFactory mDispatcherFactory = new DefaultDispatcherFactory();

    public static synchronized Matomo getInstance(Context context) {
        if (sInstance == null) {
            synchronized (Matomo.class) {
                if (sInstance == null) {
                    sInstance = new Matomo(context);
                }
            }
        }
        return sInstance;
    }

    private Matomo(Context context) {
        this.mContext = context.getApplicationContext();
        this.mBasePreferences = context.getSharedPreferences("org.matomo.sdk", 0);
    }

    public Context getContext() {
        return this.mContext;
    }

    public SharedPreferences getPreferences() {
        return this.mBasePreferences;
    }

    public SharedPreferences getTrackerPreferences(Tracker tracker) {
        SharedPreferences sharedPreferences;
        String str;
        synchronized (this.mPreferenceMap) {
            sharedPreferences = this.mPreferenceMap.get(tracker);
            if (sharedPreferences == null) {
                try {
                    str = "org.matomo.sdk_" + Checksum.getMD5Checksum(tracker.getName());
                } catch (Exception e) {
                    Timber.tag(TAG).e(e);
                    str = "org.matomo.sdk_" + tracker.getName();
                }
                sharedPreferences = getContext().getSharedPreferences(str, 0);
                this.mPreferenceMap.put(tracker, sharedPreferences);
            }
        }
        return sharedPreferences;
    }

    public void setDispatcherFactory(DispatcherFactory dispatcherFactory) {
        this.mDispatcherFactory = dispatcherFactory;
    }

    public DispatcherFactory getDispatcherFactory() {
        return this.mDispatcherFactory;
    }

    DeviceHelper getDeviceHelper() {
        return new DeviceHelper(this.mContext, new PropertySource(), new BuildInfo());
    }

    public static String tag(Class... clsArr) {
        String[] strArr = new String[clsArr.length];
        for (int i = 0; i < clsArr.length; i++) {
            strArr[i] = clsArr[i].getSimpleName();
        }
        return tag(strArr);
    }

    public static String tag(String... strArr) {
        StringBuilder sb = new StringBuilder(LOGGER_PREFIX);
        for (int i = 0; i < strArr.length; i++) {
            sb.append(strArr[i]);
            if (i < strArr.length - 1) {
                sb.append(":");
            }
        }
        return sb.toString();
    }
}
