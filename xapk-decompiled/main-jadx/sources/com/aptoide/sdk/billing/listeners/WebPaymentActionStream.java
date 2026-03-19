package com.aptoide.sdk.billing.listeners;

import com.aptoide.sdk.core.logger.Logger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class WebPaymentActionStream {
    private static WebPaymentActionStream instance;
    private final List<Consumer<String>> collectors = new ArrayList();

    public interface Consumer<String> {
        void acceptWebPaymentActionStream(String string);
    }

    private WebPaymentActionStream() {
    }

    public static synchronized WebPaymentActionStream getInstance() {
        if (instance == null) {
            instance = new WebPaymentActionStream();
        }
        return instance;
    }

    public void emit(String str) {
        Logger.logInfo("Emitting new value on WebPaymentActionStream.");
        notifyCollectors(str);
    }

    public void collect(Consumer<String> consumer) {
        if (this.collectors.contains(consumer)) {
            return;
        }
        this.collectors.add(consumer);
    }

    private void notifyCollectors(String str) {
        Iterator<Consumer<String>> it = this.collectors.iterator();
        while (it.hasNext()) {
            it.next().acceptWebPaymentActionStream(str);
        }
    }
}
