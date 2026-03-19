package com.google.ar.core;

import com.google.ar.core.ArCoreApk;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: InstallActivity.java */
/* JADX INFO: loaded from: classes3.dex */
final class p implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ AtomicReference f220a;

    p(AtomicReference atomicReference) {
        this.f220a = atomicReference;
    }

    @Override // com.google.ar.core.i
    public final void a(ArCoreApk.Availability availability) {
        this.f220a.set(availability);
    }
}
