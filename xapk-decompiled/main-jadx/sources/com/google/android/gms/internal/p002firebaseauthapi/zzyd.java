package com.google.android.gms.internal.p002firebaseauthapi;

import android.text.TextUtils;
import android.util.Log;
import net.openid.appauth.ResponseTypeValues;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzyd implements zzwp {
    private static final String zza = "com.google.android.gms.internal.firebase-auth-api.zzyd";
    private String zzb;

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzwp
    public final /* bridge */ /* synthetic */ zzwp zza(String str) throws zzui {
        zzb(str);
        return this;
    }

    public final zzyd zzb(String str) throws zzui {
        try {
            JSONObject jSONObject = new JSONObject(new JSONObject(str).getString("error"));
            jSONObject.getInt(ResponseTypeValues.CODE);
            this.zzb = jSONObject.getString("message");
            return this;
        } catch (NullPointerException | JSONException e) {
            Log.e(zza, "Failed to parse error for string [" + str + "] with exception: " + e.getMessage());
            throw new zzui("Failed to parse error for string [" + str + "]", e);
        }
    }

    public final String zzc() {
        return this.zzb;
    }

    public final boolean zzd() {
        return !TextUtils.isEmpty(this.zzb);
    }
}
