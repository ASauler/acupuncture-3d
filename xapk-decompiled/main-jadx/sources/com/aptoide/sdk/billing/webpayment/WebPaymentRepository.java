package com.aptoide.sdk.billing.webpayment;

import androidx.browser.trusted.sharing.ShareTarget;
import com.aptoide.sdk.billing.helpers.WalletUtils;
import com.aptoide.sdk.billing.payflow.models.PaymentFlowMethod;
import com.aptoide.sdk.billing.service.BdsService;
import com.aptoide.sdk.billing.service.RequestResponse;
import com.aptoide.sdk.billing.service.ServiceResponseListener;
import com.aptoide.sdk.billing.utils.ServiceUtils;
import com.aptoide.sdk.core.analytics.events.SdkBackendRequestType;
import com.aptoide.sdk.core.analytics.events.SdkInitializationLabels;
import com.aptoide.sdk.core.analytics.events.SdkPurchaseFlowLabels;
import com.aptoide.sdk.core.logger.Logger;
import com.brentvatne.react.ReactVideoView;
import com.facebook.hermes.intl.Constants;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import net.lingala.zip4j.util.InternalZipConstants;

/* JADX INFO: compiled from: WebPaymentRepository.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004JY\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\u00062\b\u0010\n\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000b\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\u00062\b\u0010\r\u001a\u0004\u0018\u00010\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/aptoide/sdk/billing/webpayment/WebPaymentRepository;", "", "bdsService", "Lcom/aptoide/sdk/billing/service/BdsService;", "(Lcom/aptoide/sdk/billing/service/BdsService;)V", "getWebPaymentUrl", "", "packageName", Constants.LOCALE, "oemId", "walletId", SdkPurchaseFlowLabels.SKU, "developerPayload", "obfuscatedAccountId", "freeTrial", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;", "waitForCountDown", "", "countDownLatch", "Ljava/util/concurrent/CountDownLatch;", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class WebPaymentRepository {
    private final BdsService bdsService;

    public WebPaymentRepository(BdsService bdsService) {
        Intrinsics.checkNotNullParameter(bdsService, "bdsService");
        this.bdsService = bdsService;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String getWebPaymentUrl(String packageName, String locale, String oemId, String walletId, String sku, String developerPayload, String obfuscatedAccountId, Boolean freeTrial) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(sku, "sku");
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        String paymentFlowFromPayflowMethod = PaymentFlowMethod.INSTANCE.getPaymentFlowFromPayflowMethod(CollectionsKt.toMutableList((Collection) WalletUtils.INSTANCE.getPaymentFlowMethods()));
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("package", packageName);
        linkedHashMap.put("sdk_vercode", "1001");
        if (locale != null) {
            linkedHashMap.put(Constants.LOCALE, locale);
        }
        if (oemId != null) {
            linkedHashMap.put(SdkInitializationLabels.OEMID, oemId);
        }
        if (walletId != null) {
            linkedHashMap.put(SdkInitializationLabels.GUEST_ID, walletId);
        }
        linkedHashMap.put(SdkPurchaseFlowLabels.SKU, sku);
        if (developerPayload != null) {
            linkedHashMap.put(ReactVideoView.EVENT_PROP_METADATA, developerPayload);
        }
        if (obfuscatedAccountId != null) {
            linkedHashMap.put(SdkPurchaseFlowLabels.OBFUSCATED_ACCOUNT_ID, obfuscatedAccountId);
        }
        if (freeTrial != null) {
            linkedHashMap.put(SdkPurchaseFlowLabels.FREE_TRIAL, String.valueOf(freeTrial.booleanValue()));
        }
        if (paymentFlowFromPayflowMethod != null) {
            linkedHashMap.put("payment_flow", paymentFlowFromPayflowMethod);
        }
        String language = Locale.getDefault().getLanguage();
        Intrinsics.checkNotNullExpressionValue(language, "getLanguage(...)");
        linkedHashMap.put("lang_code", language);
        this.bdsService.makeRequest(InternalZipConstants.ZIP_FILE_SEPARATOR + PaymentFlowMethod.INSTANCE.getPaymentUrlVersionFromPayflowMethod(CollectionsKt.toMutableList((Collection) WalletUtils.INSTANCE.getPaymentFlowMethods())) + "/payment_url", ShareTarget.METHOD_GET, CollectionsKt.emptyList(), linkedHashMap, MapsKt.emptyMap(), MapsKt.emptyMap(), new ServiceResponseListener() { // from class: com.aptoide.sdk.billing.webpayment.WebPaymentRepository$$ExternalSyntheticLambda0
            @Override // com.aptoide.sdk.billing.service.ServiceResponseListener
            public final void onResponseReceived(RequestResponse requestResponse) {
                WebPaymentRepository.getWebPaymentUrl$lambda$8(countDownLatch, objectRef, requestResponse);
            }
        }, SdkBackendRequestType.WEB_PAYMENT_URL);
        waitForCountDown(countDownLatch);
        return (String) objectRef.element;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r3v2, types: [T, java.lang.String] */
    public static final void getWebPaymentUrl$lambda$8(CountDownLatch countDownLatch, Ref.ObjectRef webPaymentUrl, RequestResponse requestResponse) {
        Intrinsics.checkNotNullParameter(countDownLatch, "$countDownLatch");
        Intrinsics.checkNotNullParameter(webPaymentUrl, "$webPaymentUrl");
        WebPaymentResponseMapper webPaymentResponseMapper = new WebPaymentResponseMapper();
        Intrinsics.checkNotNull(requestResponse);
        WebPaymentResponse map = webPaymentResponseMapper.map(requestResponse);
        Integer responseCode = map.getResponseCode();
        if (responseCode != null && ServiceUtils.isSuccess(responseCode.intValue())) {
            webPaymentUrl.element = map.getWebPaymentUrl();
        }
        countDownLatch.countDown();
    }

    private final void waitForCountDown(CountDownLatch countDownLatch) {
        try {
            countDownLatch.await(30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            Logger.logError("Timeout for WebPaymentUrl request: " + e);
        }
    }
}
