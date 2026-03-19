package com.wikitude.common.rendering.internal;

import a.a.a.j.a.a;
import a.a.a.j.a.b;
import a.a.a.j.a.c;
import a.a.a.j.a.d;
import android.content.Context;
import com.wikitude.common.rendering.RenderSettings;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class NativeInternalRenderingInterface implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f470a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a.a.a.j.a.a f471b;
    private final c c;

    public class a implements a.c {
        public a() {
        }

        @Override // a.a.a.j.a.a.c
        public void a() {
            NativeInternalRenderingInterface.this.c.requestRender();
        }
    }

    public NativeInternalRenderingInterface(Context context, long j, int[] iArr) {
        this.f470a = j;
        b bVar = new b(this);
        ArrayList arrayList = new ArrayList();
        for (int i : iArr) {
            arrayList.add(RenderSettings.b.values()[i]);
        }
        this.c = new c(context, bVar, this, arrayList);
        this.f471b = new a.a.a.j.a.a();
    }

    @Override // a.a.a.j.a.d
    public void a() {
        surfaceCreatedNative(this.f470a);
    }

    @Override // a.a.a.j.a.d
    public void a(int i) {
        setRenderingAPINative(this.f470a, i);
    }

    @Override // a.a.a.j.a.d
    public void a(int i, int i2) {
        surfaceChangedNative(this.f470a, i, i2);
    }

    @Override // a.a.a.j.a.d
    public void b() {
        updateNative(this.f470a);
    }

    @Override // a.a.a.j.a.d
    public void c() {
        drawFrameNative(this.f470a);
    }

    public native void drawFrameNative(long j);

    public Object getGLView() {
        return this.c;
    }

    public void resume() {
        this.f471b.a(new a());
    }

    public void setPreferredFramesPerSecond(int i) {
        this.f471b.a(i);
    }

    public native void setRenderingAPINative(long j, int i);

    public void start() {
        this.c.onResume();
    }

    public void stop() {
        this.c.onPause();
    }

    public native void surfaceChangedNative(long j, int i, int i2);

    public native void surfaceCreatedNative(long j);

    public void suspend() {
        this.f471b.a();
    }

    public native void updateNative(long j);
}
