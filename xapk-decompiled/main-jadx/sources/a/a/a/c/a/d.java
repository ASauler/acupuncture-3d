package a.a.a.c.a;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.media.Image;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Size;
import android.util.SizeF;
import android.view.Display;
import com.google.ar.core.Anchor;
import com.google.ar.core.ArCoreApk;
import com.google.ar.core.Camera;
import com.google.ar.core.CameraConfig;
import com.google.ar.core.CameraConfigFilter;
import com.google.ar.core.Config;
import com.google.ar.core.Frame;
import com.google.ar.core.HitResult;
import com.google.ar.core.Plane;
import com.google.ar.core.PointCloud;
import com.google.ar.core.Pose;
import com.google.ar.core.Session;
import com.google.ar.core.Trackable;
import com.google.ar.core.TrackingState;
import com.google.ar.core.exceptions.CameraNotAvailableException;
import com.google.ar.core.exceptions.UnavailableApkTooOldException;
import com.google.ar.core.exceptions.UnavailableArcoreNotInstalledException;
import com.google.ar.core.exceptions.UnavailableDeviceNotCompatibleException;
import com.google.ar.core.exceptions.UnavailableSdkTooOldException;
import com.google.ar.core.exceptions.UnavailableUserDeclinedInstallationException;
import com.wikitude.common.CallStatus;
import com.wikitude.common.camera.CameraSettings;
import com.wikitude.common.internal.CallStatusInternal;
import com.wikitude.common.internal.WikitudeErrorInternal;
import java.nio.FloatBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f17a = 1080;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f18b = 720;
    private static int c = 480;
    private static final String d = "d";
    private boolean B;
    private int D;
    private int E;
    private int F;
    private int e;
    private int f;
    private HandlerThread h;
    private Handler i;
    private final Activity m;
    private final Display n;
    private final a.a.a.c.a.c o;
    private Frame q;
    private Anchor r;
    private int g = -1;
    private Runnable j = new a();
    private final e k = new b();
    private final e l = new c();
    private Session p = null;
    private TrackingState s = TrackingState.STOPPED;
    private Config.FocusMode t = Config.FocusMode.AUTO;
    private final float[] u = new float[16];
    private final float[] v = new float[16];
    private final float[] w = new float[16];
    private final float[] x = new float[16];
    private final float[] y = new float[16];
    private float z = Float.NaN;
    private boolean A = false;
    private f C = f.UNKNOWN;

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f19a = -1;

        public a() {
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0024  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0033  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r3 = this;
                a.a.a.c.a.d r0 = a.a.a.c.a.d.this
                android.view.Display r0 = a.a.a.c.a.d.a(r0)
                int r0 = r0.getRotation()
                int r1 = r3.f19a
                if (r0 == r1) goto L3f
                r1 = 0
                if (r0 == 0) goto L24
                r2 = 1
                if (r0 == r2) goto L21
                r2 = 2
                if (r0 == r2) goto L1e
                r2 = 3
                if (r0 == r2) goto L1b
                goto L24
            L1b:
                r2 = 1132920832(0x43870000, float:270.0)
                goto L25
            L1e:
                r2 = 1127481344(0x43340000, float:180.0)
                goto L25
            L21:
                r2 = 1119092736(0x42b40000, float:90.0)
                goto L25
            L24:
                r2 = r1
            L25:
                r3.f19a = r0
                a.a.a.c.a.d r0 = a.a.a.c.a.d.this
                int r0 = a.a.a.c.a.d.b(r0)
                float r0 = (float) r0
                float r0 = r0 - r2
                int r1 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r1 >= 0) goto L36
                r1 = 1135869952(0x43b40000, float:360.0)
                float r0 = r0 + r1
            L36:
                a.a.a.c.a.d r1 = a.a.a.c.a.d.this
                a.a.a.c.a.c r1 = a.a.a.c.a.d.c(r1)
                r1.a(r0)
            L3f:
                a.a.a.c.a.d r0 = a.a.a.c.a.d.this
                android.os.Handler r0 = a.a.a.c.a.d.d(r0)
                r1 = 50
                r0.postDelayed(r3, r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: a.a.a.c.a.d.a.run():void");
        }
    }

    public class b implements e {
        public b() {
        }

        @Override // a.a.a.c.a.d.e
        public void a(HitResult hitResult) {
            d.this.r = hitResult.createAnchor();
        }
    }

    public class c implements e {
        public c() {
        }

        @Override // a.a.a.c.a.d.e
        public void a(HitResult hitResult) {
        }
    }

    /* JADX INFO: renamed from: a.a.a.c.a.d$d, reason: collision with other inner class name */
    public static /* synthetic */ class C0002d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f23a;

        static {
            CameraSettings.CameraFocusMode.values();
            int[] iArr = new int[3];
            f23a = iArr;
            try {
                iArr[CameraSettings.CameraFocusMode.CONTINUOUS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f23a[CameraSettings.CameraFocusMode.ONCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f23a[CameraSettings.CameraFocusMode.OFF.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public interface e {
        void a(HitResult hitResult);
    }

    public enum f {
        UNKNOWN,
        STARTED,
        STOPPED
    }

    public d(Activity activity, a.a.a.c.a.c cVar) {
        this.m = activity;
        this.o = cVar;
        this.n = Build.VERSION.SDK_INT >= 30 ? activity.getDisplay() : activity.getWindowManager().getDefaultDisplay();
    }

    private CameraConfig a(int i) {
        CameraConfig cameraConfig = this.p.getCameraConfig();
        List<CameraConfig> supportedCameraConfigs = this.p.getSupportedCameraConfigs(new CameraConfigFilter(this.p));
        if (cameraConfig.getImageSize().getHeight() == i) {
            return cameraConfig;
        }
        for (int i2 = 0; i2 < supportedCameraConfigs.size(); i2++) {
            if (supportedCameraConfigs.get(i2).getImageSize().getHeight() == i) {
                return supportedCameraConfigs.get(i2);
            }
        }
        return cameraConfig;
    }

    private CallStatus a(e eVar) {
        Frame frame = this.q;
        if (frame == null) {
            return CallStatusInternal.error(new WikitudeErrorInternal(a.a.a.c.a.a.NotInitialized.a(), a.a.a.c.a.a.c, "ARCore did not start yet."));
        }
        for (HitResult hitResult : frame.hitTest(this.D / 2.0f, this.E / 2.0f)) {
            Trackable trackable = hitResult.getTrackable();
            if ((trackable instanceof Plane) && ((Plane) trackable).isPoseInPolygon(hitResult.getHitPose())) {
                eVar.a(hitResult);
                return CallStatusInternal.success();
            }
        }
        return CallStatusInternal.error(new WikitudeErrorInternal(a.a.a.c.a.a.NoPlaneFound.a(), a.a.a.c.a.a.c, "Could not find a plane."));
    }

    private Config c() {
        Config config = new Config(this.p);
        config.setLightEstimationMode(Config.LightEstimationMode.DISABLED);
        config.setPlaneFindingMode(Config.PlaneFindingMode.HORIZONTAL);
        config.setUpdateMode(Config.UpdateMode.LATEST_CAMERA_IMAGE);
        config.setFocusMode(this.t);
        return config;
    }

    public CallStatus a() {
        return a(this.k);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.wikitude.common.CallStatus a(com.wikitude.common.camera.CameraSettings.CameraFocusMode r3) {
        /*
            r2 = this;
            com.google.ar.core.Config$FocusMode r0 = r2.t
            int r3 = r3.ordinal()
            if (r3 == 0) goto L18
            r1 = 1
            if (r3 == r1) goto Lf
            r1 = 2
            if (r3 == r1) goto L18
            goto L22
        Lf:
            com.google.ar.core.Config$FocusMode r3 = r2.t
            com.google.ar.core.Config$FocusMode r1 = com.google.ar.core.Config.FocusMode.FIXED
            if (r3 != r1) goto L22
            com.google.ar.core.Config$FocusMode r3 = com.google.ar.core.Config.FocusMode.AUTO
            goto L20
        L18:
            com.google.ar.core.Config$FocusMode r3 = r2.t
            com.google.ar.core.Config$FocusMode r1 = com.google.ar.core.Config.FocusMode.AUTO
            if (r3 != r1) goto L22
            com.google.ar.core.Config$FocusMode r3 = com.google.ar.core.Config.FocusMode.FIXED
        L20:
            r2.t = r3
        L22:
            com.google.ar.core.Config$FocusMode r3 = r2.t
            if (r3 == r0) goto L49
            a.a.a.c.a.d$f r3 = r2.C
            a.a.a.c.a.d$f r0 = a.a.a.c.a.d.f.STARTED
            if (r3 != r0) goto L49
            com.google.ar.core.Session r3 = r2.p     // Catch: java.lang.Throwable -> L42
            com.google.ar.core.Config r3 = r3.getConfig()     // Catch: java.lang.Throwable -> L42
            com.google.ar.core.Config$FocusMode r0 = r2.t     // Catch: java.lang.Throwable -> L42
            r3.setFocusMode(r0)     // Catch: java.lang.Throwable -> L42
            com.google.ar.core.Session r0 = r2.p     // Catch: java.lang.Throwable -> L42
            r0.configure(r3)     // Catch: java.lang.Throwable -> L42
            com.google.ar.core.Session r3 = r2.p     // Catch: java.lang.Throwable -> L42
            r3.resume()     // Catch: java.lang.Throwable -> L42
            goto L49
        L42:
            java.lang.String r3 = a.a.a.c.a.d.d
            java.lang.String r0 = "Failed to acquire Camera when resuming ARCore."
            a.a.a.e.a.b.a(r3, r0)
        L49:
            com.wikitude.common.CallStatus r3 = com.wikitude.common.internal.CallStatusInternal.success()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: a.a.a.c.a.d.a(com.wikitude.common.camera.CameraSettings$CameraFocusMode):com.wikitude.common.CallStatus");
    }

    public void a(boolean z) {
        Anchor anchor;
        if (!z && (anchor = this.r) != null) {
            anchor.detach();
        }
        this.B = z;
    }

    public boolean a(int i, int i2) {
        Session session = this.p;
        if (session == null) {
            return false;
        }
        this.D = i;
        this.E = i2;
        if (i <= 0 || i2 <= 0) {
            return false;
        }
        session.setDisplayGeometry(this.n.getRotation(), i, i2);
        return true;
    }

    public float[] a(float f2, float f3) {
        String str;
        String str2;
        Frame frame = this.q;
        if (frame == null || frame.getCamera().getTrackingState() != TrackingState.TRACKING) {
            str = d;
            str2 = "convertScreenCoordinateToPointCloudCoordinate: hit test is not available";
        } else {
            List<HitResult> listHitTest = this.q.hitTest(f2, f3);
            if (listHitTest.size() > 0) {
                Pose hitPose = listHitTest.get(0).getHitPose();
                return new float[]{hitPose.tx(), hitPose.ty(), hitPose.tz()};
            }
            str = d;
            str2 = "convertScreenCoordinateToPointCloudCoordinate: no hit result found";
        }
        a.a.a.e.a.b.a(str, str2);
        return null;
    }

    public CallStatus b() {
        return a(this.l);
    }

    public boolean b(int i) {
        Session session = this.p;
        if (session == null) {
            return false;
        }
        this.F = i;
        session.setCameraTextureName(i);
        return true;
    }

    public float d() {
        return this.z;
    }

    public float[] e() {
        return this.x;
    }

    public boolean f() {
        return this.B;
    }

    public TrackingState g() {
        return this.s;
    }

    public float[] h() {
        return this.v;
    }

    public void i() {
        Image.Plane[] planes;
        try {
            if (this.C != f.STARTED) {
                a.a.a.e.a.b.a(d, "update: Session is paused.");
                return;
            }
            Frame frameUpdate = this.p.update();
            this.q = frameUpdate;
            Camera camera = frameUpdate.getCamera();
            Image imageAcquireCameraImage = this.q.acquireCameraImage();
            if (imageAcquireCameraImage != null && (planes = imageAcquireCameraImage.getPlanes()) != null) {
                int pixelStride = planes[1].getPixelStride();
                int rowStride = planes[1].getRowStride();
                int rowStride2 = planes[0].getRowStride();
                this.e = imageAcquireCameraImage.getWidth();
                int height = imageAcquireCameraImage.getHeight();
                this.f = height;
                this.o.a(this.e, height, imageAcquireCameraImage.getTimestamp(), planes[0].getBuffer(), planes[1].getBuffer(), planes[2].getBuffer(), rowStride2, rowStride, pixelStride, camera.getImageIntrinsics().getFocalLength(), camera.getImageIntrinsics().getPrincipalPoint());
                imageAcquireCameraImage.close();
            }
            if (!this.A && this.D != 0 && this.E != 0 && this.e != 0 && this.f != 0) {
                camera.getProjectionMatrix(this.u, 0, 0.05f, 5000.0f);
                CameraManager cameraManager = (CameraManager) this.m.getSystemService("camera");
                for (String str : cameraManager.getCameraIdList()) {
                    CameraCharacteristics cameraCharacteristics = cameraManager.getCameraCharacteristics(str);
                    if (((Integer) cameraCharacteristics.get(CameraCharacteristics.LENS_FACING)).intValue() == 1) {
                        float fA = a.a.a.d.a.f.a(((SizeF) cameraCharacteristics.get(CameraCharacteristics.SENSOR_INFO_PHYSICAL_SIZE)).getWidth(), ((float[]) cameraCharacteristics.get(CameraCharacteristics.LENS_INFO_AVAILABLE_FOCAL_LENGTHS))[0]);
                        Size size = ((StreamConfigurationMap) cameraCharacteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP)).getOutputSizes(35)[0];
                        this.z = a.a.a.d.a.f.a(fA, 0.0f, new a.a.a.l.a.b(this.e, this.f), new a.a.a.l.a.b(size.getWidth(), size.getHeight()));
                        this.A = true;
                        this.g = ((Integer) cameraCharacteristics.get(CameraCharacteristics.SENSOR_ORIENTATION)).intValue();
                        this.i.post(this.j);
                        return;
                    }
                }
            }
            camera.getPose().inverse().toMatrix(this.v, 0);
            if (this.B) {
                Anchor anchor = this.r;
                if (anchor == null) {
                    a.a.a.e.a.b.a(d, "PrepareUpdate: Tracking Anchor is not set.");
                    return;
                }
                TrackingState trackingState = anchor.getTrackingState();
                TrackingState trackingState2 = TrackingState.TRACKING;
                if (trackingState != trackingState2) {
                    if (this.s == trackingState2) {
                        this.s = TrackingState.STOPPED;
                    }
                    a.a.a.e.a.b.a(d, "PrepareUpdate: Tracking Anchor is not tracking.");
                    return;
                }
                if (this.s != trackingState2) {
                    a.a.a.e.a.b.a(d, "PrepareUpdate: started tracking.");
                    this.s = TrackingState.TRACKING;
                }
                camera.getPose().inverse().toMatrix(this.w, 0);
                this.r.getPose().toMatrix(this.x, 0);
                this.r.getPose().inverse().toMatrix(this.y, 0);
                PointCloud pointCloudAcquirePointCloud = this.q.acquirePointCloud();
                FloatBuffer points = pointCloudAcquirePointCloud.getPoints();
                this.o.a(points, points.remaining(), this.y);
                pointCloudAcquirePointCloud.release();
            }
        } catch (Throwable th) {
            a.a.a.e.a.b.b(d, "prepare update: ", th);
        }
    }

    public void j() {
        if (this.C == f.STARTED) {
            this.p.pause();
        }
        try {
            this.p = new Session(this.m);
        } catch (UnavailableApkTooOldException | UnavailableArcoreNotInstalledException | UnavailableDeviceNotCompatibleException | UnavailableSdkTooOldException unused) {
        }
        this.p.configure(c());
        this.p.setCameraTextureName(this.F);
        this.p.setDisplayGeometry(this.n.getRotation(), this.D, this.E);
        this.p.setCameraConfig(a(f17a));
        if (this.C == f.STARTED) {
            try {
                this.p.resume();
            } catch (CameraNotAvailableException | SecurityException unused2) {
                a.a.a.e.a.b.a(d, "Failed to acquire Camera when resuming ARCore.");
            }
        }
        this.q = null;
        this.r = null;
        this.s = TrackingState.STOPPED;
    }

    public void k() {
        CallStatus callStatusA = a.a.a.d.a.f.a(this.m);
        if (!callStatusA.isSuccess()) {
            this.o.a(callStatusA);
            return;
        }
        try {
            ArCoreApk.InstallStatus installStatusRequestInstall = ArCoreApk.getInstance().requestInstall(this.m, false);
            if (this.p == null && installStatusRequestInstall == ArCoreApk.InstallStatus.INSTALLED) {
                try {
                    this.p = new Session(this.m);
                } catch (UnavailableApkTooOldException | UnavailableArcoreNotInstalledException | UnavailableDeviceNotCompatibleException | UnavailableSdkTooOldException unused) {
                }
                this.p.configure(c());
                this.p.setCameraConfig(a(f17a));
            }
            Session session = this.p;
            if (session != null) {
                try {
                    session.resume();
                    if (this.h == null) {
                        HandlerThread handlerThread = new HandlerThread("FrameInputPluginModule");
                        this.h = handlerThread;
                        handlerThread.start();
                        this.i = new Handler(this.h.getLooper());
                    }
                    if (this.g != -1) {
                        this.i.post(this.j);
                    }
                } catch (CameraNotAvailableException | SecurityException unused2) {
                    a.a.a.e.a.b.a(d, "Failed to acquire Camera when resuming ARCore.");
                }
                this.C = f.STARTED;
            }
        } catch (UnavailableDeviceNotCompatibleException unused3) {
        } catch (UnavailableUserDeclinedInstallationException unused4) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this.m);
            builder.setTitle("Installation cancelled");
            builder.setMessage("ARCore APK installation cancelled. The application will not work correctly.");
            builder.setPositiveButton("OK", (DialogInterface.OnClickListener) null);
            builder.setCancelable(false);
            builder.create().show();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void l() {
        if (this.p == null) {
            return;
        }
        HandlerThread handlerThread = this.h;
        if (handlerThread != null) {
            handlerThread.quitSafely();
            try {
                try {
                    this.h.join();
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            } finally {
                this.h = null;
                this.i = null;
            }
        }
        this.p.pause();
        this.C = f.STOPPED;
    }

    public void m() {
    }
}
