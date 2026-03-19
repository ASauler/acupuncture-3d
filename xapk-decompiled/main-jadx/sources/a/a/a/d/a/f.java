package a.a.a.d.a;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.os.Build;
import android.util.Size;
import android.util.SizeF;
import com.wikitude.common.CallStatus;
import com.wikitude.common.CallValue;
import com.wikitude.common.WikitudeError;
import com.wikitude.common.camera.CameraSettings;
import com.wikitude.common.camera.internal.AndroidCamera;
import com.wikitude.common.internal.CallStatusInternal;
import com.wikitude.common.internal.CallValueInternal;
import com.wikitude.common.internal.WikitudeErrorInternal;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f30a = "f";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final float f31b = 54.0f;
    private static final float c = 1.0f;
    private static final float d = 179.0f;

    public static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f32a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f33b;

        static {
            CameraSettings.CameraResolution.values();
            int[] iArr = new int[4];
            f33b = iArr;
            try {
                iArr[CameraSettings.CameraResolution.HD_1280x720.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f33b[CameraSettings.CameraResolution.FULL_HD_1920x1080.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f33b[CameraSettings.CameraResolution.AUTO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f33b[CameraSettings.CameraResolution.SD_640x480.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            CameraSettings.Camera2SupportLevel.values();
            int[] iArr2 = new int[4];
            f32a = iArr2;
            try {
                iArr2[CameraSettings.Camera2SupportLevel.FULL.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f32a[CameraSettings.Camera2SupportLevel.LIMITED.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f32a[CameraSettings.Camera2SupportLevel.LEVEL_3.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f32a[CameraSettings.Camera2SupportLevel.LEGACY.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface b {
    }

    public static float a(float f, float f2) {
        return (float) Math.toDegrees(Math.atan((((double) f) * 0.5d) / ((double) f2)) * 2.0d);
    }

    public static float a(float f, float f2, a.a.a.l.a.b bVar, a.a.a.l.a.b bVar2) {
        float degrees;
        String str = Build.MODEL;
        if ("EMBT3C".equals(str) || "EMBT3S".equals(str)) {
            f = 67.6f;
        }
        if ("vuzix".equals(Build.MANUFACTURER) && "M300".equals(str) && f < 40.0f) {
            f = 70.0f;
        }
        if (f2 > 0.0f) {
            try {
                degrees = (float) Math.toDegrees(Math.atan((Math.tan(Math.toRadians(f) / 2.0d) * 100.0d) / ((double) f2)) * 2.0d);
            } catch (Exception unused) {
                degrees = -1.0f;
            }
        } else {
            degrees = f;
        }
        if (f < 1.0f || f > d || degrees == -1.0f) {
            degrees = f31b;
        }
        float fB = bVar2.b() / bVar2.a();
        float fB2 = bVar.b() / bVar.a();
        if (fB <= fB2) {
            return degrees;
        }
        return 2.0f * ((float) Math.toDegrees(Math.atan((((double) fB2) * 0.5d) / ((((double) fB) * 0.5d) / Math.tan(Math.toRadians(((double) degrees) * 0.5d))))));
    }

    public static float a(CameraCharacteristics cameraCharacteristics, a.a.a.l.a.b bVar) {
        return a(cameraCharacteristics, bVar, 0.0f);
    }

    public static float a(CameraCharacteristics cameraCharacteristics, a.a.a.l.a.b bVar, float f) {
        try {
            float fA = a((((SizeF) cameraCharacteristics.get(CameraCharacteristics.SENSOR_INFO_PHYSICAL_SIZE)).getWidth() * ((Rect) cameraCharacteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE)).width()) / ((Size) cameraCharacteristics.get(CameraCharacteristics.SENSOR_INFO_PIXEL_ARRAY_SIZE)).getWidth(), ((float[]) cameraCharacteristics.get(CameraCharacteristics.LENS_INFO_AVAILABLE_FOCAL_LENGTHS))[0]);
            Size size = ((StreamConfigurationMap) cameraCharacteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP)).getOutputSizes(35)[0];
            return a(fA, f, bVar, new a.a.a.l.a.b(size.getWidth(), size.getHeight()));
        } catch (Exception e) {
            a.a.a.e.a.b.b(f30a, "Could not calculate camera2 fov, default is used.", e);
            return f31b;
        }
    }

    private static int a(int i, int i2, int i3) {
        return i < i2 ? i2 : i > i3 ? i3 : i;
    }

    public static a.a.a.l.a.b a(a.a.a.l.a.b bVar, a.a.a.l.a.b bVar2, a.a.a.l.a.b bVar3) {
        return Math.abs(bVar3.b() - bVar2.b()) + Math.abs(bVar3.a() - bVar2.a()) < Math.abs(bVar.b() - bVar2.b()) + Math.abs(bVar.a() - bVar2.a()) ? new a.a.a.l.a.b(bVar3.b(), bVar3.a()) : bVar;
    }

    public static a.a.a.l.a.b a(CameraSettings.CameraResolution cameraResolution) {
        if (!Build.SUPPORTED_ABIS[0].equals("arm64-v8a") && cameraResolution == CameraSettings.CameraResolution.AUTO) {
            cameraResolution = CameraSettings.CameraResolution.SD_640x480;
        }
        int iOrdinal = cameraResolution.ordinal();
        return iOrdinal != 1 ? (iOrdinal == 2 || iOrdinal == 3) ? new a.a.a.l.a.b(1920, 1080) : new a.a.a.l.a.b(640, 480) : new a.a.a.l.a.b(1280, 720);
    }

    public static Rect a(PointF pointF, Rect rect, float f) {
        int i = (rect.left + rect.right) / 2;
        int i2 = (rect.top + rect.bottom) / 2;
        int iWidth = (int) ((pointF.x * rect.width()) + rect.left);
        int i3 = (int) (i - ((i - iWidth) / f));
        int iHeight = (int) (i2 - ((i2 - ((int) ((pointF.y * rect.height()) + rect.top))) / f));
        int iWidth2 = ((int) ((rect.width() * 0.1f) / f)) / 2;
        return new Rect(a(i3 - iWidth2, rect.left, rect.right), a(iHeight - iWidth2, rect.top, rect.bottom), a(i3 + iWidth2, rect.left, rect.right), a(iHeight + iWidth2, rect.top, rect.bottom));
    }

    public static Rect a(Rect rect, float f, float f2) {
        float f3 = f2 < 1.0f ? 0.0f : f2 - 1.0f;
        int iWidth = rect.width();
        int iHeight = rect.height();
        float f4 = (iHeight - ((int) (iHeight / f))) / f;
        int iCeil = (int) Math.ceil(((double) (((iWidth - ((int) (iWidth / f))) / f) * f3)) * 0.5d);
        int iCeil2 = (int) Math.ceil(((double) (f4 * f3)) * 0.5d);
        int i = rect.left;
        int i2 = rect.top;
        return new Rect(iCeil + i, iCeil2 + i2, (iWidth - iCeil) + i, (iHeight - iCeil2) + i2);
    }

    public static CallStatus a(Context context) {
        return context.checkSelfPermission("android.permission.CAMERA") == -1 ? CallStatusInternal.error(new WikitudeErrorInternal(a.a.a.d.a.a.CameraPermissionsNotGranted.a(), a.a.a.d.a.a.k, "Permission denied. Make sure to have camera permissions before trying to access the camera.")) : CallStatusInternal.success();
    }

    public static CallValue<AndroidCamera> a(Context context, CameraSettings.CameraPosition cameraPosition, CameraSettings.CameraResolution cameraResolution, CameraSettings.CameraFocusMode cameraFocusMode, boolean z, CameraSettings.Camera2SupportLevel camera2SupportLevel) {
        if (!z) {
            return a(cameraPosition, cameraResolution, cameraFocusMode);
        }
        CameraManager cameraManager = (CameraManager) context.getSystemService("camera");
        return cameraManager == null ? CallValueInternal.a((WikitudeError) new WikitudeErrorInternal(a.a.a.d.a.a.CameraDeviceError.a(), a.a.a.d.a.a.k, "Could not get access to the camera Service.")) : a(cameraManager, cameraPosition, cameraResolution, cameraFocusMode, camera2SupportLevel);
    }

    public static CallValue<AndroidCamera> a(CameraManager cameraManager, CameraSettings.CameraPosition cameraPosition, CameraSettings.CameraResolution cameraResolution, CameraSettings.CameraFocusMode cameraFocusMode, CameraSettings.Camera2SupportLevel camera2SupportLevel) {
        String str;
        try {
            int i = 0;
            for (String str2 : cameraManager.getCameraIdList()) {
                Integer num = (Integer) cameraManager.getCameraCharacteristics(str2).get(CameraCharacteristics.LENS_FACING);
                if (num != null) {
                    if (cameraPosition == CameraSettings.CameraPosition.BACK) {
                        if (num.intValue() == 1) {
                            str = str2;
                            break;
                        }
                    } else {
                        if (cameraPosition != CameraSettings.CameraPosition.FRONT) {
                            if (num.intValue() != 1 && num.intValue() != 0) {
                            }
                            str = str2;
                            break;
                        }
                        if (num.intValue() == 0) {
                            str = str2;
                            break;
                        }
                    }
                }
            }
            str = null;
            if (str == null) {
                return CallValueInternal.a((WikitudeError) new WikitudeErrorInternal(a.a.a.d.a.a.CameraDeviceError.a(), a.a.a.d.a.a.k, "Could not find a camera with the given position"));
            }
            int iOrdinal = camera2SupportLevel.ordinal();
            if (iOrdinal != 0) {
                if (iOrdinal != 1) {
                    i = 3;
                    if (iOrdinal != 3) {
                        i = 2;
                    }
                } else {
                    i = 1;
                }
            }
            return !a(i, cameraManager.getCameraCharacteristics(str)) ? a(cameraPosition, cameraResolution, cameraFocusMode) : CallValueInternal.a(new AndroidCamera(str, cameraPosition, cameraResolution, cameraFocusMode, true, camera2SupportLevel));
        } catch (CameraAccessException unused) {
            return CallValueInternal.a((WikitudeError) new WikitudeErrorInternal(a.a.a.d.a.a.CameraDeviceError.a(), a.a.a.d.a.a.k, "Could not get access to the camera Service."));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.wikitude.common.CallValue<com.wikitude.common.camera.internal.AndroidCamera> a(com.wikitude.common.camera.CameraSettings.CameraPosition r6, com.wikitude.common.camera.CameraSettings.CameraResolution r7, com.wikitude.common.camera.CameraSettings.CameraFocusMode r8) {
        /*
            int r0 = android.hardware.Camera.getNumberOfCameras()
            android.hardware.Camera$CameraInfo r1 = new android.hardware.Camera$CameraInfo
            r1.<init>()
            com.wikitude.common.camera.CameraSettings$CameraPosition r2 = com.wikitude.common.camera.CameraSettings.CameraPosition.DEFAULT
            r3 = 0
            r4 = 0
            if (r6 == r2) goto L32
            r2 = 1
            if (r0 <= r2) goto L32
            com.wikitude.common.camera.CameraSettings$CameraPosition r5 = com.wikitude.common.camera.CameraSettings.CameraPosition.BACK
            if (r6 != r5) goto L17
            r2 = r3
        L17:
            if (r3 >= r0) goto L42
            android.hardware.Camera.getCameraInfo(r3, r1)
            int r5 = r1.facing
            if (r5 != r2) goto L2f
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r5 = ""
            r4.<init>(r5)
            java.lang.StringBuilder r4 = r4.append(r3)
            java.lang.String r4 = r4.toString()
        L2f:
            int r3 = r3 + 1
            goto L17
        L32:
            if (r0 <= 0) goto L42
            android.hardware.Camera.getCameraInfo(r3, r1)
            int r6 = r1.facing
            if (r6 != 0) goto L3e
            com.wikitude.common.camera.CameraSettings$CameraPosition r6 = com.wikitude.common.camera.CameraSettings.CameraPosition.BACK
            goto L40
        L3e:
            com.wikitude.common.camera.CameraSettings$CameraPosition r6 = com.wikitude.common.camera.CameraSettings.CameraPosition.FRONT
        L40:
            java.lang.String r4 = "0"
        L42:
            if (r4 != 0) goto L58
            com.wikitude.common.internal.WikitudeErrorInternal r6 = new com.wikitude.common.internal.WikitudeErrorInternal
            a.a.a.d.a.a r7 = a.a.a.d.a.a.CameraDeviceError
            int r7 = r7.a()
            java.lang.String r8 = "com.wikitude.camera.android"
            java.lang.String r0 = "Could not find a camera with the given position"
            r6.<init>(r7, r8, r0)
            com.wikitude.common.CallValue r6 = com.wikitude.common.internal.CallValueInternal.a(r6)
            return r6
        L58:
            com.wikitude.common.camera.internal.AndroidCamera r0 = new com.wikitude.common.camera.internal.AndroidCamera
            r0.<init>(r4, r6, r7, r8)
            com.wikitude.common.CallValue r6 = com.wikitude.common.internal.CallValueInternal.a(r0)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: a.a.a.d.a.f.a(com.wikitude.common.camera.CameraSettings$CameraPosition, com.wikitude.common.camera.CameraSettings$CameraResolution, com.wikitude.common.camera.CameraSettings$CameraFocusMode):com.wikitude.common.CallValue");
    }

    public static boolean a(int i, CameraCharacteristics cameraCharacteristics) {
        Integer num = (Integer) cameraCharacteristics.get(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL);
        if (num == null) {
            return false;
        }
        if (i == 2) {
            return true;
        }
        return num.intValue() != 2 && i <= num.intValue();
    }
}
