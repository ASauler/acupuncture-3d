package org.matomo.sdk;

import android.content.SharedPreferences;
import com.facebook.appevents.AppEventsConstants;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.UUID;
import java.util.regex.Pattern;
import net.lingala.zip4j.util.InternalZipConstants;
import org.matomo.sdk.dispatcher.DispatchMode;
import org.matomo.sdk.dispatcher.Dispatcher;
import org.matomo.sdk.dispatcher.Packet;
import org.matomo.sdk.tools.Objects;
import timber.log.Timber;

/* JADX INFO: loaded from: classes4.dex */
public class Tracker {
    private static final String DEFAULT_API_VERSION_VALUE = "1";
    private static final String DEFAULT_RECORD_VALUE = "1";
    private static final String DEFAULT_TRUE_VALUE = "1";
    private static final String DEFAULT_UNKNOWN_VALUE = "unknown";
    protected static final String PREF_KEY_DISPATCHER_MODE = "tracker.dispatcher.mode";
    protected static final String PREF_KEY_OFFLINE_CACHE_AGE = "tracker.cache.age";
    protected static final String PREF_KEY_OFFLINE_CACHE_SIZE = "tracker.cache.size";
    protected static final String PREF_KEY_TRACKER_FIRSTVISIT = "tracker.firstvisit";
    protected static final String PREF_KEY_TRACKER_OPTOUT = "tracker.optout";
    protected static final String PREF_KEY_TRACKER_PREVIOUSVISIT = "tracker.previousvisit";
    protected static final String PREF_KEY_TRACKER_USERID = "tracker.userid";
    protected static final String PREF_KEY_TRACKER_VISITCOUNT = "tracker.visitcount";
    protected static final String PREF_KEY_TRACKER_VISITORID = "tracker.visitorid";
    private final String mApiUrl;
    private final String mDefaultApplicationBaseUrl;
    private final TrackMe mDefaultTrackMe;
    private DispatchMode mDispatchMode;
    private final Dispatcher mDispatcher;
    private TrackMe mLastEvent;
    private final Matomo mMatomo;
    private final String mName;
    private boolean mOptOut;
    private SharedPreferences mPreferences;
    private long mSessionStartTime;
    private long mSessionTimeout;
    private final int mSiteId;
    private final LinkedHashSet<Callback> mTrackingCallbacks;
    private static final String TAG = Matomo.tag(Tracker.class);
    private static final Pattern VALID_URLS = Pattern.compile("^(\\w+)(?:://)(.+?)$");
    private static final Pattern PATTERN_VISITOR_ID = Pattern.compile("^[0-9a-f]{16}$");
    private final Object mTrackingLock = new Object();
    private final Random mRandomAntiCachingValue = new Random(new Date().getTime());

    public interface Callback {
        TrackMe onTrack(TrackMe trackMe);
    }

    protected Tracker(Matomo matomo, TrackerBuilder trackerBuilder) {
        TrackMe trackMe = new TrackMe();
        this.mDefaultTrackMe = trackMe;
        this.mSessionTimeout = 1800000L;
        this.mSessionStartTime = 0L;
        this.mTrackingCallbacks = new LinkedHashSet<>();
        this.mMatomo = matomo;
        this.mApiUrl = trackerBuilder.getApiUrl();
        this.mSiteId = trackerBuilder.getSiteId();
        this.mName = trackerBuilder.getTrackerName();
        this.mDefaultApplicationBaseUrl = trackerBuilder.getApplicationBaseUrl();
        new LegacySettingsPorter(matomo).port(this);
        this.mOptOut = getPreferences().getBoolean(PREF_KEY_TRACKER_OPTOUT, false);
        Dispatcher dispatcherBuild = matomo.getDispatcherFactory().build(this);
        this.mDispatcher = dispatcherBuild;
        dispatcherBuild.setDispatchMode(getDispatchMode());
        trackMe.set(QueryParams.USER_ID, getPreferences().getString(PREF_KEY_TRACKER_USERID, null));
        String string = getPreferences().getString(PREF_KEY_TRACKER_VISITORID, null);
        if (string == null) {
            string = makeRandomVisitorId();
            getPreferences().edit().putString(PREF_KEY_TRACKER_VISITORID, string).apply();
        }
        trackMe.set(QueryParams.VISITOR_ID, string);
        trackMe.set(QueryParams.SESSION_START, AppEventsConstants.EVENT_PARAM_VALUE_YES);
        int[] resolution = matomo.getDeviceHelper().getResolution();
        trackMe.set(QueryParams.SCREEN_RESOLUTION, resolution != null ? String.format("%sx%s", Integer.valueOf(resolution[0]), Integer.valueOf(resolution[1])) : "unknown");
        trackMe.set(QueryParams.USER_AGENT, matomo.getDeviceHelper().getUserAgent());
        trackMe.set(QueryParams.LANGUAGE, matomo.getDeviceHelper().getUserLanguage());
        trackMe.set(QueryParams.URL_PATH, trackerBuilder.getApplicationBaseUrl());
    }

