package com.aptoide.sdk.billing.listeners;

import android.content.Intent;
import com.aptoide.sdk.billing.utils.AptoideBillingConstants;
import com.aptoide.sdk.core.logger.Logger;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SDKWebResponse.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\b\u0018\u0000 %2\u00020\u0001:\u0001%B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007B1\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\rJ\t\u0010\u0015\u001a\u00020\u0006HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u000bHÆ\u0003J7\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000bHÆ\u0001J\u0010\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0012\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u000bH\u0002J\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\u0006HÖ\u0001J\u0012\u0010\"\u001a\u00020#2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u000bJ\t\u0010$\u001a\u00020\u000bHÖ\u0001R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006&"}, d2 = {"Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;", "", "jsonObject", "Lorg/json/JSONObject;", "(Lorg/json/JSONObject;)V", "responseCode", "", "(I)V", SDKWebResponse.PURCHASE_DATA, "Lcom/aptoide/sdk/billing/listeners/PurchaseData;", SDKWebResponse.DATA_SIGNATURE, "", SDKWebResponse.ORDER_REFERENCE, "(ILcom/aptoide/sdk/billing/listeners/PurchaseData;Ljava/lang/String;Ljava/lang/String;)V", "getDataSignature", "()Ljava/lang/String;", "getOrderReference", "getPurchaseData", "()Lcom/aptoide/sdk/billing/listeners/PurchaseData;", InAppPurchaseConstants.METHOD_GET_RESPONSE_CODE, "()I", "component1", "component2", "component3", "component4", "copy", "createActivityResultFromResponseCode", "createPaymentResponseBundle", "Landroid/content/Intent;", "skuType", "equals", "", "other", "hashCode", "toSDKPaymentResponse", "Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;", InAppPurchaseConstants.METHOD_TO_STRING, "Companion", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class SDKWebResponse {
    private static final Companion Companion = new Companion(null);

    @Deprecated
    public static final String DATA_SIGNATURE = "dataSignature";

    @Deprecated
    public static final String ORDER_REFERENCE = "orderReference";

    @Deprecated
    public static final String PURCHASE_DATA = "purchaseData";

    @Deprecated
    public static final String RESPONSE_CODE = "responseCode";
    private final String dataSignature;
    private final String orderReference;
    private final PurchaseData purchaseData;
    private final int responseCode;

    public static /* synthetic */ SDKWebResponse copy$default(SDKWebResponse sDKWebResponse, int i, PurchaseData purchaseData, String str, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = sDKWebResponse.responseCode;
        }
        if ((i2 & 2) != 0) {
            purchaseData = sDKWebResponse.purchaseData;
        }
        if ((i2 & 4) != 0) {
            str = sDKWebResponse.dataSignature;
        }
        if ((i2 & 8) != 0) {
            str2 = sDKWebResponse.orderReference;
        }
        return sDKWebResponse.copy(i, purchaseData, str, str2);
    }

    private final int createActivityResultFromResponseCode(int responseCode) {
        switch (responseCode) {
            case 0:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                return -1;
            case 1:
                return 0;
            default:
                return 1;
        }
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getResponseCode() {
        return this.responseCode;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final PurchaseData getPurchaseData() {
        return this.purchaseData;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getDataSignature() {
        return this.dataSignature;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getOrderReference() {
        return this.orderReference;
    }

    public final SDKWebResponse copy(int responseCode, PurchaseData purchaseData, String dataSignature, String orderReference) {
        return new SDKWebResponse(responseCode, purchaseData, dataSignature, orderReference);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SDKWebResponse)) {
            return false;
        }
        SDKWebResponse sDKWebResponse = (SDKWebResponse) other;
        return this.responseCode == sDKWebResponse.responseCode && Intrinsics.areEqual(this.purchaseData, sDKWebResponse.purchaseData) && Intrinsics.areEqual(this.dataSignature, sDKWebResponse.dataSignature) && Intrinsics.areEqual(this.orderReference, sDKWebResponse.orderReference);
    }

    public int hashCode() {
        int iHashCode = Integer.hashCode(this.responseCode) * 31;
        PurchaseData purchaseData = this.purchaseData;
        int iHashCode2 = (iHashCode + (purchaseData == null ? 0 : purchaseData.hashCode())) * 31;
        String str = this.dataSignature;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.orderReference;
        return iHashCode3 + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "SDKWebResponse(responseCode=" + this.responseCode + ", purchaseData=" + this.purchaseData + ", dataSignature=" + this.dataSignature + ", orderReference=" + this.orderReference + ")";
    }

    public SDKWebResponse(int i, PurchaseData purchaseData, String str, String str2) {
        this.responseCode = i;
        this.purchaseData = purchaseData;
        this.dataSignature = str;
        this.orderReference = str2;
    }

    public /* synthetic */ SDKWebResponse(int i, PurchaseData purchaseData, String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i2 & 2) != 0 ? null : purchaseData, (i2 & 4) != 0 ? null : str, (i2 & 8) != 0 ? null : str2);
    }

    public final int getResponseCode() {
        return this.responseCode;
    }

    public final PurchaseData getPurchaseData() {
        return this.purchaseData;
    }

    public final String getDataSignature() {
        return this.dataSignature;
    }

    public final String getOrderReference() {
        return this.orderReference;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SDKWebResponse(org.json.JSONObject r8) {
        /*
            r7 = this;
            java.lang.String r0 = "jsonObject"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            java.lang.String r0 = "responseCode"
            int r0 = r8.optInt(r0)
            java.lang.String r1 = "purchaseData"
            java.lang.String r1 = r8.optString(r1)
            r2 = 1
            r3 = 0
            r4 = 0
            if (r1 == 0) goto L31
            r5 = r1
            java.lang.CharSequence r5 = (java.lang.CharSequence) r5
            int r5 = r5.length()
            if (r5 != 0) goto L22
            r5 = r2
            goto L23
        L22:
            r5 = r3
        L23:
            if (r5 == 0) goto L26
            goto L31
        L26:
            com.aptoide.sdk.billing.listeners.PurchaseData r5 = new com.aptoide.sdk.billing.listeners.PurchaseData
            org.json.JSONObject r6 = new org.json.JSONObject
            r6.<init>(r1)
            r5.<init>(r6)
            goto L32
        L31:
            r5 = r4
        L32:
            java.lang.String r1 = "dataSignature"
            java.lang.String r1 = r8.optString(r1)
            if (r1 == 0) goto L4b
            java.lang.CharSequence r1 = (java.lang.CharSequence) r1
            int r6 = r1.length()
            if (r6 != 0) goto L44
            r6 = r2
            goto L45
        L44:
            r6 = r3
        L45:
            if (r6 == 0) goto L48
            r1 = r4
        L48:
            java.lang.String r1 = (java.lang.String) r1
            goto L4c
        L4b:
            r1 = r4
        L4c:
            java.lang.String r6 = "orderReference"
            java.lang.String r8 = r8.optString(r6)
            if (r8 == 0) goto L64
            java.lang.CharSequence r8 = (java.lang.CharSequence) r8
            int r6 = r8.length()
            if (r6 != 0) goto L5d
            goto L5e
        L5d:
            r2 = r3
        L5e:
            if (r2 == 0) goto L61
            goto L62
        L61:
            r4 = r8
        L62:
            java.lang.String r4 = (java.lang.String) r4
        L64:
            r7.<init>(r0, r5, r1, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.aptoide.sdk.billing.listeners.SDKWebResponse.<init>(org.json.JSONObject):void");
    }

    public SDKWebResponse(int i) {
        this(i, null, null, null);
    }

    public static /* synthetic */ SDKPaymentResponse toSDKPaymentResponse$default(SDKWebResponse sDKWebResponse, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        return sDKWebResponse.toSDKPaymentResponse(str);
    }

    public final SDKPaymentResponse toSDKPaymentResponse(String skuType) {
        return new SDKPaymentResponse(createActivityResultFromResponseCode(this.responseCode), createPaymentResponseBundle(skuType));
    }

    private final Intent createPaymentResponseBundle(String skuType) {
        String purchaseToken;
        String json;
        Intent intent = new Intent();
        Logger.logDebug("Putting RESPONSE_CODE_EXTRA with -> " + this.responseCode);
        PurchaseData purchaseData = this.purchaseData;
        Logger.logDebug("Putting INAPP_PURCHASE_DATA with -> " + (purchaseData != null ? purchaseData.toJson() : null));
        Logger.logDebug("Putting INAPP_DATA_SIGNATURE with -> " + this.dataSignature);
        PurchaseData purchaseData2 = this.purchaseData;
        Logger.logDebug("Putting INAPP_PURCHASE_ID with -> " + (purchaseData2 != null ? purchaseData2.getPurchaseToken() : null));
        Logger.logDebug("Putting ORDER_REFERENCE_EXTRA with -> " + this.orderReference);
        intent.putExtra(AptoideBillingConstants.RESPONSE_CODE, this.responseCode);
        PurchaseData purchaseData3 = this.purchaseData;
        if (purchaseData3 != null && (json = purchaseData3.toJson()) != null) {
            intent.putExtra(AptoideBillingConstants.INAPP_PURCHASE_DATA, json);
        }
        String str = this.dataSignature;
        if (str != null) {
            intent.putExtra(AptoideBillingConstants.INAPP_DATA_SIGNATURE, str);
        }
        PurchaseData purchaseData4 = this.purchaseData;
        if (purchaseData4 != null && (purchaseToken = purchaseData4.getPurchaseToken()) != null) {
            intent.putExtra(AptoideBillingConstants.INAPP_PURCHASE_ID, purchaseToken);
        }
        String str2 = this.orderReference;
        if (str2 != null) {
            intent.putExtra("order_reference", str2);
        }
        if (skuType != null) {
            intent.putExtra(AptoideBillingConstants.SKU_TYPE, skuType);
        }
        return intent;
    }

    /* JADX INFO: compiled from: SDKWebResponse.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/aptoide/sdk/billing/listeners/SDKWebResponse$Companion;", "", "()V", "DATA_SIGNATURE", "", "ORDER_REFERENCE", "PURCHASE_DATA", AptoideBillingConstants.RESPONSE_CODE, "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
