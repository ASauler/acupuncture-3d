package com.aptoide.sdk.billing.helpers;

import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
public class PayloadHelper {
    private static final String FREE_TRIAL_PARAMETER = "free_trial";
    private static final String OBFUSCATED_ACCOUNT_ID_PARAMETER = "obfuscated_account_id";
    private static final String PAYLOAD_PARAMETER = "payload";
    private static final String SCHEME = "appcoins";

    public static String buildIntentPayload(String str, String str2, Boolean bool) {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme(SCHEME).authority("appcoins.io");
        if (str != null && !str.isEmpty()) {
            builder.appendQueryParameter("payload", str);
        }
        if (str2 != null && !str2.isEmpty()) {
            builder.appendQueryParameter("obfuscated_account_id", str2);
        }
        if (bool != null && bool.booleanValue()) {
            builder.appendQueryParameter("free_trial", bool.toString());
        }
        return builder.toString();
    }

    public static String getPayload(String str) {
        Uri uriCheckRequirements = checkRequirements(str);
        if (uriCheckRequirements == null) {
            return null;
        }
        return uriCheckRequirements.getQueryParameter("payload");
    }

    private static Uri checkRequirements(String str) {
        if (str == null) {
            return null;
        }
        Uri uri = Uri.parse(str);
        if (SCHEME.equalsIgnoreCase(uri.getScheme())) {
            return uri;
        }
        throw new IllegalArgumentException();
    }

    public static String getObfuscatedAccountId(String str) {
        Uri uriCheckRequirements = checkRequirements(str);
        if (uriCheckRequirements == null) {
            return null;
        }
        return uriCheckRequirements.getQueryParameter("obfuscated_account_id");
    }

    public static Boolean getFreeTrial(String str) {
        Uri uriCheckRequirements = checkRequirements(str);
        if (uriCheckRequirements == null) {
            return null;
        }
        return Boolean.valueOf(uriCheckRequirements.getBooleanQueryParameter("free_trial", false));
    }
}
