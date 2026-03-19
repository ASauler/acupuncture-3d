package com.aptoide.sdk.billing.listeners;

import com.aptoide.sdk.billing.helpers.WalletUtils;
import com.aptoide.sdk.billing.payflow.models.PaymentFlowMethod;
import com.aptoide.sdk.core.logger.Logger;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class PayflowPriorityStream {
    private static PayflowPriorityStream instance;
    private boolean isFirstValue = true;
    private ArrayList<PaymentFlowMethod> value = null;
    private Consumer<ArrayList<PaymentFlowMethod>> collector = null;

    public interface Consumer<Any> {
        void accept(Any any);
    }

    private PayflowPriorityStream() {
    }

    public static synchronized PayflowPriorityStream getInstance() {
        if (instance == null) {
            instance = new PayflowPriorityStream();
        }
        return instance;
    }

    public ArrayList<PaymentFlowMethod> value() {
        return this.value;
    }

    public void emit(ArrayList<PaymentFlowMethod> arrayList) {
        Logger.logInfo("Emitting new value on PayflowPriorityStream.");
        if (valueHasChanged(arrayList) || this.isFirstValue) {
            Logger.logInfo("Value of PayflowPriorityStream changed or isFirstValue.");
            WalletUtils.INSTANCE.setPaymentFlowMethods(arrayList);
            notifyCollectors(arrayList);
        }
    }

    private boolean valueHasChanged(ArrayList<PaymentFlowMethod> arrayList) {
        ArrayList<PaymentFlowMethod> arrayList2 = this.value;
        if (arrayList2 != null) {
            return arrayList2.equals(arrayList);
        }
        return arrayList != null;
    }

    public void collect(Consumer<ArrayList<PaymentFlowMethod>> consumer) {
        prepareStream();
        this.collector = consumer;
    }

    public void stopCollecting() {
        this.collector = null;
    }

    private void prepareStream() {
        this.isFirstValue = true;
    }

    private void notifyCollectors(ArrayList<PaymentFlowMethod> arrayList) {
        this.value = arrayList;
        Consumer<ArrayList<PaymentFlowMethod>> consumer = this.collector;
        if (consumer != null) {
            consumer.accept(arrayList);
        }
    }
}
