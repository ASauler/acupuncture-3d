package com.google.android.gms.internal.p002firebaseauthapi;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzjg extends zzacd implements zzadn {
    private zzjg() {
        super(zzjh.zzb);
    }

    public final zzjg zza(int i) {
        if (this.zzb) {
            zzo();
            this.zzb = false;
        }
        ((zzjh) this.zza).zzf = i;
        return this;
    }

    public final zzjg zzb(zzjk zzjkVar) {
        if (this.zzb) {
            zzo();
            this.zzb = false;
        }
        zzjh.zzg((zzjh) this.zza, zzjkVar);
        return this;
    }

    /* synthetic */ zzjg(zzjf zzjfVar) {
        super(zzjh.zzb);
    }
}
