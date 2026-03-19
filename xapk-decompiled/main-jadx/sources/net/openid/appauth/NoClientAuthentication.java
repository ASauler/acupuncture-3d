package net.openid.appauth;

import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class NoClientAuthentication implements ClientAuthentication {
    public static final NoClientAuthentication INSTANCE = new NoClientAuthentication();
    public static final String NAME = "none";

    @Override // net.openid.appauth.ClientAuthentication
    public Map<String, String> getRequestHeaders(String clientId) {
        return null;
    }

    private NoClientAuthentication() {
    }

    @Override // net.openid.appauth.ClientAuthentication
    public Map<String, String> getRequestParameters(String clientId) {
        return Collections.singletonMap("client_id", clientId);
    }
}
