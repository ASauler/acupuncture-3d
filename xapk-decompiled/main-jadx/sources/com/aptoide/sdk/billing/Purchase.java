package com.aptoide.sdk.billing;

import com.aptoide.sdk.billing.listeners.PurchaseData;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Purchase.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0012\u0018\u00002\u00020\u0001Bg\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\n\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0005\u0012\u0006\u0010\u0010\u001a\u00020\u0005\u0012\u0006\u0010\u0011\u001a\u00020\u0012¢\u0006\u0002\u0010\u0013R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\u0011\u001a\u00020\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0018R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0017R\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0017R\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0017R\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\n¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u0011\u0010\u000f\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u0017R\u0011\u0010\u0010\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0017¨\u0006$"}, d2 = {"Lcom/aptoide/sdk/billing/Purchase;", "", "accountIdentifiers", "Lcom/aptoide/sdk/billing/AccountIdentifiers;", "developerPayload", "", PurchaseData.ORDER_ID, "originalJson", "packageName", "products", "", PurchaseData.PURCHASE_STATE, "", "purchaseTime", "", "purchaseToken", "signature", PurchaseData.IS_AUTO_RENEWING, "", "(Lcom/aptoide/sdk/billing/AccountIdentifiers;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJLjava/lang/String;Ljava/lang/String;Z)V", "getAccountIdentifiers", "()Lcom/aptoide/sdk/billing/AccountIdentifiers;", "getDeveloperPayload", "()Ljava/lang/String;", "()Z", "getOrderId", InAppPurchaseConstants.METHOD_GET_ORIGINAL_JSON, "getPackageName", "getProducts", "()Ljava/util/List;", "getPurchaseState", "()I", "getPurchaseTime", "()J", "getPurchaseToken", "getSignature", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Purchase {
    private final AccountIdentifiers accountIdentifiers;
    private final String developerPayload;
    private final boolean isAutoRenewing;
    private final String orderId;
    private final String originalJson;
    private final String packageName;
    private final List<String> products;
    private final int purchaseState;
    private final long purchaseTime;
    private final String purchaseToken;
    private final String signature;

    public Purchase(AccountIdentifiers accountIdentifiers, String str, String orderId, String originalJson, String packageName, List<String> products, int i, long j, String purchaseToken, String signature, boolean z) {
        Intrinsics.checkNotNullParameter(orderId, "orderId");
        Intrinsics.checkNotNullParameter(originalJson, "originalJson");
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(products, "products");
        Intrinsics.checkNotNullParameter(purchaseToken, "purchaseToken");
        Intrinsics.checkNotNullParameter(signature, "signature");
        this.accountIdentifiers = accountIdentifiers;
        this.developerPayload = str;
        this.orderId = orderId;
        this.originalJson = originalJson;
        this.packageName = packageName;
        this.products = products;
        this.purchaseState = i;
        this.purchaseTime = j;
        this.purchaseToken = purchaseToken;
        this.signature = signature;
        this.isAutoRenewing = z;
    }

    public final AccountIdentifiers getAccountIdentifiers() {
        return this.accountIdentifiers;
    }

    public final String getDeveloperPayload() {
        return this.developerPayload;
    }

    public final String getOrderId() {
        return this.orderId;
    }

    public final String getOriginalJson() {
        return this.originalJson;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final List<String> getProducts() {
        return this.products;
    }

    public final int getPurchaseState() {
        return this.purchaseState;
    }

    public final long getPurchaseTime() {
        return this.purchaseTime;
    }

    public final String getPurchaseToken() {
        return this.purchaseToken;
    }

    public final String getSignature() {
        return this.signature;
    }

    /* JADX INFO: renamed from: isAutoRenewing, reason: from getter */
    public final boolean getIsAutoRenewing() {
        return this.isAutoRenewing;
    }
}
