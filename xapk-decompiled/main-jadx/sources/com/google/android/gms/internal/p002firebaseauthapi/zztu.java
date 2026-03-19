package com.google.android.gms.internal.p002firebaseauthapi;

import java.util.List;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zztu implements zzxi {
    final /* synthetic */ zzxi zza;
    final /* synthetic */ zzza zzb;
    final /* synthetic */ zztv zzc;

    zztu(zztv zztvVar, zzxi zzxiVar, zzza zzzaVar) {
        this.zzc = zztvVar;
        this.zza = zzxiVar;
        this.zzb = zzzaVar;
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
            this.zzc.zza.zzi(this.zzb, (zzyt) listZzb.get(0));
        }
    }
}
