package com.aptoide.sdk.billing.helpers;

import com.aptoide.sdk.billing.Purchase;
import com.aptoide.sdk.billing.PurchasesResult;
import com.aptoide.sdk.billing.SkuDetails;
import com.aptoide.sdk.billing.SkuDetailsResult;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AnalyticsMappingHelper.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\t\u001a\u00020\n¨\u0006\u000b"}, d2 = {"Lcom/aptoide/sdk/billing/helpers/AnalyticsMappingHelper;", "", "()V", "mapPurchasesToListOfStrings", "", "", "purchasesResult", "Lcom/aptoide/sdk/billing/PurchasesResult;", "mapSkuDetailsToListOfStrings", "skuDetailsResult", "Lcom/aptoide/sdk/billing/SkuDetailsResult;", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AnalyticsMappingHelper {
    public final List<String> mapPurchasesToListOfStrings(PurchasesResult purchasesResult) {
        Intrinsics.checkNotNullParameter(purchasesResult, "purchasesResult");
        List<Purchase> purchasesList = purchasesResult.getPurchasesList();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(purchasesList, 10));
        Iterator<T> it = purchasesList.iterator();
        while (it.hasNext()) {
            arrayList.add(((Purchase) it.next()).getPurchaseToken());
        }
        return arrayList;
    }

    public final List<String> mapSkuDetailsToListOfStrings(SkuDetailsResult skuDetailsResult) {
        Intrinsics.checkNotNullParameter(skuDetailsResult, "skuDetailsResult");
        List<SkuDetails> skuDetailsList = skuDetailsResult.getSkuDetailsList();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(skuDetailsList, 10));
        Iterator<T> it = skuDetailsList.iterator();
        while (it.hasNext()) {
            arrayList.add(((SkuDetails) it.next()).getSku());
        }
        return arrayList;
    }
}
