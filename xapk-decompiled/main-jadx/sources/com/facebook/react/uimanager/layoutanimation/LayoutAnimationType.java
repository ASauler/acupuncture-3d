package com.facebook.react.uimanager.layoutanimation;

import com.aptoide.sdk.core.analytics.events.SdkLaunchAppUpdateDialogLabels;

/* JADX INFO: loaded from: classes3.dex */
enum LayoutAnimationType {
    CREATE,
    UPDATE,
    DELETE;

    /* JADX INFO: renamed from: com.facebook.react.uimanager.layoutanimation.LayoutAnimationType$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$facebook$react$uimanager$layoutanimation$LayoutAnimationType;

        static {
            int[] iArr = new int[LayoutAnimationType.values().length];
            $SwitchMap$com$facebook$react$uimanager$layoutanimation$LayoutAnimationType = iArr;
            try {
                iArr[LayoutAnimationType.CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$facebook$react$uimanager$layoutanimation$LayoutAnimationType[LayoutAnimationType.UPDATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$facebook$react$uimanager$layoutanimation$LayoutAnimationType[LayoutAnimationType.DELETE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static String toString(LayoutAnimationType layoutAnimationType) {
        int i = AnonymousClass1.$SwitchMap$com$facebook$react$uimanager$layoutanimation$LayoutAnimationType[layoutAnimationType.ordinal()];
        if (i == 1) {
            return "create";
        }
        if (i == 2) {
            return SdkLaunchAppUpdateDialogLabels.UPDATE;
        }
        if (i == 3) {
            return "delete";
        }
        throw new IllegalArgumentException("Unsupported LayoutAnimationType: " + layoutAnimationType);
    }
}
