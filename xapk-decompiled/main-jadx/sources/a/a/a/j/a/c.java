package a.a.a.j.a;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.util.Log;
import com.wikitude.common.rendering.RenderSettings;
import java.util.List;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

/* JADX INFO: loaded from: classes.dex */
public final class c extends GLSurfaceView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f93a = "InternalRenderingGLView";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f94b = 8;
    private static final int c = 8;
    private static final int d = 8;
    private static final int e = 8;
    private static final int f = 16;
    private static final int g = 0;
    private EGLConfig h;
    private EGLContext i;
    private boolean j;

    public class a implements GLSurfaceView.EGLContextFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f95a = 12440;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f96b = 3;
        private final int c = 2;
        public final /* synthetic */ boolean d;
        public final /* synthetic */ boolean e;
        public final /* synthetic */ d f;

        public a(boolean z, boolean z2, d dVar) {
            this.d = z;
            this.e = z2;
            this.f = dVar;
        }

        private EGLContext a(EGL10 egl10, EGLDisplay eGLDisplay) {
            c cVar = c.this;
            cVar.h = cVar.a(egl10, eGLDisplay, 2);
            EGLContext eGLContextEglCreateContext = egl10.eglCreateContext(eGLDisplay, c.this.h, EGL10.EGL_NO_CONTEXT, new int[]{12440, 2, 12344});
            this.f.a(RenderSettings.b.OPENGL_ES_2.ordinal());
            return eGLContextEglCreateContext;
        }

        private EGLContext b(EGL10 egl10, EGLDisplay eGLDisplay) {
            c cVar = c.this;
            cVar.h = cVar.a(egl10, eGLDisplay, 3);
            EGLContext eGLContextEglCreateContext = egl10.eglCreateContext(eGLDisplay, c.this.h, EGL10.EGL_NO_CONTEXT, new int[]{12440, 3, 12344});
            if (EGL10.EGL_NO_CONTEXT.equals(eGLContextEglCreateContext) && this.e) {
                return a(egl10, eGLDisplay);
            }
            if (EGL10.EGL_NO_CONTEXT.equals(eGLContextEglCreateContext)) {
                Log.e(c.f93a, "createContext: Device does not support OpenGL ES 3.0, no OpenGL context was created.");
            }
            this.f.a(RenderSettings.b.OPENGL_ES_3.ordinal());
            return eGLContextEglCreateContext;
        }

        @Override // android.opengl.GLSurfaceView.EGLContextFactory
        public EGLContext createContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig) {
            if (c.this.i == null) {
                return this.d ? b(egl10, eGLDisplay) : a(egl10, eGLDisplay);
            }
            EGLContext eGLContext = c.this.i;
            c.this.i = null;
            return eGLContext;
        }

        @Override // android.opengl.GLSurfaceView.EGLContextFactory
        public void destroyContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLContext eGLContext) {
            if (c.this.j) {
                c.this.i = eGLContext;
            } else {
                egl10.eglDestroyContext(eGLDisplay, eGLContext);
            }
        }
    }

    public class b implements GLSurfaceView.EGLConfigChooser {

        public class a extends EGLConfig {
            public a() {
            }
        }

        public b() {
        }

        @Override // android.opengl.GLSurfaceView.EGLConfigChooser
        public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay) {
            return new a();
        }
    }

    /* JADX INFO: renamed from: a.a.a.j.a.c$c, reason: collision with other inner class name */
    public class C0007c implements GLSurfaceView.EGLWindowSurfaceFactory {
        public C0007c() {
        }

        @Override // android.opengl.GLSurfaceView.EGLWindowSurfaceFactory
        public EGLSurface createWindowSurface(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, Object obj) {
            if (c.this.h == null) {
                Log.e(c.f93a, "createWindowSurface: Config is null");
            }
            try {
                return egl10.eglCreateWindowSurface(eGLDisplay, c.this.h, obj, null);
            } catch (IllegalArgumentException e) {
                Log.e(c.f93a, "eglCreateWindowSurface", e);
                return null;
            }
        }

        @Override // android.opengl.GLSurfaceView.EGLWindowSurfaceFactory
        public void destroySurface(EGL10 egl10, EGLDisplay eGLDisplay, EGLSurface eGLSurface) {
            egl10.eglDestroySurface(eGLDisplay, eGLSurface);
        }
    }

    public c(Context context, a.a.a.j.a.b bVar, d dVar, List<RenderSettings.b> list) {
        super(context, null);
        this.i = null;
        this.j = false;
        setEGLContextFactory(new a(list.contains(RenderSettings.b.OPENGL_ES_3), list.contains(RenderSettings.b.OPENGL_ES_2), dVar));
        setEGLConfigChooser(new b());
        setEGLWindowSurfaceFactory(new C0007c());
        setRenderer(bVar);
        setRenderMode(0);
        getHolder().setFormat(-3);
    }

    private int a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i, int i2) {
        int[] iArr = new int[1];
        return egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, i, iArr) ? iArr[0] : i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public EGLConfig a(EGL10 egl10, EGLDisplay eGLDisplay, int i) {
        int[] iArr = {12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 16, 12326, 0, 12352, 0, 12344};
        iArr[13] = i == 2 ? 4 : 64;
        int[] iArr2 = new int[1];
        if (!egl10.eglChooseConfig(eGLDisplay, iArr, null, 0, iArr2) && i == 3) {
            iArr[13] = 0;
            if (!egl10.eglChooseConfig(eGLDisplay, iArr, null, 0, iArr2)) {
                throw new IllegalArgumentException("eglChooseConfig failed");
            }
        }
        int i2 = iArr2[0];
        if (i2 <= 0) {
            throw new IllegalArgumentException("No configs match configSpec");
        }
        EGLConfig[] eGLConfigArr = new EGLConfig[i2];
        if (!egl10.eglChooseConfig(eGLDisplay, iArr, eGLConfigArr, i2, iArr2)) {
            throw new IllegalArgumentException("eglChooseConfig#2 failed");
        }
        EGLConfig eGLConfigA = a(egl10, eGLDisplay, eGLConfigArr);
        if (eGLConfigA != null) {
            return eGLConfigA;
        }
        throw new IllegalArgumentException("No config chosen");
    }

    private EGLConfig a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig[] eGLConfigArr) {
        for (EGLConfig eGLConfig : eGLConfigArr) {
            int iA = a(egl10, eGLDisplay, eGLConfig, 12325, 0);
            int iA2 = a(egl10, eGLDisplay, eGLConfig, 12326, 0);
            if (iA >= 16 && iA2 >= 0) {
                int iA3 = a(egl10, eGLDisplay, eGLConfig, 12324, 0);
                int iA4 = a(egl10, eGLDisplay, eGLConfig, 12323, 0);
                int iA5 = a(egl10, eGLDisplay, eGLConfig, 12322, 0);
                int iA6 = a(egl10, eGLDisplay, eGLConfig, 12321, 0);
                if (iA3 == 8 && iA4 == 8 && iA5 == 8 && iA6 == 8) {
                    return eGLConfig;
                }
            }
        }
        return null;
    }

    @Override // android.opengl.GLSurfaceView
    public void onPause() {
        this.j = false;
        this.i = null;
        super.onPause();
    }

    @Override // android.opengl.GLSurfaceView
    public void onResume() {
        this.j = true;
        super.onResume();
    }
}
