package org.matomo.sdk.extra;

import android.app.Application;
import org.matomo.sdk.Matomo;
import org.matomo.sdk.Tracker;
import org.matomo.sdk.TrackerBuilder;

/* JADX INFO: loaded from: classes4.dex */
public abstract class MatomoApplication extends Application {
    private Tracker mMatomoTracker;

    public abstract TrackerBuilder onCreateTrackerConfig();

    public Matomo getMatomo() {
        return Matomo.getInstance(this);
    }

    public synchronized Tracker getTracker() {
        if (this.mMatomoTracker == null) {
            this.mMatomoTracker = onCreateTrackerConfig().build(getMatomo());
        }
        return this.mMatomoTracker;
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onLowMemory() {
        Tracker tracker = this.mMatomoTracker;
        if (tracker != null) {
            tracker.dispatch();
        }
        super.onLowMemory();
    }

    @Override // android.app.Application, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        Tracker tracker;
        if ((i == 20 || i == 80) && (tracker = this.mMatomoTracker) != null) {
            tracker.dispatch();
        }
        super.onTrimMemory(i);
    }
}
