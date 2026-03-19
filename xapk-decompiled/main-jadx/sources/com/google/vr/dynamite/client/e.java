package com.google.vr.dynamite.client;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: RemoteLibraryLoader.java */
/* JADX INFO: loaded from: classes2.dex */
final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f263a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ILoadedInstanceCreator f264b;
    private final f c;

    public e(f fVar) {
        this.c = fVar;
    }

    private static IBinder c(ClassLoader classLoader) {
        try {
            return (IBinder) classLoader.loadClass("com.google.vr.dynamite.LoadedInstanceCreator").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (ClassNotFoundException e) {
            throw new IllegalStateException("Unable to find dynamic class ".concat("com.google.vr.dynamite.LoadedInstanceCreator"), e);
        } catch (IllegalAccessException e2) {
            throw new IllegalStateException("Unable to call the default constructor of ".concat("com.google.vr.dynamite.LoadedInstanceCreator"), e2);
        } catch (InstantiationException e3) {
            throw new IllegalStateException("Unable to instantiate the remote class ".concat("com.google.vr.dynamite.LoadedInstanceCreator"), e3);
        } catch (NoSuchMethodException e4) {
            throw new IllegalStateException("No constructor for dynamic class ".concat("com.google.vr.dynamite.LoadedInstanceCreator"), e4);
        } catch (InvocationTargetException e5) {
            throw new IllegalStateException("Unable to invoke constructor of dynamic class ".concat("com.google.vr.dynamite.LoadedInstanceCreator"), e5);
        }
    }

    public final synchronized ILoadedInstanceCreator a(Context context) throws d {
        ILoadedInstanceCreator aVar;
        if (this.f264b == null) {
            IBinder iBinderC = c(b(context).getClassLoader());
            if (iBinderC == null) {
                aVar = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinderC.queryLocalInterface("com.google.vr.dynamite.client.ILoadedInstanceCreator");
                aVar = iInterfaceQueryLocalInterface instanceof ILoadedInstanceCreator ? (ILoadedInstanceCreator) iInterfaceQueryLocalInterface : new a(iBinderC);
            }
            this.f264b = aVar;
        }
        return this.f264b;
    }

    public final synchronized Context b(Context context) throws d {
        if (this.f263a == null) {
            try {
                this.f263a = context.createPackageContext(this.c.a(), 3);
            } catch (PackageManager.NameNotFoundException unused) {
                throw new d();
            }
        }
        return this.f263a;
    }
}
