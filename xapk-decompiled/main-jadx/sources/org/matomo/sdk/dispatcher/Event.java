package org.matomo.sdk.dispatcher;

import com.bumptech.glide.load.Key;
import java.net.URLEncoder;
import java.util.Map;
import kotlin.text.Typography;
import org.matomo.sdk.Matomo;
import timber.log.Timber;

/* JADX INFO: loaded from: classes4.dex */
public class Event {
    private static final String TAG = Matomo.tag(Event.class);
    private final String mQuery;
    private final long mTimestamp;

    public Event(Map<String, String> map) {
        this(urlEncodeUTF8(map));
    }

    public Event(String str) {
        this(System.currentTimeMillis(), str);
    }

    public Event(long j, String str) {
        this.mTimestamp = j;
        this.mQuery = str;
    }

    public long getTimeStamp() {
        return this.mTimestamp;
    }

    public String getEncodedQuery() {
        return this.mQuery;
    }

    public String toString() {
        return getEncodedQuery();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Event event = (Event) obj;
        return this.mTimestamp == event.mTimestamp && this.mQuery.equals(event.mQuery);
    }

    public int hashCode() {
        long j = this.mTimestamp;
        return (((int) (j ^ (j >>> 32))) * 31) + this.mQuery.hashCode();
    }

    private static String urlEncodeUTF8(String str) {
        try {
            return URLEncoder.encode(str, Key.STRING_CHARSET_NAME).replaceAll("\\+", "%20");
        } catch (Exception e) {
            Timber.tag(TAG).e(e, "Cannot encode %s", str);
            return "";
        }
    }

    private static String urlEncodeUTF8(Map<String, String> map) {
        StringBuilder sb = new StringBuilder(100);
        sb.append('?');
        for (Map.Entry<String, String> entry : map.entrySet()) {
            sb.append(urlEncodeUTF8(entry.getKey()));
            sb.append('=');
            sb.append(urlEncodeUTF8(entry.getValue()));
            sb.append(Typography.amp);
        }
        return sb.substring(0, sb.length() - 1);
    }
}
