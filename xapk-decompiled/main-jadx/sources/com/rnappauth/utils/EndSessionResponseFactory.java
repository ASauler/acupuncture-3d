package com.rnappauth.utils;

import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.WritableMap;
import net.openid.appauth.EndSessionResponse;

/* JADX INFO: loaded from: classes2.dex */
public final class EndSessionResponseFactory {
    public static final WritableMap endSessionResponseToMap(EndSessionResponse endSessionResponse) {
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putString("state", endSessionResponse.state);
        writableMapCreateMap.putString("idTokenHint", endSessionResponse.request.idTokenHint);
        if (endSessionResponse.request.postLogoutRedirectUri != null) {
            writableMapCreateMap.putString("postLogoutRedirectUri", endSessionResponse.request.postLogoutRedirectUri.toString());
        }
        return writableMapCreateMap;
    }
}
