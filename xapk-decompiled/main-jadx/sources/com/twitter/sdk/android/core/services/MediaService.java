package com.twitter.sdk.android.core.services;

import com.facebook.share.internal.ShareConstants;
import com.twitter.sdk.android.core.models.Media;
import okhttp3.RequestBody;
import retrofit2.Call;
import retrofit2.http.Multipart;
import retrofit2.http.POST;
import retrofit2.http.Part;

/* JADX INFO: loaded from: classes2.dex */
public interface MediaService {
    @POST("https://upload.twitter.com/1.1/media/upload.json")
    @Multipart
    Call<Media> upload(@Part(ShareConstants.WEB_DIALOG_PARAM_MEDIA) RequestBody requestBody, @Part("media_data") RequestBody requestBody2, @Part("additional_owners") RequestBody requestBody3);
}
