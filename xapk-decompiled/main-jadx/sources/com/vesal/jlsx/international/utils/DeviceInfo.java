package com.vesal.jlsx.international.utils;

import android.content.Context;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.aptoide.sdk.core.analytics.AnalyticsContent;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceInfo {
    public String getInfo(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        HashMap map = new HashMap();
        map.put(DeviceRequestsHelper.DEVICE_INFO_MODEL, Build.MODEL);
        map.put("brand", Build.BRAND);
        map.put("product", Build.PRODUCT);
        map.put("hardware", Build.HARDWARE);
        map.put("company", Build.MANUFACTURER);
        map.put("sdkint", String.valueOf(Build.VERSION.SDK_INT));
        map.put(AnalyticsContent.LANGUAGE, Locale.getDefault().getLanguage());
        map.put("countryIso", telephonyManager.getNetworkCountryIso());
        map.put("simCountryIso", telephonyManager.getSimCountryIso());
        String str = "";
        for (Map.Entry entry : map.entrySet()) {
            str = (((str + "&") + ((String) entry.getKey())) + "=") + ((String) entry.getValue());
        }
        return str;
    }
}
