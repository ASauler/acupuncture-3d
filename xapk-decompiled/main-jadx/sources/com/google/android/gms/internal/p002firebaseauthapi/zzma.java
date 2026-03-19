package com.google.android.gms.internal.p002firebaseauthapi;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzma extends zzacd implements zzadn {
    private zzma() {
        super(zzmb.zzb);
    }

    public final zzma zza(int i) {
        if (this.zzb) {
            zzo();
            this.zzb = false;
        }
        ((zzmb) this.zza).zzf = i;
        return this;
    }

    public final zzma zzb(int i) {
        if (this.zzb) {
            zzo();
            this.zzb = false;
        }
        ((zzmb) this.zza).zze = zzls.zza(i);
        return this;
    }

    /* synthetic */ zzma(zzlz zzlzVar) {
        super(zzmb.zzb);
    }
}
