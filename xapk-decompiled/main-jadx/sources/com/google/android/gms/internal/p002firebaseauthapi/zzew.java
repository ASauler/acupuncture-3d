package com.google.android.gms.internal.p002firebaseauthapi;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zzew implements zzav {
    private final zzmp zza;
    private final zzex zzb;
    private final zzet zzc;
    private final zzes zzd;

    private zzew(zzmp zzmpVar, zzex zzexVar, zzes zzesVar, zzet zzetVar, byte[] bArr) {
        this.zza = zzmpVar;
        this.zzb = zzexVar;
        this.zzd = zzesVar;
        this.zzc = zzetVar;
    }

    static zzew zza(zzmp zzmpVar) throws GeneralSecurityException {
        if (zzmpVar.zzg().zzs()) {
            throw new IllegalArgumentException("HpkePublicKey.public_key is empty.");
        }
        zzmj zzmjVarZzb = zzmpVar.zzb();
        return new zzew(zzmpVar, zzez.zzb(zzmjVarZzb), zzez.zzc(zzmjVarZzb), zzez.zza(zzmjVarZzb), null);
    }
}
