package com.google.android.gms.internal.p002firebaseauthapi;

import com.google.firebase.auth.internal.zzai;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zztj implements zzxi {
    final /* synthetic */ zzwc zza;
    final /* synthetic */ zzuh zzb;

    zztj(zzuh zzuhVar, zzwc zzwcVar) {
        this.zzb = zzuhVar;
        this.zza = zzwcVar;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxh
    public final void zza(String str) {
        this.zza.zzh(zzai.zza(str));
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxi
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzza zzzaVar = (zzza) obj;
        zzzq zzzqVar = new zzzq();
        zzzqVar.zze(zzzaVar.zze());
        zzzqVar.zzd(null);
        zzzqVar.zzg(null);
        zzuh.zze(this.zzb, this.zza, zzzaVar, zzzqVar, this);
    }
}
