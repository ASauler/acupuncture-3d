package a.a.a.f.a;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.wikitude.common.CallStatus;
import com.wikitude.common.internal.CallStatusInternal;
import com.wikitude.common.internal.WikitudeErrorInternal;

/* JADX INFO: loaded from: classes.dex */
public final class d implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SensorManager f65a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private f f66b;
    private boolean c;
    private final SensorEventListener d = new a();

    public class a implements SensorEventListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final float[] f67a = new float[16];

        public a() {
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
            d.this.f66b.a(i);
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            SensorManager.getRotationMatrixFromVector(this.f67a, sensorEvent.values);
            d.this.f66b.a(g.ROTATION, this.f67a);
        }
    }

    @Override // a.a.a.f.a.e
    public CallStatus a(int i) {
        SensorManager sensorManager = this.f65a;
        if (!sensorManager.registerListener(this.d, sensorManager.getDefaultSensor(15), i)) {
            return CallStatusInternal.error(new WikitudeErrorInternal(a.a.a.f.a.a.UnableToRegisterService.a(), a.a.a.f.a.a.f, "Unable to register Service, the device may not support the sensor type GAME_ROTATION_VECTOR."));
        }
        this.c = true;
        return CallStatusInternal.success();
    }

    @Override // a.a.a.f.a.e
    public void a(SensorManager sensorManager, f fVar) {
        this.f65a = sensorManager;
        this.f66b = fVar;
    }

    @Override // a.a.a.f.a.e
    public boolean a() {
        return this.c;
    }

    @Override // a.a.a.f.a.e
    public void b() {
    }

    @Override // a.a.a.f.a.e
    public CallStatus c() {
        this.c = false;
        this.f65a.unregisterListener(this.d);
        return CallStatusInternal.success();
    }
}
