package com.google.android.gms.internal.p002firebaseauthapi;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzle extends zzacd implements zzadn {
    private zzle() {
        super(zzlf.zzb);
    }

    public final zzle zza(zzabe zzabeVar) {
        if (this.zzb) {
            zzo();
            this.zzb = false;
        }
        ((zzlf) this.zza).zzg = zzabeVar;
        return this;
    }

    public final zzle zzb(zzli zzliVar) {
        if (this.zzb) {
            zzo();
            this.zzb = false;
        }
        zzlf.zzh((zzlf) this.zza, zzliVar);
        return this;
    }

    public final zzle zzc(int i) {
        if (this.zzb) {
            zzo();
            this.zzb = false;
        }
        ((zzlf) this.zza).zze = 0;
        return this;
    }

    /* synthetic */ zzle(zzld zzldVar) {
        super(zzlf.zzb);
    }
}
