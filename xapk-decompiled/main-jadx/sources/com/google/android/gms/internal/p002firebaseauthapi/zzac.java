package com.google.android.gms.internal.p002firebaseauthapi;

import java.util.Iterator;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zzac implements zzae {
    final /* synthetic */ zzq zza;

    zzac(zzq zzqVar) {
        this.zza = zzqVar;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzae
    public final /* bridge */ /* synthetic */ Iterator zza(zzaf zzafVar, CharSequence charSequence) {
        return new zzab(this, zzafVar, charSequence, this.zza.zza(charSequence));
    }
}
