package com.google.ar.core;

import android.media.ImageReader;

/* JADX INFO: loaded from: classes3.dex */
final /* synthetic */ class ai implements ImageReader.OnImageAvailableListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final ImageReader.OnImageAvailableListener f199a = new ai();

    private ai() {
    }

    @Override // android.media.ImageReader.OnImageAvailableListener
    public final void onImageAvailable(ImageReader imageReader) {
        SharedCamera.lambda$setDummyOnImageAvailableListener$0$SharedCamera(imageReader);
    }
}
