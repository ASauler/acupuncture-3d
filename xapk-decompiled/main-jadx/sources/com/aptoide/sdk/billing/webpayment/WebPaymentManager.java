package com.aptoide.sdk.billing.webpayment;

import com.aptoide.billing.sdk.BuildConfig;
import com.aptoide.sdk.billing.helpers.UserCountryUtils;
import com.aptoide.sdk.billing.helpers.WalletUtils;
import com.aptoide.sdk.billing.service.BdsService;
import com.aptoide.sdk.billing.sharedpreferences.AttributionSharedPreferences;
import com.aptoide.sdk.billing.usecases.GetOemIdForPackage;
import com.aptoide.sdk.core.analytics.events.SdkPurchaseFlowLabels;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WebPaymentManager.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J1\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00032\b\u0010\f\u001a\u0004\u0018\u00010\u00032\b\u0010\r\u001a\u0004\u0018\u00010\u00032\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/aptoide/sdk/billing/webpayment/WebPaymentManager;", "", "packageName", "", "(Ljava/lang/String;)V", "getPackageName", "()Ljava/lang/String;", "webPaymentRepository", "Lcom/aptoide/sdk/billing/webpayment/WebPaymentRepository;", "getWebPaymentUrl", "", SdkPurchaseFlowLabels.SKU, "developerPayload", "obfuscatedAccountId", "freeTrial", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class WebPaymentManager {
    private final String packageName;
    private final WebPaymentRepository webPaymentRepository;

    public WebPaymentManager(String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        this.packageName = packageName;
        this.webPaymentRepository = new WebPaymentRepository(new BdsService(BuildConfig.PAYFLOW_HOST, 3000));
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final void getWebPaymentUrl(String sku, String developerPayload, String obfuscatedAccountId, Boolean freeTrial) {
        Intrinsics.checkNotNullParameter(sku, "sku");
        AttributionSharedPreferences attributionSharedPreferences = new AttributionSharedPreferences(WalletUtils.INSTANCE.getContext());
        WalletUtils.INSTANCE.setWebPaymentUrl(this.webPaymentRepository.getWebPaymentUrl(this.packageName, UserCountryUtils.getUserCountry(WalletUtils.INSTANCE.getContext()), GetOemIdForPackage.INSTANCE.invoke(this.packageName, WalletUtils.INSTANCE.getContext()), attributionSharedPreferences.getWalletId(), sku, developerPayload, obfuscatedAccountId, freeTrial));
    }
}
