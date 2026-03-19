package com.google.android.gms.internal.p002firebaseauthapi;

import com.google.firebase.auth.EmailAuthCredential;
import com.google.firebase.auth.internal.zzai;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zzss implements zzxi {
    final /* synthetic */ EmailAuthCredential zza;
    final /* synthetic */ zzwc zzb;
    final /* synthetic */ zzuh zzc;

    zzss(zzuh zzuhVar, EmailAuthCredential emailAuthCredential, zzwc zzwcVar) {
        this.zzc = zzuhVar;
        this.zza = emailAuthCredential;
        this.zzb = zzwcVar;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxh
    public final void zza(String str) {
        this.zzb.zzh(zzai.zza(str));
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxi
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        this.zzc.zzN(new zzyi(this.zza, ((zzza) obj).zze()), this.zzb);
    }
}
