package com.google.android.gms.internal.p002firebaseauthapi;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzir extends zzacd implements zzadn {
    private zzir() {
        super(zzis.zzb);
    }

    public final zzir zza(int i) {
        if (this.zzb) {
            zzo();
            this.zzb = false;
        }
        ((zzis) this.zza).zze = 32;
        return this;
    }

    public final zzir zzb(zziv zzivVar) {
        if (this.zzb) {
            zzo();
            this.zzb = false;
        }
        zzis.zzg((zzis) this.zza, zzivVar);
        return this;
    }

    /* synthetic */ zzir(zziq zziqVar) {
        super(zzis.zzb);
    }
}
