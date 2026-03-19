package com.aptoide.sdk.billing;

import com.aptoide.sdk.billing.listeners.PaymentResponseStream;
import com.aptoide.sdk.billing.listeners.SDKPaymentResponse;

/* JADX INFO: loaded from: classes.dex */
class PaymentsResultsManager {
    private static PaymentsResultsManager instance;
    private AptoideBillingClientImpl aptoideBillingClient = null;
    private final PaymentResponseStream.Consumer<SDKPaymentResponse> sdkWebResponseCollector = new PaymentResponseStream.Consumer() { // from class: com.aptoide.sdk.billing.PaymentsResultsManager$$ExternalSyntheticLambda0
        @Override // com.aptoide.sdk.billing.listeners.PaymentResponseStream.Consumer
        public final void accept(Object obj) {
            this.f$0.lambda$new$0((SDKPaymentResponse) obj);
        }
    };

    private PaymentsResultsManager() {
    }

    public static synchronized PaymentsResultsManager getInstance() {
        if (instance == null) {
            instance = new PaymentsResultsManager();
        }
        return instance;
    }

    public void collectPaymentResult(AptoideBillingClientImpl aptoideBillingClientImpl) {
        this.aptoideBillingClient = aptoideBillingClientImpl;
        PaymentResponseStream.getInstance().collect(this.sdkWebResponseCollector);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(SDKPaymentResponse sDKPaymentResponse) {
        ApplicationUtils.handleActivityResult(sDKPaymentResponse.getResultCode(), sDKPaymentResponse.getIntent(), this.aptoideBillingClient.getPurchaseFinishedListener());
    }
}
