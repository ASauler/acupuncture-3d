package com.twitter.sdk.android.core.internal.oauth;

import com.twitter.sdk.android.core.Callback;
import com.twitter.sdk.android.core.Result;
import com.twitter.sdk.android.core.Twitter;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterCore;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.internal.TwitterApi;
import com.twitter.sdk.android.core.internal.network.UrlUtils;
import okio.ByteString;
import retrofit2.Call;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.Header;
import retrofit2.http.Headers;
import retrofit2.http.POST;

/* JADX INFO: loaded from: classes2.dex */
public class OAuth2Service extends OAuthService {
    OAuth2Api api;

    interface OAuth2Api {
        @FormUrlEncoded
        @Headers({"Content-Type: application/x-www-form-urlencoded;charset=UTF-8"})
        @POST("/oauth2/token")
        Call<OAuth2Token> getAppAuthToken(@Header("Authorization") String str, @Field(OAuthConstants.PARAM_GRANT_TYPE) String str2);

        @POST("/1.1/guest/activate.json")
        Call<GuestTokenResponse> getGuestToken(@Header("Authorization") String str);
    }

    public OAuth2Service(TwitterCore twitterCore, TwitterApi twitterApi) {
        super(twitterCore, twitterApi);
        this.api = (OAuth2Api) getRetrofit().create(OAuth2Api.class);
    }

    public void requestGuestAuthToken(final Callback<GuestAuthToken> callback) {
        requestAppAuthToken(new Callback<OAuth2Token>() { // from class: com.twitter.sdk.android.core.internal.oauth.OAuth2Service.1
            @Override // com.twitter.sdk.android.core.Callback
            public void success(Result<OAuth2Token> result) {
                final OAuth2Token oAuth2Token = result.data;
                OAuth2Service.this.requestGuestToken(new Callback<GuestTokenResponse>() { // from class: com.twitter.sdk.android.core.internal.oauth.OAuth2Service.1.1
                    @Override // com.twitter.sdk.android.core.Callback
                    public void success(Result<GuestTokenResponse> result2) {
                        callback.success(new Result(new GuestAuthToken(oAuth2Token.getTokenType(), oAuth2Token.getAccessToken(), result2.data.guestToken), null));
                    }

                    @Override // com.twitter.sdk.android.core.Callback
                    public void failure(TwitterException twitterException) {
                        Twitter.getLogger().e("Twitter", "Your app may not allow guest auth. Please talk to us regarding upgrading your consumer key.", twitterException);
                        callback.failure(twitterException);
                    }
                }, oAuth2Token);
            }

            @Override // com.twitter.sdk.android.core.Callback
            public void failure(TwitterException twitterException) {
                Twitter.getLogger().e("Twitter", "Failed to get app auth token", twitterException);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.failure(twitterException);
                }
            }
        });
    }

    void requestAppAuthToken(Callback<OAuth2Token> callback) {
        this.api.getAppAuthToken(getAuthHeader(), "client_credentials").enqueue(callback);
    }

    void requestGuestToken(Callback<GuestTokenResponse> callback, OAuth2Token oAuth2Token) {
        this.api.getGuestToken(getAuthorizationHeader(oAuth2Token)).enqueue(callback);
    }

    private String getAuthorizationHeader(OAuth2Token oAuth2Token) {
        return "Bearer " + oAuth2Token.getAccessToken();
    }

    private String getAuthHeader() {
        TwitterAuthConfig authConfig = getTwitterCore().getAuthConfig();
        return "Basic " + ByteString.encodeUtf8(UrlUtils.percentEncode(authConfig.getConsumerKey()) + ":" + UrlUtils.percentEncode(authConfig.getConsumerSecret())).base64();
    }
}
