package com.google.android.gms.internal.p002firebaseauthapi;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzkh extends zzacd implements zzadn {
    private zzkh() {
        super(zzki.zzb);
    }

    public final zzkh zza(zzabe zzabeVar) {
        if (this.zzb) {
            zzo();
            this.zzb = false;
        }
        ((zzki) this.zza).zzf = zzabeVar;
        return this;
    }

    public final zzkh zzb(int i) {
        if (this.zzb) {
            zzo();
            this.zzb = false;
        }
        ((zzki) this.zza).zze = 0;
        return this;
    }

    /* synthetic */ zzkh(zzkg zzkgVar) {
        super(zzki.zzb);
    }
}
