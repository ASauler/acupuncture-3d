package com.google.android.gms.internal.p002firebaseauthapi;

import java.util.List;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zzacy extends zzada {
    private zzacy() {
        super(null);
    }

    /* synthetic */ zzacy(zzacx zzacxVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzada
    final List zza(Object obj, long j) {
        zzacm zzacmVar = (zzacm) zzaez.zzf(obj, j);
        if (zzacmVar.zzc()) {
            return zzacmVar;
        }
        int size = zzacmVar.size();
        zzacm zzacmVarZzd = zzacmVar.zzd(size == 0 ? 10 : size + size);
        zzaez.zzs(obj, j, zzacmVarZzd);
        return zzacmVarZzd;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzada
    final void zzb(Object obj, long j) {
        ((zzacm) zzaez.zzf(obj, j)).zzb();
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzada
    final void zzc(Object obj, Object obj2, long j) {
        zzacm zzacmVarZzd = (zzacm) zzaez.zzf(obj, j);
        zzacm zzacmVar = (zzacm) zzaez.zzf(obj2, j);
        int size = zzacmVarZzd.size();
        int size2 = zzacmVar.size();
        if (size > 0 && size2 > 0) {
            if (!zzacmVarZzd.zzc()) {
                zzacmVarZzd = zzacmVarZzd.zzd(size2 + size);
            }
            zzacmVarZzd.addAll(zzacmVar);
        }
        if (size > 0) {
            zzacmVar = zzacmVarZzd;
        }
        zzaez.zzs(obj, j, zzacmVar);
    }
}
