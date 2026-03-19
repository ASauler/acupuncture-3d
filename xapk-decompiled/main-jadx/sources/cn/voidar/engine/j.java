package cn.voidar.engine;

import android.app.Activity;
import android.app.FragmentTransaction;
import android.content.Context;
import android.content.Intent;
import android.hardware.Camera;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraManager;
import android.media.Image;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.util.DisplayMetrics;
import android.view.Display;
import cn.voidar.engine.f;
import com.facebook.react.views.textinput.ReactEditTextInputConnectionWrapper;
import java.io.File;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class j {
    public static int a(Context context, int i) {
        if (context != null) {
            try {
                CameraManager cameraManager = (CameraManager) context.getSystemService("camera");
                if (cameraManager == null) {
                    return 2;
                }
                String[] cameraIdList = cameraManager.getCameraIdList();
                if (cameraIdList.length == 0) {
                    return 2;
                }
                for (String str : cameraIdList) {
                    if (str == null || str.trim().isEmpty()) {
                        break;
                    }
                    CameraCharacteristics cameraCharacteristics = cameraManager.getCameraCharacteristics(str);
                    if (((Integer) cameraCharacteristics.get(CameraCharacteristics.LENS_FACING)).intValue() == i) {
                        return ((Integer) cameraCharacteristics.get(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL)).intValue();
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return 2;
    }

    public static Camera.Size a(int i, int i2, List<Camera.Size> list) {
        int i3 = 0;
        int i4 = 0;
        int i5 = 1000000;
        int i6 = 0;
        while (true) {
            if (i3 >= list.size()) {
                i3 = i6;
                break;
            }
            int i7 = list.get(i3).width;
            int i8 = list.get(i3).height;
            if (i7 == i && i8 == i2) {
                break;
            }
            if (i7 == 640 && i8 == 480) {
                i4 = i3;
            } else {
                int iAbs = Math.abs((i7 + i8) - (i + i2));
                if (iAbs < i5) {
                    i6 = i3;
                    i5 = iAbs;
                }
            }
            i3++;
        }
        if (i3 > 0) {
            i4 = i3;
        }
        return list.get(i4);
    }

    public static String a() {
        return Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM) + File.separator;
    }

    public static String a(int i) {
        return i != -1 ? i != 0 ? i != 1 ? i != 3 ? i != 4 ? "continuous-video" : "continuous-picture" : "macro" : "edof" : "auto" : "infinity";
    }

    public static String a(Camera camera) {
        Camera.Parameters parameters = camera.getParameters();
        String str = ("Zoom: " + parameters.getZoom() + ReactEditTextInputConnectionWrapper.NEWLINE_RAW_VALUE) + "White Balance: " + parameters.getWhiteBalance() + ReactEditTextInputConnectionWrapper.NEWLINE_RAW_VALUE;
        String string = (parameters.isAutoWhiteBalanceLockSupported() ? new StringBuilder().append(str).append("\t Lock supported, state: ").append(parameters.getAutoWhiteBalanceLock()).append(ReactEditTextInputConnectionWrapper.NEWLINE_RAW_VALUE) : new StringBuilder().append(str).append("\t Lock NOT supported\n")).toString();
        float[] fArr = new float[3];
        parameters.getFocusDistances(fArr);
        String str2 = "";
        for (int i = 0; i < 3; i++) {
            str2 = str2 + String.valueOf(fArr[i]) + " ";
        }
        String str3 = (((string + "Focal Distances: " + str2 + " \n") + "Focal Depth: " + parameters.getFocalLength() + ReactEditTextInputConnectionWrapper.NEWLINE_RAW_VALUE) + "Focus Mode: " + parameters.getFocusMode() + ReactEditTextInputConnectionWrapper.NEWLINE_RAW_VALUE) + "Exposure: " + parameters.getExposureCompensation() + ReactEditTextInputConnectionWrapper.NEWLINE_RAW_VALUE;
        return (parameters.isAutoExposureLockSupported() ? new StringBuilder().append(str3).append("\t Lock supported, state: ").append(parameters.getAutoExposureLock()).append(ReactEditTextInputConnectionWrapper.NEWLINE_RAW_VALUE) : new StringBuilder().append(str3).append("\t Lock NOT supported\n")).toString();
    }

    public static void a(Context context, String str) {
        if (context == null || str == null) {
            return;
        }
        File file = new File(str);
        if (file.isFile()) {
            Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
            intent.setData(Uri.fromFile(file));
            context.sendBroadcast(intent);
        }
    }

    public static void a(String str, f.a aVar) {
        f fVar = new f();
        fVar.a(UnityActivityHelper.f120a, aVar);
        Bundle bundle = new Bundle();
        bundle.putStringArray("PermissionNames", new String[]{str});
        fVar.setArguments(bundle);
        FragmentTransaction fragmentTransactionBeginTransaction = UnityActivityHelper.f120a.getFragmentManager().beginTransaction();
        fragmentTransactionBeginTransaction.add(0, fVar);
        fragmentTransactionBeginTransaction.commit();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x003f, code lost:
    
        r7 = ((android.hardware.camera2.params.StreamConfigurationMap) r5.get(android.hardware.camera2.CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP)).getOutputSizes(35);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004d, code lost:
    
        if (r7 == null) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x004f, code lost:
    
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0051, code lost:
    
        if (r1 >= r7.length) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0053, code lost:
    
        cn.voidar.engine.i.a().a("support format size w= " + r7[r1].getWidth() + " h=" + r7[r1].getHeight());
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x008c, code lost:
    
        if (r7[r1].getWidth() != 1280) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0096, code lost:
    
        if (r7[r1].getHeight() != 720) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0099, code lost:
    
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:?, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(android.content.Context r7) {
        /*
            r0 = 0
            if (r7 != 0) goto L4
            return r0
        L4:
            java.lang.String r1 = "camera"
            java.lang.Object r7 = r7.getSystemService(r1)     // Catch: java.lang.Throwable -> La1
            android.hardware.camera2.CameraManager r7 = (android.hardware.camera2.CameraManager) r7     // Catch: java.lang.Throwable -> La1
            if (r7 != 0) goto Lf
            return r0
        Lf:
            java.lang.String[] r1 = r7.getCameraIdList()     // Catch: java.lang.Throwable -> La1
            int r2 = r1.length     // Catch: java.lang.Throwable -> La1
            if (r2 != 0) goto L18
            goto La1
        L18:
            int r2 = r1.length     // Catch: java.lang.Throwable -> La1
            r3 = r0
        L1a:
            r4 = 1
            if (r3 >= r2) goto La0
            r5 = r1[r3]     // Catch: java.lang.Throwable -> La1
            if (r5 == 0) goto La0
            java.lang.String r6 = r5.trim()     // Catch: java.lang.Throwable -> La1
            boolean r6 = r6.isEmpty()     // Catch: java.lang.Throwable -> La1
            if (r6 == 0) goto L2d
            goto La0
        L2d:
            android.hardware.camera2.CameraCharacteristics r5 = r7.getCameraCharacteristics(r5)     // Catch: java.lang.Throwable -> La1
            android.hardware.camera2.CameraCharacteristics$Key r6 = android.hardware.camera2.CameraCharacteristics.LENS_FACING     // Catch: java.lang.Throwable -> La1
            java.lang.Object r6 = r5.get(r6)     // Catch: java.lang.Throwable -> La1
            java.lang.Integer r6 = (java.lang.Integer) r6     // Catch: java.lang.Throwable -> La1
            int r6 = r6.intValue()     // Catch: java.lang.Throwable -> La1
            if (r6 != r4) goto L9c
            android.hardware.camera2.CameraCharacteristics$Key r7 = android.hardware.camera2.CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP     // Catch: java.lang.Throwable -> La1
            java.lang.Object r7 = r5.get(r7)     // Catch: java.lang.Throwable -> La1
            android.hardware.camera2.params.StreamConfigurationMap r7 = (android.hardware.camera2.params.StreamConfigurationMap) r7     // Catch: java.lang.Throwable -> La1
            r1 = 35
            android.util.Size[] r7 = r7.getOutputSizes(r1)     // Catch: java.lang.Throwable -> La1
            if (r7 == 0) goto La1
            r1 = r0
        L50:
            int r2 = r7.length     // Catch: java.lang.Throwable -> La1
            if (r1 >= r2) goto La1
            cn.voidar.engine.i r2 = cn.voidar.engine.i.a()     // Catch: java.lang.Throwable -> La1
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La1
            r3.<init>()     // Catch: java.lang.Throwable -> La1
            java.lang.String r5 = "support format size w= "
            java.lang.StringBuilder r3 = r3.append(r5)     // Catch: java.lang.Throwable -> La1
            r5 = r7[r1]     // Catch: java.lang.Throwable -> La1
            int r5 = r5.getWidth()     // Catch: java.lang.Throwable -> La1
            java.lang.StringBuilder r3 = r3.append(r5)     // Catch: java.lang.Throwable -> La1
            java.lang.String r5 = " h="
            java.lang.StringBuilder r3 = r3.append(r5)     // Catch: java.lang.Throwable -> La1
            r5 = r7[r1]     // Catch: java.lang.Throwable -> La1
            int r5 = r5.getHeight()     // Catch: java.lang.Throwable -> La1
            java.lang.StringBuilder r3 = r3.append(r5)     // Catch: java.lang.Throwable -> La1
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> La1
            r2.a(r3)     // Catch: java.lang.Throwable -> La1
            r2 = r7[r1]     // Catch: java.lang.Throwable -> La1
            int r2 = r2.getWidth()     // Catch: java.lang.Throwable -> La1
            r3 = 1280(0x500, float:1.794E-42)
            if (r2 != r3) goto L99
            r2 = r7[r1]     // Catch: java.lang.Throwable -> La1
            int r2 = r2.getHeight()     // Catch: java.lang.Throwable -> La1
            r3 = 720(0x2d0, float:1.009E-42)
            if (r2 != r3) goto L99
            goto La0
        L99:
            int r1 = r1 + 1
            goto L50
        L9c:
            int r3 = r3 + 1
            goto L1a
        La0:
            r0 = r4
        La1:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.voidar.engine.j.a(android.content.Context):boolean");
    }

    public static boolean a(Display display) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        int rotation = display.getRotation();
        display.getMetrics(displayMetrics);
        return (displayMetrics.widthPixels > displayMetrics.heightPixels) ^ (rotation == 1 || rotation == 3);
    }

    public static boolean a(String str) {
        try {
            Activity activity = UnityActivityHelper.f120a;
            return activity.getPackageManager().checkPermission(str, activity.getPackageName()) == 0;
        } catch (Exception unused) {
            return false;
        }
    }

    public static byte[] a(Image image) {
        ByteBuffer buffer = image.getPlanes()[0].getBuffer();
        ByteBuffer buffer2 = image.getPlanes()[2].getBuffer();
        int iRemaining = buffer.remaining();
        int iRemaining2 = buffer2.remaining();
        byte[] bArr = new byte[iRemaining + iRemaining2];
        buffer.get(bArr, 0, iRemaining);
        buffer2.get(bArr, iRemaining, iRemaining2);
        return bArr;
    }

    public static int[] a(List<int[]> list) {
        int i;
        int i2;
        int[] iArr = {0, 0};
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            int[] iArr2 = list.get(i5);
            if (iArr2.length > 1 && (i = iArr2[0]) > i3 && (i2 = iArr2[1]) <= 60000) {
                i4 = i2;
                i3 = i;
            }
        }
        iArr[0] = i3;
        iArr[1] = i4;
        return iArr;
    }

    public static int b(int i) {
        if (i == -1) {
            return 0;
        }
        if (i == 0) {
            return 1;
        }
        if (i == 1) {
            return 5;
        }
        if (i != 3) {
            return i != 4 ? 3 : 4;
        }
        return 2;
    }

    public static String b() {
        StringBuilder sb = new StringBuilder();
        int numberOfCameras = Camera.getNumberOfCameras();
        for (int i = 0; i < numberOfCameras; i++) {
            Camera cameraOpen = Camera.open(i);
            if (cameraOpen != null) {
                sb.append("Camera index:" + i + ReactEditTextInputConnectionWrapper.NEWLINE_RAW_VALUE);
                sb.append(a(cameraOpen));
                cameraOpen.release();
            }
        }
        return sb.toString();
    }

    public static Camera c(int i) {
        Camera cameraOpen = null;
        try {
            Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
            int numberOfCameras = Camera.getNumberOfCameras();
            for (int i2 = 0; i2 < numberOfCameras; i2++) {
                Camera.getCameraInfo(i2, cameraInfo);
                if ((i != 0 || cameraInfo.facing != 0) && (i != 1 || cameraInfo.facing != 1)) {
                }
                cameraOpen = Camera.open(i2);
                break;
            }
            return cameraOpen == null ? Camera.open(0) : cameraOpen;
        } catch (Exception unused) {
            return null;
        }
    }
}
