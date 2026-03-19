package com.aptoide.sdk.billing.repositories;

import androidx.browser.trusted.sharing.ShareTarget;
import com.aptoide.sdk.billing.mappers.AttributionResponse;
import com.aptoide.sdk.billing.mappers.AttributionResponseMapper;
import com.aptoide.sdk.billing.service.BdsService;
import com.aptoide.sdk.billing.service.RequestResponse;
import com.aptoide.sdk.billing.service.ServiceResponseListener;
import com.aptoide.sdk.billing.utils.ServiceUtils;
import com.aptoide.sdk.core.analytics.AnalyticsContent;
import com.aptoide.sdk.core.analytics.events.SdkBackendRequestType;
import com.aptoide.sdk.core.analytics.events.SdkInitializationLabels;
import com.aptoide.sdk.core.logger.Logger;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.util.LinkedHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: compiled from: AttributionRepository.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J>\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\n\u001a\u0004\u0018\u00010\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/aptoide/sdk/billing/repositories/AttributionRepository;", "", "bdsService", "Lcom/aptoide/sdk/billing/service/BdsService;", "(Lcom/aptoide/sdk/billing/service/BdsService;)V", "getAttributionForUser", "Lcom/aptoide/sdk/billing/mappers/AttributionResponse;", "packageName", "", "oemId", "guestWalletId", "installerAppPackage", "currentVersion", "", "initialAttributionTimestamp", "", "waitForCountDown", "", "countDownLatch", "Ljava/util/concurrent/CountDownLatch;", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AttributionRepository {
    private final BdsService bdsService;

    public AttributionRepository(BdsService bdsService) {
        Intrinsics.checkNotNullParameter(bdsService, "bdsService");
        this.bdsService = bdsService;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final AttributionResponse getAttributionForUser(String packageName, String oemId, String guestWalletId, String installerAppPackage, int currentVersion, long initialAttributionTimestamp) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(AnalyticsContent.GAME_PACKAGE_NAME, packageName);
        if (oemId != null) {
            linkedHashMap.put(SdkInitializationLabels.OEMID, oemId);
        }
        if (guestWalletId != null) {
            linkedHashMap.put("guest_uid", guestWalletId);
        }
        if (installerAppPackage != null) {
            linkedHashMap.put("installer_package_name", installerAppPackage);
        }
        linkedHashMap.put("vercode", String.valueOf(currentVersion));
        linkedHashMap.put(SDKConstants.PARAM_DEBUG_MESSAGE_TIMESTAMP, String.valueOf(initialAttributionTimestamp));
        this.bdsService.makeRequest("/attribution", ShareTarget.METHOD_GET, CollectionsKt.emptyList(), linkedHashMap, MapsKt.emptyMap(), MapsKt.emptyMap(), new ServiceResponseListener() { // from class: com.aptoide.sdk.billing.repositories.AttributionRepository$$ExternalSyntheticLambda0
            @Override // com.aptoide.sdk.billing.service.ServiceResponseListener
            public final void onResponseReceived(RequestResponse requestResponse) {
                AttributionRepository.getAttributionForUser$lambda$4(countDownLatch, objectRef, requestResponse);
            }
        }, SdkBackendRequestType.ATTRIBUTION);
        waitForCountDown(countDownLatch);
        return (AttributionResponse) objectRef.element;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r3v1, types: [T, com.aptoide.sdk.billing.mappers.AttributionResponse] */
    public static final void getAttributionForUser$lambda$4(CountDownLatch countDownLatch, Ref.ObjectRef attributionResponse, RequestResponse requestResponse) {
        Intrinsics.checkNotNullParameter(countDownLatch, "$countDownLatch");
        Intrinsics.checkNotNullParameter(attributionResponse, "$attributionResponse");
        AttributionResponseMapper attributionResponseMapper = new AttributionResponseMapper();
        Intrinsics.checkNotNull(requestResponse);
        ?? map = attributionResponseMapper.map(requestResponse);
        Integer responseCode = map.getResponseCode();
        if (responseCode != null && ServiceUtils.isSuccess(responseCode.intValue())) {
            attributionResponse.element = map;
        }
        countDownLatch.countDown();
    }

    private final void waitForCountDown(CountDownLatch countDownLatch) {
        try {
            countDownLatch.await(30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            Logger.logError("Timeout getting User Attribution: " + e);
        }
    }
}
