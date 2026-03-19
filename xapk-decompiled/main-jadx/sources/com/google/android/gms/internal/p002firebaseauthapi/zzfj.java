package com.google.android.gms.internal.p002firebaseauthapi;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zzfj implements zzey {
    private final zzpx zza;
    private final zzpx zzb;

    private zzfj(byte[] bArr, byte[] bArr2) {
        this.zza = zzpx.zzb(bArr);
        this.zzb = zzpx.zzb(bArr2);
    }

    static zzfj zzc(byte[] bArr) throws GeneralSecurityException {
        return new zzfj(bArr, zzpv.zzb(bArr));
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzey
    public final zzpx zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzey
    public final zzpx zzb() {
        return this.zzb;
    }
}
