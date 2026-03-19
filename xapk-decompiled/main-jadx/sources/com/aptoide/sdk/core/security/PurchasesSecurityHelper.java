package com.aptoide.sdk.core.security;

import android.util.Base64;
import com.aptoide.sdk.billing.listeners.SDKWebResponse;
import com.aptoide.sdk.core.analytics.SdkAnalytics;
import com.aptoide.sdk.core.analytics.SdkAnalyticsUtils;
import com.aptoide.sdk.core.logger.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PurchasesSecurityHelper.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000e"}, d2 = {"Lcom/aptoide/sdk/core/security/PurchasesSecurityHelper;", "", "()V", "base64DecodedPublicKey", "", "getBase64DecodedPublicKey", "()[B", "setBase64DecodedPublicKey", "([B)V", "verifyPurchase", "", SDKWebResponse.PURCHASE_DATA, "", "decodeSignature", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PurchasesSecurityHelper {
    public static final PurchasesSecurityHelper INSTANCE = new PurchasesSecurityHelper();
    public static byte[] base64DecodedPublicKey;

    private PurchasesSecurityHelper() {
    }

    public final byte[] getBase64DecodedPublicKey() {
        byte[] bArr = base64DecodedPublicKey;
        if (bArr != null) {
            return bArr;
        }
        Intrinsics.throwUninitializedPropertyAccessException("base64DecodedPublicKey");
        return null;
    }

    public final void setBase64DecodedPublicKey(byte[] bArr) {
        Intrinsics.checkNotNullParameter(bArr, "<set-?>");
        base64DecodedPublicKey = bArr;
    }

    public final boolean verifyPurchase(String purchaseData, byte[] decodeSignature) {
        String strEncodeToString;
        boolean zVerifyPurchase = Security.verifyPurchase(getBase64DecodedPublicKey(), purchaseData, decodeSignature);
        if (!zVerifyPurchase) {
            try {
                strEncodeToString = Base64.encodeToString(getBase64DecodedPublicKey(), 0);
            } catch (Exception e) {
                Logger.logError("There was an error encoding the public key.", e);
                strEncodeToString = null;
            }
            SdkAnalytics sdkAnalytics = SdkAnalyticsUtils.INSTANCE.getSdkAnalytics();
            if (purchaseData == null) {
                purchaseData = "";
            }
            sdkAnalytics.sendPurchaseSignatureVerificationFailureEvent(purchaseData, strEncodeToString);
        }
        return zVerifyPurchase;
    }
}
