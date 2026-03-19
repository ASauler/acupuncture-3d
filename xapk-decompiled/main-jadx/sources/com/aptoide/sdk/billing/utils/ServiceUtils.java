package com.aptoide.sdk.billing.utils;

import com.aptoide.sdk.billing.ResponseCode;

/* JADX INFO: loaded from: classes.dex */
public class ServiceUtils {
    public static boolean isSuccess(int i) {
        return i >= 200 && i < 300;
    }

    public static ResponseCode responseCodeFromNetworkResponseCode(int i) {
        return isSuccess(i) ? ResponseCode.OK : ResponseCode.ERROR;
    }
}
