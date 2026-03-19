package org.matomo.sdk.extra;

import java.lang.Thread;
import org.matomo.sdk.Matomo;
import org.matomo.sdk.TrackMe;
import org.matomo.sdk.Tracker;
import org.matomo.sdk.dispatcher.DispatchMode;
import timber.log.Timber;

/* JADX INFO: loaded from: classes4.dex */
public class MatomoExceptionHandler implements Thread.UncaughtExceptionHandler {
    private static final String TAG = Matomo.tag(MatomoExceptionHandler.class);
    private final Thread.UncaughtExceptionHandler mDefaultExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
    private final TrackMe mTrackMe;
    private final Tracker mTracker;

    public MatomoExceptionHandler(Tracker tracker, TrackMe trackMe) {
        this.mTracker = tracker;
        this.mTrackMe = trackMe;
    }

    public Tracker getTracker() {
        return this.mTracker;
    }

    public Thread.UncaughtExceptionHandler getDefaultExceptionHandler() {
        return this.mDefaultExceptionHandler;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        try {
            try {
                String message = th.getMessage();
                Tracker tracker = getTracker();
                tracker.setDispatchMode(DispatchMode.EXCEPTION);
                TrackHelper.track(this.mTrackMe).exception(th).description(message).fatal(true).with(tracker);
                tracker.dispatchBlocking();
            } catch (Exception e) {
                Timber.tag(TAG).e(e, "Couldn't track uncaught exception", new Object[0]);
                if (getDefaultExceptionHandler() != null && getDefaultExceptionHandler() != this) {
                }
            }
            if (getDefaultExceptionHandler() != null && getDefaultExceptionHandler() != this) {
                getDefaultExceptionHandler().uncaughtException(thread, th);
            }
        } catch (Throwable th2) {
            if (getDefaultExceptionHandler() != null && getDefaultExceptionHandler() != this) {
                getDefaultExceptionHandler().uncaughtException(thread, th);
            }
            throw th2;
        }
    }
}
