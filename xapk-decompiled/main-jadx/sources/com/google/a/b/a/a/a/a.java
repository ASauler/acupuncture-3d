package com.google.a.b.a.a.a;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* JADX INFO: compiled from: IInstallService.java */
/* JADX INFO: loaded from: classes3.dex */
public final class a extends com.google.a.a.a implements c {
    a(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.install.protocol.IInstallService");
    }

    @Override // com.google.a.b.a.a.a.c
    public final void d(String str, List<Bundle> list, Bundle bundle, e eVar) throws RemoteException {
        Parcel parcelA = a();
        parcelA.writeString(str);
        parcelA.writeTypedList(list);
        com.google.a.a.c.b(parcelA, bundle);
        com.google.a.a.c.c(parcelA, eVar);
        c(1, parcelA);
    }

    @Override // com.google.a.b.a.a.a.c
    public final void e(String str, Bundle bundle, e eVar) throws RemoteException {
        Parcel parcelA = a();
        parcelA.writeString(str);
        com.google.a.a.c.b(parcelA, bundle);
        com.google.a.a.c.c(parcelA, eVar);
        c(2, parcelA);
    }
}
