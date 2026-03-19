package cn.voidar.engine;

import android.app.Activity;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import java.util.concurrent.Semaphore;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SensorManager f150b;
    private boolean c = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Semaphore f149a = new Semaphore(1);
    private final SensorEventListener d = new SensorEventListener() { // from class: cn.voidar.engine.c.1
        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            int type;
            float f;
            float f2;
            float f3;
            double d = sensorEvent.timestamp * 1.0E-9d;
            if (AndroidDevice.sensorOrientation != 0) {
                float[] fArr = sensorEvent.values;
                c.this.a(fArr);
                type = sensorEvent.sensor.getType();
                f = fArr[0];
                f2 = fArr[1];
                f3 = fArr[2];
            } else {
                type = sensorEvent.sensor.getType();
                f = sensorEvent.values[0];
                f2 = sensorEvent.values[1];
                f3 = sensorEvent.values[2];
            }
            VoidARNative.onSensorChanged(type, d, f, f2, f3, 0.0f);
        }
    };
    private final SensorEventListener e = new SensorEventListener() { // from class: cn.voidar.engine.c.2
        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            int type;
            float f;
            float f2;
            float f3;
            double d = sensorEvent.timestamp * 1.0E-9d;
            if (AndroidDevice.sensorOrientation != 0) {
                float[] fArr = sensorEvent.values;
                c.this.a(fArr);
                type = sensorEvent.sensor.getType();
                f = fArr[0];
                f2 = fArr[1];
                f3 = fArr[2];
            } else {
                type = sensorEvent.sensor.getType();
                f = sensorEvent.values[0];
                f2 = sensorEvent.values[1];
                f3 = sensorEvent.values[2];
            }
            VoidARNative.onSensorChanged(type, d, f, f2, f3, 0.0f);
        }
    };
    private final SensorEventListener f = new SensorEventListener() { // from class: cn.voidar.engine.c.3
        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            int type;
            float f;
            float f2;
            float f3;
            double d = sensorEvent.timestamp * 1.0E-9d;
            if (AndroidDevice.sensorOrientation != 0) {
                float[] fArr = sensorEvent.values;
                c.this.a(fArr);
                type = sensorEvent.sensor.getType();
                f = fArr[0];
                f2 = fArr[1];
                f3 = fArr[2];
            } else {
                type = sensorEvent.sensor.getType();
                f = sensorEvent.values[0];
                f2 = sensorEvent.values[1];
                f3 = sensorEvent.values[2];
            }
            VoidARNative.onSensorChanged(type, d, f, f2, f3, 0.0f);
        }
    };

    public c(Activity activity) {
        this.f150b = (SensorManager) activity.getSystemService("sensor");
    }

    private void d() {
        this.f150b.unregisterListener(this.d);
        this.f150b.unregisterListener(this.e);
        this.f150b.unregisterListener(this.f);
    }

    public void a() {
        if (this.c) {
            return;
        }
        this.c = true;
        c();
    }

    protected void a(float[] fArr) {
        int i = (AndroidDevice.AXIS_X & 3) - 1;
        int i2 = (AndroidDevice.AXIS_Y & 3) - 1;
        int i3 = (AndroidDevice.AXIS_Z & 3) - 1;
        boolean z = AndroidDevice.AXIS_X >= 128;
        int i4 = AndroidDevice.AXIS_Y;
        int i5 = AndroidDevice.AXIS_Z;
        float f = z ? -fArr[i] : fArr[i];
        float f2 = z ? -fArr[i2] : fArr[i2];
        float f3 = z ? -fArr[i3] : fArr[i3];
        fArr[0] = f;
        fArr[1] = f2;
        fArr[2] = f3;
    }

    public void b() {
        if (this.c) {
            this.c = false;
            d();
        }
    }

    public void c() {
        Sensor defaultSensor = this.f150b.getDefaultSensor(1);
        Sensor defaultSensor2 = this.f150b.getDefaultSensor(4);
        this.f150b.registerListener(this.d, defaultSensor, AndroidDevice.samplingPeriodUs);
        this.f150b.registerListener(this.e, defaultSensor2, AndroidDevice.samplingPeriodUs);
        this.f150b.registerListener(this.f, this.f150b.getDefaultSensor(9), AndroidDevice.samplingPeriodUs);
    }
}
