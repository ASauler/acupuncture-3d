package io.grpc.internal;

/* JADX INFO: loaded from: classes2.dex */
public interface WritableBuffer {
    int readableBytes();

    void release();

    int writableBytes();

    void write(byte b2);

    void write(byte[] bArr, int i, int i2);
}
