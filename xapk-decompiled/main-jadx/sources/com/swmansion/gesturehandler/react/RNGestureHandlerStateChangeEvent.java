package com.swmansion.gesturehandler.react;

import androidx.core.util.Pools;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.uimanager.events.Event;
import com.facebook.react.uimanager.events.RCTEventEmitter;
import com.swmansion.gesturehandler.GestureHandler;

/* JADX INFO: loaded from: classes2.dex */
public class RNGestureHandlerStateChangeEvent extends Event<RNGestureHandlerStateChangeEvent> {
    private static final Pools.SynchronizedPool<RNGestureHandlerStateChangeEvent> EVENTS_POOL = new Pools.SynchronizedPool<>(7);
    public static final String EVENT_NAME = "onGestureHandlerStateChange";
    private static final int TOUCH_EVENTS_POOL_SIZE = 7;
    private WritableMap mExtraData;

    @Override // com.facebook.react.uimanager.events.Event
    public boolean canCoalesce() {
        return false;
    }

    @Override // com.facebook.react.uimanager.events.Event
    public short getCoalescingKey() {
        return (short) 0;
    }

    @Override // com.facebook.react.uimanager.events.Event
    public String getEventName() {
        return EVENT_NAME;
    }

    public static RNGestureHandlerStateChangeEvent obtain(GestureHandler gestureHandler, int i, int i2, RNGestureHandlerEventDataExtractor rNGestureHandlerEventDataExtractor) {
        RNGestureHandlerStateChangeEvent rNGestureHandlerStateChangeEventAcquire = EVENTS_POOL.acquire();
        if (rNGestureHandlerStateChangeEventAcquire == null) {
            rNGestureHandlerStateChangeEventAcquire = new RNGestureHandlerStateChangeEvent();
        }
        rNGestureHandlerStateChangeEventAcquire.init(gestureHandler, i, i2, rNGestureHandlerEventDataExtractor);
        return rNGestureHandlerStateChangeEventAcquire;
    }

    private RNGestureHandlerStateChangeEvent() {
    }

    private void init(GestureHandler gestureHandler, int i, int i2, RNGestureHandlerEventDataExtractor rNGestureHandlerEventDataExtractor) {
        super.init(gestureHandler.getView().getId());
        WritableMap writableMapCreateMap = Arguments.createMap();
        this.mExtraData = writableMapCreateMap;
        if (rNGestureHandlerEventDataExtractor != null) {
            rNGestureHandlerEventDataExtractor.extractEventData(gestureHandler, writableMapCreateMap);
        }
        this.mExtraData.putInt("handlerTag", gestureHandler.getTag());
        this.mExtraData.putInt("state", i);
        this.mExtraData.putInt("oldState", i2);
    }

    @Override // com.facebook.react.uimanager.events.Event
    public void onDispose() {
        this.mExtraData = null;
        EVENTS_POOL.release(this);
    }

    @Override // com.facebook.react.uimanager.events.Event
    public void dispatch(RCTEventEmitter rCTEventEmitter) {
        rCTEventEmitter.receiveEvent(getViewTag(), EVENT_NAME, this.mExtraData);
    }
}
