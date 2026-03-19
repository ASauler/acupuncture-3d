package com.aptoide.sdk.billing.managers;

import com.aptoide.billing.sdk.BuildConfig;
import com.aptoide.sdk.billing.models.WalletGenerationModel;
import com.aptoide.sdk.billing.repositories.WalletRepository;
import com.aptoide.sdk.billing.service.BdsService;
import com.aptoide.sdk.core.logger.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WalletManager.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/aptoide/sdk/billing/managers/WalletManager;", "", "()V", "walletRepository", "Lcom/aptoide/sdk/billing/repositories/WalletRepository;", "requestWallet", "Lcom/aptoide/sdk/billing/models/WalletGenerationModel;", "walletId", "", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class WalletManager {
    public static final WalletManager INSTANCE = new WalletManager();
    private static final WalletRepository walletRepository = new WalletRepository(new BdsService(BuildConfig.BACKEND_BASE, 30000));

    private WalletManager() {
    }

    public final WalletGenerationModel requestWallet(String walletId) {
        WalletGenerationModel walletGenerationModelCreateErrorWalletGenerationModel;
        Logger.logInfo("Requesting Wallet value.");
        if (walletId == null || (walletGenerationModelCreateErrorWalletGenerationModel = walletRepository.requestWalletSync(walletId)) == null) {
            walletGenerationModelCreateErrorWalletGenerationModel = WalletGenerationModel.createErrorWalletGenerationModel();
        }
        Intrinsics.checkNotNull(walletGenerationModelCreateErrorWalletGenerationModel);
        return walletGenerationModelCreateErrorWalletGenerationModel;
    }
}
