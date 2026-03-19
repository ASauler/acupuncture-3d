package com.google.android.gms.internal.p002firebaseauthapi;

import com.google.firebase.auth.internal.zzai;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zzte implements zzxi {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzwc zzc;
    final /* synthetic */ zzuh zzd;

    zzte(zzuh zzuhVar, String str, String str2, zzwc zzwcVar) {
        this.zzd = zzuhVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzwcVar;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxh
    public final void zza(String str) {
        this.zzc.zzh(zzai.zza(str));
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxi
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzza zzzaVar = (zzza) obj;
        zzzq zzzqVar = new zzzq();
        zzzqVar.zze(zzzaVar.zze());
        zzzqVar.zzd(this.zza);
        zzzqVar.zzg(this.zzb);
        zzuh.zze(this.zzd, this.zzc, zzzaVar, zzzqVar, this);
    }
}
