package a.a.a.d.a;

import android.content.Context;
import com.wikitude.common.CallStatus;
import com.wikitude.common.CallValue;
import com.wikitude.common.camera.CameraSettings;
import com.wikitude.common.camera.internal.AndroidCamera;
import com.wikitude.common.internal.CallStatusInternal;
import com.wikitude.common.internal.WikitudeErrorInternal;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f28a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f29b;
    private d c;
    private boolean d = false;

    public e(Context context, b bVar) {
        this.f28a = context;
        this.f29b = bVar;
    }

    public synchronized c a() {
        return (c) this.c;
    }

    public CallValue<AndroidCamera> a(CameraSettings.CameraPosition cameraPosition, CameraSettings.CameraResolution cameraResolution, CameraSettings.CameraFocusMode cameraFocusMode, boolean z, CameraSettings.Camera2SupportLevel camera2SupportLevel) {
        return f.a(this.f28a, cameraPosition, cameraResolution, cameraFocusMode, z, camera2SupportLevel);
    }

    public synchronized void a(AndroidCamera androidCamera) {
        d dVar = this.c;
        if (dVar == null) {
            this.c = androidCamera.isUsingCamera2() ? new h(this.f28a, this.f29b) : new g(this.f29b);
        } else if ((dVar instanceof h) && !androidCamera.isUsingCamera2()) {
            if (this.d) {
                this.c.f();
            }
            g gVar = new g(this.f29b);
            this.c = gVar;
            gVar.a(androidCamera);
            if (this.d) {
                this.c.b();
            }
        } else if ((this.c instanceof g) && androidCamera.isUsingCamera2()) {
            if (this.d) {
                this.c.f();
            }
            h hVar = new h(this.f28a, this.f29b);
            this.c = hVar;
            hVar.a(androidCamera);
            if (this.d) {
                this.c.b();
            }
        }
        this.c.a(androidCamera);
    }

    public synchronized CallStatus b() {
        CallStatus callStatusA = f.a(this.f28a);
        if (!callStatusA.isSuccess()) {
            return callStatusA;
        }
        d dVar = this.c;
        if (dVar == null) {
            return CallStatusInternal.error(new WikitudeErrorInternal(a.CameraDeviceError.a(), a.k, "Could not start the camera because no activeCamera has been set."));
        }
        dVar.b();
        this.d = true;
        return CallStatusInternal.success();
    }

    public synchronized void c() {
        if (this.d) {
            this.d = false;
            this.c.f();
        }
    }
}
