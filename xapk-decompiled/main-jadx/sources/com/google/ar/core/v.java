package com.google.ar.core;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.content.ServiceConnection;
import android.content.pm.PackageInstaller;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import com.google.ar.core.ArCoreApk;
import com.google.ar.core.exceptions.FatalException;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Queue;

/* JADX INFO: compiled from: InstallService.java */
/* JADX INFO: loaded from: classes3.dex */
final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Queue f230a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f231b;
    private com.google.a.b.a.a.a.c c;
    private final ServiceConnection d;
    private BroadcastReceiver e;
    private Context f;
    private PackageInstaller g;
    private PackageInstaller.SessionCallback h;
    private volatile int i;

    v() {
    }

    v(byte[] bArr) {
        this();
        this.f230a = new ArrayDeque();
        this.i = 1;
        this.d = new w(this);
    }

    static /* synthetic */ Bundle k() {
        Bundle bundle = new Bundle();
        bundle.putCharSequence("package.name", "com.google.ar.core");
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void l(IBinder iBinder) {
        com.google.a.b.a.a.a.c cVarB = com.google.a.b.a.a.a.b.b(iBinder);
        Log.i("ARCore-InstallService", "Install service connected");
        this.c = cVarB;
        this.i = 3;
        Iterator it = this.f230a.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void m() {
        Log.i("ARCore-InstallService", "Install service disconnected");
        this.i = 1;
        this.c = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void o(Activity activity, t tVar) {
        boolean z;
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.google.ar.core"));
            k kVarA = k.a();
            Iterator<ResolveInfo> it = activity.getPackageManager().queryIntentActivities(intent, 65536).iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                ResolveInfo next = it.next();
                if (next.activityInfo != null && next.activityInfo.name.equals("com.sec.android.app.samsungapps.MainForChina")) {
                    z = true;
                    break;
                }
            }
            kVarA.f214b = !z;
            activity.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            tVar.b(new FatalException("Failed to launch installer.", e));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void p(Activity activity, Bundle bundle, t tVar) {
        PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable("resolution.intent");
        if (pendingIntent == null) {
            Log.e("ARCore-InstallService", "Did not get pending intent.");
            tVar.b(new FatalException("Installation intent failed to unparcel."));
        } else {
            try {
                activity.startIntentSenderForResult(pendingIntent.getIntentSender(), 1234, new Intent(activity, activity.getClass()), 0, 0, 0);
            } catch (IntentSender.SendIntentException e) {
                tVar.b(new FatalException("Installation Intent failed", e));
            }
        }
    }

    public synchronized void a(Context context) {
        this.f231b = context;
        if (context.bindService(new Intent("com.google.android.play.core.install.BIND_INSTALL_SERVICE").setPackage("com.android.vending"), this.d, 1)) {
            this.i = 2;
            return;
        }
        this.i = 1;
        this.f231b = null;
        Log.w("ARCore-InstallService", "bindService returned false.");
        context.unbindService(this.d);
    }

    public synchronized void b() {
        int i = this.i;
        int i2 = i - 1;
        if (i == 0) {
            throw null;
        }
        if (i2 == 1 || i2 == 2) {
            this.f231b.unbindService(this.d);
            this.f231b = null;
            this.i = 1;
        }
        BroadcastReceiver broadcastReceiver = this.e;
        if (broadcastReceiver != null) {
            this.f.unregisterReceiver(broadcastReceiver);
        }
        PackageInstaller.SessionCallback sessionCallback = this.h;
        if (sessionCallback != null) {
            this.g.unregisterSessionCallback(sessionCallback);
            this.h = null;
        }
    }

    public synchronized void c(Context context, i iVar) {
        try {
            n(new y(this, context, iVar));
        } catch (ae unused) {
            Log.e("ARCore-InstallService", "Play Store install service could not be bound.");
            iVar.a(ArCoreApk.Availability.UNKNOWN_ERROR);
        }
    }

    public void d(Activity activity, t tVar) {
        if (this.h == null) {
            this.g = activity.getPackageManager().getPackageInstaller();
            z zVar = new z(this, tVar);
            this.h = zVar;
            this.g.registerSessionCallback(zVar);
        }
        if (this.e == null) {
            aa aaVar = new aa(tVar);
            this.e = aaVar;
            this.f = activity;
            activity.registerReceiver(aaVar, new IntentFilter("com.google.android.play.core.install.ACTION_INSTALL_STATUS"));
        }
        try {
            n(new ad(this, activity, tVar));
        } catch (ae unused) {
            Log.w("ARCore-InstallService", "requestInstall bind failed, launching fullscreen.");
            o(activity, tVar);
        }
    }

    private synchronized void n(Runnable runnable) throws ae {
        int i = this.i;
        int i2 = i - 1;
        if (i == 0) {
            throw null;
        }
        if (i2 == 0) {
            throw new ae();
        }
        if (i2 == 1) {
            this.f230a.offer(runnable);
        } else {
            if (i2 != 2) {
                return;
            }
            runnable.run();
        }
    }
}
