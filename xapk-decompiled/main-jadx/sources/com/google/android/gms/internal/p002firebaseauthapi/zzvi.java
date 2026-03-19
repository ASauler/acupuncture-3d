package com.google.android.gms.internal.p002firebaseauthapi;

import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.auth.internal.zzg;
import com.google.firebase.auth.internal.zzr;
import com.google.firebase.auth.internal.zzx;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zzvi extends zzxd {
    private final zzrm zza;

    public zzvi(String str) {
        super(2);
        this.zza = new zzrm(str);
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxf
    public final String zza() {
        return "signInAnonymously";
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxd
    public final void zzb() {
        zzx zzxVarZzN = zzwa.zzN(this.zzd, this.zzk);
        ((zzg) this.zzf).zza(this.zzj, zzxVarZzN);
        zzm(new zzr(zzxVarZzN));
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxf
    public final void zzc(TaskCompletionSource taskCompletionSource, zzwd zzwdVar) {
        this.zzv = new zzxc(this, taskCompletionSource);
        zzwdVar.zzt(this.zza, this.zzc);
    }
}
