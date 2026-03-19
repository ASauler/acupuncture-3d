package a.a.a.k.a;

import android.content.Context;
import android.os.Build;
import android.view.Display;
import android.view.WindowManager;
import com.wikitude.common.CallStatus;
import com.wikitude.common.internal.CallStatusInternal;
import com.wikitude.common.internal.WikitudeErrorInternal;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f103b;
    private final c c;
    private Display d;
    private int e = -1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a.a.a.l.a.a f102a = new a.a.a.l.a.a("OrientationProviderThread");

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c cVar;
            int i;
            int rotation = b.this.d.getRotation();
            if (rotation != b.this.e) {
                if (rotation == 0) {
                    cVar = b.this.c;
                    i = 0;
                } else if (rotation == 1) {
                    cVar = b.this.c;
                    i = 90;
                } else if (rotation != 2) {
                    if (rotation == 3) {
                        cVar = b.this.c;
                        i = 270;
                    }
                    b.this.e = rotation;
                } else {
                    cVar = b.this.c;
                    i = 180;
                }
                cVar.a(i);
                b.this.e = rotation;
            }
            b.this.f102a.a(this, 50L);
        }
    }

    public b(Context context, c cVar) {
        this.f103b = context;
        this.c = cVar;
    }

    public CallStatus a() {
        WindowManager windowManager = (WindowManager) this.f103b.getSystemService("window");
        if (windowManager == null) {
            return CallStatusInternal.error(new WikitudeErrorInternal(a.a.a.k.a.a.UnableToGetWindowServiceFromContext.a(), a.a.a.k.a.a.f101b, "Unable to get the WindowManager from the given context."));
        }
        this.d = Build.VERSION.SDK_INT >= 30 ? this.f103b.getDisplay() : windowManager.getDefaultDisplay();
        this.f102a.a();
        this.f102a.a(new a());
        return CallStatusInternal.success();
    }

    public void b() {
        this.f102a.b();
    }
}
