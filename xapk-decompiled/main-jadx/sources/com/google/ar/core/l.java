package com.google.ar.core;

import com.google.ar.core.exceptions.FatalException;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: ArImage.java */
/* JADX INFO: loaded from: classes3.dex */
final class l extends a.a.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ArImage f215a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f216b;
    private final int c;

    public l(ArImage arImage, long j, int i) {
        this.f215a = arImage;
        this.f216b = j;
        this.c = i;
    }

    @Override // android.media.Image.Plane
    public final ByteBuffer getBuffer() {
        ArImage arImage = this.f215a;
        return arImage.nativeGetBuffer(arImage.session.nativeWrapperHandle, this.f216b, this.c).asReadOnlyBuffer();
    }

    @Override // android.media.Image.Plane
    public final int getPixelStride() {
        ArImage arImage = this.f215a;
        int iNativeGetPixelStride = arImage.nativeGetPixelStride(arImage.session.nativeWrapperHandle, this.f216b, this.c);
        if (iNativeGetPixelStride != -1) {
            return iNativeGetPixelStride;
        }
        throw new FatalException("Unknown error in ArImage.Plane.getPixelStride().");
    }

    @Override // android.media.Image.Plane
    public final int getRowStride() {
        ArImage arImage = this.f215a;
        int iNativeGetRowStride = arImage.nativeGetRowStride(arImage.session.nativeWrapperHandle, this.f216b, this.c);
        if (iNativeGetRowStride != -1) {
            return iNativeGetRowStride;
        }
        throw new FatalException("Unknown error in ArImage.Plane.getRowStride().");
    }
}
