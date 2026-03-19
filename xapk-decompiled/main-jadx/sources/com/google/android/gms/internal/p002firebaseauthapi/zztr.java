package com.google.android.gms.internal.p002firebaseauthapi;

import com.google.firebase.auth.internal.zzai;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zztr implements zzxi {
    final /* synthetic */ zzyk zza;
    final /* synthetic */ zzwc zzb;
    final /* synthetic */ zzuh zzc;

    zztr(zzuh zzuhVar, zzyk zzykVar, zzwc zzwcVar) {
        this.zzc = zzuhVar;
        this.zza = zzykVar;
        this.zzb = zzwcVar;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxh
    public final void zza(String str) {
        this.zzb.zzh(zzai.zza(str));
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxi
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        this.zza.zzc(((zzza) obj).zze());
        this.zzc.zza.zzd(this.zza, new zztq(this));
    }
}
