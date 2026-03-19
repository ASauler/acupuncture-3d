package com.aptoide.sdk.billing.usecases;

import com.aptoide.sdk.billing.ResponseCode;
import com.aptoide.sdk.billing.helpers.WalletUtils;
import com.aptoide.sdk.billing.listeners.PaymentResponseStream;
import com.aptoide.sdk.billing.listeners.PurchaseData;
import com.aptoide.sdk.billing.listeners.SDKWebResponse;
import com.aptoide.sdk.billing.listeners.WalletPaymentDeeplinkResponseStream;
import com.aptoide.sdk.billing.managers.ProductV2Manager;
import com.aptoide.sdk.billing.mappers.PurchaseResponse;
import com.aptoide.sdk.billing.sharedpreferences.AttributionSharedPreferences;
import com.aptoide.sdk.core.logger.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: compiled from: HandlePurchaseResultFromWalletDeeplink.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0018\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\tH\u0002J\u001b\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0086\u0002¨\u0006\u000b"}, d2 = {"Lcom/aptoide/sdk/billing/usecases/HandlePurchaseResultFromWalletDeeplink;", "Lcom/aptoide/sdk/billing/usecases/UseCase;", "()V", "handleFailureResult", "", "responseCode", "", "handleSuccessResult", "purchaseToken", "", "invoke", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class HandlePurchaseResultFromWalletDeeplink extends UseCase {
    public static final HandlePurchaseResultFromWalletDeeplink INSTANCE = new HandlePurchaseResultFromWalletDeeplink();

    private HandlePurchaseResultFromWalletDeeplink() {
    }

    public final void invoke(final int responseCode, final String purchaseToken) {
        super.invokeUseCase();
        new Thread(new Runnable() { // from class: com.aptoide.sdk.billing.usecases.HandlePurchaseResultFromWalletDeeplink$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                HandlePurchaseResultFromWalletDeeplink.invoke$lambda$0(responseCode, purchaseToken);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(int i, String str) {
        if (i == ResponseCode.OK.getValue()) {
            String str2 = str;
            if (!(str2 == null || str2.length() == 0)) {
                INSTANCE.handleSuccessResult(i, str);
                return;
            }
        }
        INSTANCE.handleFailureResult(i);
    }

    private final void handleSuccessResult(int responseCode, String purchaseToken) {
        try {
            String walletId = new AttributionSharedPreferences(WalletUtils.INSTANCE.getContext()).getWalletId();
            ProductV2Manager productV2Manager = ProductV2Manager.INSTANCE;
            String packageName = WalletUtils.INSTANCE.getContext().getPackageName();
            Intrinsics.checkNotNullExpressionValue(packageName, "getPackageName(...)");
            PurchaseResponse purchaseSync = productV2Manager.getPurchaseSync(packageName, walletId, purchaseToken);
            if (purchaseSync == null) {
                throw new IllegalArgumentException("Required value was null.".toString());
            }
            if (purchaseSync.getPurchase() == null) {
                throw new IllegalArgumentException("Required value was null.".toString());
            }
            SDKWebResponse sDKWebResponse = new SDKWebResponse(responseCode, new PurchaseData(new JSONObject(purchaseSync.getPurchase().getVerification().getData())), purchaseSync.getPurchase().getVerification().getSignature(), null);
            Boolean boolHasCollectors = WalletPaymentDeeplinkResponseStream.getInstance().hasCollectors();
            Intrinsics.checkNotNullExpressionValue(boolHasCollectors, "hasCollectors(...)");
            if (boolHasCollectors.booleanValue()) {
                WalletPaymentDeeplinkResponseStream.getInstance().emit(sDKWebResponse);
            } else {
                PaymentResponseStream.getInstance().emit(SDKWebResponse.toSDKPaymentResponse$default(sDKWebResponse, null, 1, null));
            }
        } catch (Exception e) {
            Logger.logError("There was a failure parsing the Purchase Result from the Wallet Deeplink.", e);
            WalletPaymentDeeplinkResponseStream.getInstance().emit(new SDKWebResponse(ResponseCode.ERROR.getValue()));
        }
    }

    private final void handleFailureResult(int responseCode) {
        WalletPaymentDeeplinkResponseStream.getInstance().emit(new SDKWebResponse(responseCode));
    }
}
