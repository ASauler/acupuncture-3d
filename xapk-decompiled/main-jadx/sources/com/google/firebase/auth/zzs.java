package com.google.firebase.auth;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.p002firebaseauthapi.zzza;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes2.dex */
class zzs implements com.google.firebase.auth.internal.zzg {
    final /* synthetic */ FirebaseAuth zza;

    zzs(FirebaseAuth firebaseAuth) {
        this.zza = firebaseAuth;
    }

    @Override // com.google.firebase.auth.internal.zzg
    public final void zza(zzza zzzaVar, FirebaseUser firebaseUser) {
        Preconditions.checkNotNull(zzzaVar);
        Preconditions.checkNotNull(firebaseUser);
        firebaseUser.zzh(zzzaVar);
        this.zza.zzE(firebaseUser, zzzaVar, true);
    }
}
