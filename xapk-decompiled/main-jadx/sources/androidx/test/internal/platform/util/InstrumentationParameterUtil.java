package androidx.test.internal.platform.util;

import androidx.test.internal.util.Checks;
import androidx.test.platform.app.InstrumentationRegistry;
import com.facebook.appevents.AppEventsConstants;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class InstrumentationParameterUtil {
    public static long getTimeoutMillis(String key, long defaultValue) {
        Checks.checkArgument(defaultValue != 0, "default timeout value cannot be zero");
        long j = Long.parseLong(InstrumentationRegistry.getArguments().getString(key, AppEventsConstants.EVENT_PARAM_VALUE_NO));
        if (j != 0) {
            defaultValue = j;
        }
        return defaultValue < 0 ? TimeUnit.DAYS.toMillis(1L) : defaultValue;
    }
}
