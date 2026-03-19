package com.aptoide.sdk.billing.helpers;

import android.content.Context;
import android.telephony.TelephonyManager;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class UserCountryUtils {
    public static String getUserCountry(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        String country = Locale.getDefault().getCountry();
        String simCountryIso = telephonyManager.getSimCountryIso();
        if (hasCorrectCountryFormat(simCountryIso)) {
            return simCountryIso;
        }
        if (!isPhoneTypeReliable(telephonyManager)) {
            return country;
        }
        String networkCountryIso = telephonyManager.getNetworkCountryIso();
        return hasCorrectCountryFormat(networkCountryIso) ? networkCountryIso : country;
    }

    private static boolean hasCorrectCountryFormat(String str) {
        return str != null && str.length() == 2;
    }

    private static boolean isPhoneTypeReliable(TelephonyManager telephonyManager) {
        return telephonyManager.getPhoneType() != 2;
    }
}
