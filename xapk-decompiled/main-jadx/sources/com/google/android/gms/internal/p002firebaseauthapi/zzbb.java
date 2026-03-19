package com.google.android.gms.internal.p002firebaseauthapi;

import java.security.GeneralSecurityException;
import java.util.Set;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zzbb implements zzbc {
    final /* synthetic */ zzgu zza;
    final /* synthetic */ zzgb zzb;

    zzbb(zzgu zzguVar, zzgb zzgbVar) {
        this.zza = zzguVar;
        this.zzb = zzgbVar;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzbc
    public final zzax zza(Class cls) throws GeneralSecurityException {
        try {
            return new zzbx(this.zza, this.zzb, cls);
        } catch (IllegalArgumentException e) {
            throw new GeneralSecurityException("Primitive type not supported", e);
        }
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzbc
    public final zzax zzb() {
        zzgu zzguVar = this.zza;
        return new zzbx(zzguVar, this.zzb, zzguVar.zzj());
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzbc
    public final Class zzc() {
        return this.zza.getClass();
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzbc
    public final Class zzd() {
        return this.zzb.getClass();
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzbc
    public final Set zze() {
        return this.zza.zzm();
    }
}
