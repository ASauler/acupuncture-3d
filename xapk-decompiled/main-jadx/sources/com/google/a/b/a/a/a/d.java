package com.google.a.b.a.a.a;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: IInstallServiceCallback.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class d extends com.google.a.a.b implements e {
    public d() {
        super("com.google.android.play.core.install.protocol.IInstallServiceCallback");
    }

    @Override // com.google.a.a.b
    protected final boolean a(int i, Parcel parcel) throws RemoteException {
        if (i == 1) {
            b((Bundle) com.google.a.a.c.a(parcel, Bundle.CREATOR));
        } else if (i == 2) {
            c((Bundle) com.google.a.a.c.a(parcel, Bundle.CREATOR));
        } else {
            if (i != 3) {
                return false;
            }
        }
        return true;
    }
}
