package com.google.android.gms.internal.p002firebaseauthapi;

import com.google.firebase.auth.PhoneAuthProvider;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zzwz implements Runnable {
    final /* synthetic */ zzxb zza;
    final /* synthetic */ zzxa zzb;

    zzwz(zzxa zzxaVar, zzxb zzxbVar) {
        this.zzb = zzxaVar;
        this.zza = zzxbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zzb.zza.zzh) {
            if (!this.zzb.zza.zzh.isEmpty()) {
                this.zza.zza((PhoneAuthProvider.OnVerificationStateChangedCallbacks) this.zzb.zza.zzh.get(0), new Object[0]);
            }
        }
    }
}
