package com.aptoide.sdk.billing;

import com.aptoide.sdk.billing.BillingResult;
import com.aptoide.sdk.billing.QueryProductDetailsParams;
import com.aptoide.sdk.billing.exceptions.ServiceConnectionException;
import com.aptoide.sdk.billing.helpers.AnalyticsMappingHelper;
import com.aptoide.sdk.billing.helpers.ProductDetailsMapper;
import com.aptoide.sdk.billing.helpers.UnfetchedProductsMapper;
import com.aptoide.sdk.core.analytics.SdkAnalyticsUtils;
import com.aptoide.sdk.core.logger.Logger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ProductDetailsAsync.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\r\u001a\u00020\u000eH\u0002J\u000e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0010H\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\n8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u0013"}, d2 = {"Lcom/aptoide/sdk/billing/ProductDetailsAsync;", "Ljava/lang/Runnable;", "queryProductDetailsParams", "Lcom/aptoide/sdk/billing/QueryProductDetailsParams;", "productDetailsResponseListener", "Lcom/aptoide/sdk/billing/ProductDetailsResponseListener;", "repository", "Lcom/aptoide/sdk/billing/Repository;", "(Lcom/aptoide/sdk/billing/QueryProductDetailsParams;Lcom/aptoide/sdk/billing/ProductDetailsResponseListener;Lcom/aptoide/sdk/billing/Repository;)V", "skuDetails", "Lcom/aptoide/sdk/billing/SkuDetailsResult;", "getSkuDetails", "()Lcom/aptoide/sdk/billing/SkuDetailsResult;", "getProductTypeFromParams", "", "getProductsListFromParams", "", "run", "", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ProductDetailsAsync implements Runnable {
    private final ProductDetailsResponseListener productDetailsResponseListener;
    private final QueryProductDetailsParams queryProductDetailsParams;
    private final Repository repository;

    public ProductDetailsAsync(QueryProductDetailsParams queryProductDetailsParams, ProductDetailsResponseListener productDetailsResponseListener, Repository repository) {
        Intrinsics.checkNotNullParameter(queryProductDetailsParams, "queryProductDetailsParams");
        Intrinsics.checkNotNullParameter(productDetailsResponseListener, "productDetailsResponseListener");
        Intrinsics.checkNotNullParameter(repository, "repository");
        this.queryProductDetailsParams = queryProductDetailsParams;
        this.productDetailsResponseListener = productDetailsResponseListener;
        this.repository = repository;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            SkuDetailsResult skuDetails = getSkuDetails();
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendQuerySkuDetailsResult(new AnalyticsMappingHelper().mapSkuDetailsToListOfStrings(skuDetails));
            List<ProductDetails> listMapSkuDetailsToProductDetails$aptoide_billing_release = new ProductDetailsMapper().mapSkuDetailsToProductDetails$aptoide_billing_release(skuDetails.getSkuDetailsList());
            this.productDetailsResponseListener.onProductDetailsResponse(new BillingResult.Builder().setResponseCode(skuDetails.getResponseCode()).build(), QueryProductDetailsResult.INSTANCE.create$aptoide_billing_release(listMapSkuDetailsToProductDetails$aptoide_billing_release, new UnfetchedProductsMapper().getUnfetchedProducts$aptoide_billing_release(this.queryProductDetailsParams.getProductList(), listMapSkuDetailsToProductDetails$aptoide_billing_release)));
        } catch (ServiceConnectionException e) {
            Logger.logError("Service is not ready to request SkuDetails: " + e);
            this.productDetailsResponseListener.onProductDetailsResponse(new BillingResult.Builder().setResponseCode(ResponseCode.SERVICE_UNAVAILABLE.getValue()).build(), QueryProductDetailsResult.INSTANCE.create$aptoide_billing_release(CollectionsKt.emptyList(), new UnfetchedProductsMapper().getUnfetchedProducts$aptoide_billing_release(this.queryProductDetailsParams.getProductList(), CollectionsKt.emptyList())));
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendQuerySkuDetailsResult(null);
        }
    }

    private final SkuDetailsResult getSkuDetails() throws ServiceConnectionException {
        SkuDetailsResult skuDetailsResultQuerySkuDetailsAsync = this.repository.querySkuDetailsAsync(getProductTypeFromParams(), getProductsListFromParams());
        Intrinsics.checkNotNullExpressionValue(skuDetailsResultQuerySkuDetailsAsync, "querySkuDetailsAsync(...)");
        return skuDetailsResultQuerySkuDetailsAsync;
    }

    private final String getProductTypeFromParams() {
        String productType;
        QueryProductDetailsParams.Product product = (QueryProductDetailsParams.Product) CollectionsKt.firstOrNull((List) this.queryProductDetailsParams.getProductList());
        return (product == null || (productType = product.getProductType()) == null) ? "inapp" : productType;
    }

    private final List<String> getProductsListFromParams() {
        List<QueryProductDetailsParams.Product> productList = this.queryProductDetailsParams.getProductList();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(productList, 10));
        Iterator<T> it = productList.iterator();
        while (it.hasNext()) {
            arrayList.add(((QueryProductDetailsParams.Product) it.next()).getProductId());
        }
        return arrayList;
    }
}
