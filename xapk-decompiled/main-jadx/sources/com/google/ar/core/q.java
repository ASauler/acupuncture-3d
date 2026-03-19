package com.google.ar.core;

import android.view.View;
import com.google.ar.core.exceptions.UnavailableUserDeclinedInstallationException;

/* JADX INFO: compiled from: InstallActivity.java */
/* JADX INFO: loaded from: classes3.dex */
final class q implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ InstallActivity f221a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ int f222b = 0;

    q(InstallActivity installActivity) {
        this.f221a = installActivity;
    }

    q(InstallActivity installActivity, byte[] bArr) {
        this.f221a = installActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f222b != 0) {
            this.f221a.finishWithFailure(new UnavailableUserDeclinedInstallationException());
        } else {
            this.f221a.animateToSpinner();
            this.f221a.startInstaller();
        }
    }
}
