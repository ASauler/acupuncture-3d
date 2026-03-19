package com.aptoide.sdk.billing.managers;

import android.content.Context;
import com.aptoide.billing.sdk.BuildConfig;
import com.aptoide.sdk.billing.helpers.WalletUtils;
import com.aptoide.sdk.billing.mappers.NewVersionAvailableResponse;
import com.aptoide.sdk.billing.mappers.ReferralDeeplinkResponse;
import com.aptoide.sdk.billing.mappers.StoreLinkResponse;
import com.aptoide.sdk.billing.repositories.StoreLinkMapperRepository;
import com.aptoide.sdk.billing.service.BdsService;
import com.aptoide.sdk.billing.usecases.GetAppInstalledVersion;
import com.aptoide.sdk.billing.usecases.GetOemIdForPackage;
import com.aptoide.sdk.billing.usecases.ingameupdates.GetInstallerAppPackage;
import com.aptoide.sdk.core.device.QGenerator;
import com.aptoide.sdk.core.logger.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StoreLinkMapperManager.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\bJ\u0006\u0010\t\u001a\u00020\nJ\b\u0010\u000b\u001a\u0004\u0018\u00010\fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/aptoide/sdk/billing/managers/StoreLinkMapperManager;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "storeLinkMapperRepository", "Lcom/aptoide/sdk/billing/repositories/StoreLinkMapperRepository;", "getNewVersionAvailability", "Lcom/aptoide/sdk/billing/mappers/NewVersionAvailableResponse;", "getReferralDeeplink", "Lcom/aptoide/sdk/billing/mappers/ReferralDeeplinkResponse;", "getStoreDeepLink", "Lcom/aptoide/sdk/billing/mappers/StoreLinkResponse;", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class StoreLinkMapperManager {
    private final Context context;
    private final StoreLinkMapperRepository storeLinkMapperRepository;

    public StoreLinkMapperManager(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.storeLinkMapperRepository = new StoreLinkMapperRepository(new BdsService(BuildConfig.STORE_LINK_BASE_HOST, 3000));
    }

    public final StoreLinkResponse getStoreDeepLink() {
        Logger.logInfo("Getting Store Deeplink value.");
        String strInvoke = GetOemIdForPackage.INSTANCE.invoke(WalletUtils.INSTANCE.getContext().getPackageName(), WalletUtils.INSTANCE.getContext());
        String strInvoke2 = GetInstallerAppPackage.INSTANCE.invoke(this.context);
        StoreLinkMapperRepository storeLinkMapperRepository = this.storeLinkMapperRepository;
        String packageName = this.context.getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName, "getPackageName(...)");
        StoreLinkResponse storeDeeplink = storeLinkMapperRepository.getStoreDeeplink(packageName, strInvoke2, strInvoke);
        Logger.logInfo("Store Deeplink received: " + storeDeeplink);
        return storeDeeplink;
    }

    public final ReferralDeeplinkResponse getReferralDeeplink() {
        Logger.logInfo("Getting Referral Deeplink value.");
        String strInvoke = GetOemIdForPackage.INSTANCE.invoke(WalletUtils.INSTANCE.getContext().getPackageName(), WalletUtils.INSTANCE.getContext());
        String strInvoke2 = GetInstallerAppPackage.INSTANCE.invoke(this.context);
        StoreLinkMapperRepository storeLinkMapperRepository = this.storeLinkMapperRepository;
        String packageName = this.context.getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName, "getPackageName(...)");
        ReferralDeeplinkResponse referralDeeplink = storeLinkMapperRepository.getReferralDeeplink(packageName, strInvoke2, strInvoke);
        Logger.logInfo("Referral Deeplink received: " + referralDeeplink);
        return referralDeeplink;
    }

    public final NewVersionAvailableResponse getNewVersionAvailability() {
        String strGenerateQ;
        Logger.logInfo("Getting New Version Availability.");
        String strInvoke = GetOemIdForPackage.INSTANCE.invoke(WalletUtils.INSTANCE.getContext().getPackageName(), WalletUtils.INSTANCE.getContext());
        String strInvoke2 = GetInstallerAppPackage.INSTANCE.invoke(this.context);
        int iInvoke = GetAppInstalledVersion.INSTANCE.invoke(this.context.getPackageName(), this.context);
        try {
            strGenerateQ = QGenerator.INSTANCE.generateQ(WalletUtils.INSTANCE.getContext());
        } catch (Exception e) {
            Logger.logWarning(e.toString());
            strGenerateQ = null;
        }
        StoreLinkMapperRepository storeLinkMapperRepository = this.storeLinkMapperRepository;
        String packageName = this.context.getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName, "getPackageName(...)");
        NewVersionAvailableResponse newVersionAvailability = storeLinkMapperRepository.getNewVersionAvailability(packageName, strInvoke2, strInvoke, iInvoke, strGenerateQ);
        Logger.logInfo("New Version Availability received: " + newVersionAvailability);
        return newVersionAvailability;
    }
}
