package com.aptoide.sdk.billing;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReferralDeeplink.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/aptoide/sdk/billing/ReferralDeeplink;", "", "billingResult", "Lcom/aptoide/sdk/billing/BillingResult;", "storeDeeplink", "", "fallbackDeeplink", "(Lcom/aptoide/sdk/billing/BillingResult;Ljava/lang/String;Ljava/lang/String;)V", "getBillingResult", "()Lcom/aptoide/sdk/billing/BillingResult;", "getFallbackDeeplink", "()Ljava/lang/String;", "getStoreDeeplink", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReferralDeeplink {
    private final BillingResult billingResult;
    private final String fallbackDeeplink;
    private final String storeDeeplink;

    public ReferralDeeplink(BillingResult billingResult, String str, String str2) {
        Intrinsics.checkNotNullParameter(billingResult, "billingResult");
        this.billingResult = billingResult;
        this.storeDeeplink = str;
        this.fallbackDeeplink = str2;
    }

    public /* synthetic */ ReferralDeeplink(BillingResult billingResult, String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(billingResult, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : str2);
    }

    public final BillingResult getBillingResult() {
        return this.billingResult;
    }

    public final String getStoreDeeplink() {
        return this.storeDeeplink;
    }

    public final String getFallbackDeeplink() {
        return this.fallbackDeeplink;
    }
}
