package com.rnappauth.utils;

import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.WritableMap;
import net.openid.appauth.RegistrationResponse;

/* JADX INFO: loaded from: classes2.dex */
public final class RegistrationResponseFactory {
    public static final WritableMap registrationResponseToMap(RegistrationResponse registrationResponse) {
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putString("clientId", registrationResponse.clientId);
        writableMapCreateMap.putMap("additionalParameters", MapUtil.createAdditionalParametersMap(registrationResponse.additionalParameters));
        if (registrationResponse.clientIdIssuedAt != null) {
            writableMapCreateMap.putString("clientIdIssuedAt", DateUtil.formatTimestamp(registrationResponse.clientIdIssuedAt));
        }
        if (registrationResponse.clientSecret != null) {
            writableMapCreateMap.putString("clientSecret", registrationResponse.clientSecret);
        }
        if (registrationResponse.clientSecretExpiresAt != null) {
            writableMapCreateMap.putString("clientSecretExpiresAt", DateUtil.formatTimestamp(registrationResponse.clientSecretExpiresAt));
        }
        if (registrationResponse.registrationAccessToken != null) {
            writableMapCreateMap.putString("registrationAccessToken", registrationResponse.registrationAccessToken);
        }
        if (registrationResponse.registrationClientUri != null) {
            writableMapCreateMap.putString("registrationClientUri", registrationResponse.registrationClientUri.toString());
        }
        if (registrationResponse.tokenEndpointAuthMethod != null) {
            writableMapCreateMap.putString("tokenEndpointAuthMethod", registrationResponse.tokenEndpointAuthMethod);
        }
        return writableMapCreateMap;
    }
}
