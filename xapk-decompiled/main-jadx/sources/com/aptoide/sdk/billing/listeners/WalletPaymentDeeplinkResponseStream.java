package com.aptoide.sdk.billing.listeners;

import com.aptoide.sdk.core.logger.Logger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class WalletPaymentDeeplinkResponseStream {
    private static WalletPaymentDeeplinkResponseStream instance;
    private final List<Consumer<SDKWebResponse>> collectors = new ArrayList();

    public interface Consumer<SDKWebResponse> {
        void accept(SDKWebResponse sdkwebresponse);
    }

    private WalletPaymentDeeplinkResponseStream() {
    }

    public static synchronized WalletPaymentDeeplinkResponseStream getInstance() {
        if (instance == null) {
            instance = new WalletPaymentDeeplinkResponseStream();
        }
        return instance;
    }

    public void emit(SDKWebResponse sDKWebResponse) {
        Logger.logInfo("Emitting new value on WalletPaymentDeeplinkResponseStream.");
        notifyCollectors(sDKWebResponse);
    }

    public void collect(Consumer<SDKWebResponse> consumer) {
        if (this.collectors.contains(consumer)) {
            return;
        }
        this.collectors.add(consumer);
    }

    public void removeCollector(Consumer<SDKWebResponse> consumer) {
        this.collectors.remove(consumer);
    }

    public Boolean hasCollectors() {
        return Boolean.valueOf(!this.collectors.isEmpty());
    }

    private void notifyCollectors(SDKWebResponse sDKWebResponse) {
        Iterator<Consumer<SDKWebResponse>> it = this.collectors.iterator();
        while (it.hasNext()) {
            it.next().accept(sDKWebResponse);
        }
    }
}
