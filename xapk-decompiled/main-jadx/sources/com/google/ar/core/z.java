package com.google.ar.core;

import android.content.pm.PackageInstaller;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: InstallServiceImpl.java */
/* JADX INFO: loaded from: classes3.dex */
final class z extends PackageInstaller.SessionCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Map<Integer, PackageInstaller.SessionInfo> f236a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ t f237b;
    final /* synthetic */ v c;

    z(v vVar, t tVar) {
        this.c = vVar;
        this.f237b = tVar;
    }

    @Override // android.content.pm.PackageInstaller.SessionCallback
    public final void onActiveChanged(int i, boolean z) {
    }

    @Override // android.content.pm.PackageInstaller.SessionCallback
    public final void onBadgingChanged(int i) {
    }

    @Override // android.content.pm.PackageInstaller.SessionCallback
    public final void onCreated(int i) {
        this.f236a.put(Integer.valueOf(i), this.c.g.getSessionInfo(i));
    }

    @Override // android.content.pm.PackageInstaller.SessionCallback
    public final void onFinished(int i, boolean z) {
        PackageInstaller.SessionInfo sessionInfoRemove = this.f236a.remove(Integer.valueOf(i));
        if (sessionInfoRemove == null || !"com.google.ar.core".equals(sessionInfoRemove.getAppPackageName())) {
            return;
        }
        Log.i("ARCore-InstallService", "Detected ARCore install completion");
        this.f237b.a(u.COMPLETED);
    }

    @Override // android.content.pm.PackageInstaller.SessionCallback
    public final void onProgressChanged(int i, float f) {
    }
}
