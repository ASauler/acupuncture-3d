package com.google.ar.core;

import com.google.ar.core.ArCoreApk;
import com.google.ar.core.exceptions.UnavailableUserDeclinedInstallationException;

/* JADX INFO: compiled from: InstallActivity.java */
/* JADX INFO: loaded from: classes3.dex */
final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f226a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ InstallActivity f227b;

    t(InstallActivity installActivity) {
        this.f227b = installActivity;
    }

    public final void a(u uVar) {
        synchronized (this.f227b) {
            if (this.f226a) {
                return;
            }
            this.f227b.lastEvent = uVar;
            u uVar2 = u.ACCEPTED;
            ArCoreApk.UserMessageType userMessageType = ArCoreApk.UserMessageType.APPLICATION;
            ArCoreApk.Availability availability = ArCoreApk.Availability.UNKNOWN_ERROR;
            int iOrdinal = uVar.ordinal();
            if (iOrdinal != 0) {
                if (iOrdinal == 1) {
                    this.f227b.finishWithFailure(new UnavailableUserDeclinedInstallationException());
                } else if (iOrdinal == 2) {
                    if (!this.f227b.waitingForCompletion && k.a().f214b) {
                        this.f227b.closeInstaller();
                    }
                    this.f227b.finishWithFailure(null);
                }
                this.f226a = true;
            }
        }
    }

    public final void b(Exception exc) {
        synchronized (this.f227b) {
            if (this.f226a) {
                return;
            }
            this.f226a = true;
            this.f227b.lastEvent = u.CANCELLED;
            this.f227b.finishWithFailure(exc);
        }
    }
}
