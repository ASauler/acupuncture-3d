package com.aptoide.sdk.billing.repositories;

import androidx.browser.trusted.sharing.ShareTarget;
import com.aptoide.sdk.billing.listeners.PurchaseData;
import com.aptoide.sdk.billing.service.BdsRetryService;
import com.aptoide.sdk.core.analytics.AnalyticsContent;
import com.aptoide.sdk.core.analytics.events.SdkBackendRequestType;
import com.aptoide.sdk.core.analytics.events.SdkInitializationLabels;
import com.aptoide.sdk.core.analytics.events.SdkPurchaseFlowLabels;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MMPEventsRepository.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004Jr\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\b2\b\u0010\u000f\u001a\u0004\u0018\u00010\b2\b\u0010\u0010\u001a\u0004\u0018\u00010\b2\b\u0010\u0011\u001a\u0004\u0018\u00010\b2\b\u0010\u0012\u001a\u0004\u0018\u00010\b2\b\u0010\u0013\u001a\u0004\u0018\u00010\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/aptoide/sdk/billing/repositories/MMPEventsRepository;", "", "bdsRetryService", "Lcom/aptoide/sdk/billing/service/BdsRetryService;", "(Lcom/aptoide/sdk/billing/service/BdsRetryService;)V", "sendSuccessfulPurchaseResultEvent", "", "packageName", "", "oemId", "guestWalletId", SdkPurchaseFlowLabels.SKU, PurchaseData.ORDER_ID, "purchaseAmount", "paymentMethod", "utmSource", "utmMedium", "utmCampaign", "utmTerm", "utmContent", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MMPEventsRepository {
    private final BdsRetryService bdsRetryService;

    public MMPEventsRepository(BdsRetryService bdsRetryService) {
        Intrinsics.checkNotNullParameter(bdsRetryService, "bdsRetryService");
        this.bdsRetryService = bdsRetryService;
    }

    public final void sendSuccessfulPurchaseResultEvent(String packageName, String oemId, String guestWalletId, String sku, String orderId, String purchaseAmount, String paymentMethod, String utmSource, String utmMedium, String utmCampaign, String utmTerm, String utmContent) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(guestWalletId, "guestWalletId");
        Intrinsics.checkNotNullParameter(sku, "sku");
        Intrinsics.checkNotNullParameter(orderId, "orderId");
        Intrinsics.checkNotNullParameter(purchaseAmount, "purchaseAmount");
        Intrinsics.checkNotNullParameter(paymentMethod, "paymentMethod");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(AnalyticsContent.GAME_PACKAGE_NAME, packageName);
        if (oemId != null) {
            linkedHashMap.put(SdkInitializationLabels.OEMID, oemId);
        }
        linkedHashMap.put("guest_uid", guestWalletId);
        linkedHashMap.put(SdkPurchaseFlowLabels.SKU, sku);
        linkedHashMap.put("order_id", orderId);
        linkedHashMap.put("purchase_amount", purchaseAmount);
        linkedHashMap.put("payment_method", paymentMethod);
        linkedHashMap.put(SDKConstants.PARAM_DEBUG_MESSAGE_TIMESTAMP, String.valueOf(System.currentTimeMillis()));
        if (utmSource != null) {
            linkedHashMap.put(SdkInitializationLabels.UTM_SOURCE, utmSource);
        }
        if (utmMedium != null) {
            linkedHashMap.put(SdkInitializationLabels.UTM_MEDIUM, utmMedium);
        }
        if (utmCampaign != null) {
            linkedHashMap.put(SdkInitializationLabels.UTM_CAMPAIGN, utmCampaign);
        }
        if (utmTerm != null) {
            linkedHashMap.put(SdkInitializationLabels.UTM_TERM, utmTerm);
        }
        if (utmContent != null) {
            linkedHashMap.put(SdkInitializationLabels.UTM_CONTENT, utmContent);
        }
        this.bdsRetryService.makeRequest("/purchase", ShareTarget.METHOD_GET, new ArrayList(), linkedHashMap, new LinkedHashMap(), new LinkedHashMap(), null, SdkBackendRequestType.PURCHASE_RESULT_EVENT);
    }
}
