package com.google.android.gms.internal.p002firebaseauthapi;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zzuj extends zzxd {
    private final zzqa zza;

    public zzuj(String str, String str2) {
        super(7);
        Preconditions.checkNotEmpty(str, "code cannot be null or empty");
        this.zza = new zzqa(str, str2);
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxf
    public final String zza() {
        return "applyActionCode";
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxd
    public final void zzb() {
        zzm(null);
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxf
    public final void zzc(TaskCompletionSource taskCompletionSource, zzwd zzwdVar) {
        this.zzv = new zzxc(this, taskCompletionSource);
        zzwdVar.zza(this.zza, this.zzc);
    }
}
