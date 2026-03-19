package com.aptoide.sdk.billing.repositories;

import androidx.browser.trusted.sharing.ShareTarget;
import com.aptoide.sdk.billing.ResponseCode;
import com.aptoide.sdk.billing.mappers.InappPurchaseResponse;
import com.aptoide.sdk.billing.mappers.InappPurchaseResponseMapper;
import com.aptoide.sdk.billing.mappers.PurchaseResponse;
import com.aptoide.sdk.billing.mappers.PurchaseResponseMapper;
import com.aptoide.sdk.billing.mappers.PurchasesResponse;
import com.aptoide.sdk.billing.mappers.PurchasesResponseMapper;
import com.aptoide.sdk.billing.mappers.SkuDetailsResponse;
import com.aptoide.sdk.billing.mappers.SkuDetailsResponseMapper;
import com.aptoide.sdk.billing.oemid.Constants;
import com.aptoide.sdk.billing.service.BdsService;
import com.aptoide.sdk.billing.service.RequestResponse;
import com.aptoide.sdk.billing.service.ServiceResponseListener;
import com.aptoide.sdk.billing.utils.ServiceUtils;
import com.aptoide.sdk.core.analytics.events.SdkBackendRequestType;
import com.aptoide.sdk.core.analytics.events.SdkQuerySkuDetailsLabels;
import com.aptoide.sdk.core.logger.Logger;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import net.openid.appauth.AuthorizationManagementUtil;

