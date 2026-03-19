package com.yalantis.ucrop.callback;

import android.graphics.RectF;

/* JADX INFO: loaded from: classes2.dex */
public interface OverlayViewChangeListener {
    void onCropRectUpdated(RectF rectF);

    void postTranslate(float f, float f2);
}
