package com.aptoide.sdk.billing.usecases;

import com.aptoide.sdk.billing.helpers.WalletUtils;
import com.aptoide.sdk.billing.sharedpreferences.AttributionSharedPreferences;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: compiled from: SaveInitialAttributionTimestamp.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\t\u0010\t\u001a\u00020\nH\u0086\u0002R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000b"}, d2 = {"Lcom/aptoide/sdk/billing/usecases/SaveInitialAttributionTimestamp;", "Lcom/aptoide/sdk/billing/usecases/UseCase;", "()V", "attributionSharedPreferences", "Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;", "getAttributionSharedPreferences", "()Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;", "attributionSharedPreferences$delegate", "Lkotlin/Lazy;", "invoke", "", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SaveInitialAttributionTimestamp extends UseCase {
    public static final SaveInitialAttributionTimestamp INSTANCE = new SaveInitialAttributionTimestamp();

    /* JADX INFO: renamed from: attributionSharedPreferences$delegate, reason: from kotlin metadata */
    private static final Lazy attributionSharedPreferences = LazyKt.lazy(new Function0<AttributionSharedPreferences>() { // from class: com.aptoide.sdk.billing.usecases.SaveInitialAttributionTimestamp$attributionSharedPreferences$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final AttributionSharedPreferences invoke() {
            return new AttributionSharedPreferences(WalletUtils.INSTANCE.getContext());
        }
    });

    private SaveInitialAttributionTimestamp() {
    }

    private final AttributionSharedPreferences getAttributionSharedPreferences() {
        return (AttributionSharedPreferences) attributionSharedPreferences.getValue();
    }

    public final void invoke() {
        super.invokeUseCase();
        if (getAttributionSharedPreferences().getInitialAttributionTimestamp() == 0) {
            getAttributionSharedPreferences().setInitialAttributionTimestamp(System.currentTimeMillis());
        }
    }
}
