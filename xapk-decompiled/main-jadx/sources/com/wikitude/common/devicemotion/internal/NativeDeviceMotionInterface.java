package com.wikitude.common.devicemotion.internal;

import a.a.a.f.a.a;
import a.a.a.f.a.e;
import a.a.a.f.a.f;
import a.a.a.f.a.g;
import a.a.a.f.a.h;
import android.content.Context;
import android.content.pm.PackageManager;
import android.hardware.SensorManager;
import com.wikitude.common.CallStatus;
import com.wikitude.common.CallValue;
import com.wikitude.common.internal.CallStatusInternal;
import com.wikitude.common.internal.WikitudeErrorInternal;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class NativeDeviceMotionInterface implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f454a = 16;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f455b;
    private final SensorManager c;
    private final PackageManager d;
    private final Map<g, e> e = new HashMap();
    private final Map<g, CallStatus> f = new HashMap();
    private final CallStatus g;

    public NativeDeviceMotionInterface(Context context, long j) {
        this.f455b = j;
        SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
        this.c = sensorManager;
        PackageManager packageManager = context.getPackageManager();
        this.d = packageManager;
        this.g = packageManager == null ? CallStatusInternal.error(new WikitudeErrorInternal(a.UnableToGetPackageManager.a(), a.f, "Android PackageManager is not available.")) : sensorManager == null ? CallStatusInternal.error(new WikitudeErrorInternal(a.UnableToGetSensorManager.a(), a.f, "Android SensorManager is not available.")) : CallStatusInternal.success();
    }

    private synchronized void a(g gVar) {
        if (this.e.get(gVar) == null || this.f.get(gVar) != null) {
            this.f.remove(gVar);
            if (!this.g.isSuccess()) {
                this.f.put(gVar, CallStatusInternal.error(new WikitudeErrorInternal(a.InvalidState.a(), a.f, "Unable to setup Sensors.", this.g.getError())));
                return;
            }
            CallValue<e> callValueA = h.a(gVar, this.d);
            if (!callValueA.isSuccess()) {
                this.f.put(gVar, CallStatusInternal.error(callValueA.getError()));
            } else {
                this.e.put(gVar, callValueA.getValue());
                callValueA.getValue().a(this.c, this);
            }
        }
    }

    private synchronized CallStatus b(g gVar) {
        CallStatus callStatus = this.f.get(gVar);
        if (callStatus != null) {
            return callStatus;
        }
        e eVar = this.e.get(gVar);
        if (eVar == null) {
            return CallStatusInternal.error(new WikitudeErrorInternal(a.InvalidState.a(), a.f, "Unable to start Sensors."));
        }
        if (eVar.a()) {
            return CallStatusInternal.success();
        }
        return eVar.a(16);
    }

    private synchronized CallStatus c(g gVar) {
        e eVar = this.e.get(gVar);
        if (eVar == null) {
            return CallStatusInternal.error(new WikitudeErrorInternal(a.InvalidState.a(), a.f, "Unable to stop Sensors."));
        }
        if (eVar.a()) {
            return eVar.c();
        }
        return CallStatusInternal.success();
    }

    private synchronized void d(g gVar) {
        e eVar = this.e.get(gVar);
        if (eVar == null) {
            return;
        }
        if (eVar.a()) {
            eVar.c();
        }
        this.f.remove(gVar);
        eVar.b();
    }

    private void setupOrientationEvent() {
        a(g.ORIENTATION);
    }

    private void setupRotationEvent() {
        a(g.ROTATION);
    }

    private CallStatus startOrientationEvent() {
        return b(g.ORIENTATION);
    }

    private CallStatus startRotationEvent() {
        return b(g.ROTATION);
    }

    private CallStatus stopOrientationEvent() {
        return c(g.ORIENTATION);
    }

    private CallStatus stopRotationEvent() {
        return c(g.ROTATION);
    }

    private void teardownOrientationEvent() {
        d(g.ORIENTATION);
    }

    private void teardownRotationEvent() {
        d(g.ROTATION);
    }

    @Override // a.a.a.f.a.f
    public void a(int i) {
        nativeNotifyCompassAccuracyChanged(this.f455b, i);
    }

    @Override // a.a.a.f.a.f
    public void a(g gVar, float[] fArr) {
        nativeNotifyNewSensorEvent(this.f455b, gVar.ordinal(), fArr);
    }

    public native void nativeNotifyCompassAccuracyChanged(long j, int i);

    public native void nativeNotifyNewSensorEvent(long j, int i, float[] fArr);
}
