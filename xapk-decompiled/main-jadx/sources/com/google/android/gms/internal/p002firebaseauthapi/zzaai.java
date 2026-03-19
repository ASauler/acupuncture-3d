package com.google.android.gms.internal.p002firebaseauthapi;

import android.text.TextUtils;
import androidx.autofill.HintConstants;
import com.google.android.gms.common.internal.Preconditions;
import net.openid.appauth.ResponseTypeValues;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzaai implements zzwo {
    private String zza;
    private String zzb;
    private String zzc;
    private String zzd;
    private String zze;
    private boolean zzf;

    private zzaai() {
    }

    public static zzaai zzb(String str, String str2, boolean z) {
        zzaai zzaaiVar = new zzaai();
        zzaaiVar.zzb = Preconditions.checkNotEmpty(str);
        zzaaiVar.zzc = Preconditions.checkNotEmpty(str2);
        zzaaiVar.zzf = z;
        return zzaaiVar;
    }

    public static zzaai zzc(String str, String str2, boolean z) {
        zzaai zzaaiVar = new zzaai();
        zzaaiVar.zza = Preconditions.checkNotEmpty(str);
        zzaaiVar.zzd = Preconditions.checkNotEmpty(str2);
        zzaaiVar.zzf = z;
        return zzaaiVar;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzwo
    public final String zza() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (TextUtils.isEmpty(this.zzd)) {
            jSONObject.put("sessionInfo", this.zzb);
            jSONObject.put(ResponseTypeValues.CODE, this.zzc);
        } else {
            jSONObject.put(HintConstants.AUTOFILL_HINT_PHONE_NUMBER, this.zza);
            jSONObject.put("temporaryProof", this.zzd);
        }
        String str = this.zze;
        if (str != null) {
            jSONObject.put("idToken", str);
        }
        if (!this.zzf) {
            jSONObject.put("operation", 2);
        }
        return jSONObject.toString();
    }

    public final void zzd(String str) {
        this.zze = str;
    }
}
