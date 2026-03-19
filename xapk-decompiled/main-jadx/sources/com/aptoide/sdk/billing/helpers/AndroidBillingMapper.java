package com.aptoide.sdk.billing.helpers;

import android.content.Intent;
import android.os.Bundle;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.aptoide.sdk.billing.AccountIdentifiers;
import com.aptoide.sdk.billing.BillingResult;
import com.aptoide.sdk.billing.LaunchBillingFlowResult;
import com.aptoide.sdk.billing.Purchase;
import com.aptoide.sdk.billing.PurchasesResult;
import com.aptoide.sdk.billing.ResponseCode;
import com.aptoide.sdk.billing.SkuDetails;
import com.aptoide.sdk.billing.SkuDetailsResult;
import com.aptoide.sdk.billing.listeners.PurchaseData;
import com.aptoide.sdk.billing.utils.AptoideBillingConstants;
import com.aptoide.sdk.core.logger.Logger;
import com.facebook.appevents.internal.Constants;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.UByte$$ExternalSyntheticBackport0;
import net.openid.appauth.ResponseTypeValues;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AndroidBillingMapper {
    public static PurchasesResult mapPurchases(Bundle bundle, String str) {
        ArrayList<String> arrayList;
        int i = bundle.getInt(AptoideBillingConstants.RESPONSE_CODE);
        ArrayList arrayList2 = new ArrayList();
        ArrayList<String> stringArrayList = bundle.getStringArrayList(AptoideBillingConstants.INAPP_PURCHASE_DATA_LIST);
        ArrayList<String> stringArrayList2 = bundle.getStringArrayList(AptoideBillingConstants.INAPP_DATA_SIGNATURE_LIST);
        ArrayList<String> stringArrayList3 = bundle.getStringArrayList(AptoideBillingConstants.INAPP_PURCHASE_ID_LIST);
        if (stringArrayList != null && stringArrayList2 != null && stringArrayList3 != null) {
            int i2 = 0;
            while (i2 < stringArrayList.size()) {
                String str2 = stringArrayList.get(i2);
                String str3 = stringArrayList2.get(i2);
                try {
                    JSONObject jSONObject = new JSONObject(str2);
                    String string = jSONObject.getString(PurchaseData.ORDER_ID);
                    String string2 = jSONObject.getString("packageName");
                    String string3 = jSONObject.getString("productId");
                    long j = jSONObject.getLong("purchaseTime");
                    int i3 = jSONObject.getInt(PurchaseData.PURCHASE_STATE);
                    String stringValueFromJson = getStringValueFromJson(jSONObject, "developerPayload", null);
                    String stringValueFromJson2 = getStringValueFromJson(jSONObject, PurchaseData.OBFUSCATED_EXTERNAL_ACCOUNT_ID, null);
                    arrayList = stringArrayList;
                    try {
                        String stringValueFromJson3 = getStringValueFromJson(jSONObject, ResponseTypeValues.TOKEN, null);
                        if (stringValueFromJson3 == null) {
                            stringValueFromJson3 = getStringValueFromJson(jSONObject, "purchaseToken", "");
                        }
                        arrayList2.add(new Purchase(stringValueFromJson2 != null ? new AccountIdentifiers(stringValueFromJson2) : null, stringValueFromJson, string, str2, string2, UByte$$ExternalSyntheticBackport0.m(new Object[]{string3}), i3, j, stringValueFromJson3, str3, getBooleanValueFromJson(jSONObject, Constants.GP_IAP_AUTORENEWING)));
                    } catch (JSONException e) {
                        e = e;
                        Logger.logError("Failed to map Purchase: " + e);
                    }
                } catch (JSONException e2) {
                    e = e2;
                    arrayList = stringArrayList;
                }
                i2++;
                stringArrayList = arrayList;
            }
        }
        return new PurchasesResult(arrayList2, BillingResult.newBuilder().setResponseCode(i).build());
    }

    public static Bundle mapArrayListToBundleSkuDetails(List<String> list) {
        Bundle bundle = new Bundle();
        bundle.putStringArrayList(AptoideBillingConstants.GET_SKU_DETAILS_ITEM_LIST, (ArrayList) list);
        return bundle;
    }

    public static SkuDetailsResult mapBundleToHashMapSkuDetails(String str, Bundle bundle) {
        ArrayList<String> stringArrayList;
        ArrayList arrayList = new ArrayList();
        if (bundle.containsKey(AptoideBillingConstants.DETAILS_LIST) && (stringArrayList = bundle.getStringArrayList(AptoideBillingConstants.DETAILS_LIST)) != null) {
            Iterator<String> it = stringArrayList.iterator();
            while (it.hasNext()) {
                SkuDetails skuDetails = parseSkuDetails(str, it.next());
                if (skuDetails != null) {
                    arrayList.add(skuDetails);
                }
            }
        }
        int value = ResponseCode.ERROR.getValue();
        if (bundle.containsKey(AptoideBillingConstants.RESPONSE_CODE)) {
            value = ((Integer) bundle.get(AptoideBillingConstants.RESPONSE_CODE)).intValue();
        }
        return new SkuDetailsResult(arrayList, value);
    }

    public static LaunchBillingFlowResult mapBundleToHashMapGetIntent(Bundle bundle) {
        return new LaunchBillingFlowResult(bundle.getInt(AptoideBillingConstants.RESPONSE_CODE), (Intent) bundle.getParcelable(AptoideBillingConstants.KEY_BUY_INTENT));
    }

    private static SkuDetails parseSkuDetails(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject(str2);
            return new SkuDetails(str, jSONObject.getString("productId"), jSONObject.getString("type"), jSONObject.getString(FirebaseAnalytics.Param.PRICE), jSONObject.getLong(Constants.GP_IAP_PRICE_AMOUNT_MICROS_V2V4), jSONObject.getString(Constants.GP_IAP_PRICE_CURRENCY_CODE_V2V4), jSONObject.getString("appc_price"), jSONObject.getLong("appc_price_amount_micros"), jSONObject.getString("appc_price_currency_code"), jSONObject.getString("fiat_price"), jSONObject.getLong("fiat_price_amount_micros"), jSONObject.getString("fiat_price_currency_code"), jSONObject.getString("title"), getStringValueFromJson(jSONObject, "description", null), getStringValueFromJson(jSONObject, TypedValues.CycleType.S_WAVE_PERIOD, null), getStringValueFromJson(jSONObject, "trial_period", null), getStringValueFromJson(jSONObject, "trial_period_end_date", null));
        } catch (JSONException e) {
            Logger.logError("Failed to parse SkuDetails: " + e);
            return null;
        }
    }

    private static String getStringValueFromJson(JSONObject jSONObject, String str, String str2) throws JSONException {
        String string = null;
        try {
            if (jSONObject.has(str)) {
                string = jSONObject.getString(str);
            }
        } catch (JSONException e) {
            Logger.logDebug("Field error" + e.getLocalizedMessage());
        }
        return string == null ? str2 : string;
    }

    private static boolean getBooleanValueFromJson(JSONObject jSONObject, String str) {
        try {
            if (jSONObject.has(str)) {
                return jSONObject.getBoolean(str);
            }
            return false;
        } catch (JSONException e) {
            Logger.logDebug("Field error" + e.getLocalizedMessage());
            return false;
        }
    }
}
