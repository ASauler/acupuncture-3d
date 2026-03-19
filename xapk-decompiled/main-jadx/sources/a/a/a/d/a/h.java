package a.a.a.d.a;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.MeteringRectangle;
import android.hardware.camera2.params.OutputConfiguration;
import android.hardware.camera2.params.SessionConfiguration;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.media.Image;
import android.media.ImageReader;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Size;
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
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class h implements a.a.a.d.a.d, a.a.a.d.a.c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CameraManager f41b;
    private final a.a.a.d.a.b c;
    private float f;
    private HandlerThread h;
    private Handler i;
    private CameraDevice k;
    private CameraCaptureSession l;
    private CameraCharacteristics m;
    private ImageReader n;
    private CaptureRequest.Builder o;
    private AndroidCamera p;
    private a.a.a.l.a.b q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f40a = "h";
    private CameraSettings.CameraFocusMode d = CameraSettings.CameraFocusMode.CONTINUOUS;
    private CameraSettings.TorchMode e = CameraSettings.TorchMode.OFF;
    private float g = 1.0f;
    private d j = d.STOPPED;
    private final CameraDevice.StateCallback r = new a();
    private final CameraCaptureSession.StateCallback s = new b();
    private final ImageReader.OnImageAvailableListener t = new c();

    public class a extends CameraDevice.StateCallback {

        /* JADX INFO: renamed from: a.a.a.d.a.h$a$a, reason: collision with other inner class name */
        public class ExecutorC0003a implements Executor {
            public ExecutorC0003a() {
            }

            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                if (h.this.i != null) {
                    h.this.i.post(runnable);
                }
            }
        }

        public class b implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final /* synthetic */ a.a.a.d.a.a f44a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ String f45b;

            public b(a.a.a.d.a.a aVar, String str) {
                this.f44a = aVar;
                this.f45b = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                h.this.c.a(this.f44a, this.f45b);
            }
        }

        public a() {
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onDisconnected(CameraDevice cameraDevice) {
            a.a.a.e.a.b.b(h.this.f40a, "onDisconnected: Camera disconnected.");
            h.this.c.a(a.a.a.d.a.a.CameraDeviceError, "Camera disconnected.");
            cameraDevice.close();
            h.this.k = null;
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onError(CameraDevice cameraDevice, int i) {
            a.a.a.d.a.a aVar;
            String str;
            if (i == 1) {
                aVar = a.a.a.d.a.a.CameraIsAlreadyInUse;
                str = "ERROR_CAMERA_IN_USE received, indicating that the camera device is in use already.";
            } else if (i == 2) {
                aVar = a.a.a.d.a.a.MaxNumberOfCamerasInUse;
                str = "ERROR_MAX_CAMERAS_IN_USE received, indicating that the camera device could not be opened because there are too many other open camera devices.";
            } else if (i == 3) {
                aVar = a.a.a.d.a.a.CameraDisabled;
                str = "ERROR_CAMERA_DISABLED received, indicating that the camera device could not be opened due to a device policy.";
            } else if (i == 4) {
                aVar = a.a.a.d.a.a.CameraNotOpened;
                str = "ERROR_CAMERA_DEVICE received, indicating that the camera device has encountered a fatal error. Opening Camera 1.";
            } else if (i != 5) {
                aVar = a.a.a.d.a.a.CameraDeviceError;
                str = "";
            } else {
                aVar = a.a.a.d.a.a.CameraDeviceError;
                str = "ERROR_CAMERA_SERVICE received, indicating that the camera service has encountered a fatal error.";
            }
            a.a.a.e.a.b.b(h.this.f40a, "Callback function onError called. " + aVar + " " + str);
            if (i == 4) {
                new Handler(Looper.getMainLooper()).post(new b(aVar, str));
            } else {
                h.this.c.a(aVar, str);
            }
            cameraDevice.close();
            h.this.k = null;
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onOpened(CameraDevice cameraDevice) {
            if (h.this.j == d.STOPPED) {
                a.a.a.e.a.b.b(h.this.f40a, "onOpened: Camera was already stopped.");
                return;
            }
            h hVar = h.this;
            hVar.n = ImageReader.newInstance(hVar.q.b(), h.this.q.a(), 35, 2);
            h.this.n.setOnImageAvailableListener(h.this.t, h.this.i);
            try {
                if (Build.VERSION.SDK_INT >= 30) {
                    OutputConfiguration outputConfiguration = new OutputConfiguration(h.this.n.getSurface());
                    cameraDevice.createCaptureSession(new SessionConfiguration(0, Collections.singletonList(outputConfiguration), new ExecutorC0003a(), h.this.s));
                } else {
                    cameraDevice.createCaptureSession(Collections.singletonList(h.this.n.getSurface()), h.this.s, h.this.i);
                }
                h.this.k = cameraDevice;
            } catch (CameraAccessException e) {
                a.a.a.e.a.b.b(h.this.f40a, "onOpened: Could not create a capture session.", e);
                h.this.c.a(a.a.a.d.a.a.CameraDeviceError, "Could not create a capture session.");
            }
        }
    }

    public class b extends CameraCaptureSession.StateCallback {

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                h.this.c.a();
            }
        }

        public b() {
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
            a.a.a.e.a.b.b(h.this.f40a, "onConfigureFailed: could not configure CameraCaptureSession");
            h.this.c.a(a.a.a.d.a.a.CameraDeviceError, "Could not configure CameraCaptureSession");
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x00a9 A[Catch: CameraAccessException -> 0x0158, TryCatch #0 {CameraAccessException -> 0x0158, blocks: (B:7:0x0017, B:9:0x0044, B:10:0x005b, B:17:0x0099, B:18:0x009c, B:20:0x00a9, B:22:0x00b3, B:27:0x00c7, B:29:0x00d2, B:31:0x00de, B:33:0x00f5, B:34:0x00f9, B:35:0x0109, B:37:0x011c, B:39:0x0136, B:38:0x012a, B:23:0x00ba, B:11:0x0060, B:13:0x006a, B:14:0x0086, B:16:0x0090), top: B:46:0x0017 }] */
        /* JADX WARN: Removed duplicated region for block: B:23:0x00ba A[Catch: CameraAccessException -> 0x0158, TryCatch #0 {CameraAccessException -> 0x0158, blocks: (B:7:0x0017, B:9:0x0044, B:10:0x005b, B:17:0x0099, B:18:0x009c, B:20:0x00a9, B:22:0x00b3, B:27:0x00c7, B:29:0x00d2, B:31:0x00de, B:33:0x00f5, B:34:0x00f9, B:35:0x0109, B:37:0x011c, B:39:0x0136, B:38:0x012a, B:23:0x00ba, B:11:0x0060, B:13:0x006a, B:14:0x0086, B:16:0x0090), top: B:46:0x0017 }] */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00c4  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00c6  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00d2 A[Catch: CameraAccessException -> 0x0158, TryCatch #0 {CameraAccessException -> 0x0158, blocks: (B:7:0x0017, B:9:0x0044, B:10:0x005b, B:17:0x0099, B:18:0x009c, B:20:0x00a9, B:22:0x00b3, B:27:0x00c7, B:29:0x00d2, B:31:0x00de, B:33:0x00f5, B:34:0x00f9, B:35:0x0109, B:37:0x011c, B:39:0x0136, B:38:0x012a, B:23:0x00ba, B:11:0x0060, B:13:0x006a, B:14:0x0086, B:16:0x0090), top: B:46:0x0017 }] */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00f5 A[Catch: CameraAccessException -> 0x0158, TryCatch #0 {CameraAccessException -> 0x0158, blocks: (B:7:0x0017, B:9:0x0044, B:10:0x005b, B:17:0x0099, B:18:0x009c, B:20:0x00a9, B:22:0x00b3, B:27:0x00c7, B:29:0x00d2, B:31:0x00de, B:33:0x00f5, B:34:0x00f9, B:35:0x0109, B:37:0x011c, B:39:0x0136, B:38:0x012a, B:23:0x00ba, B:11:0x0060, B:13:0x006a, B:14:0x0086, B:16:0x0090), top: B:46:0x0017 }] */
        /* JADX WARN: Removed duplicated region for block: B:37:0x011c A[Catch: CameraAccessException -> 0x0158, TryCatch #0 {CameraAccessException -> 0x0158, blocks: (B:7:0x0017, B:9:0x0044, B:10:0x005b, B:17:0x0099, B:18:0x009c, B:20:0x00a9, B:22:0x00b3, B:27:0x00c7, B:29:0x00d2, B:31:0x00de, B:33:0x00f5, B:34:0x00f9, B:35:0x0109, B:37:0x011c, B:39:0x0136, B:38:0x012a, B:23:0x00ba, B:11:0x0060, B:13:0x006a, B:14:0x0086, B:16:0x0090), top: B:46:0x0017 }] */
        /* JADX WARN: Removed duplicated region for block: B:38:0x012a A[Catch: CameraAccessException -> 0x0158, TryCatch #0 {CameraAccessException -> 0x0158, blocks: (B:7:0x0017, B:9:0x0044, B:10:0x005b, B:17:0x0099, B:18:0x009c, B:20:0x00a9, B:22:0x00b3, B:27:0x00c7, B:29:0x00d2, B:31:0x00de, B:33:0x00f5, B:34:0x00f9, B:35:0x0109, B:37:0x011c, B:39:0x0136, B:38:0x012a, B:23:0x00ba, B:11:0x0060, B:13:0x006a, B:14:0x0086, B:16:0x0090), top: B:46:0x0017 }] */
        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onConfigured(android.hardware.camera2.CameraCaptureSession r6) {
            /*
                Method dump skipped, instruction units count: 382
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: a.a.a.d.a.h.b.onConfigured(android.hardware.camera2.CameraCaptureSession):void");
        }
    }

    public class c implements ImageReader.OnImageAvailableListener {
        public c() {
        }

        @Override // android.media.ImageReader.OnImageAvailableListener
        public void onImageAvailable(ImageReader imageReader) {
            Image imageAcquireLatestImage;
            Image.Plane[] planes;
            if (h.this.j == d.STOPPED || (imageAcquireLatestImage = imageReader.acquireLatestImage()) == null || (planes = imageAcquireLatestImage.getPlanes()) == null) {
                return;
            }
            int pixelStride = planes[1].getPixelStride();
            h.this.c.a(imageAcquireLatestImage.getTimestamp(), planes[0].getBuffer(), planes[1].getBuffer(), planes[2].getBuffer(), planes[0].getRowStride(), planes[1].getRowStride(), pixelStride);
            imageAcquireLatestImage.close();
        }
    }

    public enum d {
        STARTED,
        STOPPED
    }

    public h(Context context, a.a.a.d.a.b bVar) {
        this.c = bVar;
        this.f41b = (CameraManager) context.getSystemService("camera");
    }

    private void a(CaptureRequest captureRequest) {
        CameraCaptureSession cameraCaptureSession;
        Handler handler;
        if (this.k == null || (cameraCaptureSession = this.l) == null || (handler = this.i) == null) {
            a.a.a.e.a.b.b(this.f40a, "setRepeatingRequest: no camera or capture session");
            return;
        }
        try {
            cameraCaptureSession.capture(captureRequest, null, handler);
        } catch (CameraAccessException e) {
            a.a.a.e.a.b.b(this.f40a, "onConfigured: Could not create a capture request.", e);
            this.c.a(a.a.a.d.a.a.CameraDeviceError, "Could not create a capture request.");
        }
    }

    private a.a.a.l.a.b b(AndroidCamera androidCamera) {
        a.a.a.l.a.b bVarA = f.a(androidCamera.getCameraResolution());
        a.a.a.l.a.b bVar = null;
        for (Size size : ((StreamConfigurationMap) this.m.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP)).getOutputSizes(35)) {
            if (size.getWidth() == bVarA.b() && size.getHeight() == bVarA.a()) {
                return bVarA;
            }
            bVar = bVar == null ? new a.a.a.l.a.b(size.getWidth(), size.getHeight()) : f.a(bVar, bVarA, new a.a.a.l.a.b(size.getWidth(), size.getHeight()));
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(CaptureRequest captureRequest) {
        CameraCaptureSession cameraCaptureSession;
        Handler handler;
        if (this.k == null || (cameraCaptureSession = this.l) == null || (handler = this.i) == null) {
            a.a.a.e.a.b.b(this.f40a, "setRepeatingRequest: no camera or capture session");
            return;
        }
        try {
            cameraCaptureSession.setRepeatingRequest(captureRequest, null, handler);
        } catch (CameraAccessException e) {
            a.a.a.e.a.b.b(this.f40a, "onConfigured: Could not create a capture request.", e);
            this.c.a(a.a.a.d.a.a.CameraDeviceError, "Could not create a repeating capture request.");
        }
    }

    private void n() {
        CaptureRequest.Builder builder = this.o;
        if (builder == null) {
            a.a.a.e.a.b.b(this.f40a, "setRepeatingRequest: no requestBuilder available");
        } else {
            b(builder.build());
        }
    }

    private void o() {
        if (this.h != null) {
            a.a.a.e.a.b.e(this.f40a, "startBackgroundThread: background thread is already running");
            return;
        }
        HandlerThread handlerThread = new HandlerThread("CameraThread");
        this.h = handlerThread;
        handlerThread.start();
        this.i = new Handler(this.h.getLooper());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void p() {
        HandlerThread handlerThread = this.h;
        if (handlerThread == null) {
            a.a.a.e.a.b.e(this.f40a, "stopBackgroundThread: trying to stop non-existing thread");
            return;
        }
        handlerThread.quitSafely();
        try {
            try {
                this.h.join();
            } catch (InterruptedException e) {
                a.a.a.e.a.b.b(this.f40a, "stopBackgroundThread: interruption while safely stopping the thread", e);
            }
        } finally {
            this.h = null;
            this.i = null;
        }
    }

    @Override // a.a.a.d.a.c
    public CallStatus a(float f) {
        WikitudeErrorInternal wikitudeErrorInternal;
        Float f2;
        CameraCharacteristics cameraCharacteristics = this.m;
        if (cameraCharacteristics == null || this.o == null) {
            wikitudeErrorInternal = new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingUnavailableWhenNotStarted.a(), a.a.a.d.a.a.k, "setManualFocusDistance is not available when the camera is not started.");
        } else {
            if (f.a(1, cameraCharacteristics) && (f2 = (Float) this.m.get(CameraCharacteristics.LENS_INFO_MINIMUM_FOCUS_DISTANCE)) != null) {
                if (this.f != f) {
                    if (f < 0.0f || f > 1.0f) {
                        f = f < 0.0f ? 0.0f : 1.0f;
                    }
                    this.f = f;
                    this.o.set(CaptureRequest.LENS_FOCUS_DISTANCE, Float.valueOf((1.0f - f) * f2.floatValue()));
                    n();
                }
                return CallStatusInternal.success();
            }
            wikitudeErrorInternal = new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingNotSupported.a(), a.a.a.d.a.a.k, "setManualFocusDistance is not supported on this device.");
        }
        return CallStatusInternal.error(wikitudeErrorInternal);
    }

    @Override // a.a.a.d.a.c
    public CallStatus a(PointF pointF) {
        CameraCharacteristics cameraCharacteristics = this.m;
        if (cameraCharacteristics == null || this.o == null) {
            return CallStatusInternal.error(new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingUnavailableWhenNotStarted.a(), a.a.a.d.a.a.k, "setFocusPointOfInterest is not available when the camera is not started."));
        }
        Integer num = (Integer) cameraCharacteristics.get(CameraCharacteristics.CONTROL_MAX_REGIONS_AF);
        Rect rect = (Rect) this.m.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
        if (num == null || num.intValue() < 1 || rect == null) {
            return CallStatusInternal.error(new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingNotSupported.a(), a.a.a.d.a.a.k, "setFocusPointOfInterest is not supported on this device."));
        }
        if (this.d != CameraSettings.CameraFocusMode.ONCE) {
            return CallStatusInternal.error(new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingNotSupported.a(), a.a.a.d.a.a.k, "setFocusPointOfInterest is only supported with focus mode ONCE."));
        }
        this.o.set(CaptureRequest.CONTROL_AF_TRIGGER, 2);
        a(this.o.build());
        this.o.set(CaptureRequest.CONTROL_AF_TRIGGER, 0);
        n();
        this.o.set(CaptureRequest.CONTROL_AF_REGIONS, new MeteringRectangle[]{new MeteringRectangle(f.a(pointF, rect, this.g), 1000)});
        this.o.set(CaptureRequest.CONTROL_AF_TRIGGER, 0);
        n();
        this.o.set(CaptureRequest.CONTROL_AF_TRIGGER, 1);
        a(this.o.build());
        return CallStatusInternal.success();
    }

    @Override // a.a.a.d.a.c
    public CallStatus a(CameraSettings.CameraFocusMode cameraFocusMode) {
        CaptureRequest.Builder builder;
        CaptureRequest.Key key;
        CallStatus callStatusB = b(cameraFocusMode);
        if (!callStatusB.isSuccess()) {
            return CallStatusInternal.error(new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingNotSupported.a(), a.a.a.d.a.a.k, "Cannot set unsupported focus mode.", callStatusB.getError()));
        }
        a.a.a.e.a.a.a(this.o);
        if (cameraFocusMode != CameraSettings.CameraFocusMode.CONTINUOUS) {
            if (cameraFocusMode == CameraSettings.CameraFocusMode.ONCE) {
                this.o.set(CaptureRequest.CONTROL_AF_MODE, 1);
                this.o.set(CaptureRequest.CONTROL_AF_TRIGGER, 1);
            } else if (cameraFocusMode == CameraSettings.CameraFocusMode.OFF) {
                builder = this.o;
                key = CaptureRequest.CONTROL_AF_MODE;
            }
            n();
            this.d = cameraFocusMode;
            return CallStatusInternal.success();
        }
        this.o.set(CaptureRequest.CONTROL_AF_MODE, 3);
        builder = this.o;
        key = CaptureRequest.CONTROL_AF_TRIGGER;
        builder.set(key, 0);
        n();
        this.d = cameraFocusMode;
        return CallStatusInternal.success();
    }

    @Override // a.a.a.d.a.c
    public CallStatus a(CameraSettings.TorchMode torchMode) {
        CaptureRequest.Builder builder;
        CaptureRequest.Key key;
        int i;
        CallStatus callStatusB = b(torchMode);
        if (!callStatusB.isSuccess()) {
            return CallStatusInternal.error(new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingNotSupported.a(), a.a.a.d.a.a.k, "Cannot set unsupported torch mode.", callStatusB.getError()));
        }
        a.a.a.e.a.a.a(this.o);
        if (torchMode == CameraSettings.TorchMode.ON) {
            builder = this.o;
            key = CaptureRequest.FLASH_MODE;
            i = 2;
        } else {
            builder = this.o;
            key = CaptureRequest.FLASH_MODE;
            i = 0;
        }
        builder.set(key, Integer.valueOf(i));
        this.e = torchMode;
        n();
        return CallStatusInternal.success();
    }

    @Override // a.a.a.d.a.d
    public AndroidCamera a() {
        return this.p;
    }

    @Override // a.a.a.d.a.d
    public void a(AndroidCamera androidCamera) {
        if (this.p != androidCamera) {
            this.p = androidCamera;
            this.d = androidCamera.getCameraFocusMode();
            if (this.j == d.STARTED) {
                f();
                b();
            }
        }
    }

    @Override // a.a.a.d.a.c
    public CallStatus b(float f) {
        if (this.p == null || this.m == null || this.o == null) {
            return CallStatusInternal.error(new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingUnavailableWhenNotStarted.a(), a.a.a.d.a.a.k, "setZoomFactor is not available when the camera is not started."));
        }
        float fRound = Math.round(f * 10.0f) / 10.0f;
        CallStatus callStatusC = c(fRound);
        if (!callStatusC.isSuccess()) {
            return CallStatusInternal.error(new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingNotSupported.a(), a.a.a.d.a.a.k, "Cannot set unsupported zoom factor.", callStatusC.getError()));
        }
        CallValue<Float> callValueM = m();
        if (!callValueM.isSuccess()) {
            return CallStatusInternal.error(new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingNotSupported.a(), a.a.a.d.a.a.k, "Unable to set the zoom factor since the max zoom factor can not be determined.", callValueM.getError()));
        }
        float fFloatValue = callValueM.getValue().floatValue();
        Rect rect = (Rect) this.m.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
        if (rect == null) {
            return CallStatusInternal.error(new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingNotSupported.a(), a.a.a.d.a.a.k, "Unable to set the zoom factor since the camera sizes could not be determined."));
        }
        this.o.set(CaptureRequest.SCALER_CROP_REGION, f.a(rect, fFloatValue, fRound));
        this.g = fRound;
        n();
        this.c.a(f.a(this.m, this.q, fRound * 100.0f));
        return CallStatusInternal.success();
    }

    @Override // a.a.a.d.a.c
    public CallStatus b(PointF pointF) {
        CameraCharacteristics cameraCharacteristics = this.m;
        if (cameraCharacteristics == null || this.o == null) {
            return CallStatusInternal.error(new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingUnavailableWhenNotStarted.a(), a.a.a.d.a.a.k, "setExposurePointOfInterest is not available when the camera is not started."));
        }
        Integer num = (Integer) cameraCharacteristics.get(CameraCharacteristics.CONTROL_MAX_REGIONS_AE);
        Rect rect = (Rect) this.m.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
        if (num == null || num.intValue() < 1 || rect == null) {
            return CallStatusInternal.error(new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingNotSupported.a(), a.a.a.d.a.a.k, "setExposurePointOfInterest is not supported on this device."));
        }
        MeteringRectangle[] meteringRectangleArr = {new MeteringRectangle(f.a(pointF, rect, this.g), 1000)};
        this.o.set(CaptureRequest.CONTROL_AE_MODE, 1);
        this.o.set(CaptureRequest.CONTROL_AE_REGIONS, meteringRectangleArr);
        n();
        return CallStatusInternal.success();
    }

    @Override // a.a.a.d.a.c
    public CallStatus b(CameraSettings.CameraFocusMode cameraFocusMode) {
        WikitudeErrorInternal wikitudeErrorInternal;
        CameraCharacteristics cameraCharacteristics = this.m;
        if (cameraCharacteristics == null || this.o == null) {
            wikitudeErrorInternal = new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingUnavailableWhenNotStarted.a(), a.a.a.d.a.a.k, "isFocusModeSupported is not available when the camera is not started.");
        } else {
            Float f = (Float) cameraCharacteristics.get(CameraCharacteristics.LENS_INFO_MINIMUM_FOCUS_DISTANCE);
            if (f != null && f.floatValue() != 0.0f) {
                return CallStatusInternal.success();
            }
            wikitudeErrorInternal = new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingNotSupported.a(), a.a.a.d.a.a.k, "setFocusMode is not supported on this device because the device as a fixed lens position.");
        }
        return CallStatusInternal.error(wikitudeErrorInternal);
    }

    @Override // a.a.a.d.a.c
    public CallStatus b(CameraSettings.TorchMode torchMode) {
        WikitudeErrorInternal wikitudeErrorInternal;
        CameraCharacteristics cameraCharacteristics = this.m;
        if (cameraCharacteristics == null || this.o == null) {
            wikitudeErrorInternal = new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingUnavailableWhenNotStarted.a(), a.a.a.d.a.a.k, "isTorchModeSupported is not available when the camera is not started.");
        } else {
            Boolean bool = (Boolean) cameraCharacteristics.get(CameraCharacteristics.FLASH_INFO_AVAILABLE);
            if (bool != null && bool.booleanValue()) {
                return CallStatusInternal.success();
            }
            wikitudeErrorInternal = new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingNotSupported.a(), a.a.a.d.a.a.k, "torch mode is not supported on this device.");
        }
        return CallStatusInternal.error(wikitudeErrorInternal);
    }

    @Override // a.a.a.d.a.d
    public void b() {
        if (this.p == null) {
            a.a.a.e.a.b.b(this.f40a, "startCamera: No active camera set.");
            this.c.a(a.a.a.d.a.a.CameraDeviceError, "startCamera: No active camera set.");
            return;
        }
        if (this.f41b == null) {
            a.a.a.e.a.b.b(this.f40a, "startCamera: Could not get CameraManager.");
            this.c.a(a.a.a.d.a.a.CameraDeviceError, "Could not get CameraManager.");
            return;
        }
        o();
        if (this.i == null) {
            a.a.a.e.a.b.b(this.f40a, "startCamera: Background handler is undefined.");
            this.c.a(a.a.a.d.a.a.CameraDeviceError, "Background handler is undefined.");
            return;
        }
        try {
            String id = this.p.getId();
            this.m = this.f41b.getCameraCharacteristics(id);
            a.a.a.l.a.b bVarB = b(this.p);
            this.q = bVarB;
            this.c.a(bVarB.b(), this.q.a());
            float fA = f.a(this.m, this.q);
            this.c.a(fA);
            a.a.a.e.a.b.a(this.f40a, "updateCameraFieldOfView " + fA);
            this.c.a(this.p.getCameraPosition());
            Integer num = (Integer) this.m.get(CameraCharacteristics.SENSOR_ORIENTATION);
            if (num != null) {
                this.c.b(num.intValue());
            } else {
                a.a.a.e.a.b.b(this.f40a, "startCamera: Could not get the camera orientation.");
                this.c.a(a.a.a.d.a.a.CameraDeviceError, "Could not get the camera orientation. Default orientation is being used.");
                if (this.p.getCameraPosition() == CameraSettings.CameraPosition.FRONT) {
                    this.c.b(270);
                } else {
                    this.c.b(90);
                }
            }
            this.j = d.STARTED;
            this.f41b.openCamera(id, this.r, this.i);
        } catch (CameraAccessException e) {
            a.a.a.e.a.b.b(this.f40a, "startCamera: Could not access the camera.", e);
            this.c.a(a.a.a.d.a.a.CameraDeviceError, "Could not access the camera.");
        }
    }

    @Override // a.a.a.d.a.c
    public CallStatus c(float f) {
        WikitudeErrorInternal wikitudeErrorInternal;
        CallValue<Float> callValueM = m();
        if (!callValueM.isSuccess()) {
            wikitudeErrorInternal = new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingNotSupported.a(), a.a.a.d.a.a.k, "Unable to determine if zoom factor is supported since the max zoom factor can not be determined.", callValueM.getError());
        } else if (f < 1.0f || f > callValueM.getValue().floatValue()) {
            wikitudeErrorInternal = new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingNotSupported.a(), a.a.a.d.a.a.k, "Zoom factor is outside of the supported range. It has to be 1 <= zoomFactor <= " + callValueM.getValue() + "(getMaximumZoomFactor).");
        } else {
            a.a.a.e.a.a.a(this.m);
            if (((Rect) this.m.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE)) != null) {
                return CallStatusInternal.success();
            }
            wikitudeErrorInternal = new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingNotSupported.a(), a.a.a.d.a.a.k, "setZoomFactor is not supported on this device.");
        }
        return CallStatusInternal.error(wikitudeErrorInternal);
    }

    @Override // a.a.a.d.a.c
    public CallValue<CameraSettings.CameraFocusMode> c() {
        return CallValueInternal.a(this.d);
    }

    @Override // a.a.a.d.a.c
    public CallValue<List<CameraSettings.CameraPosition>> d() {
        WikitudeErrorInternal wikitudeErrorInternal;
        if (this.f41b == null) {
            wikitudeErrorInternal = new WikitudeErrorInternal(a.a.a.d.a.a.CameraDeviceError.a(), a.a.a.d.a.a.k, "Could not get CameraManager.");
        } else {
            try {
                ArrayList arrayList = new ArrayList();
                for (String str : this.f41b.getCameraIdList()) {
                    Integer num = (Integer) this.f41b.getCameraCharacteristics(str).get(CameraCharacteristics.LENS_FACING);
                    if (num != null) {
                        arrayList.add(num.intValue() == 1 ? CameraSettings.CameraPosition.BACK : num.intValue() == 0 ? CameraSettings.CameraPosition.FRONT : CameraSettings.CameraPosition.DEFAULT);
                    }
                }
                return CallValueInternal.a(arrayList);
            } catch (CameraAccessException unused) {
                wikitudeErrorInternal = new WikitudeErrorInternal(a.a.a.d.a.a.CameraDeviceError.a(), a.a.a.d.a.a.k, "Unable to get camera positions.");
            }
        }
        return CallValueInternal.a((WikitudeError) wikitudeErrorInternal);
    }

    @Override // a.a.a.d.a.c
    public CallStatus e() {
        WikitudeErrorInternal wikitudeErrorInternal;
        CameraCharacteristics cameraCharacteristics = this.m;
        if (cameraCharacteristics == null || this.o == null) {
            wikitudeErrorInternal = new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingUnavailableWhenNotStarted.a(), a.a.a.d.a.a.k, "isFocusPointOfInterestSupported is not available when the camera is not started.");
        } else {
            Integer num = (Integer) cameraCharacteristics.get(CameraCharacteristics.CONTROL_MAX_REGIONS_AF);
            Rect rect = (Rect) this.m.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
            if (num != null && num.intValue() >= 1 && rect != null) {
                return CallStatusInternal.success();
            }
            wikitudeErrorInternal = new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingNotSupported.a(), a.a.a.d.a.a.k, "setFocusPointOfInterest is not supported on this device.");
        }
        return CallStatusInternal.error(wikitudeErrorInternal);
    }

    @Override // a.a.a.d.a.d
    public void f() {
        this.j = d.STOPPED;
        CameraCaptureSession cameraCaptureSession = this.l;
        if (cameraCaptureSession != null) {
            try {
                cameraCaptureSession.stopRepeating();
            } catch (CameraAccessException | IllegalStateException e) {
                a.a.a.e.a.b.b(this.f40a, "doStop:", e);
            }
            this.l.close();
            this.l = null;
        }
        CameraDevice cameraDevice = this.k;
        if (cameraDevice != null) {
            cameraDevice.close();
            this.k = null;
        }
        ImageReader imageReader = this.n;
        if (imageReader != null) {
            try {
                imageReader.close();
            } catch (IllegalStateException e2) {
                a.a.a.e.a.b.b(this.f40a, "doStop:", e2);
            }
            this.n = null;
        }
        this.c.b();
        p();
    }

    @Override // a.a.a.d.a.c
    public CallValue<Float> g() {
        return CallValueInternal.a(Float.valueOf(this.f));
    }

    @Override // a.a.a.d.a.c
    public CallValue<List<CameraSettings.CameraFocusMode>> h() {
        CameraSettings.CameraFocusMode cameraFocusMode;
        ArrayList arrayList = new ArrayList();
        CameraCharacteristics cameraCharacteristics = this.m;
        if (cameraCharacteristics == null) {
            return CallValueInternal.a((WikitudeError) new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingUnavailableWhenNotStarted.a(), a.a.a.d.a.a.k, "getAvailableFocusModes is not available when the camera is not started."));
        }
        int[] iArr = (int[]) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AF_AVAILABLE_MODES);
        if (iArr != null) {
            for (int i : iArr) {
                if (i == 3) {
                    cameraFocusMode = CameraSettings.CameraFocusMode.CONTINUOUS;
                } else if (i == 1) {
                    cameraFocusMode = CameraSettings.CameraFocusMode.ONCE;
                } else if (i == 0) {
                    cameraFocusMode = CameraSettings.CameraFocusMode.OFF;
                }
                arrayList.add(cameraFocusMode);
            }
        }
        return CallValueInternal.a(arrayList);
    }

    @Override // a.a.a.d.a.c
    public CallValue<Float> i() {
        return CallValueInternal.a(Float.valueOf(this.g));
    }

    @Override // a.a.a.d.a.c
    public CallStatus j() {
        WikitudeErrorInternal wikitudeErrorInternal;
        CameraCharacteristics cameraCharacteristics = this.m;
        if (cameraCharacteristics == null || this.o == null) {
            wikitudeErrorInternal = new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingUnavailableWhenNotStarted.a(), a.a.a.d.a.a.k, "isExposurePointOfInterestSupported is not available when the camera is not started.");
        } else {
            Integer num = (Integer) cameraCharacteristics.get(CameraCharacteristics.CONTROL_MAX_REGIONS_AE);
            Rect rect = (Rect) this.m.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
            if (num != null && num.intValue() >= 1 && rect != null) {
                return CallStatusInternal.success();
            }
            wikitudeErrorInternal = new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingNotSupported.a(), a.a.a.d.a.a.k, "setExposurePointOfInterest is not supported on this device.");
        }
        return CallStatusInternal.error(wikitudeErrorInternal);
    }

    @Override // a.a.a.d.a.c
    public CallStatus k() {
        WikitudeErrorInternal wikitudeErrorInternal;
        CameraCharacteristics cameraCharacteristics = this.m;
        if (cameraCharacteristics == null) {
            wikitudeErrorInternal = new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingUnavailableWhenNotStarted.a(), a.a.a.d.a.a.k, "isManualFocusSupported is not available when the camera is not started.");
        } else {
            if (f.a(1, cameraCharacteristics) && this.m.get(CameraCharacteristics.LENS_INFO_MINIMUM_FOCUS_DISTANCE) != null) {
                return CallStatusInternal.success();
            }
            wikitudeErrorInternal = new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingNotSupported.a(), a.a.a.d.a.a.k, "setManualFocusDistance is not supported on this device.");
        }
        return CallStatusInternal.error(wikitudeErrorInternal);
    }

    @Override // a.a.a.d.a.c
    public CallValue<CameraSettings.TorchMode> l() {
        return CallValueInternal.a(this.e);
    }

    @Override // a.a.a.d.a.c
    public CallValue<Float> m() {
        WikitudeErrorInternal wikitudeErrorInternal;
        CameraCharacteristics cameraCharacteristics = this.m;
        if (cameraCharacteristics == null) {
            wikitudeErrorInternal = new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingUnavailableWhenNotStarted.a(), a.a.a.d.a.a.k, "getMaximumZoomFactor is not available when the camera is not started.");
        } else {
            Float f = (Float) cameraCharacteristics.get(CameraCharacteristics.SCALER_AVAILABLE_MAX_DIGITAL_ZOOM);
            if (f != null) {
                return CallValueInternal.a(f);
            }
            wikitudeErrorInternal = new WikitudeErrorInternal(a.a.a.d.a.a.CameraSettingNotSupported.a(), a.a.a.d.a.a.k, "getMaximumZoomFactor is not supported on this device.");
        }
        return CallValueInternal.a((WikitudeError) wikitudeErrorInternal);
    }
}
