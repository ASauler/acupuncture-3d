package com.aptoide.sdk.core.analytics;

import com.aptoide.sdk.core.analytics.events.SdkAppUpdateAvailableEvents;
import com.aptoide.sdk.core.analytics.events.SdkBackendRequestEvents;
import com.aptoide.sdk.core.analytics.events.SdkConsumePurchaseEvents;
import com.aptoide.sdk.core.analytics.events.SdkGeneralFailureEvents;
import com.aptoide.sdk.core.analytics.events.SdkGetReferralDeeplinkEvents;
import com.aptoide.sdk.core.analytics.events.SdkInitializationEvents;
import com.aptoide.sdk.core.analytics.events.SdkInstallWalletDialogEvents;
import com.aptoide.sdk.core.analytics.events.SdkIsFeatureSupportedEvents;
import com.aptoide.sdk.core.analytics.events.SdkLaunchAppUpdateDialogEvents;
import com.aptoide.sdk.core.analytics.events.SdkLaunchAppUpdateEvents;
import com.aptoide.sdk.core.analytics.events.SdkLaunchAppUpdateStoreEvents;
import com.aptoide.sdk.core.analytics.events.SdkPurchaseFlowEvents;
import com.aptoide.sdk.core.analytics.events.SdkQueryPurchasesEvents;
import com.aptoide.sdk.core.analytics.events.SdkQuerySkuDetailsEvents;
import com.aptoide.sdk.core.analytics.events.SdkWalletPaymentFlowEvents;
import com.aptoide.sdk.core.analytics.events.SdkWebPaymentFlowEvents;
import com.aptoide.sdk.core.analytics.indicative.IndicativeEventLogger;
import com.aptoide.sdk.core.analytics.manager.AnalyticsManager;
import com.aptoide.sdk.core.analytics.matomo.MatomoEventLogger;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AnalyticsManagerProvider {
    private static AnalyticsManager analyticsManagerInstance;

    public static AnalyticsManager provideAnalyticsManager() {
        if (analyticsManagerInstance == null) {
            IndicativeEventLogger indicativeEventLogger = IndicativeEventLogger.INSTANCE;
            analyticsManagerInstance = new AnalyticsManager.Builder().addLogger(indicativeEventLogger, provideIndicativeEventList()).addLogger(MatomoEventLogger.INSTANCE, provideIndicativeEventList()).setAnalyticsNormalizer(new KeysNormalizer()).build();
        }
        return analyticsManagerInstance;
    }

    private static List<String> provideIndicativeEventList() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(SdkAppUpdateAvailableEvents.SDK_APP_UPDATE_AVAILABLE_REQUEST);
        arrayList.add(SdkAppUpdateAvailableEvents.SDK_APP_UPDATE_AVAILABLE_RESULT);
        arrayList.add(SdkAppUpdateAvailableEvents.SDK_APP_UPDATE_AVAILABLE_MAIN_THREAD_FAILURE);
        arrayList.add(SdkAppUpdateAvailableEvents.SDK_APP_UPDATE_AVAILABLE_FAILURE_TO_OBTAIN_RESULT);
        arrayList.add(SdkAppUpdateAvailableEvents.SDK_APP_UPDATE_AVAILABLE_FAILURE_TO_OBTAIN_RESULT);
        arrayList.add(SdkBackendRequestEvents.SDK_CALL_BACKEND_REQUEST);
        arrayList.add(SdkBackendRequestEvents.SDK_CALL_BACKEND_RESPONSE);
        arrayList.add(SdkBackendRequestEvents.SDK_CALL_BACKEND_MAPPING_FAILURE);
        arrayList.add(SdkBackendRequestEvents.SDK_CALL_BACKEND_ERROR);
        arrayList.add(SdkConsumePurchaseEvents.SDK_CONSUME_PURCHASE_REQUEST);
        arrayList.add(SdkConsumePurchaseEvents.SDK_CONSUME_PURCHASE_RESULT);
        arrayList.add(SdkGeneralFailureEvents.SDK_UNEXPECTED_FAILURE);
        arrayList.add(SdkGeneralFailureEvents.SDK_PURCHASE_SIGNATURE_VERIFICATION_FAILURE);
        arrayList.add(SdkGeneralFailureEvents.SDK_SERVICE_CONNECTION_EXCEPTION);
        arrayList.add(SdkGetReferralDeeplinkEvents.SDK_GET_REFERRAL_DEEPLINK_REQUEST);
        arrayList.add(SdkGetReferralDeeplinkEvents.SDK_GET_REFERRAL_DEEPLINK_RESULT);
        arrayList.add(SdkGetReferralDeeplinkEvents.SDK_GET_REFERRAL_DEEPLINK_MAIN_THREAD_FAILURE);
        arrayList.add(SdkInitializationEvents.SDK_ATTRIBUTION_REQUEST);
        arrayList.add(SdkInitializationEvents.SDK_ATTRIBUTION_RESULT);
        arrayList.add(SdkInitializationEvents.SDK_ATTRIBUTION_REQUEST_FAILURE);
        arrayList.add(SdkInitializationEvents.SDK_ATTRIBUTION_RETRY_ATTEMPT);
        arrayList.add(SdkInitializationEvents.SDK_PAYFLOW_REQUEST);
        arrayList.add(SdkInitializationEvents.SDK_PAYFLOW_RESULT);
        arrayList.add(SdkInitializationEvents.SDK_START_CONNECTION);
        arrayList.add(SdkInitializationEvents.SDK_SERVICE_CONNECTED);
        arrayList.add(SdkInitializationEvents.SDK_SERVICE_CONNECTION_FAILED);
        arrayList.add(SdkInitializationEvents.SDK_FINISH_CONNECTION);
        arrayList.add(SdkInitializationEvents.SDK_APP_INSTALLATION_TRIGGER);
        arrayList.add(SdkInstallWalletDialogEvents.SDK_INSTALL_WALLET_DIALOG);
        arrayList.add(SdkInstallWalletDialogEvents.SDK_INSTALL_WALLET_DIALOG_ACTION);
        arrayList.add(SdkInstallWalletDialogEvents.SDK_INSTALL_WALLET_DIALOG_DOWNLOAD_WALLET_VANILLA);
        arrayList.add(SdkInstallWalletDialogEvents.SDK_INSTALL_WALLET_DIALOG_DOWNLOAD_WALLET_FALLBACK);
        arrayList.add(SdkInstallWalletDialogEvents.SDK_INSTALL_WALLET_DIALOG_SUCCESS);
        arrayList.add(SdkIsFeatureSupportedEvents.SDK_IS_FEATURE_SUPPORTED_REQUEST);
        arrayList.add(SdkIsFeatureSupportedEvents.SDK_IS_FEATURE_SUPPORTED_RESULT);
        arrayList.add(SdkLaunchAppUpdateDialogEvents.SDK_LAUNCH_APP_UPDATE_DIALOG_REQUEST);
        arrayList.add(SdkLaunchAppUpdateDialogEvents.SDK_LAUNCH_APP_UPDATE_DIALOG_ACTION);
        arrayList.add(SdkLaunchAppUpdateStoreEvents.SDK_LAUNCH_APP_UPDATE_STORE_REQUEST);
        arrayList.add(SdkLaunchAppUpdateEvents.SDK_LAUNCH_APP_UPDATE_RESULT);
        arrayList.add(SdkLaunchAppUpdateEvents.SDK_LAUNCH_APP_UPDATE_DEEPLINK_FAILURE);
        arrayList.add(SdkPurchaseFlowEvents.SDK_LAUNCH_PURCHASE);
        arrayList.add(SdkPurchaseFlowEvents.SDK_PURCHASE_RESULT);
        arrayList.add(SdkPurchaseFlowEvents.SDK_LAUNCH_PURCHASE_MAIN_THREAD_FAILURE);
        arrayList.add(SdkPurchaseFlowEvents.SDK_LAUNCH_PURCHASE_TYPE_NOT_SUPPORTED_FAILURE);
        arrayList.add(SdkQueryPurchasesEvents.SDK_QUERY_PURCHASES_REQUEST);
        arrayList.add(SdkQueryPurchasesEvents.SDK_QUERY_PURCHASES_RESULT);
        arrayList.add(SdkQueryPurchasesEvents.SDK_QUERY_PURCHASES_TYPE_NOT_SUPPORTED_ERROR);
        arrayList.add(SdkQuerySkuDetailsEvents.SDK_QUERY_SKU_DETAILS_REQUEST);
        arrayList.add(SdkQuerySkuDetailsEvents.SDK_QUERY_SKU_DETAILS_RESULT);
        arrayList.add(SdkQuerySkuDetailsEvents.SDK_QUERY_SKU_DETAILS_FAILURE_PARSING_SKUS);
        arrayList.add(SdkWalletPaymentFlowEvents.SDK_WALLET_PAYMENT_START);
        arrayList.add(SdkWalletPaymentFlowEvents.SDK_WALLET_PAYMENT_EMPTY_DATA);
        arrayList.add(SdkWebPaymentFlowEvents.SDK_WEB_PAYMENT_START);
        arrayList.add(SdkWebPaymentFlowEvents.SDK_WEB_PAYMENT_OPEN_DEEPLINK);
        arrayList.add(SdkWebPaymentFlowEvents.SDK_WEB_PAYMENT_FAILURE_TO_OPEN_DEEPLINK);
        arrayList.add(SdkWebPaymentFlowEvents.SDK_WEB_PAYMENT_FAILURE_TO_OBTAIN_URL);
        arrayList.add(SdkWebPaymentFlowEvents.SDK_WEB_PAYMENT_ALLOW_EXTERNAL_APPS);
        arrayList.add(SdkWebPaymentFlowEvents.SDK_WEB_PAYMENT_LAUNCH_EXTERNAL_PAYMENT);
        arrayList.add(SdkWebPaymentFlowEvents.SDK_WEB_PAYMENT_EXTERNAL_PAYMENT_RESULT);
        arrayList.add(SdkWebPaymentFlowEvents.SDK_WEB_PAYMENT_WALLET_PAYMENT_RESULT);
        arrayList.add(SdkWebPaymentFlowEvents.SDK_WEB_PAYMENT_EXECUTE_EXTERNAL_DEEPLINK);
        arrayList.add(SdkWebPaymentFlowEvents.SDK_WEB_PAYMENT_ERROR_PROCESSING_PURCHASE_RESULT);
        arrayList.add(SdkWebPaymentFlowEvents.SDK_WEB_PAYMENT_PURCHASE_RESULT_EMPTY);
        return arrayList;
    }
}
