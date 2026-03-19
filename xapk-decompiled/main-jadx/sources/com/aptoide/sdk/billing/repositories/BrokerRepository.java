package com.aptoide.sdk.billing.repositories;

import androidx.browser.trusted.sharing.ShareTarget;
import com.aptoide.sdk.billing.listeners.PurchaseData;
import com.aptoide.sdk.billing.mappers.TransactionResponse;
import com.aptoide.sdk.billing.mappers.TransactionResponseMapper;
import com.aptoide.sdk.billing.service.BdsService;
import com.aptoide.sdk.billing.service.RequestResponse;
import com.aptoide.sdk.billing.service.ServiceResponseListener;
import com.aptoide.sdk.billing.utils.ServiceUtils;
import com.aptoide.sdk.core.analytics.events.SdkBackendRequestType;
import com.aptoide.sdk.core.logger.Logger;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: compiled from: BrokerRepository.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/aptoide/sdk/billing/repositories/BrokerRepository;", "", "bdsService", "Lcom/aptoide/sdk/billing/service/BdsService;", "(Lcom/aptoide/sdk/billing/service/BdsService;)V", "getTransaction", "Lcom/aptoide/sdk/billing/mappers/TransactionResponse;", PurchaseData.ORDER_ID, "", "waitForCountDown", "", "countDownLatch", "Ljava/util/concurrent/CountDownLatch;", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BrokerRepository {
    private final BdsService bdsService;

    public BrokerRepository(BdsService bdsService) {
        Intrinsics.checkNotNullParameter(bdsService, "bdsService");
        this.bdsService = bdsService;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final TransactionResponse getTransaction(String orderId) {
        Intrinsics.checkNotNullParameter(orderId, "orderId");
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        this.bdsService.makeRequest("/broker/8.20240901/transactions/" + orderId, ShareTarget.METHOD_GET, CollectionsKt.emptyList(), MapsKt.emptyMap(), MapsKt.emptyMap(), MapsKt.emptyMap(), new ServiceResponseListener() { // from class: com.aptoide.sdk.billing.repositories.BrokerRepository$$ExternalSyntheticLambda0
            @Override // com.aptoide.sdk.billing.service.ServiceResponseListener
            public final void onResponseReceived(RequestResponse requestResponse) {
                BrokerRepository.getTransaction$lambda$2(countDownLatch, objectRef, requestResponse);
            }
        }, SdkBackendRequestType.TRANSACTION);
        waitForCountDown(countDownLatch);
        return (TransactionResponse) objectRef.element;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r3v1, types: [T, com.aptoide.sdk.billing.mappers.TransactionResponse] */
    public static final void getTransaction$lambda$2(CountDownLatch countDownLatch, Ref.ObjectRef transaction, RequestResponse requestResponse) {
        ?? map;
        Integer responseCode;
        Intrinsics.checkNotNullParameter(countDownLatch, "$countDownLatch");
        Intrinsics.checkNotNullParameter(transaction, "$transaction");
        if (requestResponse != null && (responseCode = (map = new TransactionResponseMapper().map(requestResponse)).getResponseCode()) != null && ServiceUtils.isSuccess(responseCode.intValue())) {
            transaction.element = map;
        }
        countDownLatch.countDown();
    }

    private final void waitForCountDown(CountDownLatch countDownLatch) {
        try {
            countDownLatch.await(30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            Logger.logError("Timeout on BrokerRepository: " + e);
        }
    }
}
