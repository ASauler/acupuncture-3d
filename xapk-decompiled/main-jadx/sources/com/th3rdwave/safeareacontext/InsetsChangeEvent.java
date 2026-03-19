package com.th3rdwave.safeareacontext;

import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.uimanager.events.Event;
import com.facebook.react.uimanager.events.RCTEventEmitter;

/* JADX INFO: loaded from: classes2.dex */
class InsetsChangeEvent extends Event<InsetsChangeEvent> {
    public static final String EVENT_NAME = "topInsetsChange";
    private EdgeInsets mInsets;

    @Override // com.facebook.react.uimanager.events.Event
    public String getEventName() {
        return EVENT_NAME;
    }

    protected InsetsChangeEvent(int i, EdgeInsets edgeInsets) {
        super(i);
        this.mInsets = edgeInsets;
    }

    @Override // com.facebook.react.uimanager.events.Event
    public void dispatch(RCTEventEmitter rCTEventEmitter) {
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putMap("insets", SafeAreaUtils.edgeInsetsToJsMap(this.mInsets));
        rCTEventEmitter.receiveEvent(getViewTag(), getEventName(), writableMapCreateMap);
    }
}
