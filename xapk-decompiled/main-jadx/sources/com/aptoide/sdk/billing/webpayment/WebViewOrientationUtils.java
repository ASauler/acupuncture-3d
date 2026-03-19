package com.aptoide.sdk.billing.webpayment;

import kotlin.Metadata;

/* JADX INFO: compiled from: WebViewOrientationUtils.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b¨\u0006\t"}, d2 = {"Lcom/aptoide/sdk/billing/webpayment/WebViewOrientationUtils;", "", "()V", "setupOrientation", "", "activity", "Landroid/app/Activity;", "webViewDetails", "Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class WebViewOrientationUtils {
    public static final WebViewOrientationUtils INSTANCE = new WebViewOrientationUtils();

    private WebViewOrientationUtils() {
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void setupOrientation(android.app.Activity r6, com.aptoide.sdk.billing.payflow.models.WebViewDetails r7) {
        /*
            r5 = this;
            java.lang.String r0 = "activity"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            r0 = 0
            if (r7 == 0) goto Ld
            java.lang.Integer r7 = r7.getForcedScreenOrientation()
            goto Le
        Ld:
            r7 = r0
        Le:
            r1 = r6
            android.content.Context r1 = (android.content.Context) r1
            java.lang.Integer r1 = com.aptoide.sdk.core.ui.UIUtilsKt.getScreenRotation(r1)
            r2 = 2
            if (r7 != 0) goto L19
            goto L30
        L19:
            int r3 = r7.intValue()
            r4 = 1
            if (r3 != r4) goto L30
            if (r1 != 0) goto L23
            goto L2b
        L23:
            int r7 = r1.intValue()
            if (r7 != r2) goto L2b
            r4 = 9
        L2b:
            java.lang.Integer r0 = java.lang.Integer.valueOf(r4)
            goto L4b
        L30:
            if (r7 != 0) goto L33
            goto L4b
        L33:
            int r7 = r7.intValue()
            if (r7 != r2) goto L4b
            if (r1 != 0) goto L3c
            goto L46
        L3c:
            int r7 = r1.intValue()
            r0 = 3
            if (r7 != r0) goto L46
            r7 = 8
            goto L47
        L46:
            r7 = 0
        L47:
            java.lang.Integer r0 = java.lang.Integer.valueOf(r7)
        L4b:
            if (r0 == 0) goto L5a
            r7 = r0
            java.lang.Number r7 = (java.lang.Number) r7
            r7.intValue()
            int r7 = r0.intValue()
            r6.setRequestedOrientation(r7)
        L5a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.aptoide.sdk.billing.webpayment.WebViewOrientationUtils.setupOrientation(android.app.Activity, com.aptoide.sdk.billing.payflow.models.WebViewDetails):void");
    }
}
