package com.google.android.gms.internal.p002firebaseauthapi;

import android.text.TextUtils;
import androidx.autofill.HintConstants;
import com.google.android.gms.common.internal.Preconditions;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzzu implements zzwo {
    private final String zza;
    private final String zzb = Preconditions.checkNotEmpty("phone");
    private final String zzc;
    private final String zzd;
    private final String zze;
    private final String zzf;
    private zzyc zzg;

    private zzzu(String str, String str2, String str3, String str4, String str5, String str6) {
        this.zza = Preconditions.checkNotEmpty(str);
        this.zzc = str3;
        this.zzd = str4;
        this.zze = str5;
        this.zzf = str6;
    }

    public static zzzu zzb(String str, String str2, String str3, String str4, String str5) {
        Preconditions.checkNotEmpty(str2);
        return new zzzu(str, "phone", str2, str3, str4, str5);
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzwo
    public final String zza() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("idToken", this.zza);
        this.zzb.hashCode();
        jSONObject.put("mfaProvider", 1);
        if (this.zzc != null) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(HintConstants.AUTOFILL_HINT_PHONE_NUMBER, this.zzc);
            if (!TextUtils.isEmpty(this.zze)) {
                jSONObject2.put("recaptchaToken", this.zze);
            }
            if (!TextUtils.isEmpty(this.zzf)) {
                jSONObject2.put("safetyNetToken", this.zzf);
            }
            zzyc zzycVar = this.zzg;
            if (zzycVar != null) {
                jSONObject2.put("autoRetrievalInfo", zzycVar.zza());
            }
            jSONObject.put("phoneEnrollmentInfo", jSONObject2);
        }
        return jSONObject.toString();
    }

    public final String zzc() {
        return this.zzd;
    }

    public final void zzd(zzyc zzycVar) {
        this.zzg = zzycVar;
    }
}
