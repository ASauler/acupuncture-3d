package com.aptoide.sdk.billing;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import com.aptoide.communication.requester.MainThreadException;
import com.aptoide.sdk.billing.activities.UpdateDialogActivity;
import com.aptoide.sdk.billing.exceptions.ServiceConnectionException;
import com.aptoide.sdk.billing.helpers.BillingResultHelper;
import com.aptoide.sdk.billing.helpers.PayloadHelper;
import com.aptoide.sdk.billing.helpers.QueryProductDetailsParamsMapper;
import com.aptoide.sdk.billing.helpers.WalletUtils;
import com.aptoide.sdk.billing.listeners.AptoideBillingClientStateListener;
import com.aptoide.sdk.billing.listeners.ConsumeResponseListener;
import com.aptoide.sdk.billing.listeners.PendingPurchaseStream;
import com.aptoide.sdk.billing.listeners.SDKPaymentResponse;
import com.aptoide.sdk.billing.sharedpreferences.AttributionSharedPreferences;
import com.aptoide.sdk.billing.usecases.GetReferralDeeplink;
import com.aptoide.sdk.billing.usecases.ingameupdates.IsUpdateAvailable;
import com.aptoide.sdk.billing.usecases.ingameupdates.LaunchAppUpdate;
import com.aptoide.sdk.core.analytics.SdkAnalyticsUtils;
import com.aptoide.sdk.core.logger.Logger;
import kotlin.Pair;

/* JADX INFO: loaded from: classes.dex */
public class AptoideBillingClientImpl extends AptoideBillingClient implements PendingPurchaseStream.Consumer<Pair<Activity, BuyItemProperties>> {
    private final Billing billing;
    private final RepositoryConnection connection;
    private final PurchasesUpdatedListener purchaseFinishedListener;

    public AptoideBillingClientImpl(Billing billing, RepositoryConnection repositoryConnection, PurchasesUpdatedListener purchasesUpdatedListener) {
        this.billing = billing;
        this.connection = repositoryConnection;
        this.purchaseFinishedListener = purchasesUpdatedListener;
    }

    @Override // com.aptoide.sdk.billing.AptoideBillingClient
    public void queryPurchasesAsync(QueryPurchasesParams queryPurchasesParams, PurchasesResponseListener purchasesResponseListener) {
        SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendQueryPurchasesRequestEvent(queryPurchasesParams.getProductType());
        this.billing.queryPurchasesAsync(queryPurchasesParams, purchasesResponseListener);
    }

    @Override // com.aptoide.sdk.billing.AptoideBillingClient
    public void queryProductDetailsAsync(QueryProductDetailsParams queryProductDetailsParams, ProductDetailsResponseListener productDetailsResponseListener) {
        QueryProductDetailsParamsMapper queryProductDetailsParamsMapper = new QueryProductDetailsParamsMapper();
        SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendQuerySkuDetailsRequestEvent(queryProductDetailsParamsMapper.mapProductDetailsListToProductIdsList(queryProductDetailsParams), queryProductDetailsParamsMapper.getProductIdFromQueryProductDetailsParams(queryProductDetailsParams));
        this.billing.queryProductDetailsAsync(queryProductDetailsParams, productDetailsResponseListener);
    }

    @Override // com.aptoide.sdk.billing.AptoideBillingClient
    public void consumeAsync(ConsumeParams consumeParams, ConsumeResponseListener consumeResponseListener) {
        SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendConsumePurchaseRequest(consumeParams.getPurchaseToken());
        this.billing.consumeAsync(consumeParams.getPurchaseToken(), consumeResponseListener);
    }

