package com.aptoide.sdk.billing;

import com.aptoide.sdk.billing.exceptions.ServiceConnectionException;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface Repository {
    BillingResult consumeAsync(String str) throws ServiceConnectionException;

    PurchasesResult getPurchases(String str) throws ServiceConnectionException;

    BillingResult isFeatureSupported(int i) throws ServiceConnectionException;

    boolean isReady();

    LaunchBillingFlowResult launchBillingFlow(String str, String str2, String str3, String str4, String str5) throws ServiceConnectionException;

    SkuDetailsResult querySkuDetailsAsync(String str, List<String> list) throws ServiceConnectionException;
}
