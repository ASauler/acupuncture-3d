package org.matomo.sdk;

import java.net.MalformedURLException;
import java.net.URL;

/* JADX INFO: loaded from: classes4.dex */
public class TrackerBuilder {
    private String mApiUrl;
    private String mApplicationBaseUrl;
    private int mSiteId;
    private String mTrackerName;

    public static TrackerBuilder createDefault(String str, int i) {
        return new TrackerBuilder(str, i, "Default Tracker");
    }

    public TrackerBuilder(String str, int i, String str2) {
        try {
            new URL(str);
            this.mApiUrl = str;
            this.mSiteId = i;
            this.mTrackerName = str2;
        } catch (MalformedURLException e) {
            throw new RuntimeException(e);
        }
    }

    public String getApiUrl() {
        return this.mApiUrl;
    }

    public int getSiteId() {
        return this.mSiteId;
    }

    public TrackerBuilder setTrackerName(String str) {
        this.mTrackerName = str;
        return this;
    }

    public String getTrackerName() {
        return this.mTrackerName;
    }

    public TrackerBuilder setApplicationBaseUrl(String str) {
        this.mApplicationBaseUrl = str;
        return this;
    }

    public String getApplicationBaseUrl() {
        return this.mApplicationBaseUrl;
    }

    public Tracker build(Matomo matomo) {
        if (this.mApplicationBaseUrl == null) {
            this.mApplicationBaseUrl = String.format("https://%s/", matomo.getContext().getPackageName());
        }
        return new Tracker(matomo, this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TrackerBuilder trackerBuilder = (TrackerBuilder) obj;
        return this.mSiteId == trackerBuilder.mSiteId && this.mApiUrl.equals(trackerBuilder.mApiUrl) && this.mTrackerName.equals(trackerBuilder.mTrackerName);
    }

    public int hashCode() {
        return (((this.mApiUrl.hashCode() * 31) + this.mSiteId) * 31) + this.mTrackerName.hashCode();
    }
}
