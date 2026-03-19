package com.twitter.sdk.android.core.internal;

import com.twitter.sdk.android.core.Session;

/* JADX INFO: loaded from: classes2.dex */
public interface SessionVerifier<T extends Session> {
    void verifySession(T t);
}
