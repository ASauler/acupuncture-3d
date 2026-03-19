package com.google.android.gms.measurement.internal;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzoz;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@21.1.1 */
/* JADX INFO: loaded from: classes3.dex */
final class zzgl implements Callable {
    final /* synthetic */ zzaw zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzgq zzc;

    zzgl(zzgq zzgqVar, zzaw zzawVar, String str) {
        this.zzc = zzgqVar;
        this.zza = zzawVar;
        this.zzb = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        zzle zzleVar;
        zzh zzhVar;
        com.google.android.gms.internal.measurement.zzfz zzfzVar;
        String str;
        Bundle bundle;
        com.google.android.gms.internal.measurement.zzgb zzgbVar;
        String str2;
        zzas zzasVarZzc;
        long j;
        byte[] bArr;
        zzkz zzkzVar;
        this.zzc.zza.zzA();
        zzii zziiVarZzr = this.zzc.zza.zzr();
        zzaw zzawVar = this.zza;
        String str3 = this.zzb;
        zziiVarZzr.zzg();
        zzfy.zzO();
        Preconditions.checkNotNull(zzawVar);
        Preconditions.checkNotEmpty(str3);
        if (!zziiVarZzr.zzs.zzf().zzs(str3, zzeb.zzS)) {
            zziiVarZzr.zzs.zzay().zzc().zzb("Generating ScionPayload disabled. packageName", str3);
            return new byte[0];
        }
        if (!"_iap".equals(zzawVar.zza) && !"_iapx".equals(zzawVar.zza)) {
            zziiVarZzr.zzs.zzay().zzc().zzc("Generating a payload for this event is not available. package_name, event_name", str3, zzawVar.zza);
            return null;
        }
        com.google.android.gms.internal.measurement.zzfz zzfzVarZza = com.google.android.gms.internal.measurement.zzga.zza();
        zziiVarZzr.zzf.zzi().zzw();
        try {
            zzh zzhVarZzj = zziiVarZzr.zzf.zzi().zzj(str3);
            if (zzhVarZzj == null) {
                zziiVarZzr.zzs.zzay().zzc().zzb("Log and bundle not available. package_name", str3);
                bArr = new byte[0];
                zzkzVar = zziiVarZzr.zzf;
            } else {
                if (zzhVarZzj.zzai()) {
                    com.google.android.gms.internal.measurement.zzgb zzgbVarZzt = com.google.android.gms.internal.measurement.zzgc.zzt();
                    zzgbVarZzt.zzad(1);
                    zzgbVarZzt.zzZ("android");
                    if (!TextUtils.isEmpty(zzhVarZzj.zzt())) {
                        zzgbVarZzt.zzD(zzhVarZzj.zzt());
                    }
                    if (!TextUtils.isEmpty(zzhVarZzj.zzv())) {
                        zzgbVarZzt.zzF((String) Preconditions.checkNotNull(zzhVarZzj.zzv()));
                    }
                    if (!TextUtils.isEmpty(zzhVarZzj.zzw())) {
                        zzgbVarZzt.zzG((String) Preconditions.checkNotNull(zzhVarZzj.zzw()));
                    }
                    if (zzhVarZzj.zzb() != -2147483648L) {
                        zzgbVarZzt.zzH((int) zzhVarZzj.zzb());
                    }
                    zzgbVarZzt.zzV(zzhVarZzj.zzm());
                    zzgbVarZzt.zzP(zzhVarZzj.zzk());
                    String strZzy = zzhVarZzj.zzy();
                    String strZzr = zzhVarZzj.zzr();
                    if (!TextUtils.isEmpty(strZzy)) {
                        zzgbVarZzt.zzU(strZzy);
                    } else if (!TextUtils.isEmpty(strZzr)) {
                        zzgbVarZzt.zzC(strZzr);
                    }
                    zzai zzaiVarZzh = zziiVarZzr.zzf.zzh(str3);
                    zzgbVarZzt.zzM(zzhVarZzj.zzj());
                    if (zziiVarZzr.zzs.zzJ() && zziiVarZzr.zzs.zzf().zzt(zzgbVarZzt.zzap()) && zzaiVarZzh.zzi(zzah.AD_STORAGE) && !TextUtils.isEmpty(null)) {
                        zzgbVarZzt.zzO(null);
                    }
                    zzgbVarZzt.zzL(zzaiVarZzh.zzh());
                    if (zzaiVarZzh.zzi(zzah.AD_STORAGE) && zzhVarZzj.zzah()) {
                        Pair pairZzd = zziiVarZzr.zzf.zzs().zzd(zzhVarZzj.zzt(), zzaiVarZzh);
                        if (zzhVarZzj.zzah() && !TextUtils.isEmpty((CharSequence) pairZzd.first)) {
                            try {
                                zzgbVarZzt.zzae(zzii.zza((String) pairZzd.first, Long.toString(zzawVar.zzd)));
                                if (pairZzd.second != null) {
                                    zzgbVarZzt.zzX(((Boolean) pairZzd.second).booleanValue());
                                }
                            } catch (SecurityException e) {
                                zziiVarZzr.zzs.zzay().zzc().zzb("Resettable device id encryption failed", e.getMessage());
                                bArr = new byte[0];
                                zzkzVar = zziiVarZzr.zzf;
                            }
                        }
                    }
                    zziiVarZzr.zzs.zzg().zzu();
                    zzgbVarZzt.zzN(Build.MODEL);
                    zziiVarZzr.zzs.zzg().zzu();
                    zzgbVarZzt.zzY(Build.VERSION.RELEASE);
                    zzgbVarZzt.zzaj((int) zziiVarZzr.zzs.zzg().zzb());
                    zzgbVarZzt.zzan(zziiVarZzr.zzs.zzg().zzc());
                    try {
                        if (zzaiVarZzh.zzi(zzah.ANALYTICS_STORAGE) && zzhVarZzj.zzu() != null) {
                            zzgbVarZzt.zzE(zzii.zza((String) Preconditions.checkNotNull(zzhVarZzj.zzu()), Long.toString(zzawVar.zzd)));
                        }
                        if (!TextUtils.isEmpty(zzhVarZzj.zzx())) {
                            zzgbVarZzt.zzT((String) Preconditions.checkNotNull(zzhVarZzj.zzx()));
                        }
                        String strZzt = zzhVarZzj.zzt();
                        List listZzu = zziiVarZzr.zzf.zzi().zzu(strZzt);
                        Iterator it = listZzu.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                zzleVar = null;
                                break;
                            }
                            zzleVar = (zzle) it.next();
                            if ("_lte".equals(zzleVar.zzc)) {
                                break;
                            }
                        }
                        if (zzleVar == null || zzleVar.zze == null) {
                            zzle zzleVar2 = new zzle(strZzt, "auto", "_lte", zziiVarZzr.zzs.zzav().currentTimeMillis(), 0L);
                            listZzu.add(zzleVar2);
                            zziiVarZzr.zzf.zzi().zzL(zzleVar2);
                        }
                        zzlb zzlbVarZzu = zziiVarZzr.zzf.zzu();
                        zzlbVarZzu.zzs.zzay().zzj().zza("Checking account type status for ad personalization signals");
                        if (zzlbVarZzu.zzs.zzg().zze()) {
                            String strZzt2 = zzhVarZzj.zzt();
                            Preconditions.checkNotNull(strZzt2);
                            if (zzhVarZzj.zzah() && zzlbVarZzu.zzf.zzo().zzn(strZzt2)) {
                                zzlbVarZzu.zzs.zzay().zzc().zza("Turning off ad personalization due to account type");
                                Iterator it2 = listZzu.iterator();
                                while (true) {
                                    if (!it2.hasNext()) {
                                        break;
                                    }
                                    if ("_npa".equals(((zzle) it2.next()).zzc)) {
                                        it2.remove();
                                        break;
                                    }
                                }
                                listZzu.add(new zzle(strZzt2, "auto", "_npa", zzlbVarZzu.zzs.zzav().currentTimeMillis(), 1L));
                            }
                        }
                        com.google.android.gms.internal.measurement.zzgl[] zzglVarArr = new com.google.android.gms.internal.measurement.zzgl[listZzu.size()];
                        for (int i = 0; i < listZzu.size(); i++) {
                            com.google.android.gms.internal.measurement.zzgk zzgkVarZzd = com.google.android.gms.internal.measurement.zzgl.zzd();
                            zzgkVarZzd.zzf(((zzle) listZzu.get(i)).zzc);
                            zzgkVarZzd.zzg(((zzle) listZzu.get(i)).zzd);
                            zziiVarZzr.zzf.zzu().zzu(zzgkVarZzd, ((zzle) listZzu.get(i)).zze);
                            zzglVarArr[i] = (com.google.android.gms.internal.measurement.zzgl) zzgkVarZzd.zzaE();
                        }
                        zzgbVarZzt.zzj(Arrays.asList(zzglVarArr));
                        zzep zzepVarZzb = zzep.zzb(zzawVar);
                        zziiVarZzr.zzs.zzv().zzL(zzepVarZzb.zzd, zziiVarZzr.zzf.zzi().zzi(str3));
                        zziiVarZzr.zzs.zzv().zzM(zzepVarZzb, zziiVarZzr.zzs.zzf().zzd(str3));
                        Bundle bundle2 = zzepVarZzb.zzd;
                        bundle2.putLong("_c", 1L);
                        zziiVarZzr.zzs.zzay().zzc().zza("Marking in-app purchase as real-time");
                        bundle2.putLong("_r", 1L);
                        bundle2.putString("_o", zzawVar.zzc);
                        if (zziiVarZzr.zzs.zzv().zzae(zzgbVarZzt.zzap())) {
                            zziiVarZzr.zzs.zzv().zzO(bundle2, "_dbg", 1L);
                            zziiVarZzr.zzs.zzv().zzO(bundle2, "_r", 1L);
                        }
                        zzas zzasVarZzn = zziiVarZzr.zzf.zzi().zzn(str3, zzawVar.zza);
                        if (zzasVarZzn == null) {
                            zzgbVar = zzgbVarZzt;
                            zzhVar = zzhVarZzj;
                            zzfzVar = zzfzVarZza;
                            str = str3;
                            bundle = bundle2;
                            str2 = null;
                            zzasVarZzc = new zzas(str3, zzawVar.zza, 0L, 0L, 0L, zzawVar.zzd, 0L, null, null, null, null);
                            j = 0;
                        } else {
                            zzhVar = zzhVarZzj;
                            zzfzVar = zzfzVarZza;
                            str = str3;
                            bundle = bundle2;
                            zzgbVar = zzgbVarZzt;
                            str2 = null;
                            long j2 = zzasVarZzn.zzf;
                            zzasVarZzc = zzasVarZzn.zzc(zzawVar.zzd);
                            j = j2;
                        }
                        zziiVarZzr.zzf.zzi().zzE(zzasVarZzc);
                        zzar zzarVar = new zzar(zziiVarZzr.zzs, zzawVar.zzc, str, zzawVar.zza, zzawVar.zzd, j, bundle);
                        com.google.android.gms.internal.measurement.zzfr zzfrVarZze = com.google.android.gms.internal.measurement.zzfs.zze();
                        zzfrVarZze.zzm(zzarVar.zzd);
                        zzfrVarZze.zzi(zzarVar.zzb);
                        zzfrVarZze.zzl(zzarVar.zze);
                        zzat zzatVar = new zzat(zzarVar.zzf);
                        while (zzatVar.hasNext()) {
                            String next = zzatVar.next();
                            com.google.android.gms.internal.measurement.zzfv zzfvVarZze = com.google.android.gms.internal.measurement.zzfw.zze();
                            zzfvVarZze.zzj(next);
                            Object objZzf = zzarVar.zzf.zzf(next);
                            if (objZzf != null) {
                                zziiVarZzr.zzf.zzu().zzt(zzfvVarZze, objZzf);
                                zzfrVarZze.zze(zzfvVarZze);
                            }
                        }
                        com.google.android.gms.internal.measurement.zzgb zzgbVar2 = zzgbVar;
                        zzgbVar2.zzk(zzfrVarZze);
                        com.google.android.gms.internal.measurement.zzgd zzgdVarZza = com.google.android.gms.internal.measurement.zzgf.zza();
                        com.google.android.gms.internal.measurement.zzft zzftVarZza = com.google.android.gms.internal.measurement.zzfu.zza();
                        zzftVarZza.zza(zzasVarZzc.zzc);
                        zzftVarZza.zzb(zzawVar.zza);
                        zzgdVarZza.zza(zzftVarZza);
                        zzgbVar2.zzaa(zzgdVarZza);
                        zzgbVar2.zzf(zziiVarZzr.zzf.zzf().zza(zzhVar.zzt(), Collections.emptyList(), zzgbVar2.zzat(), Long.valueOf(zzfrVarZze.zzc()), Long.valueOf(zzfrVarZze.zzc())));
                        if (zzfrVarZze.zzq()) {
                            zzgbVar2.zzai(zzfrVarZze.zzc());
                            zzgbVar2.zzQ(zzfrVarZze.zzc());
                        }
                        long jZzn = zzhVar.zzn();
                        if (jZzn != 0) {
                            zzgbVar2.zzab(jZzn);
                        }
                        long jZzp = zzhVar.zzp();
                        if (jZzp != 0) {
                            zzgbVar2.zzac(jZzp);
                        } else if (jZzn != 0) {
                            zzgbVar2.zzac(jZzn);
                        }
                        String strZzB = zzhVar.zzB();
                        zzoz.zzc();
                        if (zziiVarZzr.zzs.zzf().zzs(str2, zzeb.zzar) && strZzB != null) {
                            zzgbVar2.zzah(strZzB);
                        }
                        zzhVar.zzE();
                        zzgbVar2.zzI((int) zzhVar.zzo());
                        zziiVarZzr.zzs.zzf().zzh();
                        zzgbVar2.zzal(73000L);
                        zzgbVar2.zzak(zziiVarZzr.zzs.zzav().currentTimeMillis());
                        zzgbVar2.zzag(Boolean.TRUE.booleanValue());
                        if (zziiVarZzr.zzs.zzf().zzs(str2, zzeb.zzaz)) {
                            zziiVarZzr.zzf.zzC(zzgbVar2.zzap(), zzgbVar2);
                        }
                        com.google.android.gms.internal.measurement.zzfz zzfzVar2 = zzfzVar;
                        zzfzVar2.zza(zzgbVar2);
                        zzh zzhVar2 = zzhVar;
                        zzhVar2.zzab(zzgbVar2.zzd());
                        zzhVar2.zzZ(zzgbVar2.zzc());
                        zziiVarZzr.zzf.zzi().zzD(zzhVar2);
                        zziiVarZzr.zzf.zzi().zzC();
                        zziiVarZzr.zzf.zzi().zzx();
                        try {
                            return zziiVarZzr.zzf.zzu().zzy(((com.google.android.gms.internal.measurement.zzga) zzfzVar2.zzaE()).zzbv());
                        } catch (IOException e2) {
                            zziiVarZzr.zzs.zzay().zzd().zzc("Data loss. Failed to bundle and serialize. appId", zzeo.zzn(str), e2);
                            return str2;
                        }
                    } catch (SecurityException e3) {
                        zziiVarZzr.zzs.zzay().zzc().zzb("app instance id encryption failed", e3.getMessage());
                        byte[] bArr2 = new byte[0];
                        zziiVarZzr.zzf.zzi().zzx();
                        return bArr2;
                    }
                }
                zziiVarZzr.zzs.zzay().zzc().zzb("Log and bundle disabled. package_name", str3);
                bArr = new byte[0];
                zzkzVar = zziiVarZzr.zzf;
            }
            zzkzVar.zzi().zzx();
            return bArr;
        } catch (Throwable th) {
            zziiVarZzr.zzf.zzi().zzx();
            throw th;
        }
    }
}
