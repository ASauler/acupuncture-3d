package com.google.android.gms.internal.p002firebaseauthapi;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzyf extends AbstractSafeParcelable implements zzwp<zzyf> {
    public static final Parcelable.Creator<zzyf> CREATOR = new zzyg();
    private static final String zza = "zzyf";
    private String zzb;
    private boolean zzc;
    private String zzd;
    private boolean zze;
    private zzzy zzf;
    private List zzg;

    public zzyf() {
        this.zzf = new zzzy(null);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zzb, false);
        SafeParcelWriter.writeBoolean(parcel, 3, this.zzc);
        SafeParcelWriter.writeString(parcel, 4, this.zzd, false);
        SafeParcelWriter.writeBoolean(parcel, 5, this.zze);
        SafeParcelWriter.writeParcelable(parcel, 6, this.zzf, i, false);
        SafeParcelWriter.writeStringList(parcel, 7, this.zzg, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzwp
    public final /* bridge */ /* synthetic */ zzwp zza(String str) throws zzui {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.zzb = jSONObject.optString("authUri", null);
            this.zzc = jSONObject.optBoolean("registered", false);
            this.zzd = jSONObject.optString("providerId", null);
            this.zze = jSONObject.optBoolean("forExistingProvider", false);
            if (jSONObject.has("allProviders")) {
                this.zzf = new zzzy(1, zzaam.zzb(jSONObject.optJSONArray("allProviders")));
            } else {
                this.zzf = new zzzy(null);
            }
            this.zzg = zzaam.zzb(jSONObject.optJSONArray("signinMethods"));
            return this;
        } catch (NullPointerException | JSONException e) {
            throw zzaam.zza(e, zza, str);
        }
    }

    public final List zzb() {
        return this.zzg;
    }

    public zzyf(String str, boolean z, String str2, boolean z2, zzzy zzzyVar, List list) {
        zzzy zzzyVarZza;
        this.zzb = str;
        this.zzc = z;
        this.zzd = str2;
        this.zze = z2;
        if (zzzyVar != null) {
            zzzyVarZza = zzzy.zza(zzzyVar);
        } else {
            zzzyVarZza = new zzzy(null);
        }
        this.zzf = zzzyVarZza;
        this.zzg = list;
    }
}
