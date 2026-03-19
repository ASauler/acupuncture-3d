package a.a.a.f.a;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.wikitude.common.CallStatus;
import com.wikitude.common.internal.CallStatusInternal;
import com.wikitude.common.internal.WikitudeErrorInternal;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class b implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g f58a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SensorManager f59b;
    private f c;
    private ScheduledExecutorService d;
    private c e;
    private boolean f;
    private final SensorEventListener g = new a();
    private final SensorEventListener h = new C0005b();

    public class a implements SensorEventListener {
        public a() {
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            b.this.e.b(sensorEvent.values);
        }
    }

    /* JADX INFO: renamed from: a.a.a.f.a.b$b, reason: collision with other inner class name */
    public class C0005b implements SensorEventListener {
        public C0005b() {
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
            b.this.c.a(i);
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            b.this.e.a(sensorEvent.values);
        }
    }

    public class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final a.a.a.f.a.c f62a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final float[] f63b;
        private final float[] c;
        private final float[] d;
        private final float[] e;
        private float[] f;
        private float[] g;

        private c() {
            this.f62a = new a.a.a.f.a.c(25);
            this.f63b = new float[16];
            this.c = new float[16];
            this.d = new float[3];
            this.e = new float[3];
        }

        public /* synthetic */ c(b bVar, a aVar) {
            this();
        }

        public synchronized void a(float[] fArr) {
            this.f = fArr;
        }

        public synchronized void b(float[] fArr) {
            this.g = fArr;
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            float[] fArr = this.f;
            if (fArr != null && this.g != null) {
                this.f62a.a(fArr, this.d);
                this.f62a.a(this.g, this.e);
                SensorManager.getRotationMatrix(this.f63b, this.c, this.d, this.e);
                b.this.c.a(b.this.f58a, this.f63b);
            }
        }
    }

    public b(g gVar) {
        this.f58a = gVar;
    }

    @Override // a.a.a.f.a.e
    public CallStatus a(int i) {
        SensorManager sensorManager = this.f59b;
        boolean zRegisterListener = sensorManager.registerListener(this.g, sensorManager.getDefaultSensor(2), i);
        SensorManager sensorManager2 = this.f59b;
        boolean zRegisterListener2 = sensorManager2.registerListener(this.h, sensorManager2.getDefaultSensor(1), i);
        if (zRegisterListener && zRegisterListener2) {
            ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
            this.d = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
            scheduledExecutorServiceNewSingleThreadScheduledExecutor.scheduleAtFixedRate(this.e, 0L, i, TimeUnit.MILLISECONDS);
            this.f = true;
            return CallStatusInternal.success();
        }
        String str = !zRegisterListener ? "Unable to register Service, the device may not support the sensor type TYPE_MAGNETIC_FIELD." : "";
        if (!zRegisterListener2) {
            str = str + "Unable to register Service, the device may not support the sensor type TYPE_ACCELEROMETER.";
        }
        c();
        return CallStatusInternal.error(new WikitudeErrorInternal(a.a.a.f.a.a.UnableToRegisterService.a(), a.a.a.f.a.a.f, str));
    }

    @Override // a.a.a.f.a.e
    public void a(SensorManager sensorManager, f fVar) {
        this.f59b = sensorManager;
        this.c = fVar;
        this.e = new c(this, null);
    }

    @Override // a.a.a.f.a.e
    public boolean a() {
        return this.f;
    }

    @Override // a.a.a.f.a.e
    public void b() {
    }

    @Override // a.a.a.f.a.e
    public CallStatus c() {
        ScheduledExecutorService scheduledExecutorService = this.d;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
        }
        this.f59b.unregisterListener(this.g);
        this.f59b.unregisterListener(this.h);
        this.f = false;
        return CallStatusInternal.success();
    }
}
