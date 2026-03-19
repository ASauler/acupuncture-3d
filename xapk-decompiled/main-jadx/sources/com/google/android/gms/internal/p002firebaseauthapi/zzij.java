package com.google.android.gms.internal.p002firebaseauthapi;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzij {
    private final zzbe zza;
    private final int zzb;
    private final zzbn zzc;

    /* synthetic */ zzij(zzbe zzbeVar, int i, zzbn zzbnVar, zzii zziiVar) {
        this.zza = zzbeVar;
        this.zzb = i;
        this.zzc = zzbnVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzij)) {
            return false;
        }
        zzij zzijVar = (zzij) obj;
        return this.zza == zzijVar.zza && this.zzb == zzijVar.zzb && this.zzc.equals(zzijVar.zzc);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zza, Integer.valueOf(this.zzb), Integer.valueOf(this.zzc.hashCode())});
    }

    public final String toString() {
        return String.format("(status=%s, keyId=%s, parameters='%s')", this.zza, Integer.valueOf(this.zzb), this.zzc);
    }

    public final int zza() {
        return this.zzb;
    }
}
