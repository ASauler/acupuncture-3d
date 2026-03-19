package androidx.camera.view;

import android.content.Context;
import android.view.OrientationEventListener;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class RotationProvider {
    Executor mExecutor;
    Listener mListener;
    final OrientationEventListener mOrientationListener;
    final Object mLock = new Object();
    boolean mIgnoreCanDetectForTest = false;

    public interface Listener {
        void onRotationChanged(int i);
    }

    static int orientationToSurfaceRotation(int i) {
        if (i >= 315 || i < 45) {
            return 0;
        }
        if (i >= 225) {
            return 1;
        }
        return i >= 135 ? 2 : 3;
    }

    /* JADX INFO: renamed from: androidx.camera.view.RotationProvider$1, reason: invalid class name */
    class AnonymousClass1 extends OrientationEventListener {
        private static final int INVALID_SURFACE_ROTATION = -1;
        private int mRotation;

        AnonymousClass1(Context context) {
            super(context);
            this.mRotation = -1;
        }

        @Override // android.view.OrientationEventListener
        public void onOrientationChanged(int i) {
            final int iOrientationToSurfaceRotation;
            Executor executor;
            final Listener listener;
            if (i == -1 || this.mRotation == (iOrientationToSurfaceRotation = RotationProvider.orientationToSurfaceRotation(i))) {
                return;
            }
            this.mRotation = iOrientationToSurfaceRotation;
            synchronized (RotationProvider.this.mLock) {
                executor = RotationProvider.this.mExecutor;
                listener = RotationProvider.this.mListener;
            }
            if (executor == null || listener == null) {
                return;
            }
            executor.execute(new Runnable() { // from class: androidx.camera.view.RotationProvider$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onRotationChanged(iOrientationToSurfaceRotation);
                }
            });
        }
    }

    public RotationProvider(Context context) {
        this.mOrientationListener = new AnonymousClass1(context);
    }

    public boolean setListener(Listener listener) {
        return setListener(CameraXExecutors.mainThreadExecutor(), listener);
    }

    public boolean setListener(Executor executor, Listener listener) {
        synchronized (this.mLock) {
            if (!this.mOrientationListener.canDetectOrientation() && !this.mIgnoreCanDetectForTest) {
                return false;
            }
            this.mExecutor = executor;
            this.mListener = listener;
            this.mOrientationListener.enable();
            return true;
        }
    }

    public void clearListener() {
        synchronized (this.mLock) {
            this.mOrientationListener.disable();
            this.mExecutor = null;
            this.mListener = null;
        }
    }
}
