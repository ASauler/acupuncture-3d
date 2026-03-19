package com.aptoide.sdk.billing;

import android.content.Intent;
import android.util.Base64;
import com.aptoide.sdk.billing.helpers.BillingResultHelper;
import com.aptoide.sdk.billing.listeners.PurchaseData;
import com.aptoide.sdk.billing.listeners.SDKWebResponse;
import com.aptoide.sdk.billing.usecases.mmp.SendSuccessfulPurchaseResponseEvent;
import com.aptoide.sdk.billing.utils.AptoideBillingConstants;
import com.aptoide.sdk.core.analytics.SdkAnalytics;
import com.aptoide.sdk.core.analytics.SdkAnalyticsUtils;
import com.aptoide.sdk.core.logger.Logger;
import com.aptoide.sdk.core.security.PurchasesSecurityHelper;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.hermes.intl.Constants;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import net.lingala.zip4j.util.InternalZipConstants;
import net.openid.appauth.ResponseTypeValues;
import org.json.JSONObject;

/* JADX INFO: compiled from: ApplicationUtils.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0007H\u0002J \u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007H\u0002J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0004H\u0002J\"\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J(\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0018\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J(\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J \u0010\u001c\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\b\u001a\u00020\u000eH\u0002J\u0018\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J<\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u000e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u00072\b\u0010 \u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J0\u0010!\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0019H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcom/aptoide/sdk/billing/ApplicationUtils;", "", "()V", "minimumErrorLevel", "", "startingErrorCode", "getObjectFromJson", "", "data", "Lorg/json/JSONObject;", "objectId", "defaultValue", "getResponseCodeFromIntent", SDKConstants.PARAM_INTENT, "Landroid/content/Intent;", "getResponseDesc", ResponseTypeValues.CODE, "handleActivityResult", "", "resultCode", "purchaseFinishedListener", "Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;", "handleCanceledResult", "responseCode", "sdkAnalytics", "Lcom/aptoide/sdk/core/analytics/SdkAnalytics;", "handleDataNull", "handleFailureBillingResult", "handlePurchaseDataNull", "handleSignatureVerificationFailed", "handleSuccessfulResult", SDKWebResponse.PURCHASE_DATA, SDKWebResponse.DATA_SIGNATURE, "handleUnknownFailureResult", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ApplicationUtils {
    public static final ApplicationUtils INSTANCE = new ApplicationUtils();
    private static final int minimumErrorLevel = -1000;
    private static final int startingErrorCode = 0;

    private ApplicationUtils() {
    }

    @JvmStatic
    public static final void handleActivityResult(int resultCode, Intent data, PurchasesUpdatedListener purchaseFinishedListener) {
        Intrinsics.checkNotNullParameter(purchaseFinishedListener, "purchaseFinishedListener");
        SdkAnalytics sdkAnalytics = SdkAnalyticsUtils.INSTANCE.getSdkAnalytics();
        if (data == null) {
            INSTANCE.handleDataNull(purchaseFinishedListener, sdkAnalytics);
            return;
        }
        ApplicationUtils applicationUtils = INSTANCE;
        int responseCodeFromIntent = applicationUtils.getResponseCodeFromIntent(data);
        String stringExtra = data.getStringExtra(AptoideBillingConstants.INAPP_PURCHASE_DATA);
        String stringExtra2 = data.getStringExtra(AptoideBillingConstants.INAPP_DATA_SIGNATURE);
        if (resultCode == -1 && responseCodeFromIntent == 0) {
            applicationUtils.handleSuccessfulResult(responseCodeFromIntent, data, stringExtra, stringExtra2, purchaseFinishedListener, sdkAnalytics);
            return;
        }
        if (resultCode == -1) {
            applicationUtils.handleFailureBillingResult(responseCodeFromIntent, data, purchaseFinishedListener, sdkAnalytics);
        } else if (resultCode == 0) {
            applicationUtils.handleCanceledResult(responseCodeFromIntent, data, purchaseFinishedListener, sdkAnalytics);
        } else {
            applicationUtils.handleUnknownFailureResult(resultCode, responseCodeFromIntent, data, purchaseFinishedListener, sdkAnalytics);
        }
    }

    private final void handleSuccessfulResult(int responseCode, Intent data, String purchaseData, String dataSignature, PurchasesUpdatedListener purchaseFinishedListener, SdkAnalytics sdkAnalytics) {
        SdkAnalytics sdkAnalytics2;
        Intent intent;
        Logger.logInfo("Successful ResultCode from Purchase.");
        Logger.logDebug("Purchase data: " + purchaseData);
        Logger.logDebug("Data signature: " + dataSignature);
        Logger.logDebug("Extras: " + data.getExtras());
        if (purchaseData == null) {
            sdkAnalytics2 = sdkAnalytics;
            intent = data;
        } else {
            if (dataSignature != null) {
                if (PurchasesSecurityHelper.INSTANCE.verifyPurchase(purchaseData, Base64.decode(dataSignature, 0))) {
                    try {
                        JSONObject jSONObject = new JSONObject(purchaseData);
                        String objectFromJson = getObjectFromJson(jSONObject, PurchaseData.OBFUSCATED_EXTERNAL_ACCOUNT_ID);
                        AccountIdentifiers accountIdentifiers = objectFromJson != null ? new AccountIdentifiers(objectFromJson) : null;
                        String objectFromJson2 = getObjectFromJson(jSONObject, "developerPayload");
                        String objectFromJson3 = getObjectFromJson(jSONObject, PurchaseData.ORDER_ID, "");
                        String objectFromJson4 = getObjectFromJson(jSONObject, "packageName", "");
                        List listListOf = CollectionsKt.listOf(getObjectFromJson(jSONObject, "productId", ""));
                        Integer numDecode = Integer.decode(getObjectFromJson(jSONObject, PurchaseData.PURCHASE_STATE, AppEventsConstants.EVENT_PARAM_VALUE_NO));
                        Intrinsics.checkNotNullExpressionValue(numDecode, "decode(...)");
                        Purchase purchase = new Purchase(accountIdentifiers, objectFromJson2, objectFromJson3, purchaseData, objectFromJson4, listListOf, numDecode.intValue(), Long.parseLong(getObjectFromJson(jSONObject, "purchaseTime", AppEventsConstants.EVENT_PARAM_VALUE_NO)), getObjectFromJson(jSONObject, "purchaseToken", ""), dataSignature, Boolean.parseBoolean(getObjectFromJson(jSONObject, PurchaseData.IS_AUTO_RENEWING, Constants.CASEFIRST_FALSE)));
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(purchase);
                        SendSuccessfulPurchaseResponseEvent.INSTANCE.invoke(purchase);
                        SdkAnalytics.sendPurchaseResultEvent$default(sdkAnalytics, responseCode, purchase.getPurchaseToken(), (String) CollectionsKt.first((List) purchase.getProducts()), null, 8, null);
                        purchaseFinishedListener.onPurchasesUpdated(BillingResult.INSTANCE.newBuilder().setResponseCode(responseCode).build(), arrayList);
                        Logger.logInfo("Purchase result successfully sent.");
                        return;
                    } catch (Exception e) {
                        Logger.logError("Failed to parse purchase data: " + e);
                        SdkAnalytics.sendPurchaseResultEvent$default(sdkAnalytics, 6, null, null, "Purchase failed with parsing error.", 6, null);
                        purchaseFinishedListener.onPurchasesUpdated(BillingResult.INSTANCE.newBuilder().setResponseCode(6).build(), CollectionsKt.emptyList());
                        return;
                    }
                }
                handleSignatureVerificationFailed(purchaseFinishedListener, sdkAnalytics);
                return;
            }
            intent = data;
            sdkAnalytics2 = sdkAnalytics;
        }
        handlePurchaseDataNull(purchaseFinishedListener, sdkAnalytics2, intent);
    }

    private final void handleDataNull(PurchasesUpdatedListener purchaseFinishedListener, SdkAnalytics sdkAnalytics) {
        Logger.logError("Null data in IAB activity result.");
        SdkAnalytics.sendPurchaseResultEvent$default(sdkAnalytics, 6, null, null, "Null data in IAB activity result.", 6, null);
        purchaseFinishedListener.onPurchasesUpdated(BillingResult.INSTANCE.newBuilder().setResponseCode(6).build(), CollectionsKt.emptyList());
    }

    private final void handlePurchaseDataNull(PurchasesUpdatedListener purchaseFinishedListener, SdkAnalytics sdkAnalytics, Intent data) {
        Logger.logError("BUG: either purchaseData or dataSignature is null.");
        Logger.logDebug("Extras: " + data.getExtras());
        SdkAnalytics.sendPurchaseResultEvent$default(sdkAnalytics, 6, null, null, "Either purchaseData or dataSignature is null.", 6, null);
        purchaseFinishedListener.onPurchasesUpdated(BillingResult.INSTANCE.newBuilder().setResponseCode(6).build(), CollectionsKt.emptyList());
    }

    private final void handleSignatureVerificationFailed(PurchasesUpdatedListener purchaseFinishedListener, SdkAnalytics sdkAnalytics) {
        Logger.logError("Signature verification failed.");
        SdkAnalytics.sendPurchaseResultEvent$default(sdkAnalytics, 5, null, null, "Signature verification failed.", 6, null);
        purchaseFinishedListener.onPurchasesUpdated(BillingResult.INSTANCE.newBuilder().setResponseCode(5).setDebugMessage(BillingResultHelper.getMessageFromErrorType(0)).build(), CollectionsKt.emptyList());
    }

    private final void handleFailureBillingResult(int responseCode, Intent data, PurchasesUpdatedListener purchaseFinishedListener, SdkAnalytics sdkAnalytics) {
        Logger.logError("Result code was OK but in-app billing response was not OK: " + getResponseDesc(responseCode));
        Logger.logDebug("Bundle: " + data);
        SdkAnalytics.sendPurchaseResultEvent$default(sdkAnalytics, responseCode, null, null, "Result code was OK but in-app billing response was not OK.", 6, null);
        purchaseFinishedListener.onPurchasesUpdated(BillingResult.INSTANCE.newBuilder().setResponseCode(responseCode).build(), CollectionsKt.emptyList());
    }

    private final void handleCanceledResult(int responseCode, Intent data, PurchasesUpdatedListener purchaseFinishedListener, SdkAnalytics sdkAnalytics) {
        Logger.logInfo("Purchase canceled - Response: " + getResponseDesc(responseCode));
        Logger.logDebug("Bundle: " + data);
        SdkAnalytics.sendPurchaseResultEvent$default(sdkAnalytics, 1, null, null, null, 14, null);
        purchaseFinishedListener.onPurchasesUpdated(BillingResult.INSTANCE.newBuilder().setResponseCode(1).build(), CollectionsKt.emptyList());
    }

    private final void handleUnknownFailureResult(int resultCode, int responseCode, Intent data, PurchasesUpdatedListener purchaseFinishedListener, SdkAnalytics sdkAnalytics) {
        Logger.logError("Purchase failed. Result code: " + resultCode + ". Response: " + getResponseDesc(responseCode));
        Logger.logDebug("Bundle: " + data);
        SdkAnalytics.sendPurchaseResultEvent$default(sdkAnalytics, responseCode, null, null, "Purchase failed. Result code: " + resultCode + ".", 6, null);
        purchaseFinishedListener.onPurchasesUpdated(BillingResult.INSTANCE.newBuilder().setResponseCode(6).build(), CollectionsKt.emptyList());
    }

    private final int getResponseCodeFromIntent(Intent intent) {
        return intent.getIntExtra(AptoideBillingConstants.RESPONSE_CODE, 6);
    }

    private final String getObjectFromJson(JSONObject data, String objectId) {
        String strOptString = data.optString(objectId);
        Intrinsics.checkNotNull(strOptString);
        if (strOptString.length() > 0) {
            return strOptString;
        }
        return null;
    }

    private final String getObjectFromJson(JSONObject data, String objectId, String defaultValue) {
        String strOptString = data.optString(objectId);
        Intrinsics.checkNotNull(strOptString);
        if (!(strOptString.length() > 0)) {
            strOptString = null;
        }
        return strOptString == null ? defaultValue : strOptString;
    }

    private final String getResponseDesc(int code) {
        List listEmptyList;
        List listEmptyList2;
        List<String> listSplit = new Regex(InternalZipConstants.ZIP_FILE_SEPARATOR).split("0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned", 0);
        if (!listSplit.isEmpty()) {
            ListIterator<String> listIterator = listSplit.listIterator(listSplit.size());
            while (listIterator.hasPrevious()) {
                if (!(listIterator.previous().length() == 0)) {
                    listEmptyList = CollectionsKt.take(listSplit, listIterator.nextIndex() + 1);
                    break;
                }
            }
            listEmptyList = CollectionsKt.emptyList();
        } else {
            listEmptyList = CollectionsKt.emptyList();
        }
        String[] strArr = (String[]) listEmptyList.toArray(new String[0]);
        List<String> listSplit2 = new Regex(InternalZipConstants.ZIP_FILE_SEPARATOR).split("0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt", 0);
        if (!listSplit2.isEmpty()) {
            ListIterator<String> listIterator2 = listSplit2.listIterator(listSplit2.size());
            while (listIterator2.hasPrevious()) {
                if (!(listIterator2.previous().length() == 0)) {
                    listEmptyList2 = CollectionsKt.take(listSplit2, listIterator2.nextIndex() + 1);
                    break;
                }
            }
            listEmptyList2 = CollectionsKt.emptyList();
        } else {
            listEmptyList2 = CollectionsKt.emptyList();
        }
        String[] strArr2 = (String[]) listEmptyList2.toArray(new String[0]);
        if (code <= -1000) {
            int i = (-1000) - code;
            if (i < strArr2.length) {
                return strArr2[i];
            }
            return code + ":Unknown IAB Helper Error";
        }
        if (code < 0 || code >= strArr.length) {
            return code + ":Unknown";
        }
        return strArr[code];
    }
}
