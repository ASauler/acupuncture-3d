package com.google.android.gms.internal.p002firebaseauthapi;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zzdh extends zzga {
    final /* synthetic */ zzdi zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzdh(zzdi zzdiVar, Class cls) {
        super(cls);
        this.zza = zzdiVar;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzga
    public final /* bridge */ /* synthetic */ zzadm zza(zzadm zzadmVar) throws GeneralSecurityException {
        zzof zzofVarZzb = zzog.zzb();
        zzofVarZzb.zzb(0);
        zzofVarZzb.zza(zzabe.zzn(zzps.zza(32)));
        return (zzog) zzofVarZzb.zzk();
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzga
    public final /* synthetic */ zzadm zzb(zzabe zzabeVar) throws zzacp {
        return zzoj.zzc(zzabeVar, zzabu.zza());
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzga
    public final Map zzc() throws GeneralSecurityException {
        HashMap map = new HashMap();
        map.put("XCHACHA20_POLY1305", new zzfz(zzoj.zzb(), 1));
        map.put("XCHACHA20_POLY1305_RAW", new zzfz(zzoj.zzb(), 3));
        return Collections.unmodifiableMap(map);
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzga
    public final /* bridge */ /* synthetic */ void zzd(zzadm zzadmVar) throws GeneralSecurityException {
    }
}
