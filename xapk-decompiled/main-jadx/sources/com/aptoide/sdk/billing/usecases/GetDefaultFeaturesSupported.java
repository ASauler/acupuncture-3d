package com.aptoide.sdk.billing.usecases;

import com.aptoide.sdk.billing.AptoideBillingClient;
import com.aptoide.sdk.billing.payflow.models.PaymentFlowMethod;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;

/* JADX INFO: compiled from: GetDefaultFeaturesSupported.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001b\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0086\u0002¨\u0006\b"}, d2 = {"Lcom/aptoide/sdk/billing/usecases/GetDefaultFeaturesSupported;", "Lcom/aptoide/sdk/billing/usecases/UseCase;", "()V", "invoke", "", "", "paymentFlowMethod", "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class GetDefaultFeaturesSupported extends UseCase {
    public static final GetDefaultFeaturesSupported INSTANCE = new GetDefaultFeaturesSupported();

    private GetDefaultFeaturesSupported() {
    }

    public final List<Integer> invoke(PaymentFlowMethod paymentFlowMethod) {
        super.invokeUseCase();
        if (paymentFlowMethod == null) {
            return null;
        }
        if (paymentFlowMethod instanceof PaymentFlowMethod.WebPayment) {
            return CollectionsKt.emptyList();
        }
        if (paymentFlowMethod instanceof PaymentFlowMethod.Wallet) {
            return CollectionsKt.listOf(AptoideBillingClient.FeatureType.SUBSCRIPTIONS);
        }
        if (!(paymentFlowMethod instanceof PaymentFlowMethod.AptoideGames) && !(paymentFlowMethod instanceof PaymentFlowMethod.GamesHub) && !(paymentFlowMethod instanceof PaymentFlowMethod.UnavailableBilling)) {
            throw new NoWhenBranchMatchedException();
        }
        return CollectionsKt.emptyList();
    }
}
