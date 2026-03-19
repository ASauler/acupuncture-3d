package com.aptoide.sdk.billing.listeners;

import com.aptoide.sdk.core.logger.Logger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ExternalPaymentResponseStream {
    private static ExternalPaymentResponseStream instance;
    private final List<Consumer> collectors = new ArrayList();

    public interface Consumer {
        void accept();
    }

    private ExternalPaymentResponseStream() {
    }

    public static synchronized ExternalPaymentResponseStream getInstance() {
        if (instance == null) {
            instance = new ExternalPaymentResponseStream();
        }
        return instance;
    }

    public void emit() {
        Logger.logInfo("Emitting new value on ExternalPaymentResponseStream.");
        notifyCollectors();
    }

    public void collect(Consumer consumer) {
        if (this.collectors.contains(consumer)) {
            return;
        }
        this.collectors.add(consumer);
    }

    public void removeCollector(Consumer consumer) {
        this.collectors.remove(consumer);
    }

    public Boolean hasCollectors() {
        return Boolean.valueOf(!this.collectors.isEmpty());
    }

    private void notifyCollectors() {
        Iterator<Consumer> it = this.collectors.iterator();
        while (it.hasNext()) {
            it.next().accept();
        }
    }
}