    public void addTrackingCallback(Callback callback) {
        this.mTrackingCallbacks.add(callback);
    }

    public void removeTrackingCallback(Callback callback) {
        this.mTrackingCallbacks.remove(callback);
    }

    public void setOptOut(boolean z) {
        this.mOptOut = z;
        getPreferences().edit().putBoolean(PREF_KEY_TRACKER_OPTOUT, z).apply();
        this.mDispatcher.clear();
    }

    public boolean isOptOut() {
        return this.mOptOut;
    }

    public String getName() {
        return this.mName;
    }

    public Matomo getMatomo() {
        return this.mMatomo;
    }

    public String getAPIUrl() {
        return this.mApiUrl;
    }

    protected int getSiteId() {
        return this.mSiteId;
    }

    public TrackMe getDefaultTrackMe() {
        return this.mDefaultTrackMe;
    }

    public void startNewSession() {
        synchronized (this.mTrackingLock) {
            this.mSessionStartTime = 0L;
        }
    }

    public void setSessionTimeout(int i) {
        synchronized (this.mTrackingLock) {
            this.mSessionTimeout = i;
        }
    }

    public long getSessionTimeout() {
        return this.mSessionTimeout;
    }

    public int getDispatchTimeout() {
        return this.mDispatcher.getConnectionTimeOut();
    }

    public void setDispatchTimeout(int i) {
        this.mDispatcher.setConnectionTimeOut(i);
    }

    public void dispatch() {
        if (this.mOptOut) {
            return;
        }
        this.mDispatcher.forceDispatch();
    }

    public void dispatchBlocking() {
        if (this.mOptOut) {
            return;
        }
        this.mDispatcher.forceDispatchBlocking();
    }

    public Tracker setDispatchInterval(long j) {
        this.mDispatcher.setDispatchInterval(j);
        return this;
    }

    public Tracker setDispatchGzipped(boolean z) {
        this.mDispatcher.setDispatchGzipped(z);
        return this;
    }

    public long getDispatchInterval() {
        return this.mDispatcher.getDispatchInterval();
    }

    public void setOfflineCacheAge(long j) {
        getPreferences().edit().putLong(PREF_KEY_OFFLINE_CACHE_AGE, j).apply();
    }

    public long getOfflineCacheAge() {
        return getPreferences().getLong(PREF_KEY_OFFLINE_CACHE_AGE, 86400000L);
    }

    public void setOfflineCacheSize(long j) {
        getPreferences().edit().putLong(PREF_KEY_OFFLINE_CACHE_SIZE, j).apply();
    }

    public long getOfflineCacheSize() {
        return getPreferences().getLong(PREF_KEY_OFFLINE_CACHE_SIZE, 4194304L);
    }

    public DispatchMode getDispatchMode() {
        if (this.mDispatchMode == null) {
            DispatchMode dispatchModeFromString = DispatchMode.fromString(getPreferences().getString(PREF_KEY_DISPATCHER_MODE, null));
            this.mDispatchMode = dispatchModeFromString;
            if (dispatchModeFromString == null) {
                this.mDispatchMode = DispatchMode.ALWAYS;
            }
        }
        return this.mDispatchMode;
    }

    public void setDispatchMode(DispatchMode dispatchMode) {
        this.mDispatchMode = dispatchMode;
        if (dispatchMode != DispatchMode.EXCEPTION) {
            getPreferences().edit().putString(PREF_KEY_DISPATCHER_MODE, dispatchMode.toString()).apply();
        }
        this.mDispatcher.setDispatchMode(dispatchMode);
    }

