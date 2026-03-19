package com.aptoide.sdk.billing.repositories;

import androidx.browser.trusted.sharing.ShareTarget;
import androidx.exifinterface.media.ExifInterface;
import com.aptoide.sdk.billing.ResponseCode;
import com.aptoide.sdk.billing.mappers.NewVersionAvailableResponse;
import com.aptoide.sdk.billing.mappers.NewVersionAvailableResponseMapper;
import com.aptoide.sdk.billing.mappers.ReferralDeeplinkResponse;
import com.aptoide.sdk.billing.mappers.ReferralDeeplinkResponseMapper;
import com.aptoide.sdk.billing.mappers.StoreLinkResponse;
import com.aptoide.sdk.billing.mappers.StoreLinkResponseMapper;
import com.aptoide.sdk.billing.service.BdsService;
import com.aptoide.sdk.billing.service.RequestResponse;
import com.aptoide.sdk.billing.service.ServiceResponseListener;
import com.aptoide.sdk.billing.utils.ServiceUtils;
import com.aptoide.sdk.core.analytics.AnalyticsContent;
import com.aptoide.sdk.core.analytics.events.SdkBackendRequestType;
import com.aptoide.sdk.core.analytics.events.SdkInitializationLabels;
import com.aptoide.sdk.core.logger.Logger;
import com.facebook.hermes.intl.Constants;
import com.facebook.internal.ServerProtocol;
import java.util.LinkedHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: compiled from: StoreLinkMapperRepository.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J4\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\n\u001a\u0004\u0018\u00010\b2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\bJ\"\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\n\u001a\u0004\u0018\u00010\bJ$\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\n\u001a\u0004\u0018\u00010\bJ\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/aptoide/sdk/billing/repositories/StoreLinkMapperRepository;", "", "bdsService", "Lcom/aptoide/sdk/billing/service/BdsService;", "(Lcom/aptoide/sdk/billing/service/BdsService;)V", "getNewVersionAvailability", "Lcom/aptoide/sdk/billing/mappers/NewVersionAvailableResponse;", "packageName", "", "appInstallerPackageName", SdkInitializationLabels.OEMID, "versionCode", "", "q", "getReferralDeeplink", "Lcom/aptoide/sdk/billing/mappers/ReferralDeeplinkResponse;", "getStoreDeeplink", "Lcom/aptoide/sdk/billing/mappers/StoreLinkResponse;", "waitForCountDown", "", "countDownLatch", "Ljava/util/concurrent/CountDownLatch;", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class StoreLinkMapperRepository {
    private final BdsService bdsService;

    public StoreLinkMapperRepository(BdsService bdsService) {
        Intrinsics.checkNotNullParameter(bdsService, "bdsService");
        this.bdsService = bdsService;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final StoreLinkResponse getStoreDeeplink(String packageName, String appInstallerPackageName, String oemid) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, ExifInterface.GPS_MEASUREMENT_2D);
        linkedHashMap.put("isReferral", Constants.CASEFIRST_FALSE);
        if (appInstallerPackageName != null) {
            linkedHashMap.put("store-package", appInstallerPackageName);
        }
        if (oemid != null) {
            linkedHashMap.put(SdkInitializationLabels.OEMID, oemid);
        }
        this.bdsService.makeRequest("/deeplink/" + packageName, ShareTarget.METHOD_GET, CollectionsKt.emptyList(), MapsKt.toMap(linkedHashMap), MapsKt.emptyMap(), MapsKt.emptyMap(), new ServiceResponseListener() { // from class: com.aptoide.sdk.billing.repositories.StoreLinkMapperRepository$$ExternalSyntheticLambda2
            @Override // com.aptoide.sdk.billing.service.ServiceResponseListener
            public final void onResponseReceived(RequestResponse requestResponse) {
                StoreLinkMapperRepository.getStoreDeeplink$lambda$4(countDownLatch, objectRef, requestResponse);
            }
        }, SdkBackendRequestType.STORE_DEEPLINK);
        waitForCountDown(countDownLatch);
        return (StoreLinkResponse) objectRef.element;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r3v1, types: [T, com.aptoide.sdk.billing.mappers.StoreLinkResponse] */
    public static final void getStoreDeeplink$lambda$4(CountDownLatch countDownLatch, Ref.ObjectRef storeDeepLink, RequestResponse requestResponse) {
        ?? map;
        Integer responseCode;
        Intrinsics.checkNotNullParameter(countDownLatch, "$countDownLatch");
        Intrinsics.checkNotNullParameter(storeDeepLink, "$storeDeepLink");
        if (requestResponse != null && (responseCode = (map = new StoreLinkResponseMapper().map(requestResponse)).getResponseCode()) != null && ServiceUtils.isSuccess(responseCode.intValue())) {
            storeDeepLink.element = map;
        }
        countDownLatch.countDown();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0, types: [T, com.aptoide.sdk.billing.mappers.ReferralDeeplinkResponse] */
    public final ReferralDeeplinkResponse getReferralDeeplink(String packageName, String appInstallerPackageName, String oemid) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = new ReferralDeeplinkResponse(Integer.valueOf(ResponseCode.ERROR.getValue()), null, null, 6, null);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, ExifInterface.GPS_MEASUREMENT_2D);
        linkedHashMap.put("isReferral", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
        if (appInstallerPackageName != null) {
            linkedHashMap.put("store-package", appInstallerPackageName);
        }
        if (oemid != null) {
            linkedHashMap.put(SdkInitializationLabels.OEMID, oemid);
        }
        this.bdsService.makeRequest("/deeplink/" + packageName, ShareTarget.METHOD_GET, CollectionsKt.emptyList(), MapsKt.toMap(linkedHashMap), MapsKt.emptyMap(), MapsKt.emptyMap(), new ServiceResponseListener() { // from class: com.aptoide.sdk.billing.repositories.StoreLinkMapperRepository$$ExternalSyntheticLambda1
            @Override // com.aptoide.sdk.billing.service.ServiceResponseListener
            public final void onResponseReceived(RequestResponse requestResponse) {
                StoreLinkMapperRepository.getReferralDeeplink$lambda$9(countDownLatch, objectRef, requestResponse);
            }
        }, SdkBackendRequestType.STORE_DEEPLINK);
        waitForCountDown(countDownLatch);
        return (ReferralDeeplinkResponse) objectRef.element;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r3v1, types: [T, com.aptoide.sdk.billing.mappers.ReferralDeeplinkResponse] */
    public static final void getReferralDeeplink$lambda$9(CountDownLatch countDownLatch, Ref.ObjectRef referralDeeplink, RequestResponse requestResponse) {
        ?? map;
        Integer responseCode;
        Intrinsics.checkNotNullParameter(countDownLatch, "$countDownLatch");
        Intrinsics.checkNotNullParameter(referralDeeplink, "$referralDeeplink");
        if (requestResponse != null && (responseCode = (map = new ReferralDeeplinkResponseMapper().map(requestResponse)).getResponseCode()) != null && ServiceUtils.isSuccess(responseCode.intValue())) {
            referralDeeplink.element = map;
        }
        countDownLatch.countDown();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [T, com.aptoide.sdk.billing.mappers.NewVersionAvailableResponse] */
    public final NewVersionAvailableResponse getNewVersionAvailability(String packageName, String appInstallerPackageName, String oemid, int versionCode, String q) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = new NewVersionAvailableResponse(Integer.valueOf(ResponseCode.ERROR.getValue()), false, 2, null);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(AnalyticsContent.SDK_VERSION_CODE, String.valueOf(versionCode));
        if (appInstallerPackageName != null) {
            linkedHashMap.put("store-package", appInstallerPackageName);
        }
        if (oemid != null) {
            linkedHashMap.put(SdkInitializationLabels.OEMID, oemid);
        }
        if (q != null) {
            linkedHashMap.put("q", q);
        }
        this.bdsService.makeRequest("/new-version/" + packageName, ShareTarget.METHOD_GET, CollectionsKt.emptyList(), MapsKt.toMap(linkedHashMap), MapsKt.emptyMap(), MapsKt.emptyMap(), new ServiceResponseListener() { // from class: com.aptoide.sdk.billing.repositories.StoreLinkMapperRepository$$ExternalSyntheticLambda0
            @Override // com.aptoide.sdk.billing.service.ServiceResponseListener
            public final void onResponseReceived(RequestResponse requestResponse) {
                StoreLinkMapperRepository.getNewVersionAvailability$lambda$15(countDownLatch, objectRef, requestResponse);
            }
        }, SdkBackendRequestType.NEW_VERSION_AVAILABLE);
        waitForCountDown(countDownLatch);
        return (NewVersionAvailableResponse) objectRef.element;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r3v1, types: [T, com.aptoide.sdk.billing.mappers.NewVersionAvailableResponse] */
    public static final void getNewVersionAvailability$lambda$15(CountDownLatch countDownLatch, Ref.ObjectRef referralDeeplink, RequestResponse requestResponse) {
        ?? map;
        Integer responseCode;
        Intrinsics.checkNotNullParameter(countDownLatch, "$countDownLatch");
        Intrinsics.checkNotNullParameter(referralDeeplink, "$referralDeeplink");
        if (requestResponse != null && (responseCode = (map = new NewVersionAvailableResponseMapper().map(requestResponse)).getResponseCode()) != null && ServiceUtils.isSuccess(responseCode.intValue())) {
            referralDeeplink.element = map;
        }
        countDownLatch.countDown();
    }

    private final void waitForCountDown(CountDownLatch countDownLatch) {
        try {
            countDownLatch.await(30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            Logger.logError("Timeout getting Store Deeplink: " + e);
        }
    }
}
