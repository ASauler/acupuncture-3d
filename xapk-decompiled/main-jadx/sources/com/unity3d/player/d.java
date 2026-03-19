package com.unity3d.player;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
class d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected h f389b;
    protected String e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected t f388a = null;
    protected Context c = null;
    protected String d = null;

    d(String str, h hVar) {
        this.e = str;
        this.f389b = hVar;
    }

    protected void reportError(String str) {
        h hVar = this.f389b;
        if (hVar != null) {
            hVar.reportError(this.e + " Error [" + this.d + "]", str);
        } else {
            i.Log(6, this.e + " Error [" + this.d + "]: " + str);
        }
    }

    protected void runOnUiThread(Runnable runnable) {
        Context context = this.c;
        if (context instanceof Activity) {
            ((Activity) context).runOnUiThread(runnable);
        } else {
            i.Log(5, "Not running " + this.e + " from an Activity; Ignoring execution request...");
        }
    }

    protected boolean runOnUiThreadWithSync(final Runnable runnable) {
        boolean z = true;
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            runnable.run();
            return true;
        }
        final Semaphore semaphore = new Semaphore(0);
        runOnUiThread(new Runnable() { // from class: com.unity3d.player.d.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    try {
                        runnable.run();
                    } catch (Exception e) {
                        d.this.reportError("Exception unloading Google VR on UI Thread. " + e.getLocalizedMessage());
                    }
                } finally {
                    semaphore.release();
                }
            }
        });
        try {
            if (!semaphore.tryAcquire(4L, TimeUnit.SECONDS)) {
                reportError("Timeout waiting for vr state change!");
                z = false;
            }
            return z;
        } catch (InterruptedException e) {
            reportError("Interrupted while trying to acquire sync lock. " + e.getLocalizedMessage());
            return false;
        }
    }
}
