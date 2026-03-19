package com.aptoide.sdk.billing;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SkuDetailsResult.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u001b\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/aptoide/sdk/billing/SkuDetailsResult;", "", "skuDetailsList", "", "Lcom/aptoide/sdk/billing/SkuDetails;", "responseCode", "", "(Ljava/util/List;I)V", InAppPurchaseConstants.METHOD_GET_RESPONSE_CODE, "()I", "getSkuDetailsList", "()Ljava/util/List;", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SkuDetailsResult {
    private final int responseCode;
    private final List<SkuDetails> skuDetailsList;

    public SkuDetailsResult(List<SkuDetails> skuDetailsList, int i) {
        Intrinsics.checkNotNullParameter(skuDetailsList, "skuDetailsList");
        this.skuDetailsList = skuDetailsList;
        this.responseCode = i;
    }

    public final List<SkuDetails> getSkuDetailsList() {
        return this.skuDetailsList;
    }

    public final int getResponseCode() {
        return this.responseCode;
    }
}
