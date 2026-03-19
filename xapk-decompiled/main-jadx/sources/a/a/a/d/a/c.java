package a.a.a.d.a;

import android.graphics.PointF;
import com.wikitude.common.CallStatus;
import com.wikitude.common.CallValue;
import com.wikitude.common.camera.CameraSettings;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface c {
    CallStatus a(float f);

    CallStatus a(PointF pointF);

    CallStatus a(CameraSettings.CameraFocusMode cameraFocusMode);

    CallStatus a(CameraSettings.TorchMode torchMode);

    CallStatus b(float f);

    CallStatus b(PointF pointF);

    CallStatus b(CameraSettings.CameraFocusMode cameraFocusMode);

    CallStatus b(CameraSettings.TorchMode torchMode);

    CallStatus c(float f);

    CallValue<CameraSettings.CameraFocusMode> c();

    CallValue<List<CameraSettings.CameraPosition>> d();

    CallStatus e();

    CallValue<Float> g();

    CallValue<List<CameraSettings.CameraFocusMode>> h();

    CallValue<Float> i();

    CallStatus j();

    CallStatus k();

    CallValue<CameraSettings.TorchMode> l();

    CallValue<Float> m();
}
