package com.google.android.gms.internal.p002firebaseauthapi;

import com.google.firebase.auth.internal.zzai;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zzsr implements zzxi {
    final /* synthetic */ zzwc zza;
    final /* synthetic */ zzuh zzb;

    zzsr(zzuh zzuhVar, zzwc zzwcVar) {
        this.zzb = zzuhVar;
        this.zza = zzwcVar;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxh
    public final void zza(String str) {
        this.zza.zzh(zzai.zza(str));
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxi
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzaah zzaahVar = (zzaah) obj;
        if (zzaahVar.zzg()) {
            this.zza.zzf(new zzso(zzaahVar.zzd(), zzaahVar.zzf(), null));
        } else {
            this.zzb.zzO(new zzza(zzaahVar.zze(), zzaahVar.zzc(), Long.valueOf(zzaahVar.zzb()), "Bearer"), null, null, false, null, this.zza, this);
        }
    }
}
