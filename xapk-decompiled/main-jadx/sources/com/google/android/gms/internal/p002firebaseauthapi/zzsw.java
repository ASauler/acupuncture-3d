package com.google.android.gms.internal.p002firebaseauthapi;

import android.text.TextUtils;
import com.google.firebase.auth.zze;
import java.util.List;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zzsw implements zzxi {
    final /* synthetic */ zzxh zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ Boolean zzd;
    final /* synthetic */ zze zze;
    final /* synthetic */ zzwc zzf;
    final /* synthetic */ zzza zzg;

    zzsw(zzuh zzuhVar, zzxh zzxhVar, String str, String str2, Boolean bool, zze zzeVar, zzwc zzwcVar, zzza zzzaVar) {
        this.zza = zzxhVar;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = bool;
        this.zze = zzeVar;
        this.zzf = zzwcVar;
        this.zzg = zzzaVar;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxh
    public final void zza(String str) {
        this.zza.zza(str);
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzxi
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        List listZzb = ((zzyr) obj).zzb();
        if (listZzb == null || listZzb.isEmpty()) {
            this.zza.zza("No users.");
            return;
        }
        int i = 0;
        zzyt zzytVar = (zzyt) listZzb.get(0);
        zzzi zzziVarZzl = zzytVar.zzl();
        List listZzc = zzziVarZzl != null ? zzziVarZzl.zzc() : null;
        if (listZzc != null && !listZzc.isEmpty()) {
            if (TextUtils.isEmpty(this.zzb)) {
                ((zzzg) listZzc.get(0)).zzh(this.zzc);
            } else {
                while (true) {
                    if (i >= listZzc.size()) {
                        break;
                    }
                    if (((zzzg) listZzc.get(i)).zzf().equals(this.zzb)) {
                        ((zzzg) listZzc.get(i)).zzh(this.zzc);
                        break;
                    }
                    i++;
                }
            }
        }
        zzytVar.zzh(this.zzd.booleanValue());
        zzytVar.zze(this.zze);
        this.zzf.zzi(this.zzg, zzytVar);
    }
}
