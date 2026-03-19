package com.twitter.sdk.android.core;

import android.text.TextUtils;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonSyntaxException;
import com.twitter.sdk.android.core.models.ApiError;
import com.twitter.sdk.android.core.models.ApiErrors;
import com.twitter.sdk.android.core.models.SafeListAdapter;
import com.twitter.sdk.android.core.models.SafeMapAdapter;
import retrofit2.Response;

/* JADX INFO: loaded from: classes2.dex */
public class TwitterApiException extends TwitterException {
    public static final int DEFAULT_ERROR_CODE = 0;
    private final ApiError apiError;
    private final int code;
    private final Response response;
    private final TwitterRateLimit twitterRateLimit;

    public TwitterApiException(Response response) {
        this(response, readApiError(response), readApiRateLimit(response), response.code());
    }

    TwitterApiException(Response response, ApiError apiError, TwitterRateLimit twitterRateLimit, int i) {
        super(createExceptionMessage(i));
        this.apiError = apiError;
        this.twitterRateLimit = twitterRateLimit;
        this.code = i;
        this.response = response;
    }

    public int getStatusCode() {
        return this.code;
    }

    public int getErrorCode() {
        ApiError apiError = this.apiError;
        if (apiError == null) {
            return 0;
        }
        return apiError.code;
    }

    public String getErrorMessage() {
        ApiError apiError = this.apiError;
        if (apiError == null) {
            return null;
        }
        return apiError.message;
    }

    public TwitterRateLimit getTwitterRateLimit() {
        return this.twitterRateLimit;
    }

    public Response getResponse() {
        return this.response;
    }

    public static TwitterRateLimit readApiRateLimit(Response response) {
        return new TwitterRateLimit(response.headers());
    }

    public static ApiError readApiError(Response response) {
        try {
            String utf8 = response.errorBody().getSource().getBufferField().clone().readUtf8();
            if (TextUtils.isEmpty(utf8)) {
                return null;
            }
            return parseApiError(utf8);
        } catch (Exception e) {
            Twitter.getLogger().e("Twitter", "Unexpected response", e);
            return null;
        }
    }

    static ApiError parseApiError(String str) {
        try {
            ApiErrors apiErrors = (ApiErrors) new GsonBuilder().registerTypeAdapterFactory(new SafeListAdapter()).registerTypeAdapterFactory(new SafeMapAdapter()).create().fromJson(str, ApiErrors.class);
            if (apiErrors.errors.isEmpty()) {
                return null;
            }
            return apiErrors.errors.get(0);
        } catch (JsonSyntaxException e) {
            Twitter.getLogger().e("Twitter", "Invalid json: " + str, e);
            return null;
        }
    }

    static String createExceptionMessage(int i) {
        return "HTTP request failed, Status: " + i;
    }
}
