package com.luck.picture.lib.tools;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import androidx.core.content.ContextCompat;

/* JADX INFO: loaded from: classes2.dex */
public class AttrsUtils {
    public static float getTypeValueSize(Context context, int i) {
        float dimensionPixelSize = 0.0f;
        try {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new TypedValue().resourceId, new int[]{i});
            dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
            typedArrayObtainStyledAttributes.recycle();
            return dimensionPixelSize;
        } catch (Exception e) {
            e.printStackTrace();
            return dimensionPixelSize;
        }
    }

    public static int getTypeValueSizeForInt(Context context, int i) {
        int dimensionPixelSize = 0;
        try {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new TypedValue().resourceId, new int[]{i});
            dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
            typedArrayObtainStyledAttributes.recycle();
            return dimensionPixelSize;
        } catch (Exception e) {
            e.printStackTrace();
            return dimensionPixelSize;
        }
    }

    public static int getTypeValueColor(Context context, int i) {
        int color = 0;
        try {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new TypedValue().resourceId, new int[]{i});
            color = typedArrayObtainStyledAttributes.getColor(0, 0);
            typedArrayObtainStyledAttributes.recycle();
            return color;
        } catch (Exception e) {
            e.printStackTrace();
            return color;
        }
    }

    public static ColorStateList getTypeValueColorStateList(Context context, int i) {
        ColorStateList colorStateList = null;
        try {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new TypedValue().resourceId, new int[]{i});
            colorStateList = typedArrayObtainStyledAttributes.getColorStateList(0);
            typedArrayObtainStyledAttributes.recycle();
            return colorStateList;
        } catch (Exception e) {
            e.printStackTrace();
            return colorStateList;
        }
    }

    public static boolean getTypeValueBoolean(Context context, int i) {
        boolean z = false;
        try {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new TypedValue().resourceId, new int[]{i});
            z = typedArrayObtainStyledAttributes.getBoolean(0, false);
            typedArrayObtainStyledAttributes.recycle();
            return z;
        } catch (Exception e) {
            e.printStackTrace();
            return z;
        }
    }

    public static Drawable getTypeValueDrawable(Context context, int i, int i2) {
        Drawable drawable = null;
        try {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new TypedValue().resourceId, new int[]{i});
            drawable = typedArrayObtainStyledAttributes.getDrawable(0);
            typedArrayObtainStyledAttributes.recycle();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return drawable == null ? ContextCompat.getDrawable(context, i2) : drawable;
    }

    public static ColorStateList getColorStateList(int[] iArr) {
        try {
            if (iArr.length == 2) {
                return new ColorStateList(new int[][]{new int[]{-16842913}, new int[]{R.attr.state_selected}}, iArr);
            }
            return ColorStateList.valueOf(iArr[0]);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
