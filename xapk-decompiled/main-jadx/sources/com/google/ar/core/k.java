package com.google.ar.core;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Log;
import com.google.ar.core.ArCoreApk;
import com.google.ar.core.exceptions.FatalException;
import com.google.ar.core.exceptions.UnavailableDeviceNotCompatibleException;
import com.google.ar.core.exceptions.UnavailableUserDeclinedInstallationException;

/* JADX INFO: compiled from: ArCoreApkImpl.java */
/* JADX INFO: loaded from: classes3.dex */
final class k extends ArCoreApk {
    private static final k c = new k();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Exception f213a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f214b = true;
    private boolean d;
    private int e;
    private long f;
    private ArCoreApk.Availability g;
    private boolean h;
    private v i;
    private boolean j;
    private boolean k;
    private int l;

    k() {
    }

    public static k a() {
        return c;
    }

    private final boolean g(Context context) {
        j(context);
        return this.k;
    }

    private static boolean h() {
        return true;
    }

    private static int i(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.google.ar.core", 4);
            int i = packageInfo.versionCode;
            if (i != 0) {
                return i;
            }
            if (packageInfo.services != null) {
                if (packageInfo.services.length != 0) {
                    return 0;
                }
            }
            return -1;
        } catch (PackageManager.NameNotFoundException unused) {
            return -1;
        }
    }

    private final synchronized void j(Context context) {
        if (this.j) {
            return;
        }
        PackageManager packageManager = context.getPackageManager();
        String packageName = context.getPackageName();
        try {
            Bundle bundle = packageManager.getApplicationInfo(packageName, 128).metaData;
            if (!bundle.containsKey("com.google.ar.core")) {
                throw new FatalException("Application manifest must contain meta-data com.google.ar.core");
            }
            String string = bundle.getString("com.google.ar.core");
            string.getClass();
            this.k = string.equals("required");
            if (!bundle.containsKey("com.google.ar.core.min_apk_version")) {
                throw new FatalException("Application manifest must contain meta-data com.google.ar.core.min_apk_version");
            }
            this.l = bundle.getInt("com.google.ar.core.min_apk_version");
            try {
                ActivityInfo[] activityInfoArr = packageManager.getPackageInfo(packageName, 1).activities;
                String canonicalName = InstallActivity.class.getCanonicalName();
                for (ActivityInfo activityInfo : activityInfoArr) {
                    if (canonicalName.equals(activityInfo.name)) {
                        this.j = true;
                        return;
                    }
                }
                String strValueOf = String.valueOf(canonicalName);
                throw new FatalException(strValueOf.length() != 0 ? "Application manifest must contain activity ".concat(strValueOf) : new String("Application manifest must contain activity "));
            } catch (PackageManager.NameNotFoundException e) {
                throw new FatalException("Could not load application package info", e);
            }
        } catch (PackageManager.NameNotFoundException e2) {
            throw new FatalException("Could not load application package metadata", e2);
        }
    }

    private static final ArCoreApk.InstallStatus k(Activity activity) throws UnavailableUserDeclinedInstallationException, UnavailableDeviceNotCompatibleException {
        PendingIntent pendingIntentA = ah.a(activity);
        if (pendingIntentA != null) {
            try {
                Log.i("ARCore-ArCoreApk", "Starting setup activity");
                activity.startIntentSender(pendingIntentA.getIntentSender(), null, 0, 0, 0);
                return ArCoreApk.InstallStatus.INSTALL_REQUESTED;
            } catch (IntentSender.SendIntentException | RuntimeException e) {
                Log.w("ARCore-ArCoreApk", "Setup activity launch failed", e);
            }
        }
        return ArCoreApk.InstallStatus.INSTALLED;
    }

    final synchronized v b(Context context) {
        if (this.i == null) {
            v vVar = new v(null);
            vVar.a(context.getApplicationContext());
            this.i = vVar;
        }
        return this.i;
    }

    final synchronized void c() {
        if (this.f213a == null) {
            this.e = 0;
        }
        this.d = false;
        v vVar = this.i;
        if (vVar != null) {
            vVar.b();
            this.i = null;
        }
    }

    @Override // com.google.ar.core.ArCoreApk
    public final ArCoreApk.Availability checkAvailability(Context context) {
        if (!h()) {
            return ArCoreApk.Availability.UNSUPPORTED_DEVICE_NOT_CAPABLE;
        }
        try {
            if (d(context)) {
                c();
                try {
                    return ah.a(context) != null ? ArCoreApk.Availability.SUPPORTED_APK_TOO_OLD : ArCoreApk.Availability.SUPPORTED_INSTALLED;
                } catch (UnavailableDeviceNotCompatibleException unused) {
                    return ArCoreApk.Availability.UNSUPPORTED_DEVICE_NOT_CAPABLE;
                } catch (UnavailableUserDeclinedInstallationException | RuntimeException unused2) {
                    return ArCoreApk.Availability.UNKNOWN_ERROR;
                }
            }
            synchronized (this) {
                ArCoreApk.Availability availability = this.g;
                if ((availability == null || availability.isUnknown()) && !this.h) {
                    this.h = true;
                    j jVar = new j(this);
                    if (d(context)) {
                        jVar.a(ArCoreApk.Availability.SUPPORTED_INSTALLED);
                    } else if (i(context) != -1) {
                        jVar.a(ArCoreApk.Availability.SUPPORTED_APK_TOO_OLD);
                    } else if (g(context)) {
                        jVar.a(ArCoreApk.Availability.SUPPORTED_NOT_INSTALLED);
                    } else {
                        b(context).c(context, jVar);
                    }
                }
                ArCoreApk.Availability availability2 = this.g;
                if (availability2 != null) {
                    return availability2;
                }
                if (this.h) {
                    return ArCoreApk.Availability.UNKNOWN_CHECKING;
                }
                Log.e("ARCore-ArCoreApk", "request not running but result is null?");
                return ArCoreApk.Availability.UNKNOWN_ERROR;
            }
        } catch (FatalException e) {
            Log.e("ARCore-ArCoreApk", "Error while checking app details and ARCore status", e);
            return ArCoreApk.Availability.UNKNOWN_ERROR;
        }
    }

    final boolean d(Context context) {
        j(context);
        return i(context) == 0 || i(context) >= this.l;
    }

    @Override // com.google.ar.core.ArCoreApk
    public final ArCoreApk.InstallStatus requestInstall(Activity activity, boolean z) throws UnavailableUserDeclinedInstallationException, UnavailableDeviceNotCompatibleException {
        return requestInstall(activity, z, g(activity) ? ArCoreApk.InstallBehavior.REQUIRED : ArCoreApk.InstallBehavior.OPTIONAL, g(activity) ? ArCoreApk.UserMessageType.APPLICATION : ArCoreApk.UserMessageType.USER_ALREADY_INFORMED);
    }

    @Override // com.google.ar.core.ArCoreApk
    public final ArCoreApk.InstallStatus requestInstall(Activity activity, boolean z, ArCoreApk.InstallBehavior installBehavior, ArCoreApk.UserMessageType userMessageType) throws UnavailableUserDeclinedInstallationException, UnavailableDeviceNotCompatibleException {
        if (!h()) {
            throw new UnavailableDeviceNotCompatibleException();
        }
        if (d(activity)) {
            c();
            return k(activity);
        }
        if (this.d) {
            return ArCoreApk.InstallStatus.INSTALL_REQUESTED;
        }
        Exception exc = this.f213a;
        if (exc != null) {
            if (!z) {
                if (exc instanceof UnavailableDeviceNotCompatibleException) {
                    throw ((UnavailableDeviceNotCompatibleException) exc);
                }
                if (exc instanceof UnavailableUserDeclinedInstallationException) {
                    throw ((UnavailableUserDeclinedInstallationException) exc);
                }
                if (exc instanceof RuntimeException) {
                    throw ((RuntimeException) exc);
                }
                throw new RuntimeException("Unexpected exception type", exc);
            }
            Log.w("ARCore-ArCoreApk", "Clearing previous failure: ", exc);
            this.f213a = null;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (jUptimeMillis - this.f > 5000) {
            this.e = 0;
        }
        int i = this.e + 1;
        this.e = i;
        this.f = jUptimeMillis;
        if (i > 2) {
            throw new FatalException("Requesting ARCore installation too rapidly.");
        }
        try {
            activity.startActivity(new Intent(activity, (Class<?>) InstallActivity.class).putExtra("message", userMessageType).putExtra("behavior", installBehavior));
            this.d = true;
            return ArCoreApk.InstallStatus.INSTALL_REQUESTED;
        } catch (ActivityNotFoundException e) {
            throw new FatalException("Failed to launch InstallActivity", e);
        }
    }
}
