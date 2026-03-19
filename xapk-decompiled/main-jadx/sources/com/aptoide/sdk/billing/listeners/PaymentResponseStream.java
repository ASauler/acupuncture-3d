package com.aptoide.sdk.billing.listeners;

import com.aptoide.sdk.core.logger.Logger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class PaymentResponseStream {
    private static PaymentResponseStream instance;
    private final List<Consumer<SDKPaymentResponse>> collectors = new ArrayList();

    public interface Consumer<SDKPaymentResponse> {
        void accept(SDKPaymentResponse sdkpaymentresponse);
    }

    private PaymentResponseStream() {
    }

    public static synchronized PaymentResponseStream getInstance() {
        if (instance == null) {
            instance = new PaymentResponseStream();
        }
        return instance;
    }

    public void emit(SDKPaymentResponse sDKPaymentResponse) {
        Logger.logInfo("Emitting new value on PaymentResponseStream.");
        notifyCollectors(sDKPaymentResponse);
    }

    public void collect(Consumer<SDKPaymentResponse> consumer) {
        if (this.collectors.contains(consumer)) {
            return;
        }
        this.collectors.add(consumer);
    }

    private void notifyCollectors(SDKPaymentResponse sDKPaymentResponse) {
        Iterator<Consumer<SDKPaymentResponse>> it = this.collectors.iterator();
        while (it.hasNext()) {
            it.next().accept(sDKPaymentResponse);
        }
    }
}
