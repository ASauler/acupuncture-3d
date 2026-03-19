package com.google.android.gms.internal.p002firebaseauthapi;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfn {
    public static final /* synthetic */ int zza = 0;
    private static final String zzb = "zzfn";
    private final zzbj zzc;
    private final zzap zzd;
    private final zzbi zze;

    /* synthetic */ zzfn(zzfl zzflVar, zzfm zzfmVar) {
        this.zzc = zzflVar.zza;
        this.zzd = zzflVar.zzc;
        this.zze = zzflVar.zze;
    }

    public final synchronized zzbh zza() throws GeneralSecurityException {
        return this.zze.zzb();
    }
}
