package org.matomo.sdk.extra;

import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.matomo.sdk.Matomo;
import org.matomo.sdk.QueryParams;
import org.matomo.sdk.TrackMe;
import timber.log.Timber;

/* JADX INFO: loaded from: classes4.dex */
public class CustomVariables {
    protected static final int MAX_LENGTH = 200;
    private static final String TAG = Matomo.tag(CustomVariables.class);
    private final Map<String, JSONArray> mVars;

    public CustomVariables() {
        this.mVars = new ConcurrentHashMap();
    }

    public CustomVariables(CustomVariables customVariables) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.mVars = concurrentHashMap;
        concurrentHashMap.putAll(customVariables.mVars);
    }

    public CustomVariables(String str) {
        this.mVars = new ConcurrentHashMap();
        if (str != null) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    put(next, jSONObject.getJSONArray(next));
                }
            } catch (JSONException e) {
                Timber.tag(TAG).e(e, "Failed to create CustomVariables from JSON", new Object[0]);
            }
        }
    }

    public CustomVariables putAll(CustomVariables customVariables) {
        this.mVars.putAll(customVariables.mVars);
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0059  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.matomo.sdk.extra.CustomVariables put(int r6, java.lang.String r7, java.lang.String r8) {
        /*
            r5 = this;
            r0 = 0
            if (r6 <= 0) goto L59
            r1 = 1
            if (r7 == 0) goto L8
            r2 = r1
            goto L9
        L8:
            r2 = r0
        L9:
            if (r8 == 0) goto Lc
            goto Ld
        Lc:
            r1 = r0
        Ld:
            r1 = r1 & r2
            if (r1 == 0) goto L59
            int r1 = r7.length()
            r2 = 200(0xc8, float:2.8E-43)
            if (r1 <= r2) goto L2b
            java.lang.String r1 = org.matomo.sdk.extra.CustomVariables.TAG
            timber.log.Timber$Tree r1 = timber.log.Timber.tag(r1)
            java.lang.String r3 = "Name is too long %s"
            java.lang.Object[] r4 = new java.lang.Object[]{r7}
            r1.w(r3, r4)
            java.lang.String r7 = r7.substring(r0, r2)
        L2b:
            int r1 = r8.length()
            if (r1 <= r2) goto L44
            java.lang.String r1 = org.matomo.sdk.extra.CustomVariables.TAG
            timber.log.Timber$Tree r1 = timber.log.Timber.tag(r1)
            java.lang.String r3 = "Value is too long %s"
            java.lang.Object[] r4 = new java.lang.Object[]{r8}
            r1.w(r3, r4)
            java.lang.String r8 = r8.substring(r0, r2)
        L44:
            java.lang.String r6 = java.lang.Integer.toString(r6)
            org.json.JSONArray r0 = new org.json.JSONArray
            java.lang.String[] r7 = new java.lang.String[]{r7, r8}
            java.util.List r7 = java.util.Arrays.asList(r7)
            r0.<init>(r7)
            r5.put(r6, r0)
            goto L66
        L59:
            java.lang.String r6 = org.matomo.sdk.extra.CustomVariables.TAG
            timber.log.Timber$Tree r6 = timber.log.Timber.tag(r6)
            java.lang.String r7 = "Index is out of range or name/value is null"
            java.lang.Object[] r8 = new java.lang.Object[r0]
            r6.w(r7, r8)
        L66:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: org.matomo.sdk.extra.CustomVariables.put(int, java.lang.String, java.lang.String):org.matomo.sdk.extra.CustomVariables");
    }

    public CustomVariables put(String str, JSONArray jSONArray) {
        if (jSONArray.length() == 2 && str != null) {
            this.mVars.put(str, jSONArray);
        } else {
            Timber.tag(TAG).w("values.length() should be equal 2", new Object[0]);
        }
        return this;
    }

    public String toString() {
        JSONObject jSONObject = new JSONObject(this.mVars);
        if (jSONObject.length() > 0) {
            return jSONObject.toString();
        }
        return null;
    }

    public int size() {
        return this.mVars.size();
    }

    public TrackMe injectVisitVariables(TrackMe trackMe) {
        trackMe.set(QueryParams.VISIT_SCOPE_CUSTOM_VARIABLES, toString());
        return trackMe;
    }

    public TrackMe toVisitVariables() {
        return injectVisitVariables(new TrackMe());
    }
}
