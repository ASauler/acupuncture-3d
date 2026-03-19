package com.swmansion.gesturehandler.react;

import androidx.core.util.Pools;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.uimanager.events.Event;
import com.facebook.react.uimanager.events.RCTEventEmitter;
import com.swmansion.gesturehandler.GestureHandler;

/* JADX INFO: loaded from: classes2.dex */
public class RNGestureHandlerEvent extends Event<RNGestureHandlerEvent> {
    private static final Pools.SynchronizedPool<RNGestureHandlerEvent> EVENTS_POOL = new Pools.SynchronizedPool<>(7);
    public static final String EVENT_NAME = "onGestureHandlerEvent";
    private static final int TOUCH_EVENTS_POOL_SIZE = 7;
    private short mCoalescingKey;
    private WritableMap mExtraData;

    @Override // com.facebook.react.uimanager.events.Event
    public boolean canCoalesce() {
        return true;
    }

    @Override // com.facebook.react.uimanager.events.Event
    public String getEventName() {
        return EVENT_NAME;
    }

    public static RNGestureHandlerEvent obtain(GestureHandler gestureHandler, RNGestureHandlerEventDataExtractor rNGestureHandlerEventDataExtractor) {
        RNGestureHandlerEvent rNGestureHandlerEventAcquire = EVENTS_POOL.acquire();
        if (rNGestureHandlerEventAcquire == null) {
            rNGestureHandlerEventAcquire = new RNGestureHandlerEvent();
        }
        rNGestureHandlerEventAcquire.init(gestureHandler, rNGestureHandlerEventDataExtractor);
        return rNGestureHandlerEventAcquire;
    }

    private RNGestureHandlerEvent() {
    }

    private void init(GestureHandler gestureHandler, RNGestureHandlerEventDataExtractor rNGestureHandlerEventDataExtractor) {
        super.init(gestureHandler.getView().getId());
        WritableMap writableMapCreateMap = Arguments.createMap();
        this.mExtraData = writableMapCreateMap;
        if (rNGestureHandlerEventDataExtractor != null) {
            rNGestureHandlerEventDataExtractor.extractEventData(gestureHandler, writableMapCreateMap);
        }
        this.mExtraData.putInt("handlerTag", gestureHandler.getTag());
        this.mExtraData.putInt("state", gestureHandler.getState());
        this.mCoalescingKey = gestureHandler.getEventCoalescingKey();
    }

    @Override // com.facebook.react.uimanager.events.Event
    public void onDispose() {
        this.mExtraData = null;
        EVENTS_POOL.release(this);
    }

    @Override // com.facebook.react.uimanager.events.Event
    public short getCoalescingKey() {
        return this.mCoalescingKey;
    }

    @Override // com.facebook.react.uimanager.events.Event
    public void dispatch(RCTEventEmitter rCTEventEmitter) {
        rCTEventEmitter.receiveEvent(getViewTag(), EVENT_NAME, this.mExtraData);
    }
}
