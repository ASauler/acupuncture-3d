package com.twitter.sdk.android.core.internal.network;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.Response;

/* JADX INFO: loaded from: classes2.dex */
public class GuestAuthNetworkInterceptor implements Interceptor {
    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Response responseProceed = chain.proceed(chain.request());
        return responseProceed.code() == 403 ? responseProceed.newBuilder().code(TypedValues.CycleType.TYPE_CURVE_FIT).message("Unauthorized").build() : responseProceed;
    }
}
