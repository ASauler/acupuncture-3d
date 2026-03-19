package com.google.android.gms.internal.p002firebaseauthapi;

import com.google.firebase.auth.internal.zzai;
import java.util.List;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zztk implements zzxi {
    final /* synthetic */ zzxi zza;
    final /* synthetic */ zzza zzb;
    final /* synthetic */ zztl zzc;

    zztk(zztl zztlVar, zzxi zzxiVar, zzza zzzaVar) {
        this.zzc = zztlVar;
        this.zza = zzxiVar;
        this.zzb = zzzaVar;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxh
    public final void zza(String str) {
        this.zzc.zzb.zzh(zzai.zza(str));
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxi
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        List listZzb = ((zzyr) obj).zzb();
        if (listZzb == null || listZzb.isEmpty()) {
            this.zza.zza("No users.");
            return;
        }
        zzyt zzytVar = (zzyt) listZzb.get(0);
        zzzq zzzqVar = new zzzq();
        zzzqVar.zze(this.zzb.zze());
        zzzqVar.zzb(this.zzc.zza);
        zztl zztlVar = this.zzc;
        zzuh.zzf(zztlVar.zzc, zztlVar.zzb, this.zzb, zzytVar, zzzqVar, this.zza);
    }
}
