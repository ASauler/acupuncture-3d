package com.aptoide.sdk.billing.usecases;

import com.aptoide.sdk.billing.helpers.WalletUtils;
import com.aptoide.sdk.billing.payflow.models.PaymentFlowMethod;
import com.aptoide.sdk.core.analytics.events.SdkIsFeatureSupportedLabels;
import com.aptoide.sdk.core.logger.Logger;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: IsFeatureSupported.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0011\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0086\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002¨\u0006\b"}, d2 = {"Lcom/aptoide/sdk/billing/usecases/IsFeatureSupported;", "Lcom/aptoide/sdk/billing/usecases/UseCase;", "()V", "invoke", "", SdkIsFeatureSupportedLabels.FEATURE, "", "isFeatureSupportedInDefaultValues", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class IsFeatureSupported extends UseCase {
    public static final IsFeatureSupported INSTANCE = new IsFeatureSupported();

    private IsFeatureSupported() {
    }

    public final boolean invoke(int feature) {
        List<Integer> availableFeatures;
        super.invokeUseCase();
        PaymentFlowMethod currentPaymentFlowMethod = WalletUtils.INSTANCE.getCurrentPaymentFlowMethod();
        if (currentPaymentFlowMethod != null && (availableFeatures = currentPaymentFlowMethod.getAvailableFeatures()) != null) {
            if (availableFeatures.contains(Integer.valueOf(feature))) {
                Logger.logInfo("Feature is supported.");
                return true;
            }
            Logger.logInfo("Feature not found in the Supported Features.");
            return false;
        }
        return isFeatureSupportedInDefaultValues(feature);
    }

    private final boolean isFeatureSupportedInDefaultValues(int feature) {
        List<Integer> listInvoke = GetDefaultFeaturesSupported.INSTANCE.invoke(WalletUtils.INSTANCE.getCurrentPaymentFlowMethod());
        if (listInvoke == null) {
            return false;
        }
        if (listInvoke.contains(Integer.valueOf(feature))) {
            Logger.logInfo("Feature is supported.");
            return true;
        }
        Logger.logInfo("Feature not found in the local Supported Features.");
        return false;
    }
}
