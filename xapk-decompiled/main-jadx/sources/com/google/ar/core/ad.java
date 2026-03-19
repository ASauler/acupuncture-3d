package com.google.ar.core;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.util.Log;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: InstallServiceImpl.java */
/* JADX INFO: loaded from: classes3.dex */
final class ad implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Activity f193a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ t f194b;
    final /* synthetic */ v c;

    ad(v vVar, Activity activity, t tVar) {
        this.c = vVar;
        this.f193a = activity;
        this.f194b = tVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            this.c.c.d(this.f193a.getApplicationInfo().packageName, Collections.singletonList(v.k()), new Bundle(), new ab(this, atomicBoolean));
            new Handler().postDelayed(new ac(this, atomicBoolean), 3000L);
        } catch (RemoteException e) {
            Log.w("ARCore-InstallService", "requestInstall threw, launching fullscreen.", e);
            v vVar = this.c;
            v.o(this.f193a, this.f194b);
        }
    }
}
