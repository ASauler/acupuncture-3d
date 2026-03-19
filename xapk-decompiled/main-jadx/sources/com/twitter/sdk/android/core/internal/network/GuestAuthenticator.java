package com.twitter.sdk.android.core.internal.network;

import com.twitter.sdk.android.core.GuestSession;
import com.twitter.sdk.android.core.GuestSessionProvider;
import com.twitter.sdk.android.core.internal.oauth.GuestAuthToken;
import java.io.IOException;
import okhttp3.Authenticator;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;

/* JADX INFO: loaded from: classes2.dex */
public class GuestAuthenticator implements Authenticator {
    static final int MAX_RETRIES = 2;
    final GuestSessionProvider guestSessionProvider;

    public GuestAuthenticator(GuestSessionProvider guestSessionProvider) {
        this.guestSessionProvider = guestSessionProvider;
    }

    @Override // okhttp3.Authenticator
    public Request authenticate(Route route, Response response) throws IOException {
        return reauth(response);
    }

    Request reauth(Response response) {
        if (canRetry(response)) {
            GuestSession guestSessionRefreshCurrentSession = this.guestSessionProvider.refreshCurrentSession(getExpiredSession(response));
            GuestAuthToken authToken = guestSessionRefreshCurrentSession == null ? null : guestSessionRefreshCurrentSession.getAuthToken();
            if (authToken != null) {
                return resign(response.request(), authToken);
            }
        }
        return null;
    }

    GuestSession getExpiredSession(Response response) {
        Headers headers = response.request().headers();
        String str = headers.get("Authorization");
        String str2 = headers.get("x-guest-token");
        if (str == null || str2 == null) {
            return null;
        }
        return new GuestSession(new GuestAuthToken("bearer", str.replace("bearer ", ""), str2));
    }

    Request resign(Request request, GuestAuthToken guestAuthToken) {
        Request.Builder builderNewBuilder = request.newBuilder();
        GuestAuthInterceptor.addAuthHeaders(builderNewBuilder, guestAuthToken);
        return builderNewBuilder.build();
    }

    boolean canRetry(Response response) {
        int i = 1;
        while (true) {
            response = response.priorResponse();
            if (response == null) {
                break;
            }
            i++;
        }
        return i < 2;
    }
}
