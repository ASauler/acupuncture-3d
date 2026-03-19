package com.th3rdwave.safeareacontext;

import android.graphics.Rect;
import android.view.View;
import android.view.WindowManager;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.common.MapBuilder;
import com.facebook.react.uimanager.PixelUtil;
import com.facebook.react.uimanager.ViewProps;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
class SafeAreaUtils {
    SafeAreaUtils() {
    }

    static WritableMap edgeInsetsToJsMap(EdgeInsets edgeInsets) {
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putDouble("top", PixelUtil.toDIPFromPixel(edgeInsets.top));
        writableMapCreateMap.putDouble(ViewProps.RIGHT, PixelUtil.toDIPFromPixel(edgeInsets.right));
        writableMapCreateMap.putDouble(ViewProps.BOTTOM, PixelUtil.toDIPFromPixel(edgeInsets.bottom));
        writableMapCreateMap.putDouble("left", PixelUtil.toDIPFromPixel(edgeInsets.left));
        return writableMapCreateMap;
    }

    static Map<String, Float> edgeInsetsToJavaMap(EdgeInsets edgeInsets) {
        return MapBuilder.of("top", Float.valueOf(PixelUtil.toDIPFromPixel(edgeInsets.top)), ViewProps.RIGHT, Float.valueOf(PixelUtil.toDIPFromPixel(edgeInsets.right)), ViewProps.BOTTOM, Float.valueOf(PixelUtil.toDIPFromPixel(edgeInsets.bottom)), "left", Float.valueOf(PixelUtil.toDIPFromPixel(edgeInsets.left)));
    }

    static EdgeInsets getSafeAreaInsets(WindowManager windowManager, View view) {
        if (view.getRootWindowInsets() == null) {
            return null;
        }
        EdgeInsets edgeInsets = new EdgeInsets(r6.getSystemWindowInsetTop(), r6.getSystemWindowInsetRight(), r6.getSystemWindowInsetBottom(), r6.getSystemWindowInsetLeft());
        View viewFindViewById = view.findViewById(android.R.id.content);
        float width = view.getWidth();
        float height = view.getHeight();
        viewFindViewById.getGlobalVisibleRect(new Rect());
        edgeInsets.top = Math.max(edgeInsets.top - r2.top, 0.0f);
        edgeInsets.left = Math.max(edgeInsets.left - r2.left, 0.0f);
        edgeInsets.bottom = Math.max(((r2.top + viewFindViewById.getHeight()) + edgeInsets.bottom) - height, 0.0f);
        edgeInsets.right = Math.max(((r2.left + viewFindViewById.getWidth()) + edgeInsets.right) - width, 0.0f);
        return edgeInsets;
    }
}
