package com.swmansion.gesturehandler;

import android.view.View;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public interface GestureHandlerRegistry {
    ArrayList<GestureHandler> getHandlersForView(View view);
}
