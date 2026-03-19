package com.aptoide.sdk.billing.listeners;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: SDKWebResponse.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\"\b\u0086\b\u0018\u0000 12\u00020\u0001:\u00011B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004BY\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0013J\t\u0010!\u001a\u00020\u0006HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010#\u001a\u00020\u0006HÆ\u0003J\t\u0010$\u001a\u00020\u0006HÆ\u0003J\t\u0010%\u001a\u00020\u0006HÆ\u0003J\t\u0010&\u001a\u00020\u000bHÆ\u0003J\t\u0010'\u001a\u00020\u0006HÆ\u0003J\t\u0010(\u001a\u00020\u000eHÆ\u0003J\t\u0010)\u001a\u00020\u0010HÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0006HÆ\u0003Jq\u0010+\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\u00062\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\u00062\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\u0013\u0010,\u001a\u00020\u00102\b\u0010-\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010.\u001a\u00020\u000eHÖ\u0001J\u0006\u0010/\u001a\u00020\u0006J\t\u00100\u001a\u00020\u0006HÖ\u0001R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u000f\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0016R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0015R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0015R\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0015R\u0011\u0010\b\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0015R\u0011\u0010\t\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0015R\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0011\u0010\f\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0015¨\u00062"}, d2 = {"Lcom/aptoide/sdk/billing/listeners/PurchaseData;", "", "jsonObject", "Lorg/json/JSONObject;", "(Lorg/json/JSONObject;)V", PurchaseData.ORDER_ID, "", "packageName", "productId", PurchaseData.PRODUCT_TYPE, "purchaseTime", "", "purchaseToken", PurchaseData.PURCHASE_STATE, "", PurchaseData.IS_AUTO_RENEWING, "", "developerPayload", PurchaseData.OBFUSCATED_EXTERNAL_ACCOUNT_ID, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V", "getDeveloperPayload", "()Ljava/lang/String;", "()Z", "getObfuscatedExternalAccountId", "getOrderId", "getPackageName", "getProductId", "getProductType", "getPurchaseState", "()I", "getPurchaseTime", "()J", "getPurchaseToken", "component1", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", "toJson", InAppPurchaseConstants.METHOD_TO_STRING, "Companion", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class PurchaseData {
    private static final Companion Companion = new Companion(null);

    @Deprecated
    public static final String DEVELOPER_PAYLOAD = "developerPayload";

    @Deprecated
    public static final String IS_AUTO_RENEWING = "isAutoRenewing";

    @Deprecated
    public static final String OBFUSCATED_EXTERNAL_ACCOUNT_ID = "obfuscatedExternalAccountId";

    @Deprecated
    public static final String ORDER_ID = "orderId";

    @Deprecated
    public static final String PACKAGE_NAME = "packageName";

    @Deprecated
    public static final String PRODUCT_ID = "productId";

    @Deprecated
    public static final String PRODUCT_TYPE = "productType";

    @Deprecated
    public static final String PURCHASE_STATE = "purchaseState";

    @Deprecated
    public static final String PURCHASE_TIME = "purchaseTime";

    @Deprecated
    public static final String PURCHASE_TOKEN = "purchaseToken";
    private final String developerPayload;
    private final boolean isAutoRenewing;
    private final String obfuscatedExternalAccountId;
    private final String orderId;
    private final String packageName;
    private final String productId;
    private final String productType;
    private final int purchaseState;
    private final long purchaseTime;
    private final String purchaseToken;

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getOrderId() {
        return this.orderId;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getObfuscatedExternalAccountId() {
        return this.obfuscatedExternalAccountId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getPackageName() {
        return this.packageName;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getProductId() {
        return this.productId;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getProductType() {
        return this.productType;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final long getPurchaseTime() {
        return this.purchaseTime;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getPurchaseToken() {
        return this.purchaseToken;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final int getPurchaseState() {
        return this.purchaseState;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final boolean getIsAutoRenewing() {
        return this.isAutoRenewing;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getDeveloperPayload() {
        return this.developerPayload;
    }

    public final PurchaseData copy(String orderId, String packageName, String productId, String productType, long purchaseTime, String purchaseToken, int purchaseState, boolean isAutoRenewing, String developerPayload, String obfuscatedExternalAccountId) {
        Intrinsics.checkNotNullParameter(orderId, "orderId");
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(productId, "productId");
        Intrinsics.checkNotNullParameter(productType, "productType");
        Intrinsics.checkNotNullParameter(purchaseToken, "purchaseToken");
        return new PurchaseData(orderId, packageName, productId, productType, purchaseTime, purchaseToken, purchaseState, isAutoRenewing, developerPayload, obfuscatedExternalAccountId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PurchaseData)) {
            return false;
        }
        PurchaseData purchaseData = (PurchaseData) other;
        return Intrinsics.areEqual(this.orderId, purchaseData.orderId) && Intrinsics.areEqual(this.packageName, purchaseData.packageName) && Intrinsics.areEqual(this.productId, purchaseData.productId) && Intrinsics.areEqual(this.productType, purchaseData.productType) && this.purchaseTime == purchaseData.purchaseTime && Intrinsics.areEqual(this.purchaseToken, purchaseData.purchaseToken) && this.purchaseState == purchaseData.purchaseState && this.isAutoRenewing == purchaseData.isAutoRenewing && Intrinsics.areEqual(this.developerPayload, purchaseData.developerPayload) && Intrinsics.areEqual(this.obfuscatedExternalAccountId, purchaseData.obfuscatedExternalAccountId);
    }

    public int hashCode() {
        int iHashCode = ((((((((((((((this.orderId.hashCode() * 31) + this.packageName.hashCode()) * 31) + this.productId.hashCode()) * 31) + this.productType.hashCode()) * 31) + Long.hashCode(this.purchaseTime)) * 31) + this.purchaseToken.hashCode()) * 31) + Integer.hashCode(this.purchaseState)) * 31) + Boolean.hashCode(this.isAutoRenewing)) * 31;
        String str = this.developerPayload;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.obfuscatedExternalAccountId;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "PurchaseData(orderId=" + this.orderId + ", packageName=" + this.packageName + ", productId=" + this.productId + ", productType=" + this.productType + ", purchaseTime=" + this.purchaseTime + ", purchaseToken=" + this.purchaseToken + ", purchaseState=" + this.purchaseState + ", isAutoRenewing=" + this.isAutoRenewing + ", developerPayload=" + this.developerPayload + ", obfuscatedExternalAccountId=" + this.obfuscatedExternalAccountId + ")";
    }

    public PurchaseData(String orderId, String packageName, String productId, String productType, long j, String purchaseToken, int i, boolean z, String str, String str2) {
        Intrinsics.checkNotNullParameter(orderId, "orderId");
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(productId, "productId");
        Intrinsics.checkNotNullParameter(productType, "productType");
        Intrinsics.checkNotNullParameter(purchaseToken, "purchaseToken");
        this.orderId = orderId;
        this.packageName = packageName;
        this.productId = productId;
        this.productType = productType;
        this.purchaseTime = j;
        this.purchaseToken = purchaseToken;
        this.purchaseState = i;
        this.isAutoRenewing = z;
        this.developerPayload = str;
        this.obfuscatedExternalAccountId = str2;
    }

    public final String getOrderId() {
        return this.orderId;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final String getProductId() {
        return this.productId;
    }

    public final String getProductType() {
        return this.productType;
    }

    public final long getPurchaseTime() {
        return this.purchaseTime;
    }

    public final String getPurchaseToken() {
        return this.purchaseToken;
    }

    public final int getPurchaseState() {
        return this.purchaseState;
    }

    public final boolean isAutoRenewing() {
        return this.isAutoRenewing;
    }

    public final String getDeveloperPayload() {
        return this.developerPayload;
    }

    public final String getObfuscatedExternalAccountId() {
        return this.obfuscatedExternalAccountId;
    }

    public final String toJson() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(ORDER_ID, this.orderId);
        jSONObject.put("packageName", this.packageName);
        jSONObject.put("productId", this.productId);
        jSONObject.put("purchaseTime", this.purchaseTime);
        jSONObject.put("purchaseToken", this.purchaseToken);
        jSONObject.put(PURCHASE_STATE, this.purchaseState);
        boolean z = true;
        if (StringsKt.equals(this.productType, "subs", true)) {
            jSONObject.put(IS_AUTO_RENEWING, this.isAutoRenewing);
        }
        String str = this.developerPayload;
        if (!(str == null || str.length() == 0)) {
            jSONObject.put("developerPayload", this.developerPayload);
        }
        String str2 = this.obfuscatedExternalAccountId;
        if (str2 != null && str2.length() != 0) {
            z = false;
        }
        if (!z) {
            jSONObject.put(OBFUSCATED_EXTERNAL_ACCOUNT_ID, this.obfuscatedExternalAccountId);
        }
        String string = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public PurchaseData(JSONObject jsonObject) {
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        String strOptString = jsonObject.optString(ORDER_ID);
        Intrinsics.checkNotNullExpressionValue(strOptString, "optString(...)");
        String strOptString2 = jsonObject.optString("packageName");
        Intrinsics.checkNotNullExpressionValue(strOptString2, "optString(...)");
        String strOptString3 = jsonObject.optString("productId");
        Intrinsics.checkNotNullExpressionValue(strOptString3, "optString(...)");
        String strOptString4 = jsonObject.optString(PRODUCT_TYPE);
        Intrinsics.checkNotNull(strOptString4);
        strOptString4 = strOptString4.length() > 0 ? strOptString4 : null;
        String str = strOptString4 == null ? "INAPP" : strOptString4;
        long jOptLong = jsonObject.optLong("purchaseTime");
        String strOptString5 = jsonObject.optString("purchaseToken");
        Intrinsics.checkNotNullExpressionValue(strOptString5, "optString(...)");
        int iOptInt = jsonObject.optInt(PURCHASE_STATE);
        boolean zOptBoolean = jsonObject.optBoolean(IS_AUTO_RENEWING);
        String strOptString6 = jsonObject.optString("developerPayload");
        Intrinsics.checkNotNull(strOptString6);
        String str2 = strOptString6.length() > 0 ? strOptString6 : null;
        String strOptString7 = jsonObject.optString(OBFUSCATED_EXTERNAL_ACCOUNT_ID);
        Intrinsics.checkNotNull(strOptString7);
        this(strOptString, strOptString2, strOptString3, str, jOptLong, strOptString5, iOptInt, zOptBoolean, str2, strOptString7.length() > 0 ? strOptString7 : null);
    }

    /* JADX INFO: compiled from: SDKWebResponse.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/aptoide/sdk/billing/listeners/PurchaseData$Companion;", "", "()V", "DEVELOPER_PAYLOAD", "", "IS_AUTO_RENEWING", "OBFUSCATED_EXTERNAL_ACCOUNT_ID", "ORDER_ID", "PACKAGE_NAME", "PRODUCT_ID", "PRODUCT_TYPE", "PURCHASE_STATE", "PURCHASE_TIME", "PURCHASE_TOKEN", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
