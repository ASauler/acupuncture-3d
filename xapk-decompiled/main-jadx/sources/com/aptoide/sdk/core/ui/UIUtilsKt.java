package com.aptoide.sdk.core.ui;

import android.content.Context;
import android.os.Build;
import android.util.TypedValue;
import android.view.Display;
import android.view.WindowManager;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UIUtils.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u001a\u0016\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u000e\u0010\b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0015\u0010\n\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u000b\u001a\u000e\u0010\f\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\r"}, d2 = {"floatToPxs", "", "value", "context", "Landroid/content/Context;", "getScreenHeightInDp", "", "getScreenOrientation", "getScreenOrientedHeightInDp", "getScreenOrientedWidthInDp", "getScreenRotation", "(Landroid/content/Context;)Ljava/lang/Integer;", "getScreenWidthInDp", "aptoide-core_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class UIUtilsKt {
    public static final float floatToPxs(float f, Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics());
    }

    public static final int getScreenHeightInDp(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (context.getResources().getConfiguration().orientation == 2) {
            return getScreenOrientedWidthInDp(context);
        }
        return getScreenOrientedHeightInDp(context);
    }

    public static final int getScreenWidthInDp(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (context.getResources().getConfiguration().orientation == 2) {
            return getScreenOrientedHeightInDp(context);
        }
        return getScreenOrientedWidthInDp(context);
    }

    public static final int getScreenOrientedHeightInDp(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return (int) (context.getResources().getDisplayMetrics().heightPixels / context.getResources().getDisplayMetrics().density);
    }

    public static final int getScreenOrientedWidthInDp(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return (int) (context.getResources().getDisplayMetrics().widthPixels / context.getResources().getDisplayMetrics().density);
    }

    public static final Integer getScreenRotation(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (Build.VERSION.SDK_INT >= 30) {
            Display display = context.getDisplay();
            if (display != null) {
                return Integer.valueOf(display.getRotation());
            }
            return null;
        }
        Object systemService = context.getSystemService("window");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        return Integer.valueOf(((WindowManager) systemService).getDefaultDisplay().getRotation());
    }

    public static final int getScreenOrientation(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return context.getResources().getConfiguration().orientation;
    }
}
