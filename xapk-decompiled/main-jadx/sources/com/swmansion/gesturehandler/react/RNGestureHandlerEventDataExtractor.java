package com.swmansion.gesturehandler.react;

import com.facebook.react.bridge.WritableMap;
import com.swmansion.gesturehandler.GestureHandler;

/* JADX INFO: loaded from: classes2.dex */
public interface RNGestureHandlerEventDataExtractor<T extends GestureHandler> {
    void extractEventData(T t, WritableMap writableMap);
}
