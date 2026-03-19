package com.aptoide.sdk.billing.helpers;

import com.aptoide.sdk.billing.ProductDetails;
import com.aptoide.sdk.billing.SkuDetails;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: ProductDetailsMapper.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J!\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\bH\u0000¢\u0006\u0002\b\u000bJ\u0018\u0010\f\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002¨\u0006\u000e"}, d2 = {"Lcom/aptoide/sdk/billing/helpers/ProductDetailsMapper;", "", "()V", "mapSkuDetailsToOneTimePurchaseOfferDetails", "Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;", "skuDetails", "Lcom/aptoide/sdk/billing/SkuDetails;", "mapSkuDetailsToProductDetails", "", "Lcom/aptoide/sdk/billing/ProductDetails;", "skuDetailsList", "mapSkuDetailsToProductDetails$aptoide_billing_release", "mapSkuDetailsToSubscriptionOfferDetails", "Lcom/aptoide/sdk/billing/ProductDetails$SubscriptionOfferDetails;", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ProductDetailsMapper {
    public final List<ProductDetails> mapSkuDetailsToProductDetails$aptoide_billing_release(List<SkuDetails> skuDetailsList) {
        Intrinsics.checkNotNullParameter(skuDetailsList, "skuDetailsList");
        List<SkuDetails> list = skuDetailsList;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        for (SkuDetails skuDetails : list) {
            arrayList.add(new ProductDetails(skuDetails.getSku(), skuDetails.getType(), skuDetails.getTitle(), skuDetails.getDescription(), mapSkuDetailsToOneTimePurchaseOfferDetails(skuDetails), mapSkuDetailsToSubscriptionOfferDetails(skuDetails)));
        }
        return arrayList;
    }

    private final ProductDetails.OneTimePurchaseOfferDetails mapSkuDetailsToOneTimePurchaseOfferDetails(SkuDetails skuDetails) {
        if (StringsKt.equals(skuDetails.getType(), "inapp", true)) {
            return new ProductDetails.OneTimePurchaseOfferDetails(skuDetails.getPrice(), skuDetails.getPriceAmountMicros(), skuDetails.getPriceCurrencyCode(), skuDetails.getAppcPrice(), skuDetails.getAppcPriceAmountMicros(), skuDetails.getAppcPriceCurrencyCode(), skuDetails.getFiatPrice(), skuDetails.getFiatPriceAmountMicros(), skuDetails.getFiatPriceCurrencyCode());
        }
        return null;
    }

    private final List<ProductDetails.SubscriptionOfferDetails> mapSkuDetailsToSubscriptionOfferDetails(SkuDetails skuDetails) {
        if (!StringsKt.equals(skuDetails.getType(), "subs", true)) {
            return null;
        }
        String period = skuDetails.getPeriod();
        ProductDetails.PricingPhases pricingPhases = new ProductDetails.PricingPhases(CollectionsKt.listOf(new ProductDetails.PricingPhase(period == null ? "" : period, skuDetails.getPrice(), skuDetails.getPriceAmountMicros(), skuDetails.getPriceCurrencyCode(), skuDetails.getAppcPrice(), skuDetails.getAppcPriceAmountMicros(), skuDetails.getAppcPriceCurrencyCode(), skuDetails.getFiatPrice(), skuDetails.getFiatPriceAmountMicros(), skuDetails.getFiatPriceCurrencyCode())));
        String trialPeriod = skuDetails.getTrialPeriod();
        if (trialPeriod == null) {
            trialPeriod = "";
        }
        String trialPeriodEndDate = skuDetails.getTrialPeriodEndDate();
        if (trialPeriodEndDate == null) {
            trialPeriodEndDate = "";
        }
        return CollectionsKt.listOf(new ProductDetails.SubscriptionOfferDetails(pricingPhases, new ProductDetails.TrialDetails(trialPeriod, trialPeriodEndDate)));
    }
}
