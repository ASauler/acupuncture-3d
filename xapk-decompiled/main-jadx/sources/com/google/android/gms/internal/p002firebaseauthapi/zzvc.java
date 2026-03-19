package com.google.android.gms.internal.p002firebaseauthapi;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.FirebaseError;
import com.google.firebase.auth.PhoneAuthCredential;
import com.google.firebase.auth.internal.zzg;
import com.google.firebase.auth.internal.zzx;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zzvc extends zzxd {
    private final zzrw zza;

    public zzvc(PhoneAuthCredential phoneAuthCredential, String str) {
        super(2);
        Preconditions.checkNotNull(phoneAuthCredential, "credential cannot be null");
        phoneAuthCredential.zze(false);
        this.zza = new zzrw(phoneAuthCredential, str);
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxf
    public final String zza() {
        return "reauthenticateWithPhoneCredential";
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxd
    public final void zzb() {
        zzx zzxVarZzN = zzwa.zzN(this.zzd, this.zzk);
        if (!this.zze.getUid().equalsIgnoreCase(zzxVarZzN.getUid())) {
            zzl(new Status(FirebaseError.ERROR_USER_MISMATCH));
        } else {
            ((zzg) this.zzf).zza(this.zzj, zzxVarZzN);
            zzm(null);
        }
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxf
    public final void zzc(TaskCompletionSource taskCompletionSource, zzwd zzwdVar) {
        this.zzv = new zzxc(this, taskCompletionSource);
        zzwdVar.zzy(this.zza, this.zzc);
    }
}
