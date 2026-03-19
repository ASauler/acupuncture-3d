package cn.voidar.engine;

import android.app.Activity;
import android.util.Log;
import android.view.Display;
import android.view.OrientationEventListener;
import android.widget.Toast;
import cn.voidar.engine.f;

/* JADX INFO: loaded from: classes.dex */
public class UnityActivityHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Activity f120a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static OrientationEventListener f121b = null;
    private static b c = null;
    private static c d = null;
    private static boolean e = false;

    public UnityActivityHelper() {
        Log.d("VoidAR_JAR", "--ver--2019.8");
    }

    static void a() {
        i.a().a("--onResume--");
        OrientationEventListener orientationEventListener = f121b;
        if (orientationEventListener != null) {
            orientationEventListener.enable();
        }
    }

    static void b() {
        i.a().a("--onPause--");
        OrientationEventListener orientationEventListener = f121b;
        if (orientationEventListener != null) {
            orientationEventListener.disable();
        }
    }

    public static boolean checkPermission(String str) {
        return j.a(str);
    }

    public static void closeCamera() {
        stopAR();
    }

    public static int getCamera2SupportLevel(int i) {
        return j.a(f120a, i);
    }

    public static String getCameraParameter(String str) {
        return c.a(str);
    }

    public static b getDeviceCamera() {
        return c;
    }

    public static String getDeviceInfo() {
        return j.b();
    }

    public static float getFOV() {
        b bVar = c;
        if (bVar != null) {
            return bVar.d();
        }
        return 0.0f;
    }

    public static String getJarVersion() {
        return "2019.8";
    }

    public static int initialize(Activity activity) {
        if (activity == null) {
            return -1;
        }
        f120a = activity;
        final Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        AndroidDevice.screenOrientation = defaultDisplay.getRotation();
        AndroidDevice.isCameraLandscape = j.a(defaultDisplay);
        if (f121b == null) {
            f121b = new OrientationEventListener(activity, 3) { // from class: cn.voidar.engine.UnityActivityHelper.1
                @Override // android.view.OrientationEventListener
                public void onOrientationChanged(int i) {
                    int rotation;
                    if (i == -1 || AndroidDevice.screenOrientation == (rotation = defaultDisplay.getRotation())) {
                        return;
                    }
                    AndroidDevice.screenOrientation = rotation;
                }
            };
        }
        if (f121b.canDetectOrientation()) {
            f121b.enable();
        }
        i.a().b(AndroidDevice.a());
        c = (AndroidDevice.CAMERA_VERSION == 2 && j.a(activity)) ? new e() : new d();
        d = new c(activity);
        Log.d("VoidAR_JAR", "native cameraName = " + c.g);
        return AndroidDevice.screenOrientation;
    }

    public static void onApplicationPause(boolean z) {
        if (z) {
            b();
        } else {
            a();
        }
    }

    public static void onDestroy() {
        i.a().a("--onDestroy--");
        c cVar = d;
        if (cVar != null) {
            cVar.b();
            d = null;
        }
        b bVar = c;
        if (bVar != null) {
            bVar.a();
            c = null;
        }
    }

    public static void openCamera(int i, int i2, int i3, int i4, int i5) {
        c.a(i2, i3);
        c.b(i4);
        startAR(i, i5);
    }

    public static void requestPermission(final String str) {
        j.a(str, new f.a() { // from class: cn.voidar.engine.UnityActivityHelper.2
            @Override // cn.voidar.engine.f.a
            public void a(final String str2, final boolean z) {
                i.a().a("permission callback permissionName=" + str2 + " pass = " + z);
                UnityActivityHelper.f120a.runOnUiThread(new Runnable() { // from class: cn.voidar.engine.UnityActivityHelper.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (str2.equals(str) && z) {
                            UnityActivityHelper.sendMessageToUnity("PERMISSION_GRANTED", str);
                        } else {
                            Toast.makeText(UnityActivityHelper.f120a, str + " Permission denied", 0).show();
                        }
                    }
                });
            }
        });
    }

    public static void sendMessageToUnity(String str, String str2) {
        VoidARNative.sendMessageToUnity(str, str2);
    }

    public static void setCameraVersion(int i) {
        StringBuilder sb;
        b bVar = c;
        if (bVar != null && bVar.e() != i) {
            c.a();
            c = AndroidDevice.CAMERA_VERSION == 2 ? new e() : new d();
            sb = new StringBuilder("swap cameraName = ");
        } else {
            if (AndroidDevice.CAMERA_VERSION == i) {
                return;
            }
            AndroidDevice.CAMERA_VERSION = i;
            c = AndroidDevice.CAMERA_VERSION == 2 ? new e() : new d();
            sb = new StringBuilder("open cameraName = ");
        }
        Log.d("VoidAR_JAR", sb.append(c.g).toString());
    }

    public static void setDeviceCamera(b bVar) {
        c = bVar;
    }

    public static void setFlashTorchMode(boolean z) {
        b bVar = c;
        if (bVar != null) {
            bVar.a(z);
        }
    }

    public static void startAR(int i, int i2) {
        if (AndroidDevice.lockCameraIndex != -1) {
            i = AndroidDevice.lockCameraIndex;
            Log.d("VoidAR_JAR", "lockCameraIndex = " + i);
        }
        if (!j.a("android.permission.CAMERA")) {
            Toast.makeText(f120a, "Camera Permission denied", 0).show();
            return;
        }
        c.a(i);
        if (i2 == 1) {
            d.a();
        }
    }

    public static void startIMU() {
        d.a();
    }

    public static void stopAR() {
        c.a();
        d.b();
    }

    public static void stopIMU() {
        d.b();
    }
}
