package com.google.android.gms.internal.p002firebaseauthapi;

import android.text.TextUtils;
import com.google.firebase.auth.internal.zzai;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zztm implements zzxi {
    final /* synthetic */ zztn zza;

    zztm(zztn zztnVar) {
        this.zza = zztnVar;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxh
    public final void zza(String str) {
        this.zza.zzb.zzh(zzai.zza(str));
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxi
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzaal zzaalVar = (zzaal) obj;
        if (TextUtils.isEmpty(zzaalVar.zzb()) || TextUtils.isEmpty(zzaalVar.zzc())) {
            this.zza.zzb.zzh(zzai.zza("INTERNAL_SUCCESS_SIGN_OUT"));
            return;
        }
        this.zza.zzc.zzO(new zzza(zzaalVar.zzc(), zzaalVar.zzb(), Long.valueOf(zzzc.zza(zzaalVar.zzb())), "Bearer"), null, null, false, null, this.zza.zzb, this);
    }
}
