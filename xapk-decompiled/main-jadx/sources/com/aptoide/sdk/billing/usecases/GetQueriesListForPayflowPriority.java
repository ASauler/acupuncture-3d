package com.aptoide.sdk.billing.usecases;

import com.aptoide.billing.sdk.BuildConfig;
import com.aptoide.sdk.billing.helpers.UserCountryUtils;
import com.aptoide.sdk.billing.helpers.WalletUtils;
import com.aptoide.sdk.billing.sharedpreferences.AttributionSharedPreferences;
import com.aptoide.sdk.core.analytics.events.SdkInitializationLabels;
import com.aptoide.sdk.core.ui.UIUtilsKt;
import com.facebook.hermes.intl.Constants;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GetQueriesListForPayflowPriority.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0002J\u0015\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0006H\u0086\u0002¨\u0006\b"}, d2 = {"Lcom/aptoide/sdk/billing/usecases/GetQueriesListForPayflowPriority;", "Lcom/aptoide/sdk/billing/usecases/UseCase;", "()V", "handleGamesHubPackage", "", "invoke", "", "", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class GetQueriesListForPayflowPriority extends UseCase {
    public static final GetQueriesListForPayflowPriority INSTANCE = new GetQueriesListForPayflowPriority();

    private GetQueriesListForPayflowPriority() {
    }

    public final Map<String, String> invoke() {
        super.invokeUseCase();
        int iInvoke = GetAppInstalledVersion.INSTANCE.invoke(WalletUtils.INSTANCE.getContext().getPackageName(), WalletUtils.INSTANCE.getContext());
        int iInvoke2 = GetAppInstalledVersion.INSTANCE.invoke("com.appcoins.wallet", WalletUtils.INSTANCE.getContext());
        int iHandleGamesHubPackage = handleGamesHubPackage();
        int iInvoke3 = GetAppInstalledVersion.INSTANCE.invoke(BuildConfig.APTOIDE_GAMES_PACKAGE_NAME, WalletUtils.INSTANCE.getContext());
        int iInvoke4 = GetAppInstalledVersion.INSTANCE.invoke(BuildConfig.APTOIDE_PACKAGE_NAME, WalletUtils.INSTANCE.getContext());
        AttributionSharedPreferences attributionSharedPreferences = new AttributionSharedPreferences(WalletUtils.INSTANCE.getContext());
        String strInvoke = GetOemIdForPackage.INSTANCE.invoke(WalletUtils.INSTANCE.getContext().getPackageName(), WalletUtils.INSTANCE.getContext());
        String walletId = attributionSharedPreferences.getWalletId();
        int screenWidthInDp = UIUtilsKt.getScreenWidthInDp(WalletUtils.INSTANCE.getContext());
        int screenHeightInDp = UIUtilsKt.getScreenHeightInDp(WalletUtils.INSTANCE.getContext());
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String packageName = WalletUtils.INSTANCE.getContext().getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName, "getPackageName(...)");
        linkedHashMap.put("package", packageName);
        linkedHashMap.put("package_vercode", String.valueOf(iInvoke));
        linkedHashMap.put("sdk_vercode", "1001");
        if (iInvoke2 != -1) {
            linkedHashMap.put("wallet_vercode", String.valueOf(iInvoke2));
        }
        if (iHandleGamesHubPackage != -1) {
            linkedHashMap.put("gh_vercode", String.valueOf(iHandleGamesHubPackage));
        }
        if (iInvoke3 != -1) {
            linkedHashMap.put("aptoide_games_vercode", String.valueOf(iInvoke3));
        }
        if (iInvoke4 != -1) {
            linkedHashMap.put("vanilla_vercode", String.valueOf(iInvoke4));
        }
        String userCountry = UserCountryUtils.getUserCountry(WalletUtils.INSTANCE.getContext());
        if (userCountry != null) {
            linkedHashMap.put(Constants.LOCALE, userCountry);
        }
        if (strInvoke != null) {
            linkedHashMap.put(SdkInitializationLabels.OEMID, strInvoke);
        }
        if (walletId != null) {
            linkedHashMap.put(SdkInitializationLabels.GUEST_ID, walletId);
        }
        linkedHashMap.put("screen_width_dp", String.valueOf(screenWidthInDp));
        linkedHashMap.put("screen_height_dp", String.valueOf(screenHeightInDp));
        return linkedHashMap;
    }

    private final int handleGamesHubPackage() {
        return GetAppInstalledVersion.INSTANCE.invoke("com.dti.folderlauncher", WalletUtils.INSTANCE.getContext());
    }
}
