package com.google.ar.core;

import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import com.google.ar.core.exceptions.FatalException;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: InstallServiceImpl.java */
/* JADX INFO: loaded from: classes3.dex */
final class ab extends com.google.a.b.a.a.a.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ AtomicBoolean f189a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ ad f190b;

    ab(ad adVar, AtomicBoolean atomicBoolean) {
        this.f190b = adVar;
        this.f189a = atomicBoolean;
    }

    @Override // com.google.a.b.a.a.a.e
    public final void b(Bundle bundle) throws RemoteException {
        if (this.f189a.getAndSet(true)) {
        }
        int i = bundle.getInt("error.code", -100);
        int i2 = bundle.getInt("install.status", 0);
        if (i2 == 4) {
            this.f190b.f194b.a(u.COMPLETED);
            return;
        }
        if (i != 0) {
            StringBuilder sb = new StringBuilder(51);
            sb.append("requestInstall = ");
            sb.append(i);
            sb.append(", launching fullscreen.");
            Log.w("ARCore-InstallService", sb.toString());
            ad adVar = this.f190b;
            v vVar = adVar.c;
            v.o(adVar.f193a, adVar.f194b);
            return;
        }
        if (bundle.containsKey("resolution.intent")) {
            ad adVar2 = this.f190b;
            v vVar2 = adVar2.c;
            v.p(adVar2.f193a, bundle, adVar2.f194b);
            return;
        }
        if (i2 == 10) {
            this.f190b.f194b.b(new FatalException("Unexpected REQUIRES_UI_INTENT install status without an intent."));
            return;
        }
        switch (i2) {
            case 1:
            case 2:
            case 3:
                this.f190b.f194b.a(u.ACCEPTED);
                break;
            case 4:
                this.f190b.f194b.a(u.COMPLETED);
                break;
            case 5:
                this.f190b.f194b.b(new FatalException("Unexpected FAILED install status without error."));
                break;
            case 6:
                this.f190b.f194b.a(u.CANCELLED);
                break;
            default:
                t tVar = this.f190b.f194b;
                StringBuilder sb2 = new StringBuilder(38);
                sb2.append("Unexpected install status: ");
                sb2.append(i2);
                tVar.b(new FatalException(sb2.toString()));
                break;
        }
    }

    @Override // com.google.a.b.a.a.a.e
    public final void c(Bundle bundle) throws RemoteException {
    }
}
