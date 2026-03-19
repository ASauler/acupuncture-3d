package com.aptoide.sdk.billing.listeners;

import android.app.Activity;
import com.aptoide.sdk.billing.BuyItemProperties;
import com.aptoide.sdk.core.logger.Logger;
import kotlin.Pair;

/* JADX INFO: loaded from: classes.dex */
public class PendingPurchaseStream {
    private static PendingPurchaseStream instance;
    private Pair<Activity, BuyItemProperties> value = null;
    private Consumer<Pair<Activity, BuyItemProperties>> collector = null;

    public interface Consumer<BuyItemProperties> {
        void accept(BuyItemProperties buyitemproperties);
    }

    private PendingPurchaseStream() {
    }

    public static synchronized PendingPurchaseStream getInstance() {
        if (instance == null) {
            instance = new PendingPurchaseStream();
        }
        return instance;
    }

    public Pair<Activity, BuyItemProperties> value() {
        return this.value;
    }

    public void emit(Pair<Activity, BuyItemProperties> pair) {
        Logger.logInfo("Emitting new value on PendingPurchaseStream.");
        notifyCollector(pair);
    }

    public void collect(Consumer<Pair<Activity, BuyItemProperties>> consumer) {
        this.collector = consumer;
    }

    public void stopCollecting() {
        this.collector = null;
    }

    private void notifyCollector(Pair<Activity, BuyItemProperties> pair) {
        this.value = pair;
        Consumer<Pair<Activity, BuyItemProperties>> consumer = this.collector;
        if (consumer != null) {
            consumer.accept(pair);
        }
    }
}
