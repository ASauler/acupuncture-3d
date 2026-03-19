package com.google.android.gms.internal.p002firebaseauthapi;

import com.google.firebase.auth.internal.zzai;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zzua implements zzxi {
    final /* synthetic */ zzwc zza;
    final /* synthetic */ zzuh zzb;

    zzua(zzuh zzuhVar, zzwc zzwcVar) {
        this.zzb = zzuhVar;
        this.zza = zzwcVar;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxh
    public final void zza(String str) {
        this.zza.zzh(zzai.zza(str));
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxi
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzaac zzaacVar = (zzaac) obj;
        if (zzaacVar.zzm()) {
            this.zza.zzf(new zzso(zzaacVar.zzg(), zzaacVar.zzl(), zzaacVar.zzc()));
        } else {
            zzuh.zzd(this.zzb, zzaacVar, this.zza, this);
        }
    }
}
