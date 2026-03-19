package com.google.android.gms.internal.p002firebaseauthapi;

import com.google.firebase.auth.internal.zzai;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zztg implements zzxi {
    final /* synthetic */ zzaai zza;
    final /* synthetic */ zzwc zzb;
    final /* synthetic */ zzuh zzc;

    zztg(zzuh zzuhVar, zzaai zzaaiVar, zzwc zzwcVar) {
        this.zzc = zzuhVar;
        this.zza = zzaaiVar;
        this.zzb = zzwcVar;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxh
    public final void zza(String str) {
        this.zzb.zzh(zzai.zza(str));
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxi
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        this.zza.zzd(((zzza) obj).zze());
        this.zzc.zza.zzt(this.zza, new zztf(this, this));
    }
}
