package cn.voidar.engine;

import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.os.SystemClock;
import com.aptoide.sdk.billing.oemid.Constants;
import java.io.IOException;
import java.util.List;
import kotlinx.coroutines.DebugKt;

/* JADX INFO: loaded from: classes.dex */
public class d extends b implements Camera.PreviewCallback {
    private static Camera m;
    public Camera.Size l;
    private SurfaceTexture n;

    public d() {
        this.g = "NativeCamera1";
        this.h = 1;
    }

    private void h() {
        i.a().a("------start Preview-----  ");
        if (m == null) {
            i.a().a("no open camera");
            return;
        }
        if (this.n == null) {
            this.n = new SurfaceTexture(0);
        }
        try {
            m.setPreviewTexture(this.n);
        } catch (IOException e) {
            i.a().a("------camera setPreviewTexture error-----" + e);
            e.printStackTrace();
        }
        Camera.Size previewSize = m.getParameters().getPreviewSize();
        i.a().a("actualSize:" + previewSize.width + Constants.OEMID_SEPARATOR + previewSize.height);
        int i = (previewSize.width * (previewSize.height >> 1) * 3) + 4096;
        m.setPreviewCallbackWithBuffer(null);
        m.setPreviewCallbackWithBuffer(this);
        for (int i2 = 0; i2 < 2; i2++) {
            m.addCallbackBuffer(new byte[i]);
        }
        m.startPreview();
    }

    @Override // cn.voidar.engine.b
    public String a(String str) {
        Camera camera = m;
        return camera != null ? camera.getParameters().get(str) : "";
    }

    @Override // cn.voidar.engine.b
    public void a() {
        f();
        super.a();
    }

    @Override // cn.voidar.engine.b
    public void a(int i) {
        if (m != null) {
            f();
        }
        Camera cameraC = j.c(i);
        m = cameraC;
        if (cameraC != null) {
            c();
            h();
        }
    }

    @Override // cn.voidar.engine.b
    public void a(int i, int i2) {
        super.a(i, i2);
        Camera camera = m;
        if (camera != null) {
            camera.stopPreview();
            c();
            h();
        }
    }

    @Override // cn.voidar.engine.b
    public void a(boolean z) {
        super.a(z);
        i.a().b("setFlashTorchMode:" + z);
        if (m != null) {
            i.a().a("setFlashTorchMode 2");
            Camera.Parameters parameters = m.getParameters();
            parameters.setFlashMode(z ? "torch" : DebugKt.DEBUG_PROPERTY_VALUE_OFF);
            m.setParameters(parameters);
            i.a().a("setFlashTorchMode 2");
        }
    }

    @Override // cn.voidar.engine.b
    public void b() {
        if (this.f || m == null) {
            return;
        }
        try {
            this.f = true;
            m.autoFocus(new Camera.AutoFocusCallback() { // from class: cn.voidar.engine.d.1
                @Override // android.hardware.Camera.AutoFocusCallback
                public void onAutoFocus(boolean z, Camera camera) {
                    if (camera == d.m) {
                        d.this.f = false;
                    }
                }
            });
        } catch (Exception e) {
            i.a().c(e.toString());
        }
    }

    @Override // cn.voidar.engine.b
    public void c() {
        Camera camera = m;
        if (camera == null) {
            return;
        }
        Camera.Parameters parameters = camera.getParameters();
        this.l = j.a(this.f147a, this.f148b, parameters.getSupportedPreviewSizes());
        i.a().a("------camera usedSize----- = " + this.l.width + Constants.OEMID_SEPARATOR + this.l.height);
        parameters.setPreviewSize(this.l.width, this.l.height);
        List<String> supportedFocusModes = parameters.getSupportedFocusModes();
        String strA = j.a(this.d);
        i.a().a("mFocusMode: " + this.d + " focusModeStr=" + strA);
        if (supportedFocusModes != null && supportedFocusModes.contains(strA)) {
            i.a().a("setFocusMode = " + strA);
            parameters.setFocusMode(strA);
            if (strA == "auto") {
                b();
            } else {
                m.cancelAutoFocus();
            }
        }
        int[] iArrA = j.a(parameters.getSupportedPreviewFpsRange());
        int i = iArrA[0];
        int i2 = iArrA[1];
        if (i <= 0 || i2 <= 0) {
            parameters.setPreviewFrameRate(this.c);
            i.a().b("setPreviewFrameRate = " + this.c);
        } else {
            parameters.setPreviewFpsRange(i, i2);
            i.a().b("setPreviewFpsRange = " + i + "-" + i2);
        }
        this.k = (float) Math.toRadians(parameters.getHorizontalViewAngle());
        m.setParameters(parameters);
    }

    void f() {
        Camera camera = m;
        if (camera != null) {
            camera.stopPreview();
            m.setPreviewCallbackWithBuffer(null);
            m.release();
            m = null;
        }
        SurfaceTexture surfaceTexture = this.n;
        if (surfaceTexture != null) {
            surfaceTexture.release();
            this.n = null;
        }
    }

    @Override // android.hardware.Camera.PreviewCallback
    public void onPreviewFrame(byte[] bArr, Camera camera) {
        double dElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos() * 1.0E-9d;
        a(bArr, dElapsedRealtimeNanos, dElapsedRealtimeNanos);
        if (camera != null) {
            camera.addCallbackBuffer(bArr);
        }
    }
}
