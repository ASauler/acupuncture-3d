package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.SerializedName;
import net.openid.appauth.ResponseTypeValues;

/* JADX INFO: loaded from: classes2.dex */
public class ApiError {

    @SerializedName(ResponseTypeValues.CODE)
    public final int code;

    @SerializedName("message")
    public final String message;

    public ApiError(String str, int i) {
        this.message = str;
        this.code = i;
    }
}