    public Tracker setUserId(String str) {
        this.mDefaultTrackMe.set(QueryParams.USER_ID, str);
        getPreferences().edit().putString(PREF_KEY_TRACKER_USERID, str).apply();
        return this;
    }

    public String getUserId() {
        return this.mDefaultTrackMe.get(QueryParams.USER_ID);
    }

    public Tracker setVisitorId(String str) throws IllegalArgumentException {
        if (confirmVisitorIdFormat(str)) {
            this.mDefaultTrackMe.set(QueryParams.VISITOR_ID, str);
        }
        return this;
    }

    public String getVisitorId() {
        return this.mDefaultTrackMe.get(QueryParams.VISITOR_ID);
    }

    private boolean confirmVisitorIdFormat(String str) throws IllegalArgumentException {
        Pattern pattern = PATTERN_VISITOR_ID;
        if (pattern.matcher(str).matches()) {
            return true;
        }
        throw new IllegalArgumentException("VisitorId: " + str + " is not of valid format,  the format must match the regular expression: " + pattern.pattern());
    }

    private void injectInitialParams(TrackMe trackMe) {
        long j;
        long jCurrentTimeMillis;
        long j2;
        synchronized (getPreferences()) {
            j = getPreferences().getLong(PREF_KEY_TRACKER_VISITCOUNT, 0L) + 1;
            getPreferences().edit().putLong(PREF_KEY_TRACKER_VISITCOUNT, j).apply();
        }
        synchronized (getPreferences()) {
            jCurrentTimeMillis = getPreferences().getLong(PREF_KEY_TRACKER_FIRSTVISIT, -1L);
            if (jCurrentTimeMillis == -1) {
                jCurrentTimeMillis = System.currentTimeMillis() / 1000;
                getPreferences().edit().putLong(PREF_KEY_TRACKER_FIRSTVISIT, jCurrentTimeMillis).apply();
            }
        }
        synchronized (getPreferences()) {
            j2 = getPreferences().getLong(PREF_KEY_TRACKER_PREVIOUSVISIT, -1L);
            getPreferences().edit().putLong(PREF_KEY_TRACKER_PREVIOUSVISIT, System.currentTimeMillis() / 1000).apply();
        }
        this.mDefaultTrackMe.trySet(QueryParams.FIRST_VISIT_TIMESTAMP, jCurrentTimeMillis);
        this.mDefaultTrackMe.trySet(QueryParams.TOTAL_NUMBER_OF_VISITS, j);
        if (j2 != -1) {
            this.mDefaultTrackMe.trySet(QueryParams.PREVIOUS_VISIT_TIMESTAMP, j2);
        }
        trackMe.trySet(QueryParams.SESSION_START, this.mDefaultTrackMe.get(QueryParams.SESSION_START));
        trackMe.trySet(QueryParams.FIRST_VISIT_TIMESTAMP, this.mDefaultTrackMe.get(QueryParams.FIRST_VISIT_TIMESTAMP));
        trackMe.trySet(QueryParams.TOTAL_NUMBER_OF_VISITS, this.mDefaultTrackMe.get(QueryParams.TOTAL_NUMBER_OF_VISITS));
        trackMe.trySet(QueryParams.PREVIOUS_VISIT_TIMESTAMP, this.mDefaultTrackMe.get(QueryParams.PREVIOUS_VISIT_TIMESTAMP));
    }

