package com.unity3d.player;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public final class q extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f417a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final int f418b;
    Bitmap c;
    Bitmap d;

    /* JADX INFO: renamed from: com.unity3d.player.q$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f419a;

        static {
            int[] iArr = new int[a.a().length];
            f419a = iArr;
            try {
                iArr[a.f420a - 1] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f419a[a.f421b - 1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f419a[a.c - 1] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final int f420a = 1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f421b = 2;
        public static final int c = 3;
        private static final /* synthetic */ int[] d = {1, 2, 3};

        public static int[] a() {
            return (int[]) d.clone();
        }
    }

    public q(Context context, int i) {
        super(context);
        this.f417a = i;
        int identifier = getResources().getIdentifier("unity_static_splash", "drawable", getContext().getPackageName());
        this.f418b = identifier;
        if (identifier != 0) {
            forceLayout();
        }
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Bitmap bitmap = this.c;
        if (bitmap != null) {
            bitmap.recycle();
            this.c = null;
        }
        Bitmap bitmap2 = this.d;
        if (bitmap2 != null) {
            bitmap2.recycle();
            this.d = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x006c  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onLayout(boolean r10, int r11, int r12, int r13, int r14) {
        /*
            Method dump skipped, instruction units count: 201
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.player.q.onLayout(boolean, int, int, int, int):void");
    }
}
