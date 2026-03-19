package com.luck.picture.lib.camera.listener;

/* JADX INFO: loaded from: classes2.dex */
public interface CaptureListener {
    void recordEnd(long j);

    void recordError();

    void recordShort(long j);

    void recordStart();

    void recordZoom(float f);

    void takePictures();
}