    @Override // com.aptoide.sdk.billing.AptoideBillingClient
    public BillingResult launchBillingFlow(Activity activity, BillingFlowParams billingFlowParams) {
        try {
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendLaunchPurchaseEvent(billingFlowParams.getSku(), billingFlowParams.getSkuType(), billingFlowParams.getDeveloperPayload(), billingFlowParams.getObfuscatedAccountId(), billingFlowParams.getFreeTrial());
            if (Looper.myLooper() == Looper.getMainLooper()) {
                SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendLaunchPurchaseMainThreadFailureEvent();
                return handleErrorTypeResponse(5, new MainThreadException("launchBillingFlow"));
            }
            String strBuildIntentPayload = PayloadHelper.buildIntentPayload(billingFlowParams.getDeveloperPayload(), billingFlowParams.getObfuscatedAccountId(), billingFlowParams.getFreeTrial());
            AttributionSharedPreferences attributionSharedPreferences = new AttributionSharedPreferences(activity);
            String oemId = attributionSharedPreferences.getOemId();
            String walletId = attributionSharedPreferences.getWalletId();
            Logger.logDebug("Launching billing flow with payload: " + strBuildIntentPayload + " oemid: " + oemId + " guestWalletId: " + walletId);
            LaunchBillingFlowResult launchBillingFlowResultLaunchBillingFlow = this.billing.launchBillingFlow(billingFlowParams, strBuildIntentPayload, oemId, walletId);
            int responseCode = launchBillingFlowResultLaunchBillingFlow.getResponseCode();
            if (responseCode != 0) {
                Logger.logError("Failed to launch billing flow. ResponseCode: " + responseCode);
                SDKPaymentResponse sDKPaymentResponseCreateErrorTypeResponse = SDKPaymentResponse.INSTANCE.createErrorTypeResponse();
                ApplicationUtils.handleActivityResult(sDKPaymentResponseCreateErrorTypeResponse.getResultCode(), sDKPaymentResponseCreateErrorTypeResponse.getIntent(), this.purchaseFinishedListener);
                return BillingResult.newBuilder().setResponseCode(responseCode).build();
            }
            Intent buyIntent = launchBillingFlowResultLaunchBillingFlow.getBuyIntent();
            PaymentsResultsManager.getInstance().collectPaymentResult(this);
            if (buyIntent != null) {
                activity.startActivity(buyIntent);
            }
            return BillingResult.newBuilder().setResponseCode(0).build();
        } catch (ActivityNotFoundException e) {
            e = e;
            return handleErrorTypeResponse(6, e);
        } catch (ServiceConnectionException e2) {
            return handleErrorTypeResponse(2, e2);
        } catch (NullPointerException e3) {
            e = e3;
            return handleErrorTypeResponse(6, e);
        }
    }

    @Override // com.aptoide.sdk.billing.AptoideBillingClient
    public void startConnection(AptoideBillingClientStateListener aptoideBillingClientStateListener) {
        Logger.logInfo("Request to start connection of SDK.");
        if (isReady()) {
            return;
        }
        Logger.logInfo("Starting connection of SDK.");
        PendingPurchaseStream.getInstance().collect(this);
        this.connection.startConnection(aptoideBillingClientStateListener);
    }

    @Override // com.aptoide.sdk.billing.AptoideBillingClient
    public void endConnection() {
        Logger.logInfo("Request to end connection of SDK.");
        if (isReady()) {
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendFinishConnectionEvent();
            Logger.logInfo("Ending connection of SDK.");
            PendingPurchaseStream.getInstance().stopCollecting();
            this.connection.endConnection();
        }
    }

    @Override // com.aptoide.sdk.billing.AptoideBillingClient
    public boolean isReady() {
        return this.billing.isReady();
    }

    @Override // com.aptoide.sdk.billing.AptoideBillingClient
    public boolean isAppUpdateAvailable() {
        Logger.logInfo("Request to verify AppUpdateAvailable.");
        SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendAppUpdateAvailableRequest();
        if (Looper.myLooper() == Looper.getMainLooper()) {
            Logger.logInfo("Request from MainThread. Cancelling.");
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendAppUpdateAvailableMainThreadFailure();
            return false;
        }
        boolean zInvoke = IsUpdateAvailable.INSTANCE.invoke(WalletUtils.INSTANCE.getContext());
        SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendAppUpdateAvailableResult(zInvoke);
        return zInvoke;
    }

