package cn.voidar.engine;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureRequest;
import android.media.Image;
import android.media.ImageReader;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.util.Range;
import android.util.SizeF;
import android.view.Surface;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class e extends b {
    private CameraCharacteristics l;
    private CameraCaptureSession m;
    private CameraDevice n;
    private String o;
    private Handler p;
    private HandlerThread q;
    private ImageReader r;
    private List<Surface> s;
    private CaptureRequest.Builder t;
    private final CameraDevice.StateCallback u = new CameraDevice.StateCallback() { // from class: cn.voidar.engine.e.1
        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onDisconnected(CameraDevice cameraDevice) {
            e.this.i.release();
            cameraDevice.close();
            e.this.n = null;
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onError(CameraDevice cameraDevice, int i) {
            e.this.i.release();
            cameraDevice.close();
            e.this.n = null;
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onOpened(CameraDevice cameraDevice) {
            e.this.i.release();
            e.this.n = cameraDevice;
            e.this.k();
            e.this.i();
        }
    };
    private CameraCaptureSession.StateCallback v = new CameraCaptureSession.StateCallback() { // from class: cn.voidar.engine.e.2
        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
            i.a().c("onConfigureFailed");
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigured(CameraCaptureSession cameraCaptureSession) {
            e.this.m = cameraCaptureSession;
            e.this.j();
        }
    };

    private class a implements ImageReader.OnImageAvailableListener {
        private a() {
        }

        @Override // android.media.ImageReader.OnImageAvailableListener
        public void onImageAvailable(ImageReader imageReader) {
            if (!e.this.j.tryAcquire()) {
                i.a().c("Unable to aquire image semaphore, need to free some buffers!!");
                return;
            }
            Image imageAcquireLatestImage = imageReader.acquireLatestImage();
            if (imageAcquireLatestImage != null) {
                e.this.a(j.a(imageAcquireLatestImage), imageAcquireLatestImage.getTimestamp() * 1.0E-9d, 1.0E-9d * SystemClock.elapsedRealtimeNanos());
                imageAcquireLatestImage.close();
            }
            e.this.j.release();
        }
    }

    public e() {
        this.g = "NativeCamera2";
        this.h = 2;
    }

    private CaptureRequest h() {
        CameraCaptureSession cameraCaptureSession;
        try {
            if (this.n == null && (cameraCaptureSession = this.m) != null) {
                this.n = cameraCaptureSession.getDevice();
            }
            CaptureRequest.Builder builderCreateCaptureRequest = this.n.createCaptureRequest(3);
            this.t = builderCreateCaptureRequest;
            builderCreateCaptureRequest.addTarget(this.r.getSurface());
            return this.t.build();
        } catch (CameraAccessException e) {
            i.a().c("createCaptureRequest error:" + e.getMessage());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        ImageReader imageReader;
        try {
            CameraDevice cameraDevice = this.n;
            if (cameraDevice != null && (imageReader = this.r) != null) {
                cameraDevice.createCaptureSession(Collections.singletonList(imageReader.getSurface()), this.v, this.p);
            }
        } catch (CameraAccessException e) {
            i.a().c("createCaptureSession " + e.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        int iIntValue;
        Range[] rangeArr = (Range[]) this.l.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES);
        Range range = rangeArr[rangeArr.length - 1];
        int i = 0;
        int iIntValue2 = 0;
        for (Range range2 : rangeArr) {
            if (((Integer) range2.getUpper()).intValue() > iIntValue2 && ((Integer) range2.getUpper()).intValue() <= 60) {
                iIntValue2 = ((Integer) range2.getUpper()).intValue();
            }
            i.a().a("support fpsRange = " + range2.getLower() + "-" + range2.getUpper());
        }
        int i2 = Integer.MAX_VALUE;
        for (Range range3 : rangeArr) {
            if (((Integer) range3.getUpper()).intValue() == iIntValue2 && (iIntValue = ((Integer) range3.getUpper()).intValue() - ((Integer) range3.getLower()).intValue()) < i2) {
                range = range3;
                i2 = iIntValue;
            }
        }
        i.a().b("fpsRange = " + range.getLower() + "-" + range.getUpper());
        CaptureRequest captureRequestH = h();
        this.t.set(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, range);
        i.a().b("Focus mode = " + this.d);
        if (CaptureRequest.CONTROL_AF_MODE != null) {
            int iB = j.b(this.d);
            int[] iArr = (int[]) this.l.get(CameraCharacteristics.CONTROL_AF_AVAILABLE_MODES);
            while (true) {
                if (i < iArr.length) {
                    if (iArr[i] == iB) {
                        this.t.set(CaptureRequest.CONTROL_AF_MODE, Integer.valueOf(iB));
                        if (iB == 0) {
                            i.a().b("Focus infinity");
                            this.t.set(CaptureRequest.LENS_FOCUS_DISTANCE, Float.valueOf(0.0f));
                        }
                    } else {
                        i++;
                    }
                }
            }
        }
        try {
            this.m.setRepeatingRequest(captureRequestH, null, this.p);
        } catch (Exception e) {
            i.a().c("OpenCamera Error:" + e.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        if (this.r == null) {
            ImageReader imageReaderNewInstance = ImageReader.newInstance(this.f147a, this.f148b, 35, 2);
            this.r = imageReaderNewInstance;
            imageReaderNewInstance.setOnImageAvailableListener(new a(), this.p);
        }
        if (this.s == null) {
            this.s = new LinkedList();
        }
        this.s.clear();
        Surface surface = this.r.getSurface();
        this.s.add(surface);
        try {
            CaptureRequest.Builder builderCreateCaptureRequest = this.n.createCaptureRequest(1);
            this.t = builderCreateCaptureRequest;
            builderCreateCaptureRequest.addTarget(surface);
        } catch (Exception e) {
            i.a().c("OpenCamera Error:" + e.toString());
        }
    }

    private void l() {
        float[] fArr = (float[]) this.l.get(CameraCharacteristics.LENS_INFO_AVAILABLE_FOCAL_LENGTHS);
        SizeF sizeF = (SizeF) this.l.get(CameraCharacteristics.SENSOR_INFO_PHYSICAL_SIZE);
        if (fArr == null || fArr.length <= 0 || sizeF == null) {
            return;
        }
        this.k = (float) (Math.atan(sizeF.getWidth() / (fArr[0] * 2.0f)) * 2.0d);
        i.a().b("FOV:" + this.k);
    }

    @Override // cn.voidar.engine.b
    public void a() {
        try {
            try {
                this.i.acquire();
                CameraCaptureSession cameraCaptureSession = this.m;
                if (cameraCaptureSession != null) {
                    cameraCaptureSession.abortCaptures();
                    this.m.close();
                    this.m = null;
                }
                CameraDevice cameraDevice = this.n;
                if (cameraDevice != null) {
                    cameraDevice.close();
                    this.n = null;
                }
                ImageReader imageReader = this.r;
                if (imageReader != null) {
                    imageReader.close();
                    this.r = null;
                }
                g();
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            this.i.release();
        }
    }

    @Override // cn.voidar.engine.b
    public void a(int i) {
        f();
        int i2 = 0;
        int i3 = i == 0 ? 1 : 0;
        CameraManager cameraManager = (CameraManager) UnityActivityHelper.f120a.getSystemService("camera");
        try {
            if (UnityActivityHelper.f120a.checkSelfPermission("android.permission.CAMERA") != 0) {
                i.a().c("Camera Permission has been denied by the user. Aborting initialization.");
                throw new SecurityException();
            }
            if (!this.i.tryAcquire(2500L, TimeUnit.MILLISECONDS)) {
                throw new RuntimeException("Time out waiting to lock camera opening.");
            }
            String[] cameraIdList = cameraManager.getCameraIdList();
            int length = cameraIdList.length;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                String str = cameraIdList[i2];
                CameraCharacteristics cameraCharacteristics = cameraManager.getCameraCharacteristics(str);
                this.l = cameraCharacteristics;
                if (((Integer) cameraCharacteristics.get(CameraCharacteristics.LENS_FACING)).intValue() == i3) {
                    this.o = str;
                    l();
                    break;
                }
                i2++;
            }
            cameraManager.openCamera(this.o, this.u, this.p);
        } catch (CameraAccessException e) {
            i.a().c("openCamera Exception" + e.toString());
        } catch (InterruptedException e2) {
            throw new RuntimeException("Interrupted while trying to lock camera opening.", e2);
        }
    }

    @Override // cn.voidar.engine.b
    public void a(boolean z) {
        i.a().b("setFlashTorchMode:" + z);
        super.a(z);
        CaptureRequest.Builder builder = this.t;
        if (builder != null) {
            builder.set(CaptureRequest.FLASH_MODE, Integer.valueOf(z ? 2 : 0));
            try {
                this.m.setRepeatingRequest(this.t.build(), null, this.p);
            } catch (Exception e) {
                i.a().c("OpenCamera Error:" + e.toString());
            }
        }
    }

    public void f() {
        HandlerThread handlerThread = new HandlerThread("CameraBackground");
        this.q = handlerThread;
        handlerThread.start();
        this.p = new Handler(this.q.getLooper());
    }

    public void g() {
        HandlerThread handlerThread = this.q;
        if (handlerThread == null) {
            return;
        }
        handlerThread.quitSafely();
        try {
            this.q.join();
            this.q = null;
            this.p = null;
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