/* JADX INFO: compiled from: ProductV2Repository.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J&\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\bJ\u0010\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000b\u001a\u00020\bJ \u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\bJ&\u0010\u0011\u001a\u00020\u00122\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\bJ*\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\n\u001a\u00020\b2\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\b0\u00182\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\bJ \u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0002J\u0010\u0010\"\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;", "", "bdsService", "Lcom/aptoide/sdk/billing/service/BdsService;", "(Lcom/aptoide/sdk/billing/service/BdsService;)V", "consumePurchaseSync", "", "walletAddress", "", "signature", "packageName", "purchaseToken", "getInappPurchase", "Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;", "getPurchaseSync", "Lcom/aptoide/sdk/billing/mappers/PurchaseResponse;", AuthorizationManagementUtil.REQUEST_TYPE_AUTHORIZATION, "getPurchasesSync", "Lcom/aptoide/sdk/billing/mappers/PurchasesResponse;", "signedWallet", "type", "getSkuDetails", "Lcom/aptoide/sdk/billing/mappers/SkuDetailsResponse;", SdkQuerySkuDetailsLabels.SKUS, "", "paymentFlow", "handleConsumeResponse", "", "requestResponse", "Lcom/aptoide/sdk/billing/service/RequestResponse;", "countDownLatch", "Ljava/util/concurrent/CountDownLatch;", "responseCode", "", "waitForCountDown", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ProductV2Repository {
    private final BdsService bdsService;

    public ProductV2Repository(BdsService bdsService) {
        Intrinsics.checkNotNullParameter(bdsService, "bdsService");
        this.bdsService = bdsService;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final InappPurchaseResponse getInappPurchase(String purchaseToken) {
        Intrinsics.checkNotNullParameter(purchaseToken, "purchaseToken");
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        this.bdsService.makeRequest("/productv2/8.20240901/inapp/purchases/" + purchaseToken, ShareTarget.METHOD_GET, CollectionsKt.emptyList(), MapsKt.emptyMap(), MapsKt.emptyMap(), MapsKt.emptyMap(), new ServiceResponseListener() { // from class: com.aptoide.sdk.billing.repositories.ProductV2Repository$$ExternalSyntheticLambda2
            @Override // com.aptoide.sdk.billing.service.ServiceResponseListener
            public final void onResponseReceived(RequestResponse requestResponse) {
                ProductV2Repository.getInappPurchase$lambda$2(countDownLatch, objectRef, requestResponse);
            }
        }, SdkBackendRequestType.INAPP_PURCHASE);
        waitForCountDown(countDownLatch);
        return (InappPurchaseResponse) objectRef.element;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r3v1, types: [T, com.aptoide.sdk.billing.mappers.InappPurchaseResponse] */
    public static final void getInappPurchase$lambda$2(CountDownLatch countDownLatch, Ref.ObjectRef inappPurchase, RequestResponse requestResponse) {
        ?? map;
        Integer responseCode;
        Intrinsics.checkNotNullParameter(countDownLatch, "$countDownLatch");
        Intrinsics.checkNotNullParameter(inappPurchase, "$inappPurchase");
        if (requestResponse != null && (responseCode = (map = new InappPurchaseResponseMapper().map(requestResponse)).getResponseCode()) != null && ServiceUtils.isSuccess(responseCode.intValue())) {
            inappPurchase.element = map;
        }
        countDownLatch.countDown();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0, types: [T, com.aptoide.sdk.billing.mappers.PurchasesResponse] */
    public final PurchasesResponse getPurchasesSync(String packageName, String walletAddress, String signedWallet, String type) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(walletAddress, "walletAddress");
        Intrinsics.checkNotNullParameter(signedWallet, "signedWallet");
        Intrinsics.checkNotNullParameter(type, "type");
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = new PurchasesResponse(ResponseCode.ERROR.getValue(), null, 2, null);
        ServiceResponseListener serviceResponseListener = new ServiceResponseListener() { // from class: com.aptoide.sdk.billing.repositories.ProductV2Repository$$ExternalSyntheticLambda1
            @Override // com.aptoide.sdk.billing.service.ServiceResponseListener
            public final void onResponseReceived(RequestResponse requestResponse) {
                ProductV2Repository.getPurchasesSync$lambda$3(objectRef, countDownLatch, requestResponse);
            }
        };
        HashMap map = new HashMap();
        map.put("wallet.address", walletAddress);
        map.put("wallet.signature", signedWallet);
        map.put("type", type);
        map.put("state", "PENDING");
        this.bdsService.makeRequest("/productv2/8.20240901/applications/" + packageName + "/inapp/consumable/purchases", ShareTarget.METHOD_GET, CollectionsKt.emptyList(), map, MapsKt.emptyMap(), MapsKt.emptyMap(), serviceResponseListener, SdkBackendRequestType.PURCHASES);
        waitForCountDown(countDownLatch);
        return (PurchasesResponse) objectRef.element;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r3v1, types: [T, com.aptoide.sdk.billing.mappers.PurchasesResponse] */
    public static final void getPurchasesSync$lambda$3(Ref.ObjectRef purchasesResponse, CountDownLatch countDownLatch, RequestResponse requestResponse) {
        Intrinsics.checkNotNullParameter(purchasesResponse, "$purchasesResponse");
        Intrinsics.checkNotNullParameter(countDownLatch, "$countDownLatch");
        PurchasesResponseMapper purchasesResponseMapper = new PurchasesResponseMapper();
        Intrinsics.checkNotNull(requestResponse);
        purchasesResponse.element = purchasesResponseMapper.map(requestResponse);
        countDownLatch.countDown();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final PurchaseResponse getPurchaseSync(String packageName, String authorization, String purchaseToken) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(authorization, "authorization");
        Intrinsics.checkNotNullParameter(purchaseToken, "purchaseToken");
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        ServiceResponseListener serviceResponseListener = new ServiceResponseListener() { // from class: com.aptoide.sdk.billing.repositories.ProductV2Repository$$ExternalSyntheticLambda0
            @Override // com.aptoide.sdk.billing.service.ServiceResponseListener
            public final void onResponseReceived(RequestResponse requestResponse) {
                ProductV2Repository.getPurchaseSync$lambda$4(objectRef, countDownLatch, requestResponse);
            }
        };
        HashMap map = new HashMap();
        map.put(AuthorizationManagementUtil.REQUEST_TYPE_AUTHORIZATION, "Bearer " + authorization);
        this.bdsService.makeRequest("/productv2/8.20240901/applications/" + packageName + "/inapp/consumable/purchases/" + purchaseToken, ShareTarget.METHOD_GET, CollectionsKt.emptyList(), MapsKt.emptyMap(), map, MapsKt.emptyMap(), serviceResponseListener, SdkBackendRequestType.PURCHASE);
        waitForCountDown(countDownLatch);
        return (PurchaseResponse) objectRef.element;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r3v1, types: [T, com.aptoide.sdk.billing.mappers.PurchaseResponse] */
    public static final void getPurchaseSync$lambda$4(Ref.ObjectRef purchaseResponse, CountDownLatch countDownLatch, RequestResponse requestResponse) {
        Intrinsics.checkNotNullParameter(purchaseResponse, "$purchaseResponse");
        Intrinsics.checkNotNullParameter(countDownLatch, "$countDownLatch");
        PurchaseResponseMapper purchaseResponseMapper = new PurchaseResponseMapper();
        Intrinsics.checkNotNull(requestResponse);
        purchaseResponse.element = purchaseResponseMapper.map(requestResponse);
        countDownLatch.countDown();
    }

    public final int consumePurchaseSync(String walletAddress, String signature, String packageName, String purchaseToken) {
        Intrinsics.checkNotNullParameter(walletAddress, "walletAddress");
        Intrinsics.checkNotNullParameter(signature, "signature");
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(purchaseToken, "purchaseToken");
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final int[] iArr = {ResponseCode.ERROR.getValue()};
        ServiceResponseListener serviceResponseListener = new ServiceResponseListener() { // from class: com.aptoide.sdk.billing.repositories.ProductV2Repository$$ExternalSyntheticLambda3
            @Override // com.aptoide.sdk.billing.service.ServiceResponseListener
            public final void onResponseReceived(RequestResponse requestResponse) {
                ProductV2Repository.consumePurchaseSync$lambda$5(this.f$0, countDownLatch, iArr, requestResponse);
            }
        };
        HashMap map = new HashMap();
        map.put("wallet.address", walletAddress);
        map.put("wallet.signature", signature);
        this.bdsService.makeRequest("/productv2/8.20240901/applications/" + packageName + "/inapp/purchases/" + purchaseToken + "/consume", "POST", CollectionsKt.emptyList(), map, MapsKt.emptyMap(), MapsKt.emptyMap(), serviceResponseListener, SdkBackendRequestType.CONSUME_PURCHASE);
        waitForCountDown(countDownLatch);
        return iArr[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void consumePurchaseSync$lambda$5(ProductV2Repository this$0, CountDownLatch countDownLatch, int[] responseCode, RequestResponse requestResponse) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(countDownLatch, "$countDownLatch");
        Intrinsics.checkNotNullParameter(responseCode, "$responseCode");
        Intrinsics.checkNotNull(requestResponse);
        this$0.handleConsumeResponse(requestResponse, countDownLatch, responseCode);
    }

    public static /* synthetic */ SkuDetailsResponse getSkuDetails$default(ProductV2Repository productV2Repository, String str, List list, String str2, int i, Object obj) {
        if ((i & 4) != 0) {
            str2 = null;
        }
        return productV2Repository.getSkuDetails(str, list, str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final SkuDetailsResponse getSkuDetails(String packageName, List<String> skus, String paymentFlow) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(skus, "skus");
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        ServiceResponseListener serviceResponseListener = new ServiceResponseListener() { // from class: com.aptoide.sdk.billing.repositories.ProductV2Repository$$ExternalSyntheticLambda4
            @Override // com.aptoide.sdk.billing.service.ServiceResponseListener
            public final void onResponseReceived(RequestResponse requestResponse) {
                ProductV2Repository.getSkuDetails$lambda$6(objectRef, countDownLatch, requestResponse);
            }
        };
        HashMap map = new HashMap();
        map.put(SdkQuerySkuDetailsLabels.SKUS, CollectionsKt.joinToString$default(skus, Constants.OEMID_SEPARATOR, null, null, 0, null, null, 62, null));
        if (paymentFlow != null) {
            map.put("discount_policy", paymentFlow);
        }
        this.bdsService.makeRequest("/productv2/8.20240901/applications/" + packageName + "/inapp/consumables", ShareTarget.METHOD_GET, CollectionsKt.emptyList(), map, MapsKt.emptyMap(), MapsKt.emptyMap(), serviceResponseListener, SdkBackendRequestType.SKU_DETAILS);
        waitForCountDown(countDownLatch);
        return (SkuDetailsResponse) objectRef.element;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r3v1, types: [T, com.aptoide.sdk.billing.mappers.SkuDetailsResponse] */
    public static final void getSkuDetails$lambda$6(Ref.ObjectRef skuDetailsResponse, CountDownLatch countDownLatch, RequestResponse requestResponse) {
        Intrinsics.checkNotNullParameter(skuDetailsResponse, "$skuDetailsResponse");
        Intrinsics.checkNotNullParameter(countDownLatch, "$countDownLatch");
        SkuDetailsResponseMapper skuDetailsResponseMapper = new SkuDetailsResponseMapper();
        Intrinsics.checkNotNull(requestResponse);
        skuDetailsResponse.element = skuDetailsResponseMapper.map(requestResponse);
        countDownLatch.countDown();
    }

    private final void handleConsumeResponse(RequestResponse requestResponse, CountDownLatch countDownLatch, int[] responseCode) {
        if (ServiceUtils.isSuccess(requestResponse.getResponseCode())) {
            responseCode[0] = ResponseCode.OK.getValue();
        } else {
            responseCode[0] = ResponseCode.ERROR.getValue();
        }
        countDownLatch.countDown();
    }

    private final void waitForCountDown(CountDownLatch countDownLatch) {
        try {
            countDownLatch.await(30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            Logger.logError("Timeout getting Purchase from ProductV2: " + e);
        }
    }
}
