package com.twitter.sdk.android.core.internal.oauth;

import com.google.common.net.HttpHeaders;
import com.twitter.sdk.android.core.TwitterCore;
import com.twitter.sdk.android.core.internal.TwitterApi;
import com.twitter.sdk.android.core.internal.network.OkHttpClientHelper;
import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

/* JADX INFO: loaded from: classes2.dex */
abstract class OAuthService {
    private static final String CLIENT_NAME = "TwitterAndroidSDK";
    private final TwitterApi api;
    private final Retrofit retrofit = new Retrofit.Builder().baseUrl(getApi().getBaseHostUrl()).client(new OkHttpClient.Builder().addInterceptor(new Interceptor() { // from class: com.twitter.sdk.android.core.internal.oauth.OAuthService$$ExternalSyntheticLambda0
        @Override // okhttp3.Interceptor
        public final Response intercept(Interceptor.Chain chain) {
            return this.f$0.m877x6b95bd22(chain);
        }
    }).certificatePinner(OkHttpClientHelper.getCertificatePinner()).build()).addConverterFactory(GsonConverterFactory.create()).build();
    private final TwitterCore twitterCore;
    private final String userAgent;

    OAuthService(TwitterCore twitterCore, TwitterApi twitterApi) {
        this.twitterCore = twitterCore;
        this.api = twitterApi;
        this.userAgent = TwitterApi.buildUserAgent(CLIENT_NAME, twitterCore.getVersion());
    }

    /* JADX INFO: renamed from: lambda$new$0$com-twitter-sdk-android-core-internal-oauth-OAuthService, reason: not valid java name */
    /* synthetic */ Response m877x6b95bd22(Interceptor.Chain chain) throws IOException {
        return chain.proceed(chain.request().newBuilder().header(HttpHeaders.USER_AGENT, getUserAgent()).build());
    }

    protected TwitterCore getTwitterCore() {
        return this.twitterCore;
    }

    protected TwitterApi getApi() {
        return this.api;
    }

    protected String getUserAgent() {
        return this.userAgent;
    }

    protected Retrofit getRetrofit() {
        return this.retrofit;
    }
}
