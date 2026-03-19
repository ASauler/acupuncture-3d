package com.google.android.gms.internal.p002firebaseauthapi;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zzha {
    private final Class zza;
    private final zzpx zzb;

    /* synthetic */ zzha(Class cls, zzpx zzpxVar, zzgz zzgzVar) {
        this.zza = cls;
        this.zzb = zzpxVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzha)) {
            return false;
        }
        zzha zzhaVar = (zzha) obj;
        return zzhaVar.zza.equals(this.zza) && zzhaVar.zzb.equals(this.zzb);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zza, this.zzb});
    }

    public final String toString() {
        return this.zza.getSimpleName() + ", object identifier: " + String.valueOf(this.zzb);
    }
}
