package com.google.android.gms.internal.p002firebaseauthapi;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zzaj extends zzah {
    private final zzal zza;

    zzaj(zzal zzalVar, int i) {
        super(zzalVar.size(), i);
        this.zza = zzalVar;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzah
    protected final Object zza(int i) {
        return this.zza.get(i);
    }
}
