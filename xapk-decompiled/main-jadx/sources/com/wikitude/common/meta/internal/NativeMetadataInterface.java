package com.wikitude.common.meta.internal;

import a.a.a.h.a.a;
import a.a.a.h.a.b;
import a.a.a.h.a.c;
import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public class NativeMetadataInterface implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f466a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f467b;

    public NativeMetadataInterface(Context context, long j) {
        this.f467b = j;
        c cVar = new c(context, this);
        this.f466a = cVar;
        metadataAvailable(j, cVar.e(), cVar.f(), cVar.c(), cVar.d(), cVar.g(), cVar.b(), cVar.h());
    }

    private native void metadataAvailable(long j, String str, String str2, String str3, String str4, String str5, String str6, boolean z);

    private native void onErrorNative(long j, int i, String str);

    @Override // a.a.a.h.a.b
    public void a(a aVar, String str) {
        onErrorNative(this.f467b, aVar.a(), str);
    }

    public void destroyTemporaryDirectory() {
        this.f466a.a();
    }

    public void setRecurringInstantiation() {
        this.f466a.i();
    }
}
