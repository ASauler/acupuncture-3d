package com.rnappauth.utils;

import android.text.TextUtils;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.WritableArray;
import com.facebook.react.bridge.WritableMap;
import net.openid.appauth.AuthorizationResponse;
import net.openid.appauth.TokenResponse;

/* JADX INFO: loaded from: classes2.dex */
public final class TokenResponseFactory {
    private static final WritableArray createScopeArray(String str) {
        WritableArray writableArrayCreateArray = Arguments.createArray();
        if (!TextUtils.isEmpty(str)) {
            for (String str2 : str.split(" ")) {
                writableArrayCreateArray.pushString(str2);
            }
        }
        return writableArrayCreateArray;
    }

    public static final WritableMap tokenResponseToMap(TokenResponse tokenResponse) {
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putString(SDKConstants.PARAM_ACCESS_TOKEN, tokenResponse.accessToken);
        writableMapCreateMap.putMap("additionalParameters", MapUtil.createAdditionalParametersMap(tokenResponse.additionalParameters));
        writableMapCreateMap.putString("idToken", tokenResponse.idToken);
        writableMapCreateMap.putString("refreshToken", tokenResponse.refreshToken);
        writableMapCreateMap.putString("tokenType", tokenResponse.tokenType);
        if (tokenResponse.accessTokenExpirationTime != null) {
            writableMapCreateMap.putString("accessTokenExpirationDate", DateUtil.formatTimestamp(tokenResponse.accessTokenExpirationTime));
        }
        return writableMapCreateMap;
    }

    public static final WritableMap tokenResponseToMap(TokenResponse tokenResponse, AuthorizationResponse authorizationResponse) {
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putString(SDKConstants.PARAM_ACCESS_TOKEN, tokenResponse.accessToken);
        writableMapCreateMap.putMap("authorizeAdditionalParameters", MapUtil.createAdditionalParametersMap(authorizationResponse.additionalParameters));
        writableMapCreateMap.putMap("tokenAdditionalParameters", MapUtil.createAdditionalParametersMap(tokenResponse.additionalParameters));
        writableMapCreateMap.putString("idToken", tokenResponse.idToken);
        writableMapCreateMap.putString("refreshToken", tokenResponse.refreshToken);
        writableMapCreateMap.putString("tokenType", tokenResponse.tokenType);
        writableMapCreateMap.putArray("scopes", createScopeArray(authorizationResponse.scope));
        if (tokenResponse.accessTokenExpirationTime != null) {
            writableMapCreateMap.putString("accessTokenExpirationDate", DateUtil.formatTimestamp(tokenResponse.accessTokenExpirationTime));
        }
        return writableMapCreateMap;
    }

    public static final WritableMap authorizationResponseToMap(AuthorizationResponse authorizationResponse) {
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putString("authorizationCode", authorizationResponse.authorizationCode);
        writableMapCreateMap.putString(SDKConstants.PARAM_ACCESS_TOKEN, authorizationResponse.accessToken);
        writableMapCreateMap.putMap("additionalParameters", MapUtil.createAdditionalParametersMap(authorizationResponse.additionalParameters));
        writableMapCreateMap.putString("idToken", authorizationResponse.idToken);
        writableMapCreateMap.putString("tokenType", authorizationResponse.tokenType);
        writableMapCreateMap.putArray("scopes", createScopeArray(authorizationResponse.scope));
        if (authorizationResponse.accessTokenExpirationTime != null) {
            writableMapCreateMap.putString("accessTokenExpirationTime", DateUtil.formatTimestamp(authorizationResponse.accessTokenExpirationTime));
        }
        return writableMapCreateMap;
    }

    public static final WritableMap authorizationCodeResponseToMap(AuthorizationResponse authorizationResponse, String str) {
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putString("authorizationCode", authorizationResponse.authorizationCode);
        writableMapCreateMap.putString(SDKConstants.PARAM_ACCESS_TOKEN, authorizationResponse.accessToken);
        writableMapCreateMap.putMap("additionalParameters", MapUtil.createAdditionalParametersMap(authorizationResponse.additionalParameters));
        writableMapCreateMap.putString("idToken", authorizationResponse.idToken);
        writableMapCreateMap.putString("tokenType", authorizationResponse.tokenType);
        writableMapCreateMap.putArray("scopes", createScopeArray(authorizationResponse.scope));
        if (authorizationResponse.accessTokenExpirationTime != null) {
            writableMapCreateMap.putString("accessTokenExpirationTime", DateUtil.formatTimestamp(authorizationResponse.accessTokenExpirationTime));
        }
        if (!TextUtils.isEmpty(str)) {
            writableMapCreateMap.putString("codeVerifier", str);
        }
        return writableMapCreateMap;
    }
}
