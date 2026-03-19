package org.matomo.sdk.extra;

import org.matomo.sdk.Matomo;
import org.matomo.sdk.TrackMe;
import timber.log.Timber;

/* JADX INFO: loaded from: classes4.dex */
public class CustomDimension {
    private static final String TAG = Matomo.tag(CustomDimension.class);
    private final int mId;
    private final String mValue;

    public CustomDimension(int i, String str) {
        this.mId = i;
        this.mValue = str;
    }

    public int getId() {
        return this.mId;
    }

    public String getValue() {
        return this.mValue;
    }

    public static boolean setDimension(TrackMe trackMe, int i, String str) {
        if (i < 1) {
            Timber.tag(TAG).e("dimensionId should be great than 0 (arg: %d)", Integer.valueOf(i));
            return false;
        }
        if (str != null && str.length() > 255) {
            str = str.substring(0, 255);
            Timber.tag(TAG).w("dimensionValue was truncated to 255 chars.", new Object[0]);
        }
        if (str != null && str.length() == 0) {
            str = null;
        }
        trackMe.set(formatDimensionId(i), str);
        return true;
    }

    public static boolean setDimension(TrackMe trackMe, CustomDimension customDimension) {
        return setDimension(trackMe, customDimension.getId(), customDimension.getValue());
    }

    public static String getDimension(TrackMe trackMe, int i) {
        return trackMe.get(formatDimensionId(i));
    }

    private static String formatDimensionId(int i) {
        return "dimension" + i;
    }
}
