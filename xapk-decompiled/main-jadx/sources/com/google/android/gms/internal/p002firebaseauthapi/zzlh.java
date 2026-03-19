package com.google.android.gms.internal.p002firebaseauthapi;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzlh extends zzacd implements zzadn {
    private zzlh() {
        super(zzli.zzb);
    }

    public final zzlh zza(zzlc zzlcVar) {
        if (this.zzb) {
            zzo();
            this.zzb = false;
        }
        zzli.zzk((zzli) this.zza, zzlcVar);
        return this;
    }

    public final zzlh zzb(int i) {
        if (this.zzb) {
            zzo();
            this.zzb = false;
        }
        zzli.zzi((zzli) this.zza, 0);
        return this;
    }

    public final zzlh zzc(zzabe zzabeVar) {
        if (this.zzb) {
            zzo();
            this.zzb = false;
        }
        ((zzli) this.zza).zzg = zzabeVar;
        return this;
    }

    public final zzlh zzd(zzabe zzabeVar) {
        if (this.zzb) {
            zzo();
            this.zzb = false;
        }
        ((zzli) this.zza).zzh = zzabeVar;
        return this;
    }

    /* synthetic */ zzlh(zzlg zzlgVar) {
        super(zzli.zzb);
    }
}
