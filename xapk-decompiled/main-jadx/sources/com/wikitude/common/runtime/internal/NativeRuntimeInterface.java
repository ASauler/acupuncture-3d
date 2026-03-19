package com.wikitude.common.runtime.internal;

import a.a.a.k.a.b;
import a.a.a.k.a.c;
import android.content.Context;
import com.wikitude.common.CallStatus;

/* JADX INFO: loaded from: classes2.dex */
public final class NativeRuntimeInterface implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f473a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f474b;

    private NativeRuntimeInterface(Context context, long j) {
        this.f473a = j;
        this.f474b = new b(context, this);
    }

    private native void orientationChangedNative(long j, int i);

    @Override // a.a.a.k.a.c
    public void a(int i) {
        orientationChangedNative(this.f473a, i);
    }

    public CallStatus start() {
        return this.f474b.a();
    }

    public void stop() {
        this.f474b.b();
    }
}
