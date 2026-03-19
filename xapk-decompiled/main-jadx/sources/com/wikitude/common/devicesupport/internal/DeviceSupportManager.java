package com.wikitude.common.devicesupport.internal;

import a.a.a.g.b.a;
import android.app.ActivityManager;
import android.content.Context;
import android.hardware.SensorManager;
import android.location.LocationManager;
import android.os.Build;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.wikitude.common.CallStatus;
import com.wikitude.common.internal.CallStatusInternal;
import com.wikitude.common.internal.WikitudeErrorInternal;
import java.io.FileInputStream;
import java.util.Scanner;

/* JADX INFO: loaded from: classes2.dex */
public final class DeviceSupportManager {
    public static float a(Context context) {
        return ((ActivityManager) context.getSystemService("activity")).getDeviceConfigurationInfo().reqGlEsVersion;
    }

    public static boolean a() throws Throwable {
        Scanner scanner;
        boolean z = false;
        String upperCase = System.getProperty("os.arch").substring(0, 3).toUpperCase();
        if (upperCase.equals("X86") || upperCase.equals("I68") || upperCase.equals("AAR")) {
            return true;
        }
        Scanner scanner2 = null;
        try {
            scanner = new Scanner(new FileInputStream("/proc/cpuinfo"));
            while (scanner.hasNextLine()) {
                try {
                    if (!z && scanner.findInLine("neon") != null) {
                        z = true;
                    }
                    scanner.nextLine();
                } catch (Exception unused) {
                    scanner2 = scanner;
                    if (scanner2 == null) {
                        return z;
                    }
                    scanner = scanner2;
                } catch (Throwable th) {
                    th = th;
                    scanner2 = scanner;
                    if (scanner2 != null) {
                        scanner2.close();
                    }
                    throw th;
                }
            }
        } catch (Exception unused2) {
        } catch (Throwable th2) {
            th = th2;
        }
        boolean z2 = z;
        scanner.close();
        return z2;
    }

    public static int b() {
        return Runtime.getRuntime().availableProcessors();
    }

    public static CallStatus isDeviceSupporting(Context context, int i) {
        String property = System.getProperty("line.separator");
        String str = !context.getPackageManager().hasSystemFeature("android.hardware.camera.any") ? "- Camera" + property : "";
        if (a(context) < 131072.0f) {
            str = str + "- OpenGLES version 2.0.+" + property;
        }
        SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
        int i2 = i & 8;
        if (i2 == 8) {
            LocationManager locationManager = (LocationManager) context.getSystemService(FirebaseAnalytics.Param.LOCATION);
            boolean z = "vuzix".equals(Build.MANUFACTURER) && "M300".equals(Build.MODEL);
            if (locationManager == null || locationManager.getAllProviders() == null || locationManager.getAllProviders().size() <= 0 || z) {
                str = str + "- GPS / Location Provider" + property;
            }
        }
        int i3 = i & 1;
        if (i3 == 1 || (i & 4) == 4 || (i & 2) == 2) {
            if (!a()) {
                str = str + "- Chipset supporting NEON" + property;
            }
            if (i3 == 1 && b() < 2) {
                str = str + "- Dual-Core CPU" + property;
            }
            if (((i & 4) == 4 || (i & 2) == 2) && b() < 4) {
                str = str + "- Quad-Core CPU" + property;
            }
        }
        if (i2 == 8) {
            if (sensorManager == null || sensorManager.getDefaultSensor(1) == null) {
                str = str + "- Accelerometer" + property;
            }
            if (sensorManager == null || sensorManager.getDefaultSensor(2) == null) {
                str = str + "- Compass" + property;
            }
        }
        if ((i & 4) == 4) {
            if (sensorManager == null || sensorManager.getDefaultSensor(1) == null) {
                str = str + "- Accelerometer" + property;
            }
            if (sensorManager == null || sensorManager.getDefaultSensor(2) == null || sensorManager.getDefaultSensor(4) == null) {
                str = str + "- Compass or Gyroscope" + property;
            }
        }
        if (str.equals("")) {
            return CallStatusInternal.success();
        }
        return CallStatusInternal.error(new WikitudeErrorInternal(a.MissingFeature.a(), a.f79b, "The device is missing following features:" + property + str));
    }
}
