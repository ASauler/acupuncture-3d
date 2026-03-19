package a.a.a.d.a;

import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class i implements Camera.PreviewCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f51a = "DeviceCaptureSession";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f52b;
    private final a c;
    private a.a.a.l.a.b d;
    private SurfaceTexture f;
    private Camera.Size h;
    private boolean e = false;
    private int g = 842094169;

    public interface a {
        void a(a.a.a.d.a.a aVar, String str);
    }

    public i(b bVar, a aVar) {
        this.f52b = bVar;
        this.c = aVar;
    }

    public a.a.a.l.a.b a() {
        Camera.Size size = this.h;
        return new a.a.a.l.a.b(size.width, size.height);
    }

    public void a(a.a.a.l.a.b bVar) {
        this.d = bVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x006b A[PHI: r3
      0x006b: PHI (r3v13 java.lang.String) = (r3v3 java.lang.String), (r3v4 java.lang.String) binds: [B:12:0x0069, B:15:0x0075] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(android.hardware.Camera r6) throws java.io.IOException {
        /*
            r5 = this;
            if (r6 == 0) goto Laf
            boolean r0 = r5.e
            if (r0 != 0) goto Laf
            android.hardware.Camera$Parameters r0 = r6.getParameters()
            int r1 = r5.g
            r0.setPreviewFormat(r1)
            android.hardware.Camera$Size r1 = new android.hardware.Camera$Size
            a.a.a.l.a.b r2 = r5.d
            int r2 = r2.b()
            a.a.a.l.a.b r3 = r5.d
            int r3 = r3.a()
            r1.<init>(r6, r2, r3)
            r5.h = r1
            int r2 = r1.width
            int r1 = r1.height
            r0.setPreviewSize(r2, r1)
            a.a.a.d.a.b r1 = r5.f52b
            android.hardware.Camera$Size r2 = r5.h
            int r3 = r2.width
            int r2 = r2.height
            r1.a(r3, r2)
            a.a.a.d.a.b r1 = r5.f52b
            int r2 = r5.g
            r1.a(r2)
            java.lang.String r1 = "video-stabilization-supported"
            java.lang.String r1 = r0.get(r1)
            java.lang.String r2 = "true"
            boolean r1 = r2.equals(r1)
            if (r1 == 0) goto L51
            java.lang.String r1 = "video-stabilization"
            r0.set(r1, r2)
        L51:
            java.lang.String r1 = android.os.Build.MODEL
            java.lang.String r2 = "Nexus 4"
            boolean r1 = r1.equalsIgnoreCase(r2)
            r2 = 1
            if (r1 == 0) goto L5f
            r0.setRecordingHint(r2)
        L5f:
            java.util.List r1 = r0.getSupportedFocusModes()
            java.lang.String r3 = "continuous-video"
            boolean r4 = r1.contains(r3)
            if (r4 == 0) goto L6f
        L6b:
            r0.setFocusMode(r3)
            goto L78
        L6f:
            java.lang.String r3 = "auto"
            boolean r1 = r1.contains(r3)
            if (r1 == 0) goto L78
            goto L6b
        L78:
            android.hardware.Camera$Size r1 = r5.h
            int r3 = r1.width
            int r1 = r1.height
            int r3 = r3 * r1
            int r3 = r3 * 3
            int r3 = r3 / 2
            byte[] r1 = new byte[r3]
            r6.addCallbackBuffer(r1)
            android.hardware.Camera$Size r1 = r5.h
            int r3 = r1.width
            int r1 = r1.height
            int r3 = r3 * r1
            int r3 = r3 * 3
            int r3 = r3 / 2
            byte[] r1 = new byte[r3]
            r6.addCallbackBuffer(r1)
            r6.setPreviewCallbackWithBuffer(r5)
            r6.setParameters(r0)
            android.graphics.SurfaceTexture r0 = new android.graphics.SurfaceTexture
            r1 = 10
            r0.<init>(r1)
            r5.f = r0
            r6.setPreviewTexture(r0)
            r6.startPreview()
            r5.e = r2
        Laf:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: a.a.a.d.a.i.a(android.hardware.Camera):void");
    }

    public void b(Camera camera) {
        camera.setPreviewCallbackWithBuffer(null);
        camera.stopPreview();
        this.e = false;
        this.f.release();
    }

    @Override // android.hardware.Camera.PreviewCallback
    public void onPreviewFrame(byte[] bArr, Camera camera) {
        a aVar;
        a.a.a.d.a.a aVar2;
        String str;
        if (bArr != null) {
            this.f52b.a(this.f.getTimestamp(), bArr, bArr.length);
            camera.addCallbackBuffer(bArr);
            return;
        }
        if (this.g == 842094169) {
            this.g = 17;
            try {
                b(camera);
                a(camera);
                return;
            } catch (IOException e) {
                a.a.a.e.a.b.b(f51a, "startCamera: Exception during Camera start: " + e.getMessage() + ".");
                aVar = this.c;
                aVar2 = a.a.a.d.a.a.CameraDeviceError;
                str = "Could not start the camera.";
            }
        } else {
            aVar = this.c;
            aVar2 = a.a.a.d.a.a.CameraDeviceError;
            str = "The frame received from the camera is missing data. This may be happening because of a bug in this device's camera.";
        }
        aVar.a(aVar2, str);
    }
}
