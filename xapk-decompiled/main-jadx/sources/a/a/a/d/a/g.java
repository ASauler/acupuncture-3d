package a.a.a.d.a;

import a.a.a.d.a.i;
import android.graphics.PointF;
import android.graphics.Rect;
import android.hardware.Camera;
import androidx.core.app.NotificationManagerCompat;
import com.wikitude.common.CallStatus;
import com.wikitude.common.CallValue;
import com.wikitude.common.WikitudeError;
import com.wikitude.common.camera.CameraSettings;
import com.wikitude.common.camera.internal.AndroidCamera;
import com.wikitude.common.internal.CallStatusInternal;
import com.wikitude.common.internal.CallValueInternal;
import com.wikitude.common.internal.WikitudeErrorInternal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlinx.coroutines.DebugKt;

/* JADX INFO: loaded from: classes.dex */
public class g implements d, c, Camera.ErrorCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f34a = "DeviceCamera";
    private final a.a.a.d.a.b c;
    private i f;
    private Camera g;
    private AndroidCamera i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private CameraSettings.CameraFocusMode f35b = CameraSettings.CameraFocusMode.CONTINUOUS;
    private CameraSettings.TorchMode d = CameraSettings.TorchMode.OFF;
    private float e = 1.0f;
    private boolean h = false;

    public class a implements i.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ a.a.a.d.a.b f36a;

        public a(a.a.a.d.a.b bVar) {
            this.f36a = bVar;
        }

        @Override // a.a.a.d.a.i.a
        public void a(a.a.a.d.a.a aVar, String str) {
            g.this.f();
            this.f36a.a(aVar, str);
        }
    }

    public static /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f38a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f39b;

        static {
            CameraSettings.TorchMode.values();
            int[] iArr = new int[2];
            f39b = iArr;
            try {
                iArr[CameraSettings.TorchMode.OFF.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f39b[CameraSettings.TorchMode.ON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            CameraSettings.CameraFocusMode.values();
            int[] iArr2 = new int[3];
            f38a = iArr2;
            try {
                iArr2[CameraSettings.CameraFocusMode.OFF.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f38a[CameraSettings.CameraFocusMode.CONTINUOUS.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f38a[CameraSettings.CameraFocusMode.ONCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public g(a.a.a.d.a.b bVar) {
        this.c = bVar;
        this.f = new i(bVar, new a(bVar));
    }

    private a.a.a.l.a.b b(AndroidCamera androidCamera) {
        a.a.a.l.a.b bVarA = f.a(androidCamera.getCameraResolution());
        List<Camera.Size> supportedPreviewSizes = this.g.getParameters().getSupportedPreviewSizes();
        a.a.a.l.a.b bVar = null;
        if (supportedPreviewSizes != null) {
            for (Camera.Size size : supportedPreviewSizes) {
                if (size.width == bVarA.b() && size.height == bVarA.a()) {
                    return bVarA;
                }
                bVar = bVar == null ? new a.a.a.l.a.b(size.width, size.height) : f.a(bVar, bVarA, new a.a.a.l.a.b(size.width, size.height));
            }
        }
        return bVar;
    }

    private void n() {
        a.a.a.l.a.b bVar;
        Camera camera = this.g;
        if (camera != null) {
            if (camera.getParameters().getSupportedPictureSizes() == null) {
                bVar = this.f.a();
            } else {
                Camera.Size size = this.g.getParameters().getSupportedPictureSizes().get(0);
                bVar = new a.a.a.l.a.b(size.width, size.height);
            }
            this.c.a(f.a(this.g.getParameters().getHorizontalViewAngle(), this.e * 100.0f, this.f.a(), bVar));
        }
    }

    private Camera o() {
        int i = Integer.parseInt(this.i.getId());
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        Camera.getCameraInfo(i, cameraInfo);
        this.c.b(cameraInfo.orientation);
        return Camera.open(i);
    }

    @Override // a.a.a.d.a.c
    public CallStatus a(float f) {
        return CallStatusInternal.error(new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingNotSupported.a(), a.a.a.d.a.a.k, "Manual focus is only supported with camera2."));
    }

    @Override // a.a.a.d.a.c
    public CallStatus a(PointF pointF) {
        Camera camera = this.g;
        if (camera == null) {
            return CallStatusInternal.error(new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingUnavailableWhenNotStarted.a(), a.a.a.d.a.a.k, "setFocusPointOfInterest is not available when the camera is not started."));
        }
        Camera.Parameters parameters = camera.getParameters();
        if (parameters.getMaxNumFocusAreas() < 1) {
            return CallStatusInternal.error(new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingNotSupported.a(), a.a.a.d.a.a.k, "setFocusPointOfInterest is not supported on this device."));
        }
        this.g.cancelAutoFocus();
        Rect rectA = f.a(pointF, new Rect(NotificationManagerCompat.IMPORTANCE_UNSPECIFIED, NotificationManagerCompat.IMPORTANCE_UNSPECIFIED, 1000, 1000), this.e);
        parameters.setFocusMode("auto");
        parameters.setFocusAreas(Collections.singletonList(new Camera.Area(rectA, 1000)));
        this.g.setParameters(parameters);
        if (this.f35b == CameraSettings.CameraFocusMode.ONCE) {
            try {
                this.g.autoFocus(null);
            } catch (Exception e) {
                return CallStatusInternal.error(new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingNotSupported.a(), a.a.a.d.a.a.k, "Can not start autoFocus " + e.getMessage()));
            }
        }
        return CallStatusInternal.success();
    }

    @Override // a.a.a.d.a.c
    public CallStatus a(CameraSettings.CameraFocusMode cameraFocusMode) {
        CallStatus callStatusB = b(cameraFocusMode);
        if (!callStatusB.isSuccess()) {
            return CallStatusInternal.error(new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingNotSupported.a(), a.a.a.d.a.a.k, "Can not set unsupported focus mode " + cameraFocusMode.name() + ".", callStatusB.getError()));
        }
        int iOrdinal = cameraFocusMode.ordinal();
        String str = iOrdinal != 1 ? iOrdinal != 2 ? "auto" : "fixed" : "continuous-video";
        try {
            Camera.Parameters parameters = this.g.getParameters();
            parameters.setFocusMode(str);
            if (cameraFocusMode == CameraSettings.CameraFocusMode.ONCE) {
                this.g.cancelAutoFocus();
                this.g.setParameters(parameters);
                this.g.autoFocus(null);
            } else {
                this.g.setParameters(parameters);
                this.g.cancelAutoFocus();
            }
            this.f35b = cameraFocusMode;
            return CallStatusInternal.success();
        } catch (Exception e) {
            return CallStatusInternal.error(new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingNotSupported.a(), a.a.a.d.a.a.k, "Error when trying to set the focus mode: " + e.getMessage()));
        }
    }

    @Override // a.a.a.d.a.c
    public CallStatus a(CameraSettings.TorchMode torchMode) {
        String str;
        CallStatus callStatusB = b(torchMode);
        if (!callStatusB.isSuccess()) {
            return CallStatusInternal.error(new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingNotSupported.a(), a.a.a.d.a.a.k, "Can not set unsupported torch mode " + torchMode.name() + ".", callStatusB.getError()));
        }
        Camera.Parameters parameters = this.g.getParameters();
        int iOrdinal = torchMode.ordinal();
        if (iOrdinal != 0) {
            if (iOrdinal == 1) {
                str = "torch";
            }
            this.g.setParameters(parameters);
            this.d = torchMode;
            return CallStatusInternal.success();
        }
        str = DebugKt.DEBUG_PROPERTY_VALUE_OFF;
        parameters.setFlashMode(str);
        this.g.setParameters(parameters);
        this.d = torchMode;
        return CallStatusInternal.success();
    }

    @Override // a.a.a.d.a.d
    public AndroidCamera a() {
        return this.i;
    }

    @Override // a.a.a.d.a.d
    public void a(AndroidCamera androidCamera) {
        if (this.i != androidCamera) {
            this.i = androidCamera;
            this.f35b = androidCamera.getCameraFocusMode();
            if (this.h) {
                f();
                b();
            }
        }
    }

    @Override // a.a.a.d.a.c
    public CallStatus b(float f) {
        CallStatus callStatusC = c(f);
        if (!callStatusC.isSuccess()) {
            return CallStatusInternal.error(new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingNotSupported.a(), a.a.a.d.a.a.k, "Can not set unsupported zoom factor " + f + ".", callStatusC.getError()));
        }
        Camera.Parameters parameters = this.g.getParameters();
        List<Integer> zoomRatios = parameters.getZoomRatios();
        float f2 = f;
        int i = 0;
        for (int i2 = 0; i2 < zoomRatios.size(); i2++) {
            float fMax = Math.max((zoomRatios.get(i2).floatValue() / f) / 100.0f, (100.0f * f) / zoomRatios.get(i2).floatValue());
            if (fMax < f2) {
                i = i2;
                f2 = fMax;
            }
        }
        parameters.setZoom(i);
        this.g.setParameters(parameters);
        this.e = f;
        n();
        return CallStatusInternal.success();
    }

    @Override // a.a.a.d.a.c
    public CallStatus b(PointF pointF) {
        Camera camera = this.g;
        if (camera == null) {
            return CallStatusInternal.error(new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingUnavailableWhenNotStarted.a(), a.a.a.d.a.a.k, "setExposurePointOfInterest is not available when the camera is not started."));
        }
        Camera.Parameters parameters = camera.getParameters();
        if (parameters.getMaxNumMeteringAreas() < 1) {
            return CallStatusInternal.error(new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingNotSupported.a(), a.a.a.d.a.a.k, "setExposurePointOfInterest is not supported on this device."));
        }
        parameters.setMeteringAreas(Collections.singletonList(new Camera.Area(f.a(pointF, new Rect(NotificationManagerCompat.IMPORTANCE_UNSPECIFIED, NotificationManagerCompat.IMPORTANCE_UNSPECIFIED, 1000, 1000), this.e), 1000)));
        this.g.setParameters(parameters);
        return CallStatusInternal.success();
    }

    @Override // a.a.a.d.a.c
    public CallStatus b(CameraSettings.CameraFocusMode cameraFocusMode) {
        Camera camera = this.g;
        if (camera == null) {
            return CallStatusInternal.error(new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingUnavailableWhenNotStarted.a(), a.a.a.d.a.a.k, "isFocusPointOfInterestSupported is not available when the camera is not started."));
        }
        Camera.Parameters parameters = camera.getParameters();
        int iOrdinal = cameraFocusMode.ordinal();
        return !parameters.getSupportedFocusModes().contains(iOrdinal != 1 ? iOrdinal != 2 ? "auto" : "fixed" : "continuous-video") ? CallStatusInternal.error(new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingNotSupported.a(), a.a.a.d.a.a.k, "Focus mode " + cameraFocusMode.name() + " is not supported by the device.")) : CallStatusInternal.success();
    }

    @Override // a.a.a.d.a.c
    public CallStatus b(CameraSettings.TorchMode torchMode) {
        WikitudeErrorInternal wikitudeErrorInternal;
        Camera camera = this.g;
        if (camera == null) {
            wikitudeErrorInternal = new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingUnavailableWhenNotStarted.a(), a.a.a.d.a.a.k, "isTorchModeSupported is not available when the camera is not started.");
        } else {
            String str = torchMode == CameraSettings.TorchMode.ON ? "torch" : DebugKt.DEBUG_PROPERTY_VALUE_OFF;
            Camera.Parameters parameters = camera.getParameters();
            if (parameters.getFlashMode() != null && parameters.getSupportedFlashModes() != null && parameters.getSupportedFlashModes().contains(str)) {
                return CallStatusInternal.success();
            }
            wikitudeErrorInternal = new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingNotSupported.a(), a.a.a.d.a.a.k, "torchMode is not supported on this device.");
        }
        return CallStatusInternal.error(wikitudeErrorInternal);
    }

    @Override // a.a.a.d.a.d
    public void b() {
        if (this.g != null) {
            return;
        }
        if (this.i == null) {
            a.a.a.e.a.b.b(f34a, "startCamera: No active camera set.");
            this.c.a(a.a.a.d.a.a.CameraDeviceError, "startCamera: No active camera set.");
            return;
        }
        this.h = true;
        try {
            Camera cameraO = o();
            this.g = cameraO;
            if (cameraO == null) {
                this.c.a(a.a.a.d.a.a.CameraDeviceError, "Could not start the camera.");
                return;
            }
            a.a.a.l.a.b bVarB = b(this.i);
            this.f.a(bVarB);
            this.g.setErrorCallback(this);
            this.f.a(this.g);
            List<String> supportedAntibanding = this.g.getParameters().getSupportedAntibanding();
            if (supportedAntibanding != null && supportedAntibanding.contains("auto")) {
                this.g.getParameters().setAntibanding("auto");
            }
            a(this.f35b);
            a(this.d);
            b(this.e);
            this.c.a(this.i.getCameraPosition());
            this.c.a(bVarB.b(), bVarB.a());
            this.c.a();
        } catch (Exception e) {
            Camera camera = this.g;
            if (camera != null) {
                camera.release();
            }
            this.g = null;
            a.a.a.e.a.b.b(f34a, "startCamera: Exception during Camera start: " + e.getMessage() + ".");
            this.c.a(a.a.a.d.a.a.CameraDeviceError, "Could not start the camera.");
        }
    }

    @Override // a.a.a.d.a.c
    public CallStatus c(float f) {
        WikitudeErrorInternal wikitudeErrorInternal;
        Camera camera = this.g;
        if (camera == null) {
            wikitudeErrorInternal = new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingUnavailableWhenNotStarted.a(), a.a.a.d.a.a.k, "isZoomFactorSupported is not available when the camera is not started.");
        } else if (camera.getParameters().isZoomSupported()) {
            CallValue<Float> callValueM = m();
            if (!callValueM.isSuccess()) {
                wikitudeErrorInternal = new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingNotSupported.a(), a.a.a.d.a.a.k, "Unable to determine if zoom factor is supported since the max zoom factor can not be determined.", callValueM.getError());
            } else {
                if (f >= 1.0f && f <= callValueM.getValue().floatValue()) {
                    return CallStatusInternal.success();
                }
                wikitudeErrorInternal = new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingNotSupported.a(), a.a.a.d.a.a.k, "Zoom factor is outside of the supported range. It has to be 1 <= zoomFactor <= " + callValueM.getValue() + "(getMaximumZoomFactor).");
            }
        } else {
            wikitudeErrorInternal = new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingNotSupported.a(), a.a.a.d.a.a.k, "Zoom is not supported on this device.");
        }
        return CallStatusInternal.error(wikitudeErrorInternal);
    }

    @Override // a.a.a.d.a.c
    public CallValue<CameraSettings.CameraFocusMode> c() {
        return CallValueInternal.a(this.f35b);
    }

    @Override // a.a.a.d.a.c
    public CallValue<List<CameraSettings.CameraPosition>> d() {
        ArrayList arrayList = new ArrayList();
        int numberOfCameras = Camera.getNumberOfCameras();
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        for (int i = 0; i < numberOfCameras; i++) {
            Camera.getCameraInfo(i, cameraInfo);
            if (cameraInfo.facing == 0) {
                arrayList.add(CameraSettings.CameraPosition.BACK);
            }
            if (cameraInfo.facing == 1) {
                arrayList.add(CameraSettings.CameraPosition.FRONT);
            }
        }
        return CallValueInternal.a(arrayList);
    }

    @Override // a.a.a.d.a.c
    public CallStatus e() {
        WikitudeErrorInternal wikitudeErrorInternal;
        Camera camera = this.g;
        if (camera == null) {
            wikitudeErrorInternal = new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingUnavailableWhenNotStarted.a(), a.a.a.d.a.a.k, "isFocusPointOfInterestSupported is not available when the camera is not started.");
        } else {
            if (camera.getParameters().getMaxNumFocusAreas() >= 1) {
                return CallStatusInternal.success();
            }
            wikitudeErrorInternal = new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingNotSupported.a(), a.a.a.d.a.a.k, "setFocusPointOfInterest is not supported on this device.");
        }
        return CallStatusInternal.error(wikitudeErrorInternal);
    }

    @Override // a.a.a.d.a.d
    public void f() {
        Camera camera = this.g;
        if (camera != null) {
            this.f.b(camera);
            this.g.release();
            this.g = null;
            this.h = false;
            this.c.b();
        }
    }

    @Override // a.a.a.d.a.c
    public CallValue<Float> g() {
        return CallValueInternal.a((WikitudeError) new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingNotSupported.a(), a.a.a.d.a.a.k, "Manual focus is only supported with camera2."));
    }

    @Override // a.a.a.d.a.c
    public CallValue<List<CameraSettings.CameraFocusMode>> h() {
        if (this.g == null) {
            return CallValueInternal.a((WikitudeError) new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingUnavailableWhenNotStarted.a(), a.a.a.d.a.a.k, "getAvailableFocusModes is not available when the camera is not started."));
        }
        ArrayList arrayList = new ArrayList();
        Camera.Parameters parameters = this.g.getParameters();
        if (parameters.getSupportedFocusModes().contains("auto")) {
            arrayList.add(CameraSettings.CameraFocusMode.ONCE);
        }
        if (parameters.getSupportedFocusModes().contains("continuous-video")) {
            arrayList.add(CameraSettings.CameraFocusMode.CONTINUOUS);
        }
        if (parameters.getSupportedFocusModes().contains("fixed")) {
            arrayList.add(CameraSettings.CameraFocusMode.OFF);
        }
        return CallValueInternal.a(arrayList);
    }

    @Override // a.a.a.d.a.c
    public CallValue<Float> i() {
        return CallValueInternal.a(Float.valueOf(this.e));
    }

    @Override // a.a.a.d.a.c
    public CallStatus j() {
        WikitudeErrorInternal wikitudeErrorInternal;
        Camera camera = this.g;
        if (camera == null) {
            wikitudeErrorInternal = new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingUnavailableWhenNotStarted.a(), a.a.a.d.a.a.k, "isExposurePointOfInterestSupported is not available when the camera is not started.");
        } else {
            if (camera.getParameters().getMaxNumMeteringAreas() >= 1) {
                return CallStatusInternal.success();
            }
            wikitudeErrorInternal = new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingNotSupported.a(), a.a.a.d.a.a.k, "setExposurePointOfInterest is not supported on this device.");
        }
        return CallStatusInternal.error(wikitudeErrorInternal);
    }

    @Override // a.a.a.d.a.c
    public CallStatus k() {
        return CallStatusInternal.error(new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingNotSupported.a(), a.a.a.d.a.a.k, "Manual focus is only supported with camera2."));
    }

    @Override // a.a.a.d.a.c
    public CallValue<CameraSettings.TorchMode> l() {
        return CallValueInternal.a(this.d);
    }

    @Override // a.a.a.d.a.c
    public CallValue<Float> m() {
        Camera camera = this.g;
        if (camera == null) {
            return CallValueInternal.a((WikitudeError) new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingUnavailableWhenNotStarted.a(), a.a.a.d.a.a.k, "getMaximumZoomFactor is not available when the camera is not started."));
        }
        float fFloatValue = 1.0f;
        for (Integer num : camera.getParameters().getZoomRatios()) {
            if (num.floatValue() / 100.0f > fFloatValue) {
                fFloatValue = num.floatValue() / 100.0f;
            }
        }
        return CallValueInternal.a(Float.valueOf(fFloatValue));
    }

    @Override // android.hardware.Camera.ErrorCallback
    public void onError(int i, Camera camera) {
        Camera camera2 = this.g;
        if (camera2 != null) {
            camera2.release();
            this.g = null;
        }
        this.c.a(a.a.a.d.a.a.CameraDeviceError, "Internal Camera Error.");
        a.a.a.e.a.b.b(f34a, "Internal Camera Error " + i);
    }
}
