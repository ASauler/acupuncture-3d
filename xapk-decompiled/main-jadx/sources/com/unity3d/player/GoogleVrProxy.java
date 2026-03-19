package com.unity3d.player;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.Surface;
import android.view.SurfaceView;
import android.view.View;
import com.unity3d.player.GoogleVrVideo;
import java.lang.reflect.Array;
import java.util.Iterator;
import java.util.Vector;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes2.dex */
class GoogleVrProxy extends d implements GoogleVrVideo {
    private boolean f;
    private boolean g;
    private Runnable h;
    private Vector i;
    private SurfaceView j;
    private a k;
    private Thread l;
    private Handler m;

    class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f281a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f282b = false;
        public boolean c = false;
        public boolean d = false;
        public boolean e = true;
        public boolean f = false;

        a() {
        }

        public final boolean a() {
            return this.f281a && this.f282b;
        }

        public final void b() {
            this.f281a = false;
            this.f282b = false;
            this.d = false;
            this.e = true;
            this.f = false;
        }
    }

    public GoogleVrProxy(h hVar) {
        super("Google VR", hVar);
        this.f = false;
        this.g = false;
        this.h = null;
        this.i = new Vector();
        this.j = null;
        this.k = new a();
        this.l = null;
        this.m = new Handler(Looper.getMainLooper()) { // from class: com.unity3d.player.GoogleVrProxy.1
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                if (message.what != 135711) {
                    super.handleMessage(message);
                }
                switch (message.arg1) {
                    case 2147483645:
                        Iterator it = GoogleVrProxy.this.i.iterator();
                        while (it.hasNext()) {
                            ((GoogleVrVideo.GoogleVrVideoCallbacks) it.next()).onFrameAvailable();
                        }
                        break;
                    case 2147483646:
                        Surface surface = (Surface) message.obj;
                        Iterator it2 = GoogleVrProxy.this.i.iterator();
                        while (it2.hasNext()) {
                            ((GoogleVrVideo.GoogleVrVideoCallbacks) it2.next()).onSurfaceAvailable(surface);
                        }
                        break;
                    default:
                        super.handleMessage(message);
                        break;
                }
            }
        };
        initVrJni();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        this.k.d = z;
    }

    private boolean a(ClassLoader classLoader) {
        try {
            Class<?> clsLoadClass = classLoader.loadClass("com.unity3d.unitygvr.GoogleVR");
            t tVar = new t(clsLoadClass, clsLoadClass.getConstructor(new Class[0]).newInstance(new Object[0]));
            tVar.a("initialize", new Class[]{Activity.class, Context.class, SurfaceView.class, Boolean.TYPE, Handler.class});
            tVar.a("deinitialize", new Class[0]);
            tVar.a("load", new Class[]{Boolean.TYPE, Boolean.TYPE, Boolean.TYPE, Boolean.TYPE, Boolean.TYPE, Runnable.class});
            tVar.a("enable", new Class[]{Boolean.TYPE});
            tVar.a("unload", new Class[0]);
            tVar.a("pause", new Class[0]);
            tVar.a("resume", new Class[0]);
            tVar.a("getGvrLayout", new Class[0]);
            tVar.a("getVideoSurfaceId", new Class[0]);
            tVar.a("getVideoSurface", new Class[0]);
            this.f388a = tVar;
            return true;
        } catch (Exception e) {
            reportError("Exception initializing GoogleVR from Unity library. " + e.getLocalizedMessage());
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d() {
        return this.k.d;
    }

    private void e() {
        Activity activity = (Activity) this.c;
        if (!this.g || this.k.f || activity == null) {
            return;
        }
        this.k.f = true;
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        intent.setFlags(268435456);
        activity.startActivity(intent);
    }

    private static boolean f() {
        return true;
    }

    private final native void initVrJni();

    private final native boolean isQuiting();

    private final native void setVrVideoTransform(float[][] fArr);

    public final void a(Intent intent) {
        if (intent == null || !intent.getBooleanExtra("android.intent.extra.VR_LAUNCH", false)) {
            return;
        }
        this.g = true;
    }

    public final boolean a() {
        return this.k.f281a;
    }

    public final boolean a(Activity activity, Context context, SurfaceView surfaceView, Runnable runnable) {
        String str;
        boolean zBooleanValue;
        if (activity == null || context == null || surfaceView == null || runnable == null) {
            str = "Invalid parameters passed to Google VR initialization.";
        } else {
            this.k.b();
            this.c = context;
            this.h = runnable;
            if (this.g && !f()) {
                str = "Daydream requires a device that supports an api version of 24 (Nougat) or better.";
            } else {
                if (!a(UnityPlayer.class.getClassLoader())) {
                    return false;
                }
                try {
                    zBooleanValue = ((Boolean) this.f388a.a("initialize", activity, context, surfaceView, Boolean.valueOf(this.g), this.m)).booleanValue();
                } catch (Exception e) {
                    reportError("Exception while trying to initialize Unity Google VR Library. " + e.getLocalizedMessage());
                    zBooleanValue = false;
                }
                if (zBooleanValue) {
                    this.j = surfaceView;
                    this.k.f281a = true;
                    this.d = "";
                    return true;
                }
                str = "Unable to initialize GoogleVR library.";
            }
        }
        reportError(str);
        return false;
    }

    public final void b() {
        resumeGvrLayout();
    }

    public final void c() {
        SurfaceView surfaceView = this.j;
        if (surfaceView != null) {
            surfaceView.getHolder().setSizeFromLayout();
        }
    }

    @Override // com.unity3d.player.GoogleVrVideo
    public void deregisterGoogleVrVideoListener(GoogleVrVideo.GoogleVrVideoCallbacks googleVrVideoCallbacks) {
        if (this.i.contains(googleVrVideoCallbacks)) {
            googleVrVideoCallbacks.onSurfaceUnavailable();
            this.i.remove(googleVrVideoCallbacks);
        }
    }

    protected Object getVideoSurface() {
        if (d() && !this.k.e) {
            try {
                return this.f388a.a("getVideoSurface", new Object[0]);
            } catch (Exception e) {
                reportError("Exception caught while Getting GoogleVR Video Surface. " + e.getLocalizedMessage());
            }
        }
        return null;
    }

    protected int getVideoSurfaceId() {
        if (d() && !this.k.e) {
            try {
                return ((Integer) this.f388a.a("getVideoSurfaceId", new Object[0])).intValue();
            } catch (Exception e) {
                reportError("Exception caught while getting Video Surface ID from GoogleVR. " + e.getLocalizedMessage());
            }
        }
        return -1;
    }

    protected long loadGoogleVr(final boolean z, final boolean z2, final boolean z3, final boolean z4, final boolean z5) {
        if (!this.k.f281a) {
            return 0L;
        }
        final AtomicLong atomicLong = new AtomicLong(0L);
        this.d = (z || z2) ? "Daydream" : "Cardboard";
        if (!runOnUiThreadWithSync(new Runnable() { // from class: com.unity3d.player.GoogleVrProxy.2
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    atomicLong.set(((Long) GoogleVrProxy.this.f388a.a("load", Boolean.valueOf(z), Boolean.valueOf(z2), Boolean.valueOf(z3), Boolean.valueOf(z4), Boolean.valueOf(z5), GoogleVrProxy.this.h)).longValue());
                    GoogleVrProxy.this.k.f282b = true;
                } catch (Exception e) {
                    GoogleVrProxy.this.reportError("Exception caught while loading GoogleVR. " + e.getLocalizedMessage());
                    atomicLong.set(0L);
                }
            }
        }) || atomicLong.longValue() == 0) {
            reportError("Google VR had a fatal issue while loading. VR will not be available.");
        }
        return atomicLong.longValue();
    }

    protected void pauseGvrLayout() {
        if (this.k.a() && !this.k.e) {
            if (d()) {
                Iterator it = this.i.iterator();
                while (it.hasNext()) {
                    ((GoogleVrVideo.GoogleVrVideoCallbacks) it.next()).onSurfaceUnavailable();
                }
            }
            if (this.f388a != null) {
                this.f388a.a("pause", new Object[0]);
            }
            this.k.e = true;
        }
    }

    @Override // com.unity3d.player.GoogleVrVideo
    public void registerGoogleVrVideoListener(GoogleVrVideo.GoogleVrVideoCallbacks googleVrVideoCallbacks) {
        if (this.i.contains(googleVrVideoCallbacks)) {
            return;
        }
        this.i.add(googleVrVideoCallbacks);
        Surface surface = (Surface) getVideoSurface();
        if (surface != null) {
            googleVrVideoCallbacks.onSurfaceAvailable(surface);
        }
    }

    protected void resumeGvrLayout() {
        if (this.k.a() && this.k.e) {
            if (this.f388a != null) {
                this.f388a.a("resume", new Object[0]);
            }
            this.k.e = false;
        }
    }

    protected void setGoogleVrModeEnabled(final boolean z) {
        if (!this.k.a() || this.f389b == null || this.c == null) {
            return;
        }
        if (!z && isQuiting()) {
            e();
        }
        runOnUiThread(new Runnable() { // from class: com.unity3d.player.GoogleVrProxy.3
            @Override // java.lang.Runnable
            public final void run() {
                if (z == GoogleVrProxy.this.d()) {
                    return;
                }
                try {
                    if (z && !GoogleVrProxy.this.d()) {
                        if (GoogleVrProxy.this.f388a != null && GoogleVrProxy.this.f389b != null && !GoogleVrProxy.this.f389b.addViewToPlayer((View) GoogleVrProxy.this.f388a.a("getGvrLayout", new Object[0]), true)) {
                            GoogleVrProxy.this.reportError("Unable to add Google VR to view hierarchy.");
                            return;
                        }
                        if (GoogleVrProxy.this.f388a != null) {
                            GoogleVrProxy.this.f388a.a("enable", true);
                        }
                        GoogleVrProxy.this.a(true);
                        return;
                    }
                    if (z || !GoogleVrProxy.this.d()) {
                        return;
                    }
                    GoogleVrProxy.this.a(false);
                    if (GoogleVrProxy.this.f388a != null) {
                        GoogleVrProxy.this.f388a.a("enable", false);
                    }
                    if (GoogleVrProxy.this.f388a == null || GoogleVrProxy.this.f389b == null) {
                        return;
                    }
                    GoogleVrProxy.this.f389b.removeViewFromPlayer((View) GoogleVrProxy.this.f388a.a("getGvrLayout", new Object[0]));
                } catch (Exception e) {
                    GoogleVrProxy.this.reportError("Exception enabling Google VR on UI Thread. " + e.getLocalizedMessage());
                }
            }
        });
    }

    @Override // com.unity3d.player.GoogleVrVideo
    public void setVideoLocationTransform(float[] fArr) {
        float[][] fArr2 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, 4, 4);
        for (int i = 0; i < 4; i++) {
            for (int i2 = 0; i2 < 4; i2++) {
                fArr2[i][i2] = fArr[(i * 4) + i2];
            }
        }
        setVrVideoTransform(fArr2);
    }

    protected void unloadGoogleVr() {
        if (this.k.d) {
            setGoogleVrModeEnabled(false);
        }
        if (this.k.c) {
            this.k.c = false;
        }
        this.j = null;
        runOnUiThread(new Runnable() { // from class: com.unity3d.player.GoogleVrProxy.4
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    if (GoogleVrProxy.this.f388a != null) {
                        GoogleVrProxy.this.f388a.a("unload", new Object[0]);
                        GoogleVrProxy.this.f388a.a("deinitialize", new Object[0]);
                        GoogleVrProxy.this.f388a = null;
                    }
                    GoogleVrProxy.this.k.f282b = false;
                } catch (Exception e) {
                    GoogleVrProxy.this.reportError("Exception unloading Google VR on UI Thread. " + e.getLocalizedMessage());
                }
            }
        });
    }
}
