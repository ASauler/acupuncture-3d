package a.a.a.c.a;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.google.ar.core.ArCoreApk;
import com.google.ar.core.exceptions.UnavailableDeviceNotCompatibleException;
import com.google.ar.core.exceptions.UnavailableUserDeclinedInstallationException;
import java.security.InvalidParameterException;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static c f10a;

    public static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f11a;

        static {
            int[] iArr = new int[ArCoreApk.Availability.values().length];
            f11a = iArr;
            try {
                iArr[ArCoreApk.Availability.UNKNOWN_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11a[ArCoreApk.Availability.UNKNOWN_TIMED_OUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f11a[ArCoreApk.Availability.UNKNOWN_CHECKING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f11a[ArCoreApk.Availability.UNSUPPORTED_DEVICE_NOT_CAPABLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f11a[ArCoreApk.Availability.SUPPORTED_NOT_INSTALLED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f11a[ArCoreApk.Availability.SUPPORTED_APK_TOO_OLD.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f11a[ArCoreApk.Availability.SUPPORTED_INSTALLED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* JADX INFO: renamed from: a.a.a.c.a.b$b, reason: collision with other inner class name */
    public interface InterfaceC0000b {
        void a(int i);
    }

    public interface c {
        int a(Context context);

        void a(Context context, InterfaceC0000b interfaceC0000b);
    }

    public static final class d implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static AtomicBoolean f12a = new AtomicBoolean(false);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static ArCoreApk.Availability f13b = ArCoreApk.Availability.UNKNOWN_ERROR;
        private static boolean c = false;

        public static class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final /* synthetic */ Context f14a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ InterfaceC0000b f15b;

            /* JADX INFO: renamed from: a.a.a.c.a.b$d$a$a, reason: collision with other inner class name */
            public class RunnableC0001a implements Runnable {
                public RunnableC0001a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    a aVar = a.this;
                    d.c(aVar.f14a, aVar.f15b);
                }
            }

            public a(Context context, InterfaceC0000b interfaceC0000b) {
                this.f14a = context;
                this.f15b = interfaceC0000b;
            }

            @Override // java.lang.Runnable
            public void run() {
                ArCoreApk.Availability availabilityCheckAvailability = ArCoreApk.getInstance().checkAvailability(this.f14a);
                ArCoreApk.Availability unused = d.f13b = availabilityCheckAvailability;
                if (!d.c) {
                    boolean unused2 = d.c = true;
                }
                Log.v("APK_INSTALLATION", "availability: " + d.c(availabilityCheckAvailability));
                this.f15b.a(d.c(availabilityCheckAvailability));
                if (availabilityCheckAvailability.isTransient()) {
                    new Handler(Looper.getMainLooper()).postDelayed(new RunnableC0001a(), 200L);
                } else {
                    d.f12a.set(false);
                }
            }
        }

        private d() {
        }

        public /* synthetic */ d(a aVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int c(ArCoreApk.Availability availability) {
            switch (a.f11a[availability.ordinal()]) {
                case 1:
                case 2:
                    return 0;
                case 3:
                    return 1;
                case 4:
                    return 2;
                case 5:
                case 6:
                    return 3;
                case 7:
                    return 4;
                default:
                    throw new InvalidParameterException("Invalid input parameter value encountered");
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void c(Context context, InterfaceC0000b interfaceC0000b) {
            new Handler(Looper.getMainLooper()).post(new a(context, interfaceC0000b));
        }

        @Override // a.a.a.c.a.b.c
        public int a(Context context) {
            ArCoreApk.Availability availability;
            if (c && (f13b == ArCoreApk.Availability.SUPPORTED_NOT_INSTALLED || f13b == ArCoreApk.Availability.SUPPORTED_APK_TOO_OLD)) {
                try {
                    if (ArCoreApk.getInstance().requestInstall((Activity) context, true) == ArCoreApk.InstallStatus.INSTALLED) {
                        f13b = ArCoreApk.Availability.SUPPORTED_INSTALLED;
                    }
                } catch (UnavailableDeviceNotCompatibleException unused) {
                } catch (UnavailableUserDeclinedInstallationException unused2) {
                    availability = ArCoreApk.Availability.UNSUPPORTED_DEVICE_NOT_CAPABLE;
                }
                availability = f13b;
            } else {
                availability = f13b;
            }
            return c(availability);
        }

        @Override // a.a.a.c.a.b.c
        public void a(Context context, InterfaceC0000b interfaceC0000b) {
            if (f12a.compareAndSet(false, true)) {
                c(context, interfaceC0000b);
            }
        }
    }

    public static final class e implements c {
        private e() {
        }

        public /* synthetic */ e(a aVar) {
            this();
        }

        @Override // a.a.a.c.a.b.c
        public int a(Context context) {
            return 0;
        }

        @Override // a.a.a.c.a.b.c
        public void a(Context context, InterfaceC0000b interfaceC0000b) {
            interfaceC0000b.a(0);
        }
    }

    public static final class f implements c {
        private f() {
        }

        public /* synthetic */ f(a aVar) {
            this();
        }

        @Override // a.a.a.c.a.b.c
        public int a(Context context) {
            return 2;
        }

        @Override // a.a.a.c.a.b.c
        public void a(Context context, InterfaceC0000b interfaceC0000b) {
            interfaceC0000b.a(2);
        }
    }

    static {
        a aVar = null;
        try {
            Class.forName("com.google.ar.core.ArCoreApk");
            Class.forName("com.google.ar.core.Config");
            Class.forName("com.google.ar.core.Session");
            f10a = new d(aVar);
        } catch (ClassNotFoundException unused) {
            Log.w("Wikitude", "Can't find ArCore. Make sure to add it as a dependency of the app.");
            f10a = new e(aVar);
        }
    }

    private b() {
    }

    public static int a(Context context) {
        return f10a.a(context);
    }

    public static void a(Context context, InterfaceC0000b interfaceC0000b) {
        f10a.a(context, interfaceC0000b);
    }
}
