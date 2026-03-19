package com.aptoide.sdk.billing.helpers;

import android.content.ComponentName;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.appcoins.billing.AppcoinsBilling;
import com.aptoide.sdk.billing.BillingResult;
import com.aptoide.sdk.billing.ConnectionLifeCycle;
import com.aptoide.sdk.billing.LaunchBillingFlowResult;
import com.aptoide.sdk.billing.PurchasesResult;
import com.aptoide.sdk.billing.Repository;
import com.aptoide.sdk.billing.ResponseCode;
import com.aptoide.sdk.billing.SkuDetailsResult;
import com.aptoide.sdk.billing.exceptions.ServiceConnectionException;
import com.aptoide.sdk.billing.listeners.AptoideBillingClientStateListener;
import com.aptoide.sdk.billing.service.WalletBillingService;
import com.aptoide.sdk.billing.usecases.IsFeatureSupported;
import com.aptoide.sdk.billing.usecases.RetryFailedRequests;
import com.aptoide.sdk.core.analytics.SdkAnalyticsUtils;
import com.aptoide.sdk.core.analytics.events.SdkGeneralFailureStep;
import com.aptoide.sdk.core.logger.Logger;
import com.facebook.appevents.AppEventsConstants;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AptoideAndroidBillingRepository implements Repository, ConnectionLifeCycle {
    private final int apiVersion;
    private boolean isServiceReady;
    private final String packageName;
    private AppcoinsBilling service;

    public AptoideAndroidBillingRepository(int i, String str) {
        Logger.logInfo(String.format("Initializing apiVersion:%s packageName:%s", Integer.valueOf(i), str));
        this.apiVersion = i;
        this.packageName = str;
    }

    @Override // com.aptoide.sdk.billing.ConnectionLifeCycle
    public void onConnect(ComponentName componentName, IBinder iBinder, AptoideBillingClientStateListener aptoideBillingClientStateListener) {
        Logger.logInfo(String.format("Billing Connected className:%s service:%s", componentName.getClassName(), iBinder.getClass().getCanonicalName()));
        this.service = new WalletBillingService(iBinder, componentName.getClassName());
        this.isServiceReady = true;
        RetryFailedRequests.INSTANCE.invoke();
        Logger.logInfo("Billing Connected, notifying client onBillingSetupFinished(ResponseCode.OK)");
        aptoideBillingClientStateListener.onBillingSetupFinished(BillingResult.newBuilder().setResponseCode(ResponseCode.OK.getValue()).build());
    }

    @Override // com.aptoide.sdk.billing.ConnectionLifeCycle
    public void onDisconnect(AptoideBillingClientStateListener aptoideBillingClientStateListener) {
        Logger.logInfo("Billing Disconnected, notifying client onBillingServiceDisconnected.");
        this.service = null;
        this.isServiceReady = false;
        aptoideBillingClientStateListener.onBillingServiceDisconnected();
    }

    @Override // com.aptoide.sdk.billing.Repository
    public PurchasesResult getPurchases(String str) throws ServiceConnectionException {
        Logger.logInfo("Executing getPurchases.");
        Logger.logInfo(String.format("Parameters skuType:%s", str));
        if (!isReady()) {
            Logger.logError("Service is not ready. Throwing ServiceConnectionException.");
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendServiceConnectionExceptionEvent(SdkGeneralFailureStep.GET_PURCHASES);
            throw new ServiceConnectionException();
        }
        try {
            Bundle purchases = this.service.getPurchases(this.apiVersion, this.packageName, str, null);
            Logger.logDebug("Purchases received: " + purchases.toString());
            PurchasesResult purchasesResultMapPurchases = AndroidBillingMapper.mapPurchases(purchases, str);
            Logger.logInfo("PurchasesResult code: " + purchasesResultMapPurchases.getBillingResult().getResponseCode());
            return purchasesResultMapPurchases;
        } catch (RemoteException e) {
            Logger.logError("Error getting purchases. ", e);
            throw new ServiceConnectionException(e.getMessage());
        }
    }

    @Override // com.aptoide.sdk.billing.Repository
    public SkuDetailsResult querySkuDetailsAsync(String str, List<String> list) throws ServiceConnectionException {
        SkuDetailsResult skuDetailsResultMapBundleToHashMapSkuDetails;
        Logger.logInfo("Executing querySkuDetailsAsync.");
        Logger.logInfo(String.format("Parameters skuType:%s skuSize:%s", str, list != null ? String.valueOf(list.size()) : AppEventsConstants.EVENT_PARAM_VALUE_NO));
        if (!isReady()) {
            Logger.logError("Service is not ready. Throwing ServiceConnectionException.");
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendServiceConnectionExceptionEvent(SdkGeneralFailureStep.QUERY_SKU_DETAILS);
            throw new ServiceConnectionException();
        }
        Bundle bundleMapArrayListToBundleSkuDetails = AndroidBillingMapper.mapArrayListToBundleSkuDetails(list);
        Logger.logDebug("Sku Details bundle to request: " + bundleMapArrayListToBundleSkuDetails);
        do {
            try {
                Bundle skuDetails = this.service.getSkuDetails(this.apiVersion, this.packageName, str, bundleMapArrayListToBundleSkuDetails);
                Logger.logDebug("Sku Details received: " + skuDetails.toString());
                skuDetailsResultMapBundleToHashMapSkuDetails = AndroidBillingMapper.mapBundleToHashMapSkuDetails(str, skuDetails);
                if (skuDetailsResultMapBundleToHashMapSkuDetails.getResponseCode() == ResponseCode.SERVICE_UNAVAILABLE.getValue()) {
                    Logger.logError("Failed to get SkuDetails request: " + skuDetailsResultMapBundleToHashMapSkuDetails.getResponseCode());
                    Thread.sleep(5000L);
                }
            } catch (Exception e) {
                Logger.logError("Error querySkuDetailsAsync. ", e);
                SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendQuerySkuDetailsFailureParsingSkusEvent(list, str);
                throw new ServiceConnectionException(e.getMessage());
            }
        } while (skuDetailsResultMapBundleToHashMapSkuDetails.getResponseCode() == ResponseCode.SERVICE_UNAVAILABLE.getValue());
        Logger.logInfo("SkuDetailsResult code: " + skuDetailsResultMapBundleToHashMapSkuDetails.getResponseCode());
        return skuDetailsResultMapBundleToHashMapSkuDetails;
    }

    @Override // com.aptoide.sdk.billing.Repository
    public BillingResult consumeAsync(String str) throws ServiceConnectionException {
        Logger.logInfo("Executing consumeAsync.");
        Logger.logDebug(String.format("Debuggable parameters purchaseToken:%s ", str));
        if (!isReady()) {
            Logger.logError("Service is not ready. Throwing ServiceConnectionException.");
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendServiceConnectionExceptionEvent(SdkGeneralFailureStep.CONSUME);
            throw new ServiceConnectionException();
        }
        try {
            int iConsumePurchase = this.service.consumePurchase(this.apiVersion, this.packageName, str);
            Logger.logInfo("Consume result: " + iConsumePurchase);
            return BillingResult.newBuilder().setResponseCode(iConsumePurchase).build();
        } catch (RemoteException e) {
            Logger.logError("Error consumeAsync. ", e);
            throw new ServiceConnectionException(e.getMessage());
        }
    }

    @Override // com.aptoide.sdk.billing.Repository
    public LaunchBillingFlowResult launchBillingFlow(String str, String str2, String str3, String str4, String str5) throws ServiceConnectionException {
        Logger.logInfo("Executing launchBillingFlow.");
        Logger.logInfo(String.format("Parameters skuType:%s sku:%s oemid:%s", str, str2, str4));
        Logger.logDebug(String.format("Debuggable parameters payload:%s guestWalletId:%s", str3, str5));
        if (!isReady()) {
            Logger.logError("Service is not ready. Throwing ServiceConnectionException.");
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendServiceConnectionExceptionEvent(SdkGeneralFailureStep.START_PURCHASE);
            throw new ServiceConnectionException();
        }
        try {
            Bundle buyIntent = this.service.getBuyIntent(this.apiVersion, this.packageName, str2, str, str3, str4, str5);
            Logger.logDebug("Get Buy Intent bundle: " + buyIntent.toString());
            LaunchBillingFlowResult launchBillingFlowResultMapBundleToHashMapGetIntent = AndroidBillingMapper.mapBundleToHashMapGetIntent(buyIntent);
            Logger.logInfo("LaunchBillingFlowResult code: " + launchBillingFlowResultMapBundleToHashMapGetIntent.getResponseCode());
            return launchBillingFlowResultMapBundleToHashMapGetIntent;
        } catch (RemoteException e) {
            Logger.logError("Error launchBillingFlow. ", e);
            throw new ServiceConnectionException(e.getMessage());
        }
    }

    @Override // com.aptoide.sdk.billing.Repository
    public boolean isReady() {
        return this.isServiceReady;
    }

    @Override // com.aptoide.sdk.billing.Repository
    public BillingResult isFeatureSupported(int i) throws ServiceConnectionException {
        Logger.logInfo("Executing isFeatureSupported " + i);
        if (!isReady()) {
            Logger.logError("Service is not ready. Throwing ServiceConnectionException.");
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendServiceConnectionExceptionEvent(SdkGeneralFailureStep.IS_FEATURE_SUPPORTED);
            throw new ServiceConnectionException();
        }
        boolean zInvoke = IsFeatureSupported.INSTANCE.invoke(i);
        Logger.logInfo("Feature supported result: " + zInvoke);
        if (zInvoke) {
            return BillingResult.newBuilder().setResponseCode(ResponseCode.OK.getValue()).build();
        }
        return BillingResult.newBuilder().setResponseCode(ResponseCode.FEATURE_NOT_SUPPORTED.getValue()).build();
    }
}
