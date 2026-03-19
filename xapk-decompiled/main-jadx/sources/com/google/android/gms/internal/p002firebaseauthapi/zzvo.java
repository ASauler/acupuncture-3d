package com.google.android.gms.internal.p002firebaseauthapi;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.auth.internal.zzag;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zzvo extends zzxd {
    private final zzry zza;

    public zzvo(zzag zzagVar, String str, String str2, long j, boolean z, boolean z2, String str3, String str4, boolean z3) {
        super(8);
        Preconditions.checkNotNull(zzagVar);
        Preconditions.checkNotEmpty(str);
        this.zza = new zzry(Preconditions.checkNotEmpty(zzagVar.zzc()), str, str2, j, z, z2, str3, str4, z3);
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxf
    public final String zza() {
        return "startMfaEnrollmentWithPhoneNumber";
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxd
    public final void zzb() {
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxf
    public final void zzc(TaskCompletionSource taskCompletionSource, zzwd zzwdVar) {
        this.zzv = new zzxc(this, taskCompletionSource);
        zzwdVar.zzz(this.zza, this.zzc);
    }
}
