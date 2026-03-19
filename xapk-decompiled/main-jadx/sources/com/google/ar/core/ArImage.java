package com.google.ar.core;

import android.graphics.Rect;
import android.media.Image;
import com.google.ar.core.exceptions.FatalException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
public class ArImage extends a.a.b {
    long nativeHandle;
    private final long nativeSymbolTableHandle;
    private final Session session;

    ArImage(Session session, long j) {
        this.session = session;
        this.nativeHandle = j;
        this.nativeSymbolTableHandle = session.nativeSymbolTableHandle;
    }

    private native void nativeClose(long j, long j2);

    /* JADX INFO: Access modifiers changed from: private */
    public native ByteBuffer nativeGetBuffer(long j, long j2, int i);

    private native int nativeGetFormat(long j, long j2);

    private native int nativeGetHeight(long j, long j2);

    private native int nativeGetNumberOfPlanes(long j, long j2);

    /* JADX INFO: Access modifiers changed from: private */
    public native int nativeGetPixelStride(long j, long j2, int i);

    /* JADX INFO: Access modifiers changed from: private */
    public native int nativeGetRowStride(long j, long j2, int i);

    private native long nativeGetTimestamp(long j, long j2);

    private native int nativeGetWidth(long j, long j2);

    static native void nativeLoadSymbols();

    @Override // android.media.Image, java.lang.AutoCloseable
    public void close() {
        nativeClose(this.nativeSymbolTableHandle, this.nativeHandle);
        this.nativeHandle = 0L;
    }

    @Override // android.media.Image
    public Rect getCropRect() {
        throw new UnsupportedOperationException("Crop rect is unknown in this image.");
    }

    @Override // android.media.Image
    public int getFormat() {
        int iNativeGetFormat = nativeGetFormat(this.session.nativeWrapperHandle, this.nativeHandle);
        if (iNativeGetFormat != -1) {
            return iNativeGetFormat;
        }
        throw new FatalException("Unknown error in ArImage.getFormat().");
    }

    @Override // android.media.Image
    public int getHeight() {
        int iNativeGetHeight = nativeGetHeight(this.session.nativeWrapperHandle, this.nativeHandle);
        if (iNativeGetHeight != -1) {
            return iNativeGetHeight;
        }
        throw new FatalException("Unknown error in ArImage.getHeight().");
    }

    @Override // android.media.Image
    public Image.Plane[] getPlanes() {
        int iNativeGetNumberOfPlanes = nativeGetNumberOfPlanes(this.session.nativeWrapperHandle, this.nativeHandle);
        if (iNativeGetNumberOfPlanes == -1) {
            throw new FatalException("Unknown error in ArImage.getPlanes().");
        }
        l[] lVarArr = new l[iNativeGetNumberOfPlanes];
        for (int i = 0; i < iNativeGetNumberOfPlanes; i++) {
            lVarArr[i] = new l(this, this.nativeHandle, i);
        }
        return lVarArr;
    }

    @Override // android.media.Image
    public long getTimestamp() {
        long jNativeGetTimestamp = nativeGetTimestamp(this.session.nativeWrapperHandle, this.nativeHandle);
        if (jNativeGetTimestamp != -1) {
            return jNativeGetTimestamp;
        }
        throw new FatalException("Unknown error in ArImage.getTimestamp().");
    }

    @Override // android.media.Image
    public int getWidth() {
        int iNativeGetWidth = nativeGetWidth(this.session.nativeWrapperHandle, this.nativeHandle);
        if (iNativeGetWidth != -1) {
            return iNativeGetWidth;
        }
        throw new FatalException("Unknown error in ArImage.getWidth().");
    }

    @Override // android.media.Image
    public void setCropRect(Rect rect) {
        throw new UnsupportedOperationException("This is a read-only image.");
    }

    @Override // android.media.Image
    public void setTimestamp(long j) {
        throw new UnsupportedOperationException("This is a read-only image.");
    }
}
