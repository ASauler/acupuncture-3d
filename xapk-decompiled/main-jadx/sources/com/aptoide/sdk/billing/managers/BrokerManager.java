package com.aptoide.sdk.billing.managers;

import com.aptoide.billing.sdk.BuildConfig;
import com.aptoide.sdk.billing.listeners.PurchaseData;
import com.aptoide.sdk.billing.mappers.TransactionResponse;
import com.aptoide.sdk.billing.repositories.BrokerRepository;
import com.aptoide.sdk.billing.service.BdsService;
import com.aptoide.sdk.core.logger.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BrokerManager.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/aptoide/sdk/billing/managers/BrokerManager;", "", "()V", "brokerRepository", "Lcom/aptoide/sdk/billing/repositories/BrokerRepository;", "getTransaction", "Lcom/aptoide/sdk/billing/mappers/TransactionResponse;", PurchaseData.ORDER_ID, "", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BrokerManager {
    public static final BrokerManager INSTANCE = new BrokerManager();
    private static final BrokerRepository brokerRepository = new BrokerRepository(new BdsService(BuildConfig.HOST_WS, 3000));

    private BrokerManager() {
    }

    public final TransactionResponse getTransaction(String orderId) {
        Intrinsics.checkNotNullParameter(orderId, "orderId");
        Logger.logInfo("Getting transaction value.");
        return brokerRepository.getTransaction(orderId);
    }
}
