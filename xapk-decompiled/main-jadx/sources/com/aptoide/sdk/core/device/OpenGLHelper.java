package com.aptoide.sdk.core.device;

import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import com.aptoide.sdk.core.logger.Logger;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: OpenGLHelper.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004¨\u0006\u0006"}, d2 = {"Lcom/aptoide/sdk/core/device/OpenGLHelper;", "", "()V", "getDeviceSupportedExtensions", "", "", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OpenGLHelper {
    public final List<String> getDeviceSupportedExtensions() {
        EGLConfig eGLConfig;
        List listSplit$default;
        try {
            EGLDisplay eGLDisplayEglGetDisplay = EGL14.eglGetDisplay(0);
            if (Intrinsics.areEqual(eGLDisplayEglGetDisplay, EGL14.EGL_NO_DISPLAY)) {
                Logger.logWarning("No EGL display found");
                return null;
            }
            int[] iArr = new int[2];
            if (!EGL14.eglInitialize(eGLDisplayEglGetDisplay, iArr, 0, iArr, 1)) {
                Logger.logWarning("EGL initialization failed");
                return null;
            }
            EGLConfig[] eGLConfigArr = new EGLConfig[1];
            int[] iArr2 = new int[1];
            if (EGL14.eglChooseConfig(eGLDisplayEglGetDisplay, new int[]{12352, 4, 12344}, 0, eGLConfigArr, 0, 1, iArr2, 0) && iArr2[0] != 0 && (eGLConfig = eGLConfigArr[0]) != null) {
                EGLContext eGLContextEglCreateContext = EGL14.eglCreateContext(eGLDisplayEglGetDisplay, eGLConfig, EGL14.EGL_NO_CONTEXT, new int[]{12440, 2, 12344}, 0);
                if (Intrinsics.areEqual(eGLContextEglCreateContext, EGL14.EGL_NO_CONTEXT)) {
                    Logger.logWarning("EGL context creation failed");
                    EGL14.eglTerminate(eGLDisplayEglGetDisplay);
                    return null;
                }
                EGLSurface eGLSurfaceEglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(eGLDisplayEglGetDisplay, eGLConfigArr[0], new int[]{12375, 1, 12374, 1, 12344}, 0);
                if (eGLSurfaceEglCreatePbufferSurface != null && !Intrinsics.areEqual(eGLSurfaceEglCreatePbufferSurface, EGL14.EGL_NO_SURFACE)) {
                    if (!EGL14.eglMakeCurrent(eGLDisplayEglGetDisplay, eGLSurfaceEglCreatePbufferSurface, eGLSurfaceEglCreatePbufferSurface, eGLContextEglCreateContext)) {
                        Logger.logWarning("Failed to make EGL context current");
                        EGL14.eglDestroySurface(eGLDisplayEglGetDisplay, eGLSurfaceEglCreatePbufferSurface);
                        EGL14.eglDestroyContext(eGLDisplayEglGetDisplay, eGLContextEglCreateContext);
                        EGL14.eglTerminate(eGLDisplayEglGetDisplay);
                        return null;
                    }
                    String strGlGetString = GLES20.glGetString(7939);
                    EGL14.eglDestroySurface(eGLDisplayEglGetDisplay, eGLSurfaceEglCreatePbufferSurface);
                    EGL14.eglDestroyContext(eGLDisplayEglGetDisplay, eGLContextEglCreateContext);
                    EGL14.eglTerminate(eGLDisplayEglGetDisplay);
                    if (strGlGetString == null || (listSplit$default = StringsKt.split$default((CharSequence) strGlGetString, new String[]{" "}, false, 0, 6, (Object) null)) == null) {
                        return null;
                    }
                    return CollectionsKt.toList(listSplit$default);
                }
                Logger.logWarning("EGL surface creation failed");
                EGL14.eglDestroyContext(eGLDisplayEglGetDisplay, eGLContextEglCreateContext);
                EGL14.eglTerminate(eGLDisplayEglGetDisplay);
                return null;
            }
            Logger.logWarning("No compatible EGL configuration found");
            EGL14.eglTerminate(eGLDisplayEglGetDisplay);
            return null;
        } catch (Exception e) {
            Logger.logWarning("Exception: " + e.getMessage());
            return null;
        }
    }
}
