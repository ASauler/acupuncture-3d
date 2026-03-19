package com.aptoide.sdk.billing.utils;

import com.aptoide.sdk.billing.oemid.Constants;
import com.aptoide.sdk.core.logger.Logger;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;
import net.lingala.zip4j.util.InternalZipConstants;

/* JADX INFO: loaded from: classes.dex */
public class RequestBuilderUtils {
    public static String buildUrl(String str, String str2, List<String> list, Map<String, String> map) {
        boolean z = !map.isEmpty();
        if (str2 == null) {
            str2 = "";
        }
        StringBuilder sb = new StringBuilder(str + str2);
        for (String str3 : list) {
            if (str3 != null) {
                buildPath(str3, sb);
            }
        }
        if (z) {
            sb.append("?");
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (entry.getValue() != null && entry.getKey() != null) {
                buildQuery(entry, sb);
            }
        }
        if (z) {
            sb.deleteCharAt(sb.length() - 1);
        }
        return sb.toString();
    }

    private static void buildQuery(Map.Entry<String, String> entry, StringBuilder sb) {
        String strEncode;
        String strEncode2 = "";
        try {
            strEncode = URLEncoder.encode(entry.getKey(), "utf-8");
        } catch (UnsupportedEncodingException e) {
            e = e;
            strEncode = "";
        }
        try {
            strEncode2 = URLEncoder.encode(entry.getValue(), "utf-8");
        } catch (UnsupportedEncodingException e2) {
            e = e2;
            Logger.logError("Failed to build query: " + e);
        }
        sb.append(strEncode).append("=").append(strEncode2).append("&");
    }

    private static void buildPath(String str, StringBuilder sb) {
        String strEncode;
        try {
            strEncode = URLEncoder.encode(str, "utf-8");
        } catch (UnsupportedEncodingException e) {
            Logger.logError("Failed to build path: " + e);
            strEncode = "";
        }
        sb.append(InternalZipConstants.ZIP_FILE_SEPARATOR).append(strEncode.replaceAll("%3D", "="));
    }

    public static String buildBody(Map<String, Object> map) {
        StringBuilder sb = new StringBuilder("{");
        if (map != null) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                if (entry.getValue() != null) {
                    String string = entry.getValue().toString();
                    if (isString(entry.getValue())) {
                        string = "\"" + string + "\"";
                    }
                    if (isMap(entry.getValue())) {
                        string = buildBody((Map) entry.getValue());
                    }
                    sb.append("\"").append(entry.getKey()).append("\":").append(string).append(Constants.OEMID_SEPARATOR);
                }
            }
            if (!map.isEmpty()) {
                sb.deleteCharAt(sb.length() - 1);
            }
        }
        sb.append("}");
        return sb.toString();
    }

    private static boolean isMap(Object obj) {
        return obj instanceof Map;
    }

    private static boolean isString(Object obj) {
        if (obj instanceof String) {
            String str = (String) obj;
            if (!str.contains("{") && !str.contains("[")) {
                return true;
            }
        }
        return false;
    }
}
