package com.google.ar.core;

import com.google.ar.core.ArCoreApk;

/* JADX INFO: compiled from: ArCoreApkImpl.java */
/* JADX INFO: loaded from: classes3.dex */
final class j implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ k f212a;

    j(k kVar) {
        this.f212a = kVar;
    }

    @Override // com.google.ar.core.i
    public final void a(ArCoreApk.Availability availability) {
        synchronized (this.f212a) {
            this.f212a.g = availability;
            this.f212a.h = false;
        }
    }
}
