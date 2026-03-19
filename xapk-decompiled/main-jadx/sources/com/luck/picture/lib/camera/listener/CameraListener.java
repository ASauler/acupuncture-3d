package com.luck.picture.lib.camera.listener;

import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public interface CameraListener {
    void onError(int i, String str, Throwable th);

    void onPictureSuccess(File file);

    void onRecordSuccess(File file);
}
