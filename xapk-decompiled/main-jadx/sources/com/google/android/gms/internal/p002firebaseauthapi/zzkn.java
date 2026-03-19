package com.google.android.gms.internal.p002firebaseauthapi;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzkn extends zzacd implements zzadn {
    private zzkn() {
        super(zzko.zzb);
    }

    public final zzkn zza(zzabe zzabeVar) {
        if (this.zzb) {
            zzo();
            this.zzb = false;
        }
        ((zzko) this.zza).zzf = zzabeVar;
        return this;
    }

    public final zzkn zzb(int i) {
        if (this.zzb) {
            zzo();
            this.zzb = false;
        }
        ((zzko) this.zza).zze = 0;
        return this;
    }

    /* synthetic */ zzkn(zzkm zzkmVar) {
        super(zzko.zzb);
    }
}
