package org.matomo.sdk.dispatcher;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class Packet {
    private final int mEventCount;
    private final JSONObject mPostData;
    private final String mTargetURL;
    private final long mTimeStamp;

    public Packet(String str) {
        this(str, null, 1);
    }

    public Packet(String str, JSONObject jSONObject, int i) {
        this.mTargetURL = str;
        this.mPostData = jSONObject;
        this.mEventCount = i;
        this.mTimeStamp = System.currentTimeMillis();
    }

    public String getTargetURL() {
        return this.mTargetURL;
    }

    public JSONObject getPostData() {
        return this.mPostData;
    }

    public long getTimeStamp() {
        return this.mTimeStamp;
    }

    public int getEventCount() {
        return this.mEventCount;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Packet(");
        if (this.mPostData != null) {
            sb.append("type=POST, data=").append(this.mPostData);
        } else {
            sb.append("type=GET, data=").append(this.mTargetURL);
        }
        return sb.append(")").toString();
    }
}
