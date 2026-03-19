package com.aptoide.sdk.billing.usecases.mmp;

import com.aptoide.sdk.billing.Purchase;
import com.aptoide.sdk.billing.managers.BrokerManager;
import com.aptoide.sdk.billing.managers.MMPEventsManager;
import com.aptoide.sdk.billing.managers.ProductV2Manager;
import com.aptoide.sdk.billing.mappers.InappPurchaseResponse;
import com.aptoide.sdk.billing.mappers.Order;
import com.aptoide.sdk.billing.mappers.Price;
import com.aptoide.sdk.billing.mappers.TransactionResponse;
import com.aptoide.sdk.billing.usecases.RetryFailedRequests;
import com.aptoide.sdk.billing.usecases.UseCase;
import com.aptoide.sdk.core.logger.Logger;
import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SendSuccessfulPurchaseResponseEvent.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\u0011\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0086\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/aptoide/sdk/billing/usecases/mmp/SendSuccessfulPurchaseResponseEvent;", "Lcom/aptoide/sdk/billing/usecases/UseCase;", "()V", "DEFAULT_PRICE", "", "UNKNOWN_PAYMENT_METHOD", "handleMissingPaymentMethod", "handleMissingPrice", "invoke", "", FirebaseAnalytics.Event.PURCHASE, "Lcom/aptoide/sdk/billing/Purchase;", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SendSuccessfulPurchaseResponseEvent extends UseCase {
    private static final String DEFAULT_PRICE = "0";
    public static final SendSuccessfulPurchaseResponseEvent INSTANCE = new SendSuccessfulPurchaseResponseEvent();
    private static final String UNKNOWN_PAYMENT_METHOD = "unknown";

    private SendSuccessfulPurchaseResponseEvent() {
    }

    public final void invoke(final Purchase purchase) {
        Intrinsics.checkNotNullParameter(purchase, "purchase");
        super.invokeUseCase();
        new Thread(new Runnable() { // from class: com.aptoide.sdk.billing.usecases.mmp.SendSuccessfulPurchaseResponseEvent$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                SendSuccessfulPurchaseResponseEvent.invoke$lambda$0(purchase);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(Purchase purchase) {
        InappPurchaseResponse inappPurchase;
        Order order;
        String reference;
        String strHandleMissingPrice;
        String strHandleMissingPaymentMethod;
        Price price;
        Intrinsics.checkNotNullParameter(purchase, "$purchase");
        try {
            inappPurchase = ProductV2Manager.INSTANCE.getInappPurchase(purchase.getPurchaseToken());
        } catch (NullPointerException e) {
            Logger.logError("There was an error creating the Successful Purchase event for MMP.", e);
        }
        if (inappPurchase == null || (order = inappPurchase.getOrder()) == null || (reference = order.getReference()) == null) {
            throw new NullPointerException("OrderID is missing.");
        }
        TransactionResponse transaction = BrokerManager.INSTANCE.getTransaction(reference);
        if (transaction == null || (price = transaction.getPrice()) == null || (strHandleMissingPrice = price.getAppc()) == null) {
            strHandleMissingPrice = INSTANCE.handleMissingPrice();
        }
        if (transaction == null || (strHandleMissingPaymentMethod = transaction.getMethod()) == null) {
            strHandleMissingPaymentMethod = INSTANCE.handleMissingPaymentMethod();
        }
        MMPEventsManager.INSTANCE.sendSuccessfulPurchaseResultEvent(purchase, reference, strHandleMissingPrice, strHandleMissingPaymentMethod);
        RetryFailedRequests.INSTANCE.invoke();
    }

    private final String handleMissingPrice() {
        Logger.logError("There was an error obtaining the Price. Using 0");
        return "0";
    }

    private final String handleMissingPaymentMethod() {
        Logger.logError("There was an error obtaining the Method. Using unknown");
        return "unknown";
    }
}
