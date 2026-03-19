package com.google.ar.core;

import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import com.google.ar.core.ArCoreApk;

/* JADX INFO: compiled from: InstallServiceImpl.java */
/* JADX INFO: loaded from: classes3.dex */
final class x extends com.google.a.b.a.a.a.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ y f233a;

    x(y yVar) {
        this.f233a = yVar;
    }

    @Override // com.google.a.b.a.a.a.e
    public final void b(Bundle bundle) throws RemoteException {
    }

    @Override // com.google.a.b.a.a.a.e
    public final void c(Bundle bundle) throws RemoteException {
        int i = bundle.getInt("error.code", -100);
        if (i == -5) {
            Log.e("ARCore-InstallService", "The device is not supported.");
            this.f233a.f235b.a(ArCoreApk.Availability.UNSUPPORTED_DEVICE_NOT_CAPABLE);
            return;
        }
        if (i == -3) {
            Log.e("ARCore-InstallService", "The Google Play application must be updated.");
            this.f233a.f235b.a(ArCoreApk.Availability.UNKNOWN_ERROR);
        } else {
            if (i == 0) {
                this.f233a.f235b.a(ArCoreApk.Availability.SUPPORTED_NOT_INSTALLED);
                return;
            }
            StringBuilder sb = new StringBuilder(33);
            sb.append("requestInfo returned: ");
            sb.append(i);
            Log.e("ARCore-InstallService", sb.toString());
            this.f233a.f235b.a(ArCoreApk.Availability.UNKNOWN_ERROR);
        }
    }
}
