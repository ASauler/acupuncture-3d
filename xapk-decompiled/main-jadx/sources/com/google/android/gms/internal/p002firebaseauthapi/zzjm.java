package com.google.android.gms.internal.p002firebaseauthapi;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzjm extends zzacd implements zzadn {
    private zzjm() {
        super(zzjn.zzb);
    }

    public final zzjm zza(zzabe zzabeVar) {
        if (this.zzb) {
            zzo();
            this.zzb = false;
        }
        ((zzjn) this.zza).zzg = zzabeVar;
        return this;
    }

    public final zzjm zzb(zzjt zzjtVar) {
        if (this.zzb) {
            zzo();
            this.zzb = false;
        }
        zzjn.zzh((zzjn) this.zza, zzjtVar);
        return this;
    }

    public final zzjm zzc(int i) {
        if (this.zzb) {
            zzo();
            this.zzb = false;
        }
        ((zzjn) this.zza).zze = 0;
        return this;
    }

    /* synthetic */ zzjm(zzjl zzjlVar) {
        super(zzjn.zzb);
    }
}
