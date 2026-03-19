package com.google.android.gms.internal.p002firebaseauthapi;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzlp extends zzacd implements zzadn {
    private zzlp() {
        super(zzlq.zzb);
    }

    public final zzlp zza(zzabe zzabeVar) {
        if (this.zzb) {
            zzo();
            this.zzb = false;
        }
        ((zzlq) this.zza).zze = zzabeVar;
        return this;
    }

    public final zzlp zzb(zznm zznmVar) {
        if (this.zzb) {
            zzo();
            this.zzb = false;
        }
        zzlq.zzf((zzlq) this.zza, zznmVar);
        return this;
    }

    /* synthetic */ zzlp(zzlo zzloVar) {
        super(zzlq.zzb);
    }
}
