package a.a.a.f.a;

import android.content.pm.PackageManager;
import android.os.Build;
import com.wikitude.common.CallValue;
import com.wikitude.common.WikitudeError;
import com.wikitude.common.internal.CallValueInternal;
import com.wikitude.common.internal.WikitudeErrorInternal;

/* JADX INFO: loaded from: classes.dex */
public final class h {

    public static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f71a;

        static {
            g.values();
            int[] iArr = new int[2];
            f71a = iArr;
            try {
                iArr[g.ORIENTATION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f71a[g.ROTATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static CallValue<e> a(g gVar, PackageManager packageManager) {
        String str;
        WikitudeErrorInternal wikitudeErrorInternal;
        b bVar;
        Object dVar;
        boolean zHasSystemFeature = packageManager.hasSystemFeature("android.hardware.sensor.gyroscope");
        boolean zHasSystemFeature2 = packageManager.hasSystemFeature("android.hardware.sensor.compass");
        boolean zHasSystemFeature3 = packageManager.hasSystemFeature("android.hardware.sensor.accelerometer");
        int iOrdinal = gVar.ordinal();
        if (iOrdinal != 0) {
            if (iOrdinal != 1) {
                return CallValueInternal.a((WikitudeError) new WikitudeErrorInternal(a.a.a.f.a.a.InvalidState.a(), a.a.a.f.a.a.f, "Invalid Event Type."));
            }
            if (zHasSystemFeature3 && zHasSystemFeature2 && zHasSystemFeature) {
                dVar = new i();
                return CallValueInternal.a(dVar);
            }
            if (zHasSystemFeature3 && zHasSystemFeature2) {
                bVar = new b(gVar);
                return CallValueInternal.a(bVar);
            }
            StringBuilder sb = new StringBuilder("Missing required sensors: ");
            if (!zHasSystemFeature3) {
                sb.append("Accelerometer");
            }
            if (!zHasSystemFeature2) {
                sb.append("Compass");
            }
            wikitudeErrorInternal = new WikitudeErrorInternal(a.a.a.f.a.a.MissingSensor.a(), a.a.a.f.a.a.f, sb.toString());
            return CallValueInternal.a((WikitudeError) wikitudeErrorInternal);
        }
        if (zHasSystemFeature3 && zHasSystemFeature) {
            String str2 = Build.MODEL;
            if (!"EMBT3C".equals(str2) && !"EMBT3S".equals(str2)) {
                dVar = new d();
                return CallValueInternal.a(dVar);
            }
            bVar = new b(gVar);
        } else {
            if (!zHasSystemFeature3 || !zHasSystemFeature2) {
                StringBuilder sb2 = new StringBuilder("Missing required sensors: ");
                if (zHasSystemFeature3) {
                    str = "Compass or Gyroscope";
                } else {
                    if (zHasSystemFeature && zHasSystemFeature2) {
                        sb2.append("Accelerometer");
                        wikitudeErrorInternal = new WikitudeErrorInternal(a.a.a.f.a.a.MissingSensor.a(), a.a.a.f.a.a.f, sb2.toString());
                        return CallValueInternal.a((WikitudeError) wikitudeErrorInternal);
                    }
                    str = "Accelerometer, Compass or Gyroscope";
                }
                sb2.append(str);
                wikitudeErrorInternal = new WikitudeErrorInternal(a.a.a.f.a.a.MissingSensor.a(), a.a.a.f.a.a.f, sb2.toString());
                return CallValueInternal.a((WikitudeError) wikitudeErrorInternal);
            }
            bVar = new b(gVar);
        }
        return CallValueInternal.a(bVar);
    }
}
