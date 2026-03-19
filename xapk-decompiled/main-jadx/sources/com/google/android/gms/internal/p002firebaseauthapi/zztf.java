package com.google.android.gms.internal.p002firebaseauthapi;

import android.text.TextUtils;
import com.google.android.gms.common.api.Status;
import com.google.firebase.FirebaseError;
import com.google.firebase.auth.PhoneAuthCredential;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zztf implements zzxi {
    final /* synthetic */ zzxi zza;
    final /* synthetic */ zztg zzb;

    zztf(zztg zztgVar, zzxi zzxiVar) {
        this.zzb = zztgVar;
        this.zza = zzxiVar;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxh
    public final void zza(String str) {
        this.zza.zza(str);
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxi
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzaaj zzaajVar = (zzaaj) obj;
        if (TextUtils.isEmpty(zzaajVar.zzf())) {
            this.zzb.zzc.zzO(new zzza(zzaajVar.zze(), zzaajVar.zzc(), Long.valueOf(zzaajVar.zzb()), "Bearer"), null, "phone", Boolean.valueOf(zzaajVar.zzg()), null, this.zzb.zzb, this.zza);
        } else {
            this.zzb.zzb.zzg(new Status(FirebaseError.ERROR_CREDENTIAL_ALREADY_IN_USE), PhoneAuthCredential.zzd(zzaajVar.zzd(), zzaajVar.zzf()));
        }
    }
}
