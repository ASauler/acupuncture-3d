package com.google.android.gms.internal.p002firebaseauthapi;

import com.google.firebase.auth.internal.zzai;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zztl implements zzxi {
    final /* synthetic */ String zza;
    final /* synthetic */ zzwc zzb;
    final /* synthetic */ zzuh zzc;

    zztl(zzuh zzuhVar, String str, zzwc zzwcVar) {
        this.zzc = zzuhVar;
        this.zza = str;
        this.zzb = zzwcVar;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxh
    public final void zza(String str) {
        this.zzb.zzh(zzai.zza(str));
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxi
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzza zzzaVar = (zzza) obj;
        this.zzc.zza.zzg(new zzyq(zzzaVar.zze()), new zztk(this, this, zzzaVar));
    }
}
