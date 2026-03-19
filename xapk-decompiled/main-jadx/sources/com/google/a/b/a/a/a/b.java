package com.google.a.b.a.a.a;

import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: compiled from: IInstallService.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class b extends com.google.a.a.b implements c {
    public static c b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.install.protocol.IInstallService");
        return iInterfaceQueryLocalInterface instanceof c ? (c) iInterfaceQueryLocalInterface : new a(iBinder);
    }
}
