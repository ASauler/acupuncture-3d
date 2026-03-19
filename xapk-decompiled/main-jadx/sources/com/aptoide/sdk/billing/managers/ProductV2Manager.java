package com.aptoide.sdk.billing.managers;

import com.aptoide.billing.sdk.BuildConfig;
import com.aptoide.sdk.billing.mappers.InappPurchaseResponse;
import com.aptoide.sdk.billing.mappers.PurchaseResponse;
import com.aptoide.sdk.billing.mappers.PurchasesResponse;
import com.aptoide.sdk.billing.mappers.SkuDetailsResponse;
import com.aptoide.sdk.billing.models.WalletGenerationModel;
import com.aptoide.sdk.billing.repositories.ProductV2Repository;
import com.aptoide.sdk.billing.service.BdsService;
import com.aptoide.sdk.core.analytics.events.SdkQuerySkuDetailsLabels;
import com.aptoide.sdk.core.logger.Logger;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ProductV2Manager.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bJ\u0010\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\n\u001a\u00020\bJ\"\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\n\u001a\u00020\bJ \u0010\u000f\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0011\u001a\u00020\bJ4\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\t\u001a\u00020\b2\u0016\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\b0\u0015j\b\u0012\u0004\u0012\u00020\b`\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/aptoide/sdk/billing/managers/ProductV2Manager;", "", "()V", "productV2Repository", "Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;", "consumePurchase", "", "walletId", "", "packageName", "purchaseToken", "getInappPurchase", "Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;", "getPurchaseSync", "Lcom/aptoide/sdk/billing/mappers/PurchaseResponse;", "getPurchasesSync", "Lcom/aptoide/sdk/billing/mappers/PurchasesResponse;", "type", "getSkuDetails", "Lcom/aptoide/sdk/billing/mappers/SkuDetailsResponse;", SdkQuerySkuDetailsLabels.SKUS, "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "paymentFlow", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ProductV2Manager {
    public static final ProductV2Manager INSTANCE = new ProductV2Manager();
    private static final ProductV2Repository productV2Repository = new ProductV2Repository(new BdsService(BuildConfig.HOST_WS, 3000));

    private ProductV2Manager() {
    }

    public final InappPurchaseResponse getInappPurchase(String purchaseToken) {
        Intrinsics.checkNotNullParameter(purchaseToken, "purchaseToken");
        Logger.logInfo("Getting InappPurchase value.");
        return productV2Repository.getInappPurchase(purchaseToken);
    }

    public final PurchasesResponse getPurchasesSync(String packageName, String walletId, String type) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(type, "type");
        Logger.logInfo("Getting Purchases.");
        WalletGenerationModel walletGenerationModelRequestWallet = WalletManager.INSTANCE.requestWallet(walletId);
        ProductV2Repository productV2Repository2 = productV2Repository;
        String walletAddress = walletGenerationModelRequestWallet.getWalletAddress();
        Intrinsics.checkNotNullExpressionValue(walletAddress, "getWalletAddress(...)");
        String signature = walletGenerationModelRequestWallet.getSignature();
        Intrinsics.checkNotNullExpressionValue(signature, "getSignature(...)");
        return productV2Repository2.getPurchasesSync(packageName, walletAddress, signature, type);
    }

    public final PurchaseResponse getPurchaseSync(String packageName, String walletId, String purchaseToken) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(purchaseToken, "purchaseToken");
        Logger.logInfo("Getting Purchase.");
        WalletGenerationModel walletGenerationModelRequestWallet = WalletManager.INSTANCE.requestWallet(walletId);
        ProductV2Repository productV2Repository2 = productV2Repository;
        String ewt = walletGenerationModelRequestWallet.getEwt();
        Intrinsics.checkNotNullExpressionValue(ewt, "getEwt(...)");
        return productV2Repository2.getPurchaseSync(packageName, ewt, purchaseToken);
    }

    public final int consumePurchase(String walletId, String packageName, String purchaseToken) {
        Intrinsics.checkNotNullParameter(walletId, "walletId");
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(purchaseToken, "purchaseToken");
        Logger.logInfo("Consuming purchase.");
        WalletGenerationModel walletGenerationModelRequestWallet = WalletManager.INSTANCE.requestWallet(walletId);
        ProductV2Repository productV2Repository2 = productV2Repository;
        String walletAddress = walletGenerationModelRequestWallet.getWalletAddress();
        Intrinsics.checkNotNullExpressionValue(walletAddress, "getWalletAddress(...)");
        String signature = walletGenerationModelRequestWallet.getSignature();
        Intrinsics.checkNotNullExpressionValue(signature, "getSignature(...)");
        return productV2Repository2.consumePurchaseSync(walletAddress, signature, packageName, purchaseToken);
    }

    public static /* synthetic */ SkuDetailsResponse getSkuDetails$default(ProductV2Manager productV2Manager, String str, ArrayList arrayList, String str2, int i, Object obj) {
        if ((i & 4) != 0) {
            str2 = null;
        }
        return productV2Manager.getSkuDetails(str, arrayList, str2);
    }

    public final SkuDetailsResponse getSkuDetails(String packageName, ArrayList<String> skus, String paymentFlow) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(skus, "skus");
        Logger.logInfo("Getting SkuDetails.");
        return productV2Repository.getSkuDetails(packageName, skus, paymentFlow);
    }
}
