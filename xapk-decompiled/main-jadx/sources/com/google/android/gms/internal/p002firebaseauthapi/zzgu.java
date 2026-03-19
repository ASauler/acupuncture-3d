package com.google.android.gms.internal.p002firebaseauthapi;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
public abstract class zzgu extends zzgb {
    private final Class zza;

    @SafeVarargs
    protected zzgu(Class cls, Class cls2, zzgt... zzgtVarArr) {
        super(cls, zzgtVarArr);
        this.zza = cls2;
    }

    public abstract zzadm zzg(zzadm zzadmVar) throws GeneralSecurityException;
}
