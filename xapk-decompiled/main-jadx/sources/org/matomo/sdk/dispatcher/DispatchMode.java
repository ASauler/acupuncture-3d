package org.matomo.sdk.dispatcher;

import com.aptoide.sdk.core.analytics.events.SdkWebPaymentFlowLabels;
import com.facebook.react.views.scroll.ReactScrollViewHelper;

/* JADX INFO: loaded from: classes4.dex */
public enum DispatchMode {
    ALWAYS(ReactScrollViewHelper.OVER_SCROLL_ALWAYS),
    WIFI_ONLY("wifi_only"),
    EXCEPTION(SdkWebPaymentFlowLabels.EXCEPTION);

    private final String key;

    DispatchMode(String str) {
        this.key = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.key;
    }

    public static DispatchMode fromString(String str) {
        for (DispatchMode dispatchMode : values()) {
            if (dispatchMode.key.equals(str)) {
                return dispatchMode;
            }
        }
        return null;
    }
}
