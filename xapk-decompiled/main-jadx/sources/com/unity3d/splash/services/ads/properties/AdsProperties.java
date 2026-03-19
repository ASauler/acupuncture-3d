package com.unity3d.splash.services.ads.properties;

import com.unity3d.splash.IUnityAdsListener;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;
import org.matomo.sdk.dispatcher.Dispatcher;

/* JADX INFO: loaded from: classes2.dex */
public class AdsProperties {
    private static Set _listeners = Collections.synchronizedSet(new LinkedHashSet());
    private static int _showTimeout = Dispatcher.DEFAULT_CONNECTION_TIMEOUT;

    public static void addListener(IUnityAdsListener iUnityAdsListener) {
        if (iUnityAdsListener == null || _listeners.contains(iUnityAdsListener)) {
            return;
        }
        _listeners.add(iUnityAdsListener);
    }

    public static Set getListeners() {
        return _listeners;
    }

    public static int getShowTimeout() {
        return _showTimeout;
    }

    public static void removeListener(IUnityAdsListener iUnityAdsListener) {
        _listeners.remove(iUnityAdsListener);
    }

    public static void setShowTimeout(int i) {
        _showTimeout = i;
    }
}
