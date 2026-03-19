package com.aptoide.sdk.billing.usecases;

import com.aptoide.sdk.core.logger.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: UseCase.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, d2 = {"Lcom/aptoide/sdk/billing/usecases/UseCase;", "", "()V", "invokeUseCase", "", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class UseCase {
    public final void invokeUseCase() {
        Logger.logInfo("UseCase " + Reflection.getOrCreateKotlinClass(getClass()).getSimpleName() + " invoked.");
    }
}
