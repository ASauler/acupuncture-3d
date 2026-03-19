package com.google.android.gms.internal.p002firebaseauthapi;

import java.util.List;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zzsu implements zzxi {
    final /* synthetic */ zzxh zza;
    final /* synthetic */ zzwc zzb;
    final /* synthetic */ zzza zzc;
    final /* synthetic */ zzzq zzd;
    final /* synthetic */ zzuh zze;

    zzsu(zzuh zzuhVar, zzxh zzxhVar, zzwc zzwcVar, zzza zzzaVar, zzzq zzzqVar) {
        this.zze = zzuhVar;
        this.zza = zzxhVar;
        this.zzb = zzwcVar;
        this.zzc = zzzaVar;
        this.zzd = zzzqVar;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxh
    public final void zza(String str) {
        this.zza.zza(str);
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxi
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        List listZzb = ((zzyr) obj).zzb();
        if (listZzb == null || listZzb.isEmpty()) {
            this.zza.zza("No users");
        } else {
            zzuh.zzf(this.zze, this.zzb, this.zzc, (zzyt) listZzb.get(0), this.zzd, this.zza);
        }
    }
}
