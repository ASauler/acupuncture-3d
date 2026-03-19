package com.google.android.gms.internal.p002firebaseauthapi;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zzde extends zzga {
    final /* synthetic */ zzdf zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzde(zzdf zzdfVar, Class cls) {
        super(cls);
        this.zza = zzdfVar;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzga
    public final /* bridge */ /* synthetic */ zzadm zza(zzadm zzadmVar) throws GeneralSecurityException {
        zznu zznuVarZzb = zznv.zzb();
        zznuVarZzb.zza((zzny) zzadmVar);
        zznuVarZzb.zzb(0);
        return (zznv) zznuVarZzb.zzk();
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzga
    public final /* synthetic */ zzadm zzb(zzabe zzabeVar) throws zzacp {
        return zzny.zzd(zzabeVar, zzabu.zza());
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzga
    public final /* bridge */ /* synthetic */ void zzd(zzadm zzadmVar) throws GeneralSecurityException {
        zzny zznyVar = (zzny) zzadmVar;
        if (zznyVar.zze().isEmpty() || !zznyVar.zzf()) {
            throw new GeneralSecurityException("invalid key format: missing KEK URI or DEK template");
        }
    }
}
