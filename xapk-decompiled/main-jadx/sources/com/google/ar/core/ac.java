package com.google.ar.core;

import android.util.Log;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: InstallServiceImpl.java */
/* JADX INFO: loaded from: classes3.dex */
final class ac implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ AtomicBoolean f191a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ ad f192b;

    ac(ad adVar, AtomicBoolean atomicBoolean) {
        this.f192b = adVar;
        this.f191a = atomicBoolean;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f191a.getAndSet(true)) {
            return;
        }
        Log.w("ARCore-InstallService", "requestInstall timed out, launching fullscreen.");
        ad adVar = this.f192b;
        v vVar = adVar.c;
        v.o(adVar.f193a, adVar.f194b);
    }
}
