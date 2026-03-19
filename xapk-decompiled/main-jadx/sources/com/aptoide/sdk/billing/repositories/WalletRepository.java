package com.aptoide.sdk.billing.repositories;

import androidx.browser.trusted.sharing.ShareTarget;
import com.aptoide.sdk.billing.mappers.WalletGenerationMapper;
import com.aptoide.sdk.billing.mappers.WalletGenerationResponse;
import com.aptoide.sdk.billing.models.WalletGenerationModel;
import com.aptoide.sdk.billing.service.RequestResponse;
import com.aptoide.sdk.billing.service.Service;
import com.aptoide.sdk.billing.service.ServiceResponseListener;
import com.aptoide.sdk.core.analytics.events.SdkBackendRequestType;
import com.aptoide.sdk.core.logger.Logger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: compiled from: WalletRepository.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/aptoide/sdk/billing/repositories/WalletRepository;", "", "service", "Lcom/aptoide/sdk/billing/service/Service;", "(Lcom/aptoide/sdk/billing/service/Service;)V", "requestWalletSync", "Lcom/aptoide/sdk/billing/models/WalletGenerationModel;", "id", "", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class WalletRepository {
    private final Service service;

    public WalletRepository(Service service) {
        Intrinsics.checkNotNullParameter(service, "service");
        this.service = service;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [T, com.aptoide.sdk.billing.models.WalletGenerationModel] */
    public final WalletGenerationModel requestWalletSync(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = WalletGenerationModel.createErrorWalletGenerationModel();
        HashMap map = new HashMap();
        map.put("id", id);
        this.service.makeRequest("/appc/guest_wallet", ShareTarget.METHOD_GET, new ArrayList(), map, MapsKt.emptyMap(), MapsKt.emptyMap(), new ServiceResponseListener() { // from class: com.aptoide.sdk.billing.repositories.WalletRepository$$ExternalSyntheticLambda0
            @Override // com.aptoide.sdk.billing.service.ServiceResponseListener
            public final void onResponseReceived(RequestResponse requestResponse) {
                WalletRepository.requestWalletSync$lambda$0(objectRef, countDownLatch, requestResponse);
            }
        }, SdkBackendRequestType.GUEST_WALLET);
        try {
            countDownLatch.await(30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            Logger.logError("Timeout for Wallet Request: " + e);
        }
        T element = objectRef.element;
        Intrinsics.checkNotNullExpressionValue(element, "element");
        return (WalletGenerationModel) element;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v3, types: [T, com.aptoide.sdk.billing.models.WalletGenerationModel] */
    public static final void requestWalletSync$lambda$0(Ref.ObjectRef walletGenerationModel, CountDownLatch countDownLatch, RequestResponse requestResponse) {
        Intrinsics.checkNotNullParameter(walletGenerationModel, "$walletGenerationModel");
        Intrinsics.checkNotNullParameter(countDownLatch, "$countDownLatch");
        WalletGenerationMapper walletGenerationMapper = new WalletGenerationMapper();
        Intrinsics.checkNotNull(requestResponse);
        WalletGenerationResponse map = walletGenerationMapper.map(requestResponse);
        walletGenerationModel.element = new WalletGenerationModel(map.getAddress(), map.getSignature(), map.getEwt(), map.hasError());
        countDownLatch.countDown();
    }
}
