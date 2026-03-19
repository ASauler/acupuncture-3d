package com.unity3d.player;

import android.graphics.BitmapFactory;
import com.facebook.share.internal.ShareConstants;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f406a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f407b;
    private String[] c;
    private String[] d;
    private int e;
    private long f;
    private String[] g;
    private String[] h;
    private String i;
    private String j;
    private String[] k;

    public o(JSONObject jSONObject) {
        this.f406a = jSONObject.optString("imageUrl");
        this.f407b = jSONObject.optString("clickUrl", "");
        this.e = jSONObject.optInt("duration", 5);
        this.f = jSONObject.optLong("expiration", 0L);
        this.c = a(jSONObject.optJSONArray("impression"));
        this.d = a(jSONObject.optJSONArray("clickImpression"));
        this.g = a(jSONObject.optJSONArray("primaryClickImpression"));
        this.h = a(jSONObject.optJSONArray("fallbackClickImpression"));
        this.i = jSONObject.optString("mediaType");
        this.j = jSONObject.optString("videoUrl");
        this.k = a(jSONObject.optJSONArray("completeClickImpression"));
    }

    private static String[] a(JSONArray jSONArray) {
        if (jSONArray == null) {
            return null;
        }
        int length = jSONArray.length();
        String[] strArr = new String[length];
        for (int i = 0; i < length; i++) {
            strArr[i] = jSONArray.optString(i);
        }
        return strArr;
    }

    public final boolean a() {
        if (ShareConstants.VIDEO_URL.equals(j())) {
            return (k() == null || k() == "") ? false : true;
        }
        String strB = b();
        if (strB == null || strB == "") {
            return false;
        }
        if (strB.startsWith("file://")) {
            strB = strB.substring(7);
        }
        return BitmapFactory.decodeFile(strB) != null;
    }

    public final String b() {
        return this.f406a;
    }

    public final String c() {
        return this.f407b;
    }

    public final String[] d() {
        return this.c;
    }

    public final String[] e() {
        return this.d;
    }

    public final int f() {
        return this.e;
    }

    public final long g() {
        return this.f;
    }

    public final String[] h() {
        return this.g;
    }

    public final String[] i() {
        return this.h;
    }

    public final String j() {
        return this.i;
    }

    public final String k() {
        return this.j;
    }

    public final String[] l() {
        return this.k;
    }
}
