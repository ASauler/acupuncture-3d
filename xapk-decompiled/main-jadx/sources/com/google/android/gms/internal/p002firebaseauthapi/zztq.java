package com.google.android.gms.internal.p002firebaseauthapi;

import com.google.firebase.auth.internal.zzai;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zztq implements zzxi {
    final /* synthetic */ zztr zza;

    zztq(zztr zztrVar) {
        this.zza = zztrVar;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxh
    public final void zza(String str) {
        this.zza.zzb.zzh(zzai.zza(str));
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxi
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzyl zzylVar = (zzyl) obj;
        this.zza.zzc.zzO(new zzza(zzylVar.zzc(), zzylVar.zzb(), Long.valueOf(zzzc.zza(zzylVar.zzb())), "Bearer"), null, null, false, null, this.zza.zzb, this);
    }
}
