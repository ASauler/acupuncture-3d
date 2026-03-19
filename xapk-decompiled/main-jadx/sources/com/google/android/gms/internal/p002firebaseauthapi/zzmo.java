package com.google.android.gms.internal.p002firebaseauthapi;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzmo extends zzacd implements zzadn {
    private zzmo() {
        super(zzmp.zzb);
    }

    public final zzmo zza(zzmj zzmjVar) {
        if (this.zzb) {
            zzo();
            this.zzb = false;
        }
        zzmp.zzi((zzmp) this.zza, zzmjVar);
        return this;
    }

    public final zzmo zzb(zzabe zzabeVar) {
        if (this.zzb) {
            zzo();
            this.zzb = false;
        }
        ((zzmp) this.zza).zzg = zzabeVar;
        return this;
    }

    public final zzmo zzc(int i) {
        if (this.zzb) {
            zzo();
            this.zzb = false;
        }
        ((zzmp) this.zza).zze = 0;
        return this;
    }

    /* synthetic */ zzmo(zzmn zzmnVar) {
        super(zzmp.zzb);
    }
}
