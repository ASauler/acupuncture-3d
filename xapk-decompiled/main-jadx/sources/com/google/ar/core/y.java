package com.google.ar.core;

import android.content.Context;
import android.os.RemoteException;
import android.util.Log;
import com.google.ar.core.ArCoreApk;

/* JADX INFO: compiled from: InstallServiceImpl.java */
/* JADX INFO: loaded from: classes3.dex */
final class y implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Context f234a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ i f235b;
    final /* synthetic */ v c;

    y(v vVar, Context context, i iVar) {
        this.c = vVar;
        this.f234a = context;
        this.f235b = iVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.c.c.e(this.f234a.getApplicationInfo().packageName, v.k(), new x(this));
        } catch (RemoteException e) {
            Log.e("ARCore-InstallService", "requestInfo threw", e);
            this.f235b.a(ArCoreApk.Availability.UNKNOWN_ERROR);
        }
    }
}
