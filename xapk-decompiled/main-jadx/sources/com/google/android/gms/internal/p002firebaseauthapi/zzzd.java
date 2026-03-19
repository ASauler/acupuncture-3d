package com.google.android.gms.internal.p002firebaseauthapi;

import android.util.Log;
import com.facebook.AuthenticationTokenClaims;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzzd {
    private String zza;
    private String zzb;
    private String zzc;
    private Long zzd;
    private Long zze;

    public static zzzd zza(String str) throws UnsupportedEncodingException {
        try {
            zzzd zzzdVar = new zzzd();
            JSONObject jSONObject = new JSONObject(str);
            zzzdVar.zza = jSONObject.optString(AuthenticationTokenClaims.JSON_KEY_ISS);
            zzzdVar.zzb = jSONObject.optString(AuthenticationTokenClaims.JSON_KEY_AUD);
            zzzdVar.zzc = jSONObject.optString(AuthenticationTokenClaims.JSON_KEY_SUB);
            zzzdVar.zzd = Long.valueOf(jSONObject.optLong(AuthenticationTokenClaims.JSON_KEY_IAT));
            zzzdVar.zze = Long.valueOf(jSONObject.optLong(AuthenticationTokenClaims.JSON_KEY_EXP));
            jSONObject.optBoolean("is_anonymous");
            return zzzdVar;
        } catch (JSONException e) {
            if (Log.isLoggable("JwtToken", 3)) {
                Log.d("JwtToken", "Failed to read JwtToken from JSONObject. ".concat(e.toString()));
            }
            throw new UnsupportedEncodingException("Failed to read JwtToken from JSONObject. ".concat(e.toString()));
        }
    }

    public final Long zzb() {
        return this.zze;
    }

    public final Long zzc() {
        return this.zzd;
    }
}
