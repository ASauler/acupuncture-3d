package com.aptoide.sdk.billing.helpers;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.aptoide.billing.sdk.BuildConfig;
import com.aptoide.communication.requester.MessageRequesterFactory;
import com.aptoide.sdk.billing.AptoideBillingClient;
import com.aptoide.sdk.billing.BuyItemProperties;
import com.aptoide.sdk.billing.ResponseCode;
import com.aptoide.sdk.billing.UriCommunicationAptoideBilling;
import com.aptoide.sdk.billing.activities.BillingFlowActivity;
import com.aptoide.sdk.billing.activities.InstallDialogActivity;
import com.aptoide.sdk.billing.activities.UnavailableBillingDialogActivity;
import com.aptoide.sdk.billing.managers.ApiKeysManager;
import com.aptoide.sdk.billing.payflow.models.PaymentFlowMethod;
import com.aptoide.sdk.billing.payflow.models.WebViewDetails;
import com.aptoide.sdk.billing.sharedpreferences.AttributionSharedPreferences;
import com.aptoide.sdk.billing.utils.AptoideBillingConstants;
import com.aptoide.sdk.billing.webpayment.WebPaymentActivity;
import com.aptoide.sdk.core.analytics.SdkAnalyticsUtils;
import com.aptoide.sdk.core.analytics.events.SdkPurchaseFlowLabels;
import com.aptoide.sdk.core.analytics.indicative.IndicativeEventLogger;
import com.aptoide.sdk.core.analytics.matomo.MatomoEventLogger;
import com.aptoide.sdk.core.device.DeviceInformationHelperKt;
import com.aptoide.sdk.core.logger.Logger;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: WalletUtils.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010!\u001a\u00020\u00182\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020#H\u0002J\u0010\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020#H\u0002J\u0018\u0010(\u001a\u00020&2\u0006\u0010)\u001a\u00020*2\u0006\u0010'\u001a\u00020#H\u0002J\u0010\u0010+\u001a\u0004\u0018\u00010\u00182\u0006\u0010,\u001a\u00020\nJ\u0010\u0010-\u001a\u0004\u0018\u00010\u00182\u0006\u0010,\u001a\u00020\nJ\b\u0010.\u001a\u00020/H\u0002J\b\u00100\u001a\u00020\u0018H\u0002J\u0010\u00101\u001a\u0002022\b\u00103\u001a\u0004\u0018\u00010\u0018J\b\u00104\u001a\u000202H\u0002J\u0006\u00105\u001a\u000202J\b\u00106\u001a\u000207H\u0002J\u0010\u00108\u001a\u0002072\b\u00109\u001a\u0004\u0018\u00010\u0018J\u0010\u0010:\u001a\u00020&2\b\u0010;\u001a\u0004\u0018\u00010<J\u0010\u0010=\u001a\u00020&2\b\u0010>\u001a\u0004\u0018\u00010\u0018J\u0016\u0010?\u001a\u00020&2\u0006\u0010@\u001a\u00020&2\u0006\u0010A\u001a\u00020\u0018J \u0010B\u001a\u00020&2\u0006\u0010C\u001a\u00020\u00182\u0006\u0010A\u001a\u00020\u00182\b\u0010D\u001a\u0004\u0018\u00010ER\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0017\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\n0\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R \u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\n0\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0012\"\u0004\b\u0015\u0010\u0016R\u001b\u0010\u0017\u001a\u00020\u00188FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u0019\u0010\u001aR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001a\"\u0004\b\u001f\u0010 ¨\u0006F"}, d2 = {"Lcom/aptoide/sdk/billing/helpers/WalletUtils;", "", "()V", "context", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "currentPaymentFlowMethod", "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;", "getCurrentPaymentFlowMethod", "()Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;", "setCurrentPaymentFlowMethod", "(Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;)V", "localPaymentFlowMethods", "", "getLocalPaymentFlowMethods", "()Ljava/util/List;", "paymentFlowMethods", "getPaymentFlowMethods", "setPaymentFlowMethods", "(Ljava/util/List;)V", "userAgent", "", "getUserAgent", "()Ljava/lang/String;", "userAgent$delegate", "Lkotlin/Lazy;", "webPaymentUrl", "getWebPaymentUrl", "setWebPaymentUrl", "(Ljava/lang/String;)V", "buildUserAgent", "widthPixels", "", "heightPixels", "createBundleWithResponseCode", "Landroid/os/Bundle;", "responseCode", "createIntentBundle", SDKConstants.PARAM_INTENT, "Landroid/content/Intent;", "getBillingIabActionNameFromPaymentFlowMethod", "paymentFlowMethod", "getBillingPackageNameFromPaymentFlowMethod", "getDisplayMetrics", "Landroid/util/DisplayMetrics;", "getWalletIdForUserSession", "isAppAvailableToBind", "", "action", "isMainThread", "isUriBillingSupported", "launchAnalytics", "", "startAnalytics", "packageName", "startInstallFlow", "buyItemProperties", "Lcom/aptoide/sdk/billing/BuyItemProperties;", "startServiceUnavailableDialog", "message", "startWalletPayment", "bundle", "skuType", "startWebFirstPayment", SdkPurchaseFlowLabels.SKU, "webViewDetails", "Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class WalletUtils {
    public static Context context;
    private static PaymentFlowMethod currentPaymentFlowMethod;
    private static String webPaymentUrl;
    public static final WalletUtils INSTANCE = new WalletUtils();
    private static List<? extends PaymentFlowMethod> paymentFlowMethods = CollectionsKt.emptyList();
    private static final List<PaymentFlowMethod> localPaymentFlowMethods = CollectionsKt.listOf((Object[]) new PaymentFlowMethod[]{new PaymentFlowMethod.Wallet("wallet", 1, CollectionsKt.arrayListOf(AptoideBillingClient.FeatureType.SUBSCRIPTIONS)), new PaymentFlowMethod.GamesHub("games_hub_checkout", 2, new ArrayList()), new PaymentFlowMethod.AptoideGames("aptoide_games", 3, new ArrayList())});

    /* JADX INFO: renamed from: userAgent$delegate, reason: from kotlin metadata */
    private static final Lazy userAgent = LazyKt.lazy(new Function0<String>() { // from class: com.aptoide.sdk.billing.helpers.WalletUtils$userAgent$2
        @Override // kotlin.jvm.functions.Function0
        public final String invoke() {
            DisplayMetrics displayMetrics = WalletUtils.INSTANCE.getDisplayMetrics();
            return WalletUtils.INSTANCE.buildUserAgent(displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
    });

    private WalletUtils() {
    }

    public final List<PaymentFlowMethod> getPaymentFlowMethods() {
        return paymentFlowMethods;
    }

    public final void setPaymentFlowMethods(List<? extends PaymentFlowMethod> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        paymentFlowMethods = list;
    }

    public final PaymentFlowMethod getCurrentPaymentFlowMethod() {
        return currentPaymentFlowMethod;
    }

    public final void setCurrentPaymentFlowMethod(PaymentFlowMethod paymentFlowMethod) {
        currentPaymentFlowMethod = paymentFlowMethod;
    }

    public final List<PaymentFlowMethod> getLocalPaymentFlowMethods() {
        return localPaymentFlowMethods;
    }

    public final String getWebPaymentUrl() {
        return webPaymentUrl;
    }

    public final void setWebPaymentUrl(String str) {
        webPaymentUrl = str;
    }

    public final Context getContext() {
        Context context2 = context;
        if (context2 != null) {
            return context2;
        }
        Intrinsics.throwUninitializedPropertyAccessException("context");
        return null;
    }

    public final void setContext(Context context2) {
        Intrinsics.checkNotNullParameter(context2, "<set-?>");
        context = context2;
    }

    public final String getUserAgent() {
        return (String) userAgent.getValue();
    }

    public final Bundle startWebFirstPayment(String sku, String skuType, WebViewDetails webViewDetails) {
        Intrinsics.checkNotNullParameter(sku, "sku");
        Intrinsics.checkNotNullParameter(skuType, "skuType");
        Logger.logInfo("Creating WebPayment bundle.");
        if (isMainThread()) {
            Logger.logError("WebPayment is not available in MainThread.");
            return createBundleWithResponseCode(ResponseCode.BILLING_UNAVAILABLE.getValue());
        }
        if (webPaymentUrl == null) {
            Logger.logError("Failure obtaining WebPayment URL.");
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendWebPaymentFailureToObtainUrlEvent();
            return createBundleWithResponseCode(ResponseCode.ERROR.getValue());
        }
        WebPaymentActivity.Companion companion = WebPaymentActivity.INSTANCE;
        Context context2 = getContext();
        String str = webPaymentUrl;
        Intrinsics.checkNotNull(str);
        Bundle bundleCreateIntentBundle = createIntentBundle(companion.newIntent(context2, str, sku, skuType, webViewDetails), ResponseCode.OK.getValue());
        Logger.logDebug("WebPayment intentBundle:" + bundleCreateIntentBundle);
        return bundleCreateIntentBundle;
    }

    public final Bundle startWalletPayment(Bundle bundle, String skuType) {
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(skuType, "skuType");
        Logger.logInfo("Creating Wallet bundle.");
        Bundle bundleCreateIntentBundle = createIntentBundle(BillingFlowActivity.INSTANCE.newIntent(getContext(), bundle, skuType), bundle.getInt(AptoideBillingConstants.RESPONSE_CODE));
        Logger.logDebug("WalletPayment intentBundle:" + bundleCreateIntentBundle);
        return bundleCreateIntentBundle;
    }

    public final Bundle startInstallFlow(BuyItemProperties buyItemProperties) {
        Logger.logInfo("Creating InstallWallet bundle.");
        Intent intentNewIntent = InstallDialogActivity.newIntent(getContext(), buyItemProperties);
        Intrinsics.checkNotNull(intentNewIntent);
        Bundle bundleCreateIntentBundle = createIntentBundle(intentNewIntent, ResponseCode.OK.getValue());
        Logger.logDebug("InstallWallet intentBundle:" + bundleCreateIntentBundle);
        return bundleCreateIntentBundle;
    }

    public final Bundle startServiceUnavailableDialog(String message) {
        Logger.logInfo("Creating BillingUnavailableDialog bundle.");
        return createIntentBundle(UnavailableBillingDialogActivity.INSTANCE.newIntent(getContext(), message), ResponseCode.OK.getValue());
    }

    public final void startAnalytics(String packageName) {
        Logger.logInfo("Starting Analytics for " + packageName);
        if (SdkAnalyticsUtils.INSTANCE.isAnalyticsEventLoggerInitialized()) {
            return;
        }
        launchAnalytics();
        SdkAnalyticsUtils.INSTANCE.setAnalyticsEventLoggerInitialized(true);
        String walletIdForUserSession = getWalletIdForUserSession();
        Logger.logDebug("Parameters for analytics: walletId: " + walletIdForUserSession + " packageName: " + packageName + " versionCode: 1001");
        SdkAnalyticsUtils.INSTANCE.setupProperties(packageName, 1001, DeviceInformationHelperKt.getDeviceInfo(), walletIdForUserSession);
        SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendStartConnectionEvent();
    }

    public final String getBillingPackageNameFromPaymentFlowMethod(PaymentFlowMethod paymentFlowMethod) {
        Intrinsics.checkNotNullParameter(paymentFlowMethod, "paymentFlowMethod");
        if (paymentFlowMethod instanceof PaymentFlowMethod.Wallet) {
            return "com.appcoins.wallet";
        }
        if (paymentFlowMethod instanceof PaymentFlowMethod.GamesHub) {
            return "com.dti.folderlauncher";
        }
        if (paymentFlowMethod instanceof PaymentFlowMethod.AptoideGames) {
            return BuildConfig.APTOIDE_GAMES_PACKAGE_NAME;
        }
        return null;
    }

    public final String getBillingIabActionNameFromPaymentFlowMethod(PaymentFlowMethod paymentFlowMethod) {
        Intrinsics.checkNotNullParameter(paymentFlowMethod, "paymentFlowMethod");
        if (paymentFlowMethod instanceof PaymentFlowMethod.Wallet) {
            return BuildConfig.APTOIDE_WALLET_IAB_BIND_ACTION;
        }
        if (paymentFlowMethod instanceof PaymentFlowMethod.GamesHub) {
            return "com.dti.folderlauncher.iab.action.BIND";
        }
        if (paymentFlowMethod instanceof PaymentFlowMethod.AptoideGames) {
            return BuildConfig.APTOIDE_GAMES_IAB_BIND_ACTION;
        }
        return null;
    }

    public final boolean isAppAvailableToBind(String action) {
        List<ResolveInfo> listQueryIntentServices;
        Intent intent = new Intent(action);
        if (Build.VERSION.SDK_INT >= 33) {
            listQueryIntentServices = getContext().getPackageManager().queryIntentServices(intent, PackageManager.ResolveInfoFlags.of(PlaybackStateCompat.ACTION_PREPARE_FROM_URI));
        } else {
            listQueryIntentServices = getContext().getPackageManager().queryIntentServices(intent, 0);
        }
        Intrinsics.checkNotNull(listQueryIntentServices);
        Logger.logInfo("Resolve Information list contains " + listQueryIntentServices.size() + " packages for action " + action + ".");
        Iterator<T> it = listQueryIntentServices.iterator();
        while (it.hasNext()) {
            Logger.logInfo("Found following packages to bind: " + ((ResolveInfo) it.next()));
        }
        return !listQueryIntentServices.isEmpty();
    }

    public final boolean isUriBillingSupported() {
        try {
            return new UriCommunicationAptoideBilling(MessageRequesterFactory.create(getContext(), "com.appcoins.wallet", "appcoins://billing/communication/processor/1", "appcoins://billing/communication/requester/1", 30000)).isBillingSupported(3, getContext().getPackageName(), "inapp") == ResponseCode.OK.getValue();
        } catch (Exception e) {
            Logger.logError("Failed to verify if URI Communication Protocol is available.", e);
            return false;
        }
    }

    private final void launchAnalytics() {
        try {
            IndicativeEventLogger.INSTANCE.initialize(getContext(), ApiKeysManager.INSTANCE.getIndicativeApiKey(), null);
        } catch (Exception e) {
            Logger.logError("Failed to Launch Indicative.", e);
        }
        try {
            MatomoEventLogger.INSTANCE.initialize(getContext(), ApiKeysManager.INSTANCE.getMatomoApiKey(), ApiKeysManager.INSTANCE.getMatomoUrl());
        } catch (Exception e2) {
            Logger.logError("Failed to Launch Matomo.", e2);
        }
    }

    private final boolean isMainThread() {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        if (!Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper())) {
            return false;
        }
        new Thread(new Runnable() { // from class: com.aptoide.sdk.billing.helpers.WalletUtils$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                WalletUtils.isMainThread$lambda$1(countDownLatch);
            }
        }).start();
        try {
            countDownLatch.await();
            return true;
        } catch (InterruptedException e) {
            Logger.logWarning("Timeout verifying MainThread: " + e);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void isMainThread$lambda$1(CountDownLatch latch) {
        Intrinsics.checkNotNullParameter(latch, "$latch");
        latch.countDown();
    }

    private final String getWalletIdForUserSession() {
        String walletId = new AttributionSharedPreferences(getContext()).getWalletId();
        return walletId == null ? String.valueOf(System.currentTimeMillis()) : walletId;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DisplayMetrics getDisplayMetrics() {
        Object systemService = getContext().getSystemService("window");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getRealMetrics(displayMetrics);
        return displayMetrics;
    }

    private final Bundle createIntentBundle(Intent intent, int responseCode) {
        Bundle bundle = new Bundle();
        bundle.putParcelable(AptoideBillingConstants.KEY_BUY_INTENT, intent);
        bundle.putInt(AptoideBillingConstants.RESPONSE_CODE, responseCode);
        return bundle;
    }

    private final Bundle createBundleWithResponseCode(int responseCode) {
        Bundle bundle = new Bundle();
        bundle.putInt(AptoideBillingConstants.RESPONSE_CODE, responseCode);
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String buildUserAgent(int widthPixels, int heightPixels) {
        String RELEASE = Build.VERSION.RELEASE;
        Intrinsics.checkNotNullExpressionValue(RELEASE, "RELEASE");
        String strReplace = new Regex(";").replace(RELEASE, " ");
        int i = Build.VERSION.SDK_INT;
        String MODEL = Build.MODEL;
        Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
        String strReplace2 = new Regex(";").replace(MODEL, " ");
        String PRODUCT = Build.PRODUCT;
        Intrinsics.checkNotNullExpressionValue(PRODUCT, "PRODUCT");
        return "AptoideBillingSDK/1.1.0 (Linux; Android " + strReplace + "; " + i + "; " + strReplace2 + " Build/" + StringsKt.replace$default(PRODUCT, ";", " ", false, 4, (Object) null) + "; " + System.getProperty("os.arch") + "; " + getContext().getPackageName() + "; 1001; " + widthPixels + "x" + heightPixels + ")";
    }
}