    private void injectBaseParams(TrackMe trackMe) {
        trackMe.trySet(QueryParams.SITE_ID, this.mSiteId);
        trackMe.trySet(QueryParams.RECORD, AppEventsConstants.EVENT_PARAM_VALUE_YES);
        trackMe.trySet(QueryParams.API_VERSION, AppEventsConstants.EVENT_PARAM_VALUE_YES);
        trackMe.trySet(QueryParams.RANDOM_NUMBER, this.mRandomAntiCachingValue.nextInt(100000));
        trackMe.trySet(QueryParams.DATETIME_OF_REQUEST, new SimpleDateFormat("yyyy-MM-dd HH:mm:ssZ", Locale.US).format(new Date()));
        trackMe.trySet(QueryParams.SEND_IMAGE, AppEventsConstants.EVENT_PARAM_VALUE_NO);
        trackMe.trySet(QueryParams.VISITOR_ID, this.mDefaultTrackMe.get(QueryParams.VISITOR_ID));
        trackMe.trySet(QueryParams.USER_ID, this.mDefaultTrackMe.get(QueryParams.USER_ID));
        String strSubstring = trackMe.get(QueryParams.URL_PATH);
        if (strSubstring == null) {
            strSubstring = this.mDefaultTrackMe.get(QueryParams.URL_PATH);
        } else if (!VALID_URLS.matcher(strSubstring).matches()) {
            StringBuilder sb = new StringBuilder(this.mDefaultApplicationBaseUrl);
            if (!this.mDefaultApplicationBaseUrl.endsWith(InternalZipConstants.ZIP_FILE_SEPARATOR) && !strSubstring.startsWith(InternalZipConstants.ZIP_FILE_SEPARATOR)) {
                sb.append(InternalZipConstants.ZIP_FILE_SEPARATOR);
            } else if (this.mDefaultApplicationBaseUrl.endsWith(InternalZipConstants.ZIP_FILE_SEPARATOR) && strSubstring.startsWith(InternalZipConstants.ZIP_FILE_SEPARATOR)) {
                strSubstring = strSubstring.substring(1);
            }
            strSubstring = sb.append(strSubstring).toString();
        }
        this.mDefaultTrackMe.set(QueryParams.URL_PATH, strSubstring);
        trackMe.set(QueryParams.URL_PATH, strSubstring);
        if (this.mLastEvent == null || !Objects.equals(trackMe.get(QueryParams.USER_ID), this.mLastEvent.get(QueryParams.USER_ID))) {
            trackMe.trySet(QueryParams.SCREEN_RESOLUTION, this.mDefaultTrackMe.get(QueryParams.SCREEN_RESOLUTION));
            trackMe.trySet(QueryParams.USER_AGENT, this.mDefaultTrackMe.get(QueryParams.USER_AGENT));
            trackMe.trySet(QueryParams.LANGUAGE, this.mDefaultTrackMe.get(QueryParams.LANGUAGE));
        }
    }

    public Tracker track(TrackMe trackMe) {
        synchronized (this.mTrackingLock) {
            if (System.currentTimeMillis() - this.mSessionStartTime > this.mSessionTimeout) {
                this.mSessionStartTime = System.currentTimeMillis();
                injectInitialParams(trackMe);
            }
            injectBaseParams(trackMe);
            for (Callback callback : this.mTrackingCallbacks) {
                trackMe = callback.onTrack(trackMe);
                if (trackMe == null) {
                    Timber.tag(TAG).d("Tracking aborted by %s", callback);
                    return this;
                }
            }
            this.mLastEvent = trackMe;
            if (!this.mOptOut) {
                this.mDispatcher.submit(trackMe);
                Timber.tag(TAG).d("Event added to the queue: %s", trackMe);
            } else {
                Timber.tag(TAG).d("Event omitted due to opt out: %s", trackMe);
            }
            return this;
        }
    }

    public static String makeRandomVisitorId() {
        return UUID.randomUUID().toString().replaceAll("-", "").substring(0, 16);
    }

    public SharedPreferences getPreferences() {
        if (this.mPreferences == null) {
            this.mPreferences = this.mMatomo.getTrackerPreferences(this);
        }
        return this.mPreferences;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Tracker tracker = (Tracker) obj;
        if (this.mSiteId == tracker.mSiteId && this.mApiUrl.equals(tracker.mApiUrl)) {
            return this.mName.equals(tracker.mName);
        }
        return false;
    }

    public int hashCode() {
        return (((this.mApiUrl.hashCode() * 31) + this.mSiteId) * 31) + this.mName.hashCode();
    }

    public TrackMe getLastEventX() {
        return this.mLastEvent;
    }

    public void setDryRunTarget(List<Packet> list) {
        this.mDispatcher.setDryRunTarget(list);
    }

    public List<Packet> getDryRunTarget() {
        return this.mDispatcher.getDryRunTarget();
    }
}
