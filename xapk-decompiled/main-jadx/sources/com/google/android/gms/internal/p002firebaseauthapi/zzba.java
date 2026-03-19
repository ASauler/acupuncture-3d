package com.google.android.gms.internal.p002firebaseauthapi;

import java.security.GeneralSecurityException;
import java.util.Set;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zzba implements zzbc {
    final /* synthetic */ zzgb zza;

    zzba(zzgb zzgbVar) {
        this.zza = zzgbVar;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzbc
    public final zzax zza(Class cls) throws GeneralSecurityException {
        try {
            return new zzaz(this.zza, cls);
        } catch (IllegalArgumentException e) {
            throw new GeneralSecurityException("Primitive type not supported", e);
        }
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzbc
    public final zzax zzb() {
        zzgb zzgbVar = this.zza;
        return new zzaz(zzgbVar, zzgbVar.zzj());
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzbc
    public final Class zzc() {
        return this.zza.getClass();
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzbc
    public final Class zzd() {
        return null;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzbc
    public final Set zze() {
        return this.zza.zzm();
    }
}