    @Override // com.aptoide.sdk.billing.AptoideBillingClient
    public void launchAppUpdateStore(final Context context) {
        Logger.logInfo("Request to launch App Update Store.");
        new Thread(new Runnable() { // from class: com.aptoide.sdk.billing.AptoideBillingClientImpl$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AptoideBillingClientImpl.lambda$launchAppUpdateStore$0(context);
            }
        }).start();
    }

    static /* synthetic */ void lambda$launchAppUpdateStore$0(Context context) {
        SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendLaunchAppUpdateStoreRequestEvent();
        LaunchAppUpdate.INSTANCE.invoke(context);
    }

    @Override // com.aptoide.sdk.billing.AptoideBillingClient
    public void launchAppUpdateDialog(final Context context) {
        Logger.logInfo("Request to launch App Update Dialog.");
        new Thread(new Runnable() { // from class: com.aptoide.sdk.billing.AptoideBillingClientImpl$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                AptoideBillingClientImpl.lambda$launchAppUpdateDialog$1(context);
            }
        }).start();
    }

    static /* synthetic */ void lambda$launchAppUpdateDialog$1(Context context) {
        Intent intent = new Intent(context.getApplicationContext(), (Class<?>) UpdateDialogActivity.class);
        intent.setFlags(268435456);
        context.getApplicationContext().startActivity(intent);
    }

    @Override // com.aptoide.sdk.billing.AptoideBillingClient
    public ReferralDeeplink getReferralDeeplink() {
        Logger.logInfo("Request to get Referral Deeplink.");
        SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendGetReferralDeeplinkRequestEvent();
        if (Looper.myLooper() == Looper.getMainLooper()) {
            Logger.logInfo("Request from MainThread. Cancelling.");
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendGetReferralDeeplinkMainThreadFailureEvent();
            return new ReferralDeeplink(BillingResult.newBuilder().setResponseCode(5).setDebugMessage(BillingResultHelper.getMessageFromErrorType(1)).build(), null, null);
        }
        return GetReferralDeeplink.INSTANCE.invoke();
    }

    @Override // com.aptoide.sdk.billing.AptoideBillingClient
    public BillingResult isFeatureSupported(int i) {
        Logger.logInfo("Request to verify if Feature is supported.");
        SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendIsFeatureSupportedRequestEvent(i);
        BillingResult billingResultIsFeatureSupported = this.billing.isFeatureSupported(i);
        SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendIsFeatureSupportedResultEvent(Integer.valueOf(billingResultIsFeatureSupported.getResponseCode()));
        return billingResultIsFeatureSupported;
    }

    public PurchasesUpdatedListener getPurchaseFinishedListener() {
        return this.purchaseFinishedListener;
    }

    @Override // com.aptoide.sdk.billing.listeners.PendingPurchaseStream.Consumer
    public void accept(final Pair<Activity, BuyItemProperties> pair) {
        new Thread(new Runnable() { // from class: com.aptoide.sdk.billing.AptoideBillingClientImpl$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$accept$2(pair);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$accept$2(Pair pair) {
        Looper.prepare();
        resumeBillingFlow((Activity) pair.component1(), ((BuyItemProperties) pair.component2()).toBillingFlowParams());
        Looper.loop();
    }

    private void resumeBillingFlow(Activity activity, BillingFlowParams billingFlowParams) {
        Logger.logInfo("Resuming Billing Flow after Wallet Installation.");
        try {
            String strBuildIntentPayload = PayloadHelper.buildIntentPayload(billingFlowParams.getDeveloperPayload(), billingFlowParams.getObfuscatedAccountId(), billingFlowParams.getFreeTrial());
            AttributionSharedPreferences attributionSharedPreferences = new AttributionSharedPreferences(activity);
            String oemId = attributionSharedPreferences.getOemId();
            String walletId = attributionSharedPreferences.getWalletId();
            Logger.logDebug("Launching billing flow with payload: " + strBuildIntentPayload + " oemid: " + oemId + " guestWalletId: " + walletId);
            LaunchBillingFlowResult launchBillingFlowResultLaunchBillingFlow = this.billing.launchBillingFlow(billingFlowParams, strBuildIntentPayload, oemId, walletId);
            int responseCode = launchBillingFlowResultLaunchBillingFlow.getResponseCode();
            if (responseCode != ResponseCode.OK.getValue()) {
                Logger.logError("Failed to launch billing flow. ResponseCode: " + responseCode);
                SDKPaymentResponse sDKPaymentResponseCreateErrorTypeResponse = SDKPaymentResponse.INSTANCE.createErrorTypeResponse();
                ApplicationUtils.handleActivityResult(sDKPaymentResponseCreateErrorTypeResponse.getResultCode(), sDKPaymentResponseCreateErrorTypeResponse.getIntent(), this.purchaseFinishedListener);
            } else {
                Intent buyIntent = launchBillingFlowResultLaunchBillingFlow.getBuyIntent();
                PaymentsResultsManager.getInstance().collectPaymentResult(this);
                if (buyIntent != null) {
                    activity.startActivity(buyIntent);
                }
            }
        } catch (ActivityNotFoundException e) {
            e = e;
            handleErrorTypeResponse(ResponseCode.ERROR.getValue(), e);
        } catch (ServiceConnectionException e2) {
            handleErrorTypeResponse(ResponseCode.SERVICE_UNAVAILABLE.getValue(), e2);
        } catch (NullPointerException e3) {
            e = e3;
            handleErrorTypeResponse(ResponseCode.ERROR.getValue(), e);
        }
    }

    private BillingResult handleErrorTypeResponse(int i, Exception exc) {
        Logger.logError("Failed to launch billing flow.", exc);
        SDKPaymentResponse sDKPaymentResponseCreateErrorTypeResponse = SDKPaymentResponse.INSTANCE.createErrorTypeResponse();
        ApplicationUtils.handleActivityResult(sDKPaymentResponseCreateErrorTypeResponse.getResultCode(), sDKPaymentResponseCreateErrorTypeResponse.getIntent(), this.purchaseFinishedListener);
        return BillingResult.newBuilder().setResponseCode(i).build();
    }
}
