package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.collection.ArrayMap;
import com.android.vending.expansion.zipfile.APEZProvider;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzns;
import com.google.android.gms.internal.measurement.zzoh;
import com.google.android.gms.internal.measurement.zzow;
import com.google.android.gms.internal.measurement.zzoz;
import com.google.common.net.HttpHeaders;
import com.google.firebase.messaging.Constants;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@21.1.1 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzkz implements zzgt {
    private static volatile zzkz zzb;
    private long zzA;
    private final Map zzB;
    private final Map zzC;
    private zzik zzD;
    private String zzE;
    long zza;
    private final zzfp zzc;
    private final zzeu zzd;
    private zzam zze;
    private zzew zzf;
    private zzkl zzg;
    private zzaa zzh;
    private final zzlb zzi;
    private zzii zzj;
    private zzju zzk;
    private final zzko zzl;
    private zzfg zzm;
    private final zzfy zzn;
    private boolean zzp;
    private List zzq;
    private int zzr;
    private int zzs;
    private boolean zzt;
    private boolean zzu;
    private boolean zzv;
    private FileLock zzw;
    private FileChannel zzx;
    private List zzy;
    private List zzz;
    private boolean zzo = false;
    private final zzlg zzF = new zzku(this);

    zzkz(zzla zzlaVar, zzfy zzfyVar) {
        Preconditions.checkNotNull(zzlaVar);
        this.zzn = zzfy.zzp(zzlaVar.zza, null, null);
        this.zzA = -1L;
        this.zzl = new zzko(this);
        zzlb zzlbVar = new zzlb(this);
        zzlbVar.zzX();
        this.zzi = zzlbVar;
        zzeu zzeuVar = new zzeu(this);
        zzeuVar.zzX();
        this.zzd = zzeuVar;
        zzfp zzfpVar = new zzfp(this);
        zzfpVar.zzX();
        this.zzc = zzfpVar;
        this.zzB = new HashMap();
        this.zzC = new HashMap();
        zzaz().zzp(new zzkp(this, zzlaVar));
    }

    static final void zzaa(com.google.android.gms.internal.measurement.zzfr zzfrVar, int i, String str) {
        List listZzp = zzfrVar.zzp();
        for (int i2 = 0; i2 < listZzp.size(); i2++) {
            if ("_err".equals(((com.google.android.gms.internal.measurement.zzfw) listZzp.get(i2)).zzg())) {
                return;
            }
        }
        com.google.android.gms.internal.measurement.zzfv zzfvVarZze = com.google.android.gms.internal.measurement.zzfw.zze();
        zzfvVarZze.zzj("_err");
        zzfvVarZze.zzi(Long.valueOf(i).longValue());
        com.google.android.gms.internal.measurement.zzfw zzfwVar = (com.google.android.gms.internal.measurement.zzfw) zzfvVarZze.zzaE();
        com.google.android.gms.internal.measurement.zzfv zzfvVarZze2 = com.google.android.gms.internal.measurement.zzfw.zze();
        zzfvVarZze2.zzj("_ev");
        zzfvVarZze2.zzk(str);
        com.google.android.gms.internal.measurement.zzfw zzfwVar2 = (com.google.android.gms.internal.measurement.zzfw) zzfvVarZze2.zzaE();
        zzfrVar.zzf(zzfwVar);
        zzfrVar.zzf(zzfwVar2);
    }

    static final void zzab(com.google.android.gms.internal.measurement.zzfr zzfrVar, String str) {
        List listZzp = zzfrVar.zzp();
        for (int i = 0; i < listZzp.size(); i++) {
            if (str.equals(((com.google.android.gms.internal.measurement.zzfw) listZzp.get(i)).zzg())) {
                zzfrVar.zzh(i);
                return;
            }
        }
    }

    private final zzq zzac(String str) {
        zzam zzamVar = this.zze;
        zzal(zzamVar);
        zzh zzhVarZzj = zzamVar.zzj(str);
        if (zzhVarZzj == null || TextUtils.isEmpty(zzhVarZzj.zzw())) {
            zzay().zzc().zzb("No app data available; dropping", str);
            return null;
        }
        Boolean boolZzad = zzad(zzhVarZzj);
        if (boolZzad != null && !boolZzad.booleanValue()) {
            zzay().zzd().zzb("App version does not match; dropping. appId", zzeo.zzn(str));
            return null;
        }
        String strZzy = zzhVarZzj.zzy();
        String strZzw = zzhVarZzj.zzw();
        long jZzb = zzhVarZzj.zzb();
        String strZzv = zzhVarZzj.zzv();
        long jZzm = zzhVarZzj.zzm();
        long jZzj = zzhVarZzj.zzj();
        boolean zZzai = zzhVarZzj.zzai();
        String strZzx = zzhVarZzj.zzx();
        zzhVarZzj.zza();
        return new zzq(str, strZzy, strZzw, jZzb, strZzv, jZzm, jZzj, (String) null, zZzai, false, strZzx, 0L, 0L, 0, zzhVarZzj.zzah(), false, zzhVarZzj.zzr(), zzhVarZzj.zzq(), zzhVarZzj.zzk(), zzhVarZzj.zzC(), (String) null, zzh(str).zzh(), "", (String) null);
    }

    private final Boolean zzad(zzh zzhVar) {
        try {
            if (zzhVar.zzb() != -2147483648L) {
                if (zzhVar.zzb() == Wrappers.packageManager(this.zzn.zzau()).getPackageInfo(zzhVar.zzt(), 0).versionCode) {
                    return true;
                }
            } else {
                String str = Wrappers.packageManager(this.zzn.zzau()).getPackageInfo(zzhVar.zzt(), 0).versionName;
                String strZzw = zzhVar.zzw();
                if (strZzw != null && strZzw.equals(str)) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    private final void zzae() {
        zzaz().zzg();
        if (this.zzt || this.zzu || this.zzv) {
            zzay().zzj().zzd("Not stopping services. fetch, network, upload", Boolean.valueOf(this.zzt), Boolean.valueOf(this.zzu), Boolean.valueOf(this.zzv));
            return;
        }
        zzay().zzj().zza("Stopping uploading service(s)");
        List list = this.zzq;
        if (list == null) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        ((List) Preconditions.checkNotNull(this.zzq)).clear();
    }

    private final void zzaf(com.google.android.gms.internal.measurement.zzgb zzgbVar, long j, boolean z) {
        String str = true != z ? "_lte" : "_se";
        zzam zzamVar = this.zze;
        zzal(zzamVar);
        zzle zzleVarZzp = zzamVar.zzp(zzgbVar.zzap(), str);
        zzle zzleVar = (zzleVarZzp == null || zzleVarZzp.zze == null) ? new zzle(zzgbVar.zzap(), "auto", str, zzav().currentTimeMillis(), Long.valueOf(j)) : new zzle(zzgbVar.zzap(), "auto", str, zzav().currentTimeMillis(), Long.valueOf(((Long) zzleVarZzp.zze).longValue() + j));
        com.google.android.gms.internal.measurement.zzgk zzgkVarZzd = com.google.android.gms.internal.measurement.zzgl.zzd();
        zzgkVarZzd.zzf(str);
        zzgkVarZzd.zzg(zzav().currentTimeMillis());
        zzgkVarZzd.zze(((Long) zzleVar.zze).longValue());
        com.google.android.gms.internal.measurement.zzgl zzglVar = (com.google.android.gms.internal.measurement.zzgl) zzgkVarZzd.zzaE();
        int iZza = zzlb.zza(zzgbVar, str);
        if (iZza >= 0) {
            zzgbVar.zzam(iZza, zzglVar);
        } else {
            zzgbVar.zzm(zzglVar);
        }
        if (j > 0) {
            zzam zzamVar2 = this.zze;
            zzal(zzamVar2);
            zzamVar2.zzL(zzleVar);
            zzay().zzj().zzc("Updated engagement user property. scope, value", true != z ? "lifetime" : "session-scoped", zzleVar.zze);
        }
    }

    private final void zzag() {
        long jMax;
        long jMax2;
        zzaz().zzg();
        zzB();
        if (this.zza > 0) {
            long jAbs = 3600000 - Math.abs(zzav().elapsedRealtime() - this.zza);
            if (jAbs > 0) {
                zzay().zzj().zzb("Upload has been suspended. Will update scheduling later in approximately ms", Long.valueOf(jAbs));
                zzm().zzc();
                zzkl zzklVar = this.zzg;
                zzal(zzklVar);
                zzklVar.zza();
                return;
            }
            this.zza = 0L;
        }
        if (!this.zzn.zzM() || !zzai()) {
            zzay().zzj().zza("Nothing to upload or uploading impossible");
            zzm().zzc();
            zzkl zzklVar2 = this.zzg;
            zzal(zzklVar2);
            zzklVar2.zza();
            return;
        }
        long jCurrentTimeMillis = zzav().currentTimeMillis();
        zzg();
        long jMax3 = Math.max(0L, ((Long) zzeb.zzz.zza(null)).longValue());
        zzam zzamVar = this.zze;
        zzal(zzamVar);
        boolean z = true;
        if (!zzamVar.zzH()) {
            zzam zzamVar2 = this.zze;
            zzal(zzamVar2);
            if (!zzamVar2.zzG()) {
                z = false;
            }
        }
        if (z) {
            String strZzl = zzg().zzl();
            if (TextUtils.isEmpty(strZzl) || ".none.".equals(strZzl)) {
                zzg();
                jMax = Math.max(0L, ((Long) zzeb.zzt.zza(null)).longValue());
            } else {
                zzg();
                jMax = Math.max(0L, ((Long) zzeb.zzu.zza(null)).longValue());
            }
        } else {
            zzg();
            jMax = Math.max(0L, ((Long) zzeb.zzs.zza(null)).longValue());
        }
        long jZza = this.zzk.zzc.zza();
        long jZza2 = this.zzk.zzd.zza();
        zzam zzamVar3 = this.zze;
        zzal(zzamVar3);
        boolean z2 = z;
        long jZzd = zzamVar3.zzd();
        zzam zzamVar4 = this.zze;
        zzal(zzamVar4);
        long jMax4 = Math.max(jZzd, zzamVar4.zze());
        if (jMax4 == 0) {
            jMax2 = 0;
        } else {
            long jAbs2 = jCurrentTimeMillis - Math.abs(jMax4 - jCurrentTimeMillis);
            long jAbs3 = Math.abs(jZza - jCurrentTimeMillis);
            long jAbs4 = jCurrentTimeMillis - Math.abs(jZza2 - jCurrentTimeMillis);
            long jMax5 = Math.max(jCurrentTimeMillis - jAbs3, jAbs4);
            jMax2 = jAbs2 + jMax3;
            if (z2 && jMax5 > 0) {
                jMax2 = Math.min(jAbs2, jMax5) + jMax;
            }
            zzlb zzlbVar = this.zzi;
            zzal(zzlbVar);
            if (!zzlbVar.zzw(jMax5, jMax)) {
                jMax2 = jMax5 + jMax;
            }
            if (jAbs4 != 0 && jAbs4 >= jAbs2) {
                int i = 0;
                while (true) {
                    zzg();
                    if (i >= Math.min(20, Math.max(0, ((Integer) zzeb.zzB.zza(null)).intValue()))) {
                        break;
                    }
                    zzg();
                    jMax2 += Math.max(0L, ((Long) zzeb.zzA.zza(null)).longValue()) * (1 << i);
                    if (jMax2 > jAbs4) {
                        break;
                    } else {
                        i++;
                    }
                }
            }
        }
        if (jMax2 == 0) {
            zzay().zzj().zza("Next upload time is 0");
            zzm().zzc();
            zzkl zzklVar3 = this.zzg;
            zzal(zzklVar3);
            zzklVar3.zza();
            return;
        }
        zzeu zzeuVar = this.zzd;
        zzal(zzeuVar);
        if (!zzeuVar.zza()) {
            zzay().zzj().zza("No network");
            zzm().zzb();
            zzkl zzklVar4 = this.zzg;
            zzal(zzklVar4);
            zzklVar4.zza();
            return;
        }
        long jZza3 = this.zzk.zzb.zza();
        zzg();
        long jMax6 = Math.max(0L, ((Long) zzeb.zzq.zza(null)).longValue());
        zzlb zzlbVar2 = this.zzi;
        zzal(zzlbVar2);
        if (!zzlbVar2.zzw(jZza3, jMax6)) {
            jMax2 = Math.max(jMax2, jZza3 + jMax6);
        }
        zzm().zzc();
        long jCurrentTimeMillis2 = jMax2 - zzav().currentTimeMillis();
        if (jCurrentTimeMillis2 <= 0) {
            zzg();
            jCurrentTimeMillis2 = Math.max(0L, ((Long) zzeb.zzv.zza(null)).longValue());
            this.zzk.zzc.zzb(zzav().currentTimeMillis());
        }
        zzay().zzj().zzb("Upload scheduled in approximately ms", Long.valueOf(jCurrentTimeMillis2));
        zzkl zzklVar5 = this.zzg;
        zzal(zzklVar5);
        zzklVar5.zzd(jCurrentTimeMillis2);
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x036f A[Catch: all -> 0x0d05, TryCatch #2 {all -> 0x0d05, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:172:0x0528, B:24:0x00f5, B:26:0x0103, B:29:0x0123, B:31:0x0129, B:33:0x013b, B:35:0x0149, B:37:0x0159, B:38:0x0166, B:39:0x016b, B:42:0x0184, B:110:0x03a0, B:111:0x03ac, B:114:0x03b6, B:120:0x03d9, B:117:0x03c8, B:142:0x0458, B:144:0x0464, B:147:0x0477, B:149:0x0488, B:151:0x0494, B:171:0x0512, B:156:0x04b4, B:158:0x04c2, B:161:0x04d7, B:163:0x04e9, B:165:0x04f5, B:124:0x03e1, B:126:0x03ed, B:128:0x03f9, B:140:0x043e, B:132:0x0416, B:135:0x0428, B:137:0x042e, B:139:0x0438, B:67:0x01e1, B:70:0x01eb, B:72:0x01f9, B:76:0x023e, B:73:0x0215, B:75:0x0225, B:80:0x024b, B:82:0x0277, B:83:0x02a1, B:85:0x02d7, B:87:0x02dd, B:90:0x02e9, B:92:0x031f, B:93:0x033a, B:95:0x0340, B:97:0x034e, B:101:0x0361, B:98:0x0356, B:104:0x0368, B:107:0x036f, B:108:0x0387, B:175:0x053d, B:177:0x054b, B:179:0x0556, B:190:0x0588, B:180:0x055e, B:182:0x0569, B:184:0x056f, B:187:0x057b, B:189:0x0583, B:191:0x058b, B:192:0x0597, B:195:0x059f, B:197:0x05b1, B:198:0x05bd, B:200:0x05c5, B:204:0x05ea, B:206:0x060f, B:208:0x0620, B:210:0x0626, B:212:0x0632, B:213:0x0663, B:215:0x0669, B:217:0x0677, B:218:0x067b, B:219:0x067e, B:220:0x0681, B:221:0x068f, B:223:0x0695, B:225:0x06a5, B:226:0x06ac, B:228:0x06b8, B:229:0x06bf, B:230:0x06c2, B:232:0x0700, B:233:0x0713, B:235:0x0719, B:238:0x0733, B:240:0x074e, B:242:0x0767, B:244:0x076c, B:246:0x0770, B:248:0x0774, B:250:0x077e, B:251:0x0788, B:253:0x078c, B:255:0x0792, B:256:0x07a0, B:257:0x07a9, B:326:0x0a00, B:259:0x07b6, B:261:0x07cd, B:267:0x07e9, B:269:0x080d, B:270:0x0815, B:272:0x081b, B:274:0x082d, B:281:0x0856, B:282:0x0879, B:284:0x0885, B:286:0x089a, B:288:0x08db, B:292:0x08f3, B:294:0x08fa, B:296:0x0909, B:298:0x090d, B:300:0x0911, B:302:0x0915, B:303:0x0921, B:304:0x0926, B:306:0x092c, B:308:0x0948, B:309:0x094d, B:325:0x09fd, B:310:0x0968, B:312:0x0970, B:316:0x0997, B:318:0x09c3, B:320:0x09d3, B:321:0x09e3, B:323:0x09ed, B:313:0x097d, B:279:0x0841, B:265:0x07d4, B:327:0x0a0b, B:329:0x0a18, B:330:0x0a1e, B:331:0x0a26, B:333:0x0a2c, B:336:0x0a46, B:338:0x0a57, B:358:0x0acb, B:360:0x0ad1, B:362:0x0ae9, B:365:0x0af0, B:370:0x0b1f, B:372:0x0b61, B:375:0x0b96, B:376:0x0b9a, B:377:0x0ba5, B:379:0x0be8, B:380:0x0bf5, B:382:0x0c04, B:386:0x0c1e, B:388:0x0c37, B:374:0x0b73, B:366:0x0af8, B:368:0x0b04, B:369:0x0b08, B:389:0x0c4f, B:390:0x0c67, B:393:0x0c6f, B:394:0x0c74, B:395:0x0c84, B:397:0x0c9e, B:398:0x0cb9, B:399:0x0cc2, B:404:0x0ce1, B:403:0x0cce, B:339:0x0a6f, B:341:0x0a75, B:343:0x0a7f, B:345:0x0a86, B:351:0x0a96, B:353:0x0a9d, B:355:0x0abc, B:357:0x0ac3, B:356:0x0ac0, B:352:0x0a9a, B:344:0x0a83, B:201:0x05ca, B:203:0x05d0, B:407:0x0cf3), top: B:417:0x000e, inners: #0, #1, #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0387 A[Catch: all -> 0x0d05, TryCatch #2 {all -> 0x0d05, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:172:0x0528, B:24:0x00f5, B:26:0x0103, B:29:0x0123, B:31:0x0129, B:33:0x013b, B:35:0x0149, B:37:0x0159, B:38:0x0166, B:39:0x016b, B:42:0x0184, B:110:0x03a0, B:111:0x03ac, B:114:0x03b6, B:120:0x03d9, B:117:0x03c8, B:142:0x0458, B:144:0x0464, B:147:0x0477, B:149:0x0488, B:151:0x0494, B:171:0x0512, B:156:0x04b4, B:158:0x04c2, B:161:0x04d7, B:163:0x04e9, B:165:0x04f5, B:124:0x03e1, B:126:0x03ed, B:128:0x03f9, B:140:0x043e, B:132:0x0416, B:135:0x0428, B:137:0x042e, B:139:0x0438, B:67:0x01e1, B:70:0x01eb, B:72:0x01f9, B:76:0x023e, B:73:0x0215, B:75:0x0225, B:80:0x024b, B:82:0x0277, B:83:0x02a1, B:85:0x02d7, B:87:0x02dd, B:90:0x02e9, B:92:0x031f, B:93:0x033a, B:95:0x0340, B:97:0x034e, B:101:0x0361, B:98:0x0356, B:104:0x0368, B:107:0x036f, B:108:0x0387, B:175:0x053d, B:177:0x054b, B:179:0x0556, B:190:0x0588, B:180:0x055e, B:182:0x0569, B:184:0x056f, B:187:0x057b, B:189:0x0583, B:191:0x058b, B:192:0x0597, B:195:0x059f, B:197:0x05b1, B:198:0x05bd, B:200:0x05c5, B:204:0x05ea, B:206:0x060f, B:208:0x0620, B:210:0x0626, B:212:0x0632, B:213:0x0663, B:215:0x0669, B:217:0x0677, B:218:0x067b, B:219:0x067e, B:220:0x0681, B:221:0x068f, B:223:0x0695, B:225:0x06a5, B:226:0x06ac, B:228:0x06b8, B:229:0x06bf, B:230:0x06c2, B:232:0x0700, B:233:0x0713, B:235:0x0719, B:238:0x0733, B:240:0x074e, B:242:0x0767, B:244:0x076c, B:246:0x0770, B:248:0x0774, B:250:0x077e, B:251:0x0788, B:253:0x078c, B:255:0x0792, B:256:0x07a0, B:257:0x07a9, B:326:0x0a00, B:259:0x07b6, B:261:0x07cd, B:267:0x07e9, B:269:0x080d, B:270:0x0815, B:272:0x081b, B:274:0x082d, B:281:0x0856, B:282:0x0879, B:284:0x0885, B:286:0x089a, B:288:0x08db, B:292:0x08f3, B:294:0x08fa, B:296:0x0909, B:298:0x090d, B:300:0x0911, B:302:0x0915, B:303:0x0921, B:304:0x0926, B:306:0x092c, B:308:0x0948, B:309:0x094d, B:325:0x09fd, B:310:0x0968, B:312:0x0970, B:316:0x0997, B:318:0x09c3, B:320:0x09d3, B:321:0x09e3, B:323:0x09ed, B:313:0x097d, B:279:0x0841, B:265:0x07d4, B:327:0x0a0b, B:329:0x0a18, B:330:0x0a1e, B:331:0x0a26, B:333:0x0a2c, B:336:0x0a46, B:338:0x0a57, B:358:0x0acb, B:360:0x0ad1, B:362:0x0ae9, B:365:0x0af0, B:370:0x0b1f, B:372:0x0b61, B:375:0x0b96, B:376:0x0b9a, B:377:0x0ba5, B:379:0x0be8, B:380:0x0bf5, B:382:0x0c04, B:386:0x0c1e, B:388:0x0c37, B:374:0x0b73, B:366:0x0af8, B:368:0x0b04, B:369:0x0b08, B:389:0x0c4f, B:390:0x0c67, B:393:0x0c6f, B:394:0x0c74, B:395:0x0c84, B:397:0x0c9e, B:398:0x0cb9, B:399:0x0cc2, B:404:0x0ce1, B:403:0x0cce, B:339:0x0a6f, B:341:0x0a75, B:343:0x0a7f, B:345:0x0a86, B:351:0x0a96, B:353:0x0a9d, B:355:0x0abc, B:357:0x0ac3, B:356:0x0ac0, B:352:0x0a9a, B:344:0x0a83, B:201:0x05ca, B:203:0x05d0, B:407:0x0cf3), top: B:417:0x000e, inners: #0, #1, #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x03a0 A[Catch: all -> 0x0d05, TryCatch #2 {all -> 0x0d05, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:172:0x0528, B:24:0x00f5, B:26:0x0103, B:29:0x0123, B:31:0x0129, B:33:0x013b, B:35:0x0149, B:37:0x0159, B:38:0x0166, B:39:0x016b, B:42:0x0184, B:110:0x03a0, B:111:0x03ac, B:114:0x03b6, B:120:0x03d9, B:117:0x03c8, B:142:0x0458, B:144:0x0464, B:147:0x0477, B:149:0x0488, B:151:0x0494, B:171:0x0512, B:156:0x04b4, B:158:0x04c2, B:161:0x04d7, B:163:0x04e9, B:165:0x04f5, B:124:0x03e1, B:126:0x03ed, B:128:0x03f9, B:140:0x043e, B:132:0x0416, B:135:0x0428, B:137:0x042e, B:139:0x0438, B:67:0x01e1, B:70:0x01eb, B:72:0x01f9, B:76:0x023e, B:73:0x0215, B:75:0x0225, B:80:0x024b, B:82:0x0277, B:83:0x02a1, B:85:0x02d7, B:87:0x02dd, B:90:0x02e9, B:92:0x031f, B:93:0x033a, B:95:0x0340, B:97:0x034e, B:101:0x0361, B:98:0x0356, B:104:0x0368, B:107:0x036f, B:108:0x0387, B:175:0x053d, B:177:0x054b, B:179:0x0556, B:190:0x0588, B:180:0x055e, B:182:0x0569, B:184:0x056f, B:187:0x057b, B:189:0x0583, B:191:0x058b, B:192:0x0597, B:195:0x059f, B:197:0x05b1, B:198:0x05bd, B:200:0x05c5, B:204:0x05ea, B:206:0x060f, B:208:0x0620, B:210:0x0626, B:212:0x0632, B:213:0x0663, B:215:0x0669, B:217:0x0677, B:218:0x067b, B:219:0x067e, B:220:0x0681, B:221:0x068f, B:223:0x0695, B:225:0x06a5, B:226:0x06ac, B:228:0x06b8, B:229:0x06bf, B:230:0x06c2, B:232:0x0700, B:233:0x0713, B:235:0x0719, B:238:0x0733, B:240:0x074e, B:242:0x0767, B:244:0x076c, B:246:0x0770, B:248:0x0774, B:250:0x077e, B:251:0x0788, B:253:0x078c, B:255:0x0792, B:256:0x07a0, B:257:0x07a9, B:326:0x0a00, B:259:0x07b6, B:261:0x07cd, B:267:0x07e9, B:269:0x080d, B:270:0x0815, B:272:0x081b, B:274:0x082d, B:281:0x0856, B:282:0x0879, B:284:0x0885, B:286:0x089a, B:288:0x08db, B:292:0x08f3, B:294:0x08fa, B:296:0x0909, B:298:0x090d, B:300:0x0911, B:302:0x0915, B:303:0x0921, B:304:0x0926, B:306:0x092c, B:308:0x0948, B:309:0x094d, B:325:0x09fd, B:310:0x0968, B:312:0x0970, B:316:0x0997, B:318:0x09c3, B:320:0x09d3, B:321:0x09e3, B:323:0x09ed, B:313:0x097d, B:279:0x0841, B:265:0x07d4, B:327:0x0a0b, B:329:0x0a18, B:330:0x0a1e, B:331:0x0a26, B:333:0x0a2c, B:336:0x0a46, B:338:0x0a57, B:358:0x0acb, B:360:0x0ad1, B:362:0x0ae9, B:365:0x0af0, B:370:0x0b1f, B:372:0x0b61, B:375:0x0b96, B:376:0x0b9a, B:377:0x0ba5, B:379:0x0be8, B:380:0x0bf5, B:382:0x0c04, B:386:0x0c1e, B:388:0x0c37, B:374:0x0b73, B:366:0x0af8, B:368:0x0b04, B:369:0x0b08, B:389:0x0c4f, B:390:0x0c67, B:393:0x0c6f, B:394:0x0c74, B:395:0x0c84, B:397:0x0c9e, B:398:0x0cb9, B:399:0x0cc2, B:404:0x0ce1, B:403:0x0cce, B:339:0x0a6f, B:341:0x0a75, B:343:0x0a7f, B:345:0x0a86, B:351:0x0a96, B:353:0x0a9d, B:355:0x0abc, B:357:0x0ac3, B:356:0x0ac0, B:352:0x0a9a, B:344:0x0a83, B:201:0x05ca, B:203:0x05d0, B:407:0x0cf3), top: B:417:0x000e, inners: #0, #1, #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0457  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0464 A[Catch: all -> 0x0d05, TryCatch #2 {all -> 0x0d05, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:172:0x0528, B:24:0x00f5, B:26:0x0103, B:29:0x0123, B:31:0x0129, B:33:0x013b, B:35:0x0149, B:37:0x0159, B:38:0x0166, B:39:0x016b, B:42:0x0184, B:110:0x03a0, B:111:0x03ac, B:114:0x03b6, B:120:0x03d9, B:117:0x03c8, B:142:0x0458, B:144:0x0464, B:147:0x0477, B:149:0x0488, B:151:0x0494, B:171:0x0512, B:156:0x04b4, B:158:0x04c2, B:161:0x04d7, B:163:0x04e9, B:165:0x04f5, B:124:0x03e1, B:126:0x03ed, B:128:0x03f9, B:140:0x043e, B:132:0x0416, B:135:0x0428, B:137:0x042e, B:139:0x0438, B:67:0x01e1, B:70:0x01eb, B:72:0x01f9, B:76:0x023e, B:73:0x0215, B:75:0x0225, B:80:0x024b, B:82:0x0277, B:83:0x02a1, B:85:0x02d7, B:87:0x02dd, B:90:0x02e9, B:92:0x031f, B:93:0x033a, B:95:0x0340, B:97:0x034e, B:101:0x0361, B:98:0x0356, B:104:0x0368, B:107:0x036f, B:108:0x0387, B:175:0x053d, B:177:0x054b, B:179:0x0556, B:190:0x0588, B:180:0x055e, B:182:0x0569, B:184:0x056f, B:187:0x057b, B:189:0x0583, B:191:0x058b, B:192:0x0597, B:195:0x059f, B:197:0x05b1, B:198:0x05bd, B:200:0x05c5, B:204:0x05ea, B:206:0x060f, B:208:0x0620, B:210:0x0626, B:212:0x0632, B:213:0x0663, B:215:0x0669, B:217:0x0677, B:218:0x067b, B:219:0x067e, B:220:0x0681, B:221:0x068f, B:223:0x0695, B:225:0x06a5, B:226:0x06ac, B:228:0x06b8, B:229:0x06bf, B:230:0x06c2, B:232:0x0700, B:233:0x0713, B:235:0x0719, B:238:0x0733, B:240:0x074e, B:242:0x0767, B:244:0x076c, B:246:0x0770, B:248:0x0774, B:250:0x077e, B:251:0x0788, B:253:0x078c, B:255:0x0792, B:256:0x07a0, B:257:0x07a9, B:326:0x0a00, B:259:0x07b6, B:261:0x07cd, B:267:0x07e9, B:269:0x080d, B:270:0x0815, B:272:0x081b, B:274:0x082d, B:281:0x0856, B:282:0x0879, B:284:0x0885, B:286:0x089a, B:288:0x08db, B:292:0x08f3, B:294:0x08fa, B:296:0x0909, B:298:0x090d, B:300:0x0911, B:302:0x0915, B:303:0x0921, B:304:0x0926, B:306:0x092c, B:308:0x0948, B:309:0x094d, B:325:0x09fd, B:310:0x0968, B:312:0x0970, B:316:0x0997, B:318:0x09c3, B:320:0x09d3, B:321:0x09e3, B:323:0x09ed, B:313:0x097d, B:279:0x0841, B:265:0x07d4, B:327:0x0a0b, B:329:0x0a18, B:330:0x0a1e, B:331:0x0a26, B:333:0x0a2c, B:336:0x0a46, B:338:0x0a57, B:358:0x0acb, B:360:0x0ad1, B:362:0x0ae9, B:365:0x0af0, B:370:0x0b1f, B:372:0x0b61, B:375:0x0b96, B:376:0x0b9a, B:377:0x0ba5, B:379:0x0be8, B:380:0x0bf5, B:382:0x0c04, B:386:0x0c1e, B:388:0x0c37, B:374:0x0b73, B:366:0x0af8, B:368:0x0b04, B:369:0x0b08, B:389:0x0c4f, B:390:0x0c67, B:393:0x0c6f, B:394:0x0c74, B:395:0x0c84, B:397:0x0c9e, B:398:0x0cb9, B:399:0x0cc2, B:404:0x0ce1, B:403:0x0cce, B:339:0x0a6f, B:341:0x0a75, B:343:0x0a7f, B:345:0x0a86, B:351:0x0a96, B:353:0x0a9d, B:355:0x0abc, B:357:0x0ac3, B:356:0x0ac0, B:352:0x0a9a, B:344:0x0a83, B:201:0x05ca, B:203:0x05d0, B:407:0x0cf3), top: B:417:0x000e, inners: #0, #1, #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:156:0x04b4 A[Catch: all -> 0x0d05, TryCatch #2 {all -> 0x0d05, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:172:0x0528, B:24:0x00f5, B:26:0x0103, B:29:0x0123, B:31:0x0129, B:33:0x013b, B:35:0x0149, B:37:0x0159, B:38:0x0166, B:39:0x016b, B:42:0x0184, B:110:0x03a0, B:111:0x03ac, B:114:0x03b6, B:120:0x03d9, B:117:0x03c8, B:142:0x0458, B:144:0x0464, B:147:0x0477, B:149:0x0488, B:151:0x0494, B:171:0x0512, B:156:0x04b4, B:158:0x04c2, B:161:0x04d7, B:163:0x04e9, B:165:0x04f5, B:124:0x03e1, B:126:0x03ed, B:128:0x03f9, B:140:0x043e, B:132:0x0416, B:135:0x0428, B:137:0x042e, B:139:0x0438, B:67:0x01e1, B:70:0x01eb, B:72:0x01f9, B:76:0x023e, B:73:0x0215, B:75:0x0225, B:80:0x024b, B:82:0x0277, B:83:0x02a1, B:85:0x02d7, B:87:0x02dd, B:90:0x02e9, B:92:0x031f, B:93:0x033a, B:95:0x0340, B:97:0x034e, B:101:0x0361, B:98:0x0356, B:104:0x0368, B:107:0x036f, B:108:0x0387, B:175:0x053d, B:177:0x054b, B:179:0x0556, B:190:0x0588, B:180:0x055e, B:182:0x0569, B:184:0x056f, B:187:0x057b, B:189:0x0583, B:191:0x058b, B:192:0x0597, B:195:0x059f, B:197:0x05b1, B:198:0x05bd, B:200:0x05c5, B:204:0x05ea, B:206:0x060f, B:208:0x0620, B:210:0x0626, B:212:0x0632, B:213:0x0663, B:215:0x0669, B:217:0x0677, B:218:0x067b, B:219:0x067e, B:220:0x0681, B:221:0x068f, B:223:0x0695, B:225:0x06a5, B:226:0x06ac, B:228:0x06b8, B:229:0x06bf, B:230:0x06c2, B:232:0x0700, B:233:0x0713, B:235:0x0719, B:238:0x0733, B:240:0x074e, B:242:0x0767, B:244:0x076c, B:246:0x0770, B:248:0x0774, B:250:0x077e, B:251:0x0788, B:253:0x078c, B:255:0x0792, B:256:0x07a0, B:257:0x07a9, B:326:0x0a00, B:259:0x07b6, B:261:0x07cd, B:267:0x07e9, B:269:0x080d, B:270:0x0815, B:272:0x081b, B:274:0x082d, B:281:0x0856, B:282:0x0879, B:284:0x0885, B:286:0x089a, B:288:0x08db, B:292:0x08f3, B:294:0x08fa, B:296:0x0909, B:298:0x090d, B:300:0x0911, B:302:0x0915, B:303:0x0921, B:304:0x0926, B:306:0x092c, B:308:0x0948, B:309:0x094d, B:325:0x09fd, B:310:0x0968, B:312:0x0970, B:316:0x0997, B:318:0x09c3, B:320:0x09d3, B:321:0x09e3, B:323:0x09ed, B:313:0x097d, B:279:0x0841, B:265:0x07d4, B:327:0x0a0b, B:329:0x0a18, B:330:0x0a1e, B:331:0x0a26, B:333:0x0a2c, B:336:0x0a46, B:338:0x0a57, B:358:0x0acb, B:360:0x0ad1, B:362:0x0ae9, B:365:0x0af0, B:370:0x0b1f, B:372:0x0b61, B:375:0x0b96, B:376:0x0b9a, B:377:0x0ba5, B:379:0x0be8, B:380:0x0bf5, B:382:0x0c04, B:386:0x0c1e, B:388:0x0c37, B:374:0x0b73, B:366:0x0af8, B:368:0x0b04, B:369:0x0b08, B:389:0x0c4f, B:390:0x0c67, B:393:0x0c6f, B:394:0x0c74, B:395:0x0c84, B:397:0x0c9e, B:398:0x0cb9, B:399:0x0cc2, B:404:0x0ce1, B:403:0x0cce, B:339:0x0a6f, B:341:0x0a75, B:343:0x0a7f, B:345:0x0a86, B:351:0x0a96, B:353:0x0a9d, B:355:0x0abc, B:357:0x0ac3, B:356:0x0ac0, B:352:0x0a9a, B:344:0x0a83, B:201:0x05ca, B:203:0x05d0, B:407:0x0cf3), top: B:417:0x000e, inners: #0, #1, #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:180:0x055e A[Catch: all -> 0x0d05, TryCatch #2 {all -> 0x0d05, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:172:0x0528, B:24:0x00f5, B:26:0x0103, B:29:0x0123, B:31:0x0129, B:33:0x013b, B:35:0x0149, B:37:0x0159, B:38:0x0166, B:39:0x016b, B:42:0x0184, B:110:0x03a0, B:111:0x03ac, B:114:0x03b6, B:120:0x03d9, B:117:0x03c8, B:142:0x0458, B:144:0x0464, B:147:0x0477, B:149:0x0488, B:151:0x0494, B:171:0x0512, B:156:0x04b4, B:158:0x04c2, B:161:0x04d7, B:163:0x04e9, B:165:0x04f5, B:124:0x03e1, B:126:0x03ed, B:128:0x03f9, B:140:0x043e, B:132:0x0416, B:135:0x0428, B:137:0x042e, B:139:0x0438, B:67:0x01e1, B:70:0x01eb, B:72:0x01f9, B:76:0x023e, B:73:0x0215, B:75:0x0225, B:80:0x024b, B:82:0x0277, B:83:0x02a1, B:85:0x02d7, B:87:0x02dd, B:90:0x02e9, B:92:0x031f, B:93:0x033a, B:95:0x0340, B:97:0x034e, B:101:0x0361, B:98:0x0356, B:104:0x0368, B:107:0x036f, B:108:0x0387, B:175:0x053d, B:177:0x054b, B:179:0x0556, B:190:0x0588, B:180:0x055e, B:182:0x0569, B:184:0x056f, B:187:0x057b, B:189:0x0583, B:191:0x058b, B:192:0x0597, B:195:0x059f, B:197:0x05b1, B:198:0x05bd, B:200:0x05c5, B:204:0x05ea, B:206:0x060f, B:208:0x0620, B:210:0x0626, B:212:0x0632, B:213:0x0663, B:215:0x0669, B:217:0x0677, B:218:0x067b, B:219:0x067e, B:220:0x0681, B:221:0x068f, B:223:0x0695, B:225:0x06a5, B:226:0x06ac, B:228:0x06b8, B:229:0x06bf, B:230:0x06c2, B:232:0x0700, B:233:0x0713, B:235:0x0719, B:238:0x0733, B:240:0x074e, B:242:0x0767, B:244:0x076c, B:246:0x0770, B:248:0x0774, B:250:0x077e, B:251:0x0788, B:253:0x078c, B:255:0x0792, B:256:0x07a0, B:257:0x07a9, B:326:0x0a00, B:259:0x07b6, B:261:0x07cd, B:267:0x07e9, B:269:0x080d, B:270:0x0815, B:272:0x081b, B:274:0x082d, B:281:0x0856, B:282:0x0879, B:284:0x0885, B:286:0x089a, B:288:0x08db, B:292:0x08f3, B:294:0x08fa, B:296:0x0909, B:298:0x090d, B:300:0x0911, B:302:0x0915, B:303:0x0921, B:304:0x0926, B:306:0x092c, B:308:0x0948, B:309:0x094d, B:325:0x09fd, B:310:0x0968, B:312:0x0970, B:316:0x0997, B:318:0x09c3, B:320:0x09d3, B:321:0x09e3, B:323:0x09ed, B:313:0x097d, B:279:0x0841, B:265:0x07d4, B:327:0x0a0b, B:329:0x0a18, B:330:0x0a1e, B:331:0x0a26, B:333:0x0a2c, B:336:0x0a46, B:338:0x0a57, B:358:0x0acb, B:360:0x0ad1, B:362:0x0ae9, B:365:0x0af0, B:370:0x0b1f, B:372:0x0b61, B:375:0x0b96, B:376:0x0b9a, B:377:0x0ba5, B:379:0x0be8, B:380:0x0bf5, B:382:0x0c04, B:386:0x0c1e, B:388:0x0c37, B:374:0x0b73, B:366:0x0af8, B:368:0x0b04, B:369:0x0b08, B:389:0x0c4f, B:390:0x0c67, B:393:0x0c6f, B:394:0x0c74, B:395:0x0c84, B:397:0x0c9e, B:398:0x0cb9, B:399:0x0cc2, B:404:0x0ce1, B:403:0x0cce, B:339:0x0a6f, B:341:0x0a75, B:343:0x0a7f, B:345:0x0a86, B:351:0x0a96, B:353:0x0a9d, B:355:0x0abc, B:357:0x0ac3, B:356:0x0ac0, B:352:0x0a9a, B:344:0x0a83, B:201:0x05ca, B:203:0x05d0, B:407:0x0cf3), top: B:417:0x000e, inners: #0, #1, #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:269:0x080d A[Catch: all -> 0x0d05, TryCatch #2 {all -> 0x0d05, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:172:0x0528, B:24:0x00f5, B:26:0x0103, B:29:0x0123, B:31:0x0129, B:33:0x013b, B:35:0x0149, B:37:0x0159, B:38:0x0166, B:39:0x016b, B:42:0x0184, B:110:0x03a0, B:111:0x03ac, B:114:0x03b6, B:120:0x03d9, B:117:0x03c8, B:142:0x0458, B:144:0x0464, B:147:0x0477, B:149:0x0488, B:151:0x0494, B:171:0x0512, B:156:0x04b4, B:158:0x04c2, B:161:0x04d7, B:163:0x04e9, B:165:0x04f5, B:124:0x03e1, B:126:0x03ed, B:128:0x03f9, B:140:0x043e, B:132:0x0416, B:135:0x0428, B:137:0x042e, B:139:0x0438, B:67:0x01e1, B:70:0x01eb, B:72:0x01f9, B:76:0x023e, B:73:0x0215, B:75:0x0225, B:80:0x024b, B:82:0x0277, B:83:0x02a1, B:85:0x02d7, B:87:0x02dd, B:90:0x02e9, B:92:0x031f, B:93:0x033a, B:95:0x0340, B:97:0x034e, B:101:0x0361, B:98:0x0356, B:104:0x0368, B:107:0x036f, B:108:0x0387, B:175:0x053d, B:177:0x054b, B:179:0x0556, B:190:0x0588, B:180:0x055e, B:182:0x0569, B:184:0x056f, B:187:0x057b, B:189:0x0583, B:191:0x058b, B:192:0x0597, B:195:0x059f, B:197:0x05b1, B:198:0x05bd, B:200:0x05c5, B:204:0x05ea, B:206:0x060f, B:208:0x0620, B:210:0x0626, B:212:0x0632, B:213:0x0663, B:215:0x0669, B:217:0x0677, B:218:0x067b, B:219:0x067e, B:220:0x0681, B:221:0x068f, B:223:0x0695, B:225:0x06a5, B:226:0x06ac, B:228:0x06b8, B:229:0x06bf, B:230:0x06c2, B:232:0x0700, B:233:0x0713, B:235:0x0719, B:238:0x0733, B:240:0x074e, B:242:0x0767, B:244:0x076c, B:246:0x0770, B:248:0x0774, B:250:0x077e, B:251:0x0788, B:253:0x078c, B:255:0x0792, B:256:0x07a0, B:257:0x07a9, B:326:0x0a00, B:259:0x07b6, B:261:0x07cd, B:267:0x07e9, B:269:0x080d, B:270:0x0815, B:272:0x081b, B:274:0x082d, B:281:0x0856, B:282:0x0879, B:284:0x0885, B:286:0x089a, B:288:0x08db, B:292:0x08f3, B:294:0x08fa, B:296:0x0909, B:298:0x090d, B:300:0x0911, B:302:0x0915, B:303:0x0921, B:304:0x0926, B:306:0x092c, B:308:0x0948, B:309:0x094d, B:325:0x09fd, B:310:0x0968, B:312:0x0970, B:316:0x0997, B:318:0x09c3, B:320:0x09d3, B:321:0x09e3, B:323:0x09ed, B:313:0x097d, B:279:0x0841, B:265:0x07d4, B:327:0x0a0b, B:329:0x0a18, B:330:0x0a1e, B:331:0x0a26, B:333:0x0a2c, B:336:0x0a46, B:338:0x0a57, B:358:0x0acb, B:360:0x0ad1, B:362:0x0ae9, B:365:0x0af0, B:370:0x0b1f, B:372:0x0b61, B:375:0x0b96, B:376:0x0b9a, B:377:0x0ba5, B:379:0x0be8, B:380:0x0bf5, B:382:0x0c04, B:386:0x0c1e, B:388:0x0c37, B:374:0x0b73, B:366:0x0af8, B:368:0x0b04, B:369:0x0b08, B:389:0x0c4f, B:390:0x0c67, B:393:0x0c6f, B:394:0x0c74, B:395:0x0c84, B:397:0x0c9e, B:398:0x0cb9, B:399:0x0cc2, B:404:0x0ce1, B:403:0x0cce, B:339:0x0a6f, B:341:0x0a75, B:343:0x0a7f, B:345:0x0a86, B:351:0x0a96, B:353:0x0a9d, B:355:0x0abc, B:357:0x0ac3, B:356:0x0ac0, B:352:0x0a9a, B:344:0x0a83, B:201:0x05ca, B:203:0x05d0, B:407:0x0cf3), top: B:417:0x000e, inners: #0, #1, #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:279:0x0841 A[Catch: all -> 0x0d05, EDGE_INSN: B:462:0x0841->B:279:0x0841 BREAK  A[LOOP:11: B:270:0x0815->B:278:0x083e], TryCatch #2 {all -> 0x0d05, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:172:0x0528, B:24:0x00f5, B:26:0x0103, B:29:0x0123, B:31:0x0129, B:33:0x013b, B:35:0x0149, B:37:0x0159, B:38:0x0166, B:39:0x016b, B:42:0x0184, B:110:0x03a0, B:111:0x03ac, B:114:0x03b6, B:120:0x03d9, B:117:0x03c8, B:142:0x0458, B:144:0x0464, B:147:0x0477, B:149:0x0488, B:151:0x0494, B:171:0x0512, B:156:0x04b4, B:158:0x04c2, B:161:0x04d7, B:163:0x04e9, B:165:0x04f5, B:124:0x03e1, B:126:0x03ed, B:128:0x03f9, B:140:0x043e, B:132:0x0416, B:135:0x0428, B:137:0x042e, B:139:0x0438, B:67:0x01e1, B:70:0x01eb, B:72:0x01f9, B:76:0x023e, B:73:0x0215, B:75:0x0225, B:80:0x024b, B:82:0x0277, B:83:0x02a1, B:85:0x02d7, B:87:0x02dd, B:90:0x02e9, B:92:0x031f, B:93:0x033a, B:95:0x0340, B:97:0x034e, B:101:0x0361, B:98:0x0356, B:104:0x0368, B:107:0x036f, B:108:0x0387, B:175:0x053d, B:177:0x054b, B:179:0x0556, B:190:0x0588, B:180:0x055e, B:182:0x0569, B:184:0x056f, B:187:0x057b, B:189:0x0583, B:191:0x058b, B:192:0x0597, B:195:0x059f, B:197:0x05b1, B:198:0x05bd, B:200:0x05c5, B:204:0x05ea, B:206:0x060f, B:208:0x0620, B:210:0x0626, B:212:0x0632, B:213:0x0663, B:215:0x0669, B:217:0x0677, B:218:0x067b, B:219:0x067e, B:220:0x0681, B:221:0x068f, B:223:0x0695, B:225:0x06a5, B:226:0x06ac, B:228:0x06b8, B:229:0x06bf, B:230:0x06c2, B:232:0x0700, B:233:0x0713, B:235:0x0719, B:238:0x0733, B:240:0x074e, B:242:0x0767, B:244:0x076c, B:246:0x0770, B:248:0x0774, B:250:0x077e, B:251:0x0788, B:253:0x078c, B:255:0x0792, B:256:0x07a0, B:257:0x07a9, B:326:0x0a00, B:259:0x07b6, B:261:0x07cd, B:267:0x07e9, B:269:0x080d, B:270:0x0815, B:272:0x081b, B:274:0x082d, B:281:0x0856, B:282:0x0879, B:284:0x0885, B:286:0x089a, B:288:0x08db, B:292:0x08f3, B:294:0x08fa, B:296:0x0909, B:298:0x090d, B:300:0x0911, B:302:0x0915, B:303:0x0921, B:304:0x0926, B:306:0x092c, B:308:0x0948, B:309:0x094d, B:325:0x09fd, B:310:0x0968, B:312:0x0970, B:316:0x0997, B:318:0x09c3, B:320:0x09d3, B:321:0x09e3, B:323:0x09ed, B:313:0x097d, B:279:0x0841, B:265:0x07d4, B:327:0x0a0b, B:329:0x0a18, B:330:0x0a1e, B:331:0x0a26, B:333:0x0a2c, B:336:0x0a46, B:338:0x0a57, B:358:0x0acb, B:360:0x0ad1, B:362:0x0ae9, B:365:0x0af0, B:370:0x0b1f, B:372:0x0b61, B:375:0x0b96, B:376:0x0b9a, B:377:0x0ba5, B:379:0x0be8, B:380:0x0bf5, B:382:0x0c04, B:386:0x0c1e, B:388:0x0c37, B:374:0x0b73, B:366:0x0af8, B:368:0x0b04, B:369:0x0b08, B:389:0x0c4f, B:390:0x0c67, B:393:0x0c6f, B:394:0x0c74, B:395:0x0c84, B:397:0x0c9e, B:398:0x0cb9, B:399:0x0cc2, B:404:0x0ce1, B:403:0x0cce, B:339:0x0a6f, B:341:0x0a75, B:343:0x0a7f, B:345:0x0a86, B:351:0x0a96, B:353:0x0a9d, B:355:0x0abc, B:357:0x0ac3, B:356:0x0ac0, B:352:0x0a9a, B:344:0x0a83, B:201:0x05ca, B:203:0x05d0, B:407:0x0cf3), top: B:417:0x000e, inners: #0, #1, #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:281:0x0856 A[Catch: all -> 0x0d05, TryCatch #2 {all -> 0x0d05, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:172:0x0528, B:24:0x00f5, B:26:0x0103, B:29:0x0123, B:31:0x0129, B:33:0x013b, B:35:0x0149, B:37:0x0159, B:38:0x0166, B:39:0x016b, B:42:0x0184, B:110:0x03a0, B:111:0x03ac, B:114:0x03b6, B:120:0x03d9, B:117:0x03c8, B:142:0x0458, B:144:0x0464, B:147:0x0477, B:149:0x0488, B:151:0x0494, B:171:0x0512, B:156:0x04b4, B:158:0x04c2, B:161:0x04d7, B:163:0x04e9, B:165:0x04f5, B:124:0x03e1, B:126:0x03ed, B:128:0x03f9, B:140:0x043e, B:132:0x0416, B:135:0x0428, B:137:0x042e, B:139:0x0438, B:67:0x01e1, B:70:0x01eb, B:72:0x01f9, B:76:0x023e, B:73:0x0215, B:75:0x0225, B:80:0x024b, B:82:0x0277, B:83:0x02a1, B:85:0x02d7, B:87:0x02dd, B:90:0x02e9, B:92:0x031f, B:93:0x033a, B:95:0x0340, B:97:0x034e, B:101:0x0361, B:98:0x0356, B:104:0x0368, B:107:0x036f, B:108:0x0387, B:175:0x053d, B:177:0x054b, B:179:0x0556, B:190:0x0588, B:180:0x055e, B:182:0x0569, B:184:0x056f, B:187:0x057b, B:189:0x0583, B:191:0x058b, B:192:0x0597, B:195:0x059f, B:197:0x05b1, B:198:0x05bd, B:200:0x05c5, B:204:0x05ea, B:206:0x060f, B:208:0x0620, B:210:0x0626, B:212:0x0632, B:213:0x0663, B:215:0x0669, B:217:0x0677, B:218:0x067b, B:219:0x067e, B:220:0x0681, B:221:0x068f, B:223:0x0695, B:225:0x06a5, B:226:0x06ac, B:228:0x06b8, B:229:0x06bf, B:230:0x06c2, B:232:0x0700, B:233:0x0713, B:235:0x0719, B:238:0x0733, B:240:0x074e, B:242:0x0767, B:244:0x076c, B:246:0x0770, B:248:0x0774, B:250:0x077e, B:251:0x0788, B:253:0x078c, B:255:0x0792, B:256:0x07a0, B:257:0x07a9, B:326:0x0a00, B:259:0x07b6, B:261:0x07cd, B:267:0x07e9, B:269:0x080d, B:270:0x0815, B:272:0x081b, B:274:0x082d, B:281:0x0856, B:282:0x0879, B:284:0x0885, B:286:0x089a, B:288:0x08db, B:292:0x08f3, B:294:0x08fa, B:296:0x0909, B:298:0x090d, B:300:0x0911, B:302:0x0915, B:303:0x0921, B:304:0x0926, B:306:0x092c, B:308:0x0948, B:309:0x094d, B:325:0x09fd, B:310:0x0968, B:312:0x0970, B:316:0x0997, B:318:0x09c3, B:320:0x09d3, B:321:0x09e3, B:323:0x09ed, B:313:0x097d, B:279:0x0841, B:265:0x07d4, B:327:0x0a0b, B:329:0x0a18, B:330:0x0a1e, B:331:0x0a26, B:333:0x0a2c, B:336:0x0a46, B:338:0x0a57, B:358:0x0acb, B:360:0x0ad1, B:362:0x0ae9, B:365:0x0af0, B:370:0x0b1f, B:372:0x0b61, B:375:0x0b96, B:376:0x0b9a, B:377:0x0ba5, B:379:0x0be8, B:380:0x0bf5, B:382:0x0c04, B:386:0x0c1e, B:388:0x0c37, B:374:0x0b73, B:366:0x0af8, B:368:0x0b04, B:369:0x0b08, B:389:0x0c4f, B:390:0x0c67, B:393:0x0c6f, B:394:0x0c74, B:395:0x0c84, B:397:0x0c9e, B:398:0x0cb9, B:399:0x0cc2, B:404:0x0ce1, B:403:0x0cce, B:339:0x0a6f, B:341:0x0a75, B:343:0x0a7f, B:345:0x0a86, B:351:0x0a96, B:353:0x0a9d, B:355:0x0abc, B:357:0x0ac3, B:356:0x0ac0, B:352:0x0a9a, B:344:0x0a83, B:201:0x05ca, B:203:0x05d0, B:407:0x0cf3), top: B:417:0x000e, inners: #0, #1, #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:282:0x0879 A[Catch: all -> 0x0d05, TryCatch #2 {all -> 0x0d05, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:172:0x0528, B:24:0x00f5, B:26:0x0103, B:29:0x0123, B:31:0x0129, B:33:0x013b, B:35:0x0149, B:37:0x0159, B:38:0x0166, B:39:0x016b, B:42:0x0184, B:110:0x03a0, B:111:0x03ac, B:114:0x03b6, B:120:0x03d9, B:117:0x03c8, B:142:0x0458, B:144:0x0464, B:147:0x0477, B:149:0x0488, B:151:0x0494, B:171:0x0512, B:156:0x04b4, B:158:0x04c2, B:161:0x04d7, B:163:0x04e9, B:165:0x04f5, B:124:0x03e1, B:126:0x03ed, B:128:0x03f9, B:140:0x043e, B:132:0x0416, B:135:0x0428, B:137:0x042e, B:139:0x0438, B:67:0x01e1, B:70:0x01eb, B:72:0x01f9, B:76:0x023e, B:73:0x0215, B:75:0x0225, B:80:0x024b, B:82:0x0277, B:83:0x02a1, B:85:0x02d7, B:87:0x02dd, B:90:0x02e9, B:92:0x031f, B:93:0x033a, B:95:0x0340, B:97:0x034e, B:101:0x0361, B:98:0x0356, B:104:0x0368, B:107:0x036f, B:108:0x0387, B:175:0x053d, B:177:0x054b, B:179:0x0556, B:190:0x0588, B:180:0x055e, B:182:0x0569, B:184:0x056f, B:187:0x057b, B:189:0x0583, B:191:0x058b, B:192:0x0597, B:195:0x059f, B:197:0x05b1, B:198:0x05bd, B:200:0x05c5, B:204:0x05ea, B:206:0x060f, B:208:0x0620, B:210:0x0626, B:212:0x0632, B:213:0x0663, B:215:0x0669, B:217:0x0677, B:218:0x067b, B:219:0x067e, B:220:0x0681, B:221:0x068f, B:223:0x0695, B:225:0x06a5, B:226:0x06ac, B:228:0x06b8, B:229:0x06bf, B:230:0x06c2, B:232:0x0700, B:233:0x0713, B:235:0x0719, B:238:0x0733, B:240:0x074e, B:242:0x0767, B:244:0x076c, B:246:0x0770, B:248:0x0774, B:250:0x077e, B:251:0x0788, B:253:0x078c, B:255:0x0792, B:256:0x07a0, B:257:0x07a9, B:326:0x0a00, B:259:0x07b6, B:261:0x07cd, B:267:0x07e9, B:269:0x080d, B:270:0x0815, B:272:0x081b, B:274:0x082d, B:281:0x0856, B:282:0x0879, B:284:0x0885, B:286:0x089a, B:288:0x08db, B:292:0x08f3, B:294:0x08fa, B:296:0x0909, B:298:0x090d, B:300:0x0911, B:302:0x0915, B:303:0x0921, B:304:0x0926, B:306:0x092c, B:308:0x0948, B:309:0x094d, B:325:0x09fd, B:310:0x0968, B:312:0x0970, B:316:0x0997, B:318:0x09c3, B:320:0x09d3, B:321:0x09e3, B:323:0x09ed, B:313:0x097d, B:279:0x0841, B:265:0x07d4, B:327:0x0a0b, B:329:0x0a18, B:330:0x0a1e, B:331:0x0a26, B:333:0x0a2c, B:336:0x0a46, B:338:0x0a57, B:358:0x0acb, B:360:0x0ad1, B:362:0x0ae9, B:365:0x0af0, B:370:0x0b1f, B:372:0x0b61, B:375:0x0b96, B:376:0x0b9a, B:377:0x0ba5, B:379:0x0be8, B:380:0x0bf5, B:382:0x0c04, B:386:0x0c1e, B:388:0x0c37, B:374:0x0b73, B:366:0x0af8, B:368:0x0b04, B:369:0x0b08, B:389:0x0c4f, B:390:0x0c67, B:393:0x0c6f, B:394:0x0c74, B:395:0x0c84, B:397:0x0c9e, B:398:0x0cb9, B:399:0x0cc2, B:404:0x0ce1, B:403:0x0cce, B:339:0x0a6f, B:341:0x0a75, B:343:0x0a7f, B:345:0x0a86, B:351:0x0a96, B:353:0x0a9d, B:355:0x0abc, B:357:0x0ac3, B:356:0x0ac0, B:352:0x0a9a, B:344:0x0a83, B:201:0x05ca, B:203:0x05d0, B:407:0x0cf3), top: B:417:0x000e, inners: #0, #1, #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:287:0x08d9 A[PHI: r8
      0x08d9: PHI (r8v14 com.google.android.gms.measurement.internal.zzas) = (r8v13 com.google.android.gms.measurement.internal.zzas), (r8v28 com.google.android.gms.measurement.internal.zzas) binds: [B:283:0x0883, B:285:0x0898] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:374:0x0b73 A[Catch: all -> 0x0d05, TryCatch #2 {all -> 0x0d05, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:172:0x0528, B:24:0x00f5, B:26:0x0103, B:29:0x0123, B:31:0x0129, B:33:0x013b, B:35:0x0149, B:37:0x0159, B:38:0x0166, B:39:0x016b, B:42:0x0184, B:110:0x03a0, B:111:0x03ac, B:114:0x03b6, B:120:0x03d9, B:117:0x03c8, B:142:0x0458, B:144:0x0464, B:147:0x0477, B:149:0x0488, B:151:0x0494, B:171:0x0512, B:156:0x04b4, B:158:0x04c2, B:161:0x04d7, B:163:0x04e9, B:165:0x04f5, B:124:0x03e1, B:126:0x03ed, B:128:0x03f9, B:140:0x043e, B:132:0x0416, B:135:0x0428, B:137:0x042e, B:139:0x0438, B:67:0x01e1, B:70:0x01eb, B:72:0x01f9, B:76:0x023e, B:73:0x0215, B:75:0x0225, B:80:0x024b, B:82:0x0277, B:83:0x02a1, B:85:0x02d7, B:87:0x02dd, B:90:0x02e9, B:92:0x031f, B:93:0x033a, B:95:0x0340, B:97:0x034e, B:101:0x0361, B:98:0x0356, B:104:0x0368, B:107:0x036f, B:108:0x0387, B:175:0x053d, B:177:0x054b, B:179:0x0556, B:190:0x0588, B:180:0x055e, B:182:0x0569, B:184:0x056f, B:187:0x057b, B:189:0x0583, B:191:0x058b, B:192:0x0597, B:195:0x059f, B:197:0x05b1, B:198:0x05bd, B:200:0x05c5, B:204:0x05ea, B:206:0x060f, B:208:0x0620, B:210:0x0626, B:212:0x0632, B:213:0x0663, B:215:0x0669, B:217:0x0677, B:218:0x067b, B:219:0x067e, B:220:0x0681, B:221:0x068f, B:223:0x0695, B:225:0x06a5, B:226:0x06ac, B:228:0x06b8, B:229:0x06bf, B:230:0x06c2, B:232:0x0700, B:233:0x0713, B:235:0x0719, B:238:0x0733, B:240:0x074e, B:242:0x0767, B:244:0x076c, B:246:0x0770, B:248:0x0774, B:250:0x077e, B:251:0x0788, B:253:0x078c, B:255:0x0792, B:256:0x07a0, B:257:0x07a9, B:326:0x0a00, B:259:0x07b6, B:261:0x07cd, B:267:0x07e9, B:269:0x080d, B:270:0x0815, B:272:0x081b, B:274:0x082d, B:281:0x0856, B:282:0x0879, B:284:0x0885, B:286:0x089a, B:288:0x08db, B:292:0x08f3, B:294:0x08fa, B:296:0x0909, B:298:0x090d, B:300:0x0911, B:302:0x0915, B:303:0x0921, B:304:0x0926, B:306:0x092c, B:308:0x0948, B:309:0x094d, B:325:0x09fd, B:310:0x0968, B:312:0x0970, B:316:0x0997, B:318:0x09c3, B:320:0x09d3, B:321:0x09e3, B:323:0x09ed, B:313:0x097d, B:279:0x0841, B:265:0x07d4, B:327:0x0a0b, B:329:0x0a18, B:330:0x0a1e, B:331:0x0a26, B:333:0x0a2c, B:336:0x0a46, B:338:0x0a57, B:358:0x0acb, B:360:0x0ad1, B:362:0x0ae9, B:365:0x0af0, B:370:0x0b1f, B:372:0x0b61, B:375:0x0b96, B:376:0x0b9a, B:377:0x0ba5, B:379:0x0be8, B:380:0x0bf5, B:382:0x0c04, B:386:0x0c1e, B:388:0x0c37, B:374:0x0b73, B:366:0x0af8, B:368:0x0b04, B:369:0x0b08, B:389:0x0c4f, B:390:0x0c67, B:393:0x0c6f, B:394:0x0c74, B:395:0x0c84, B:397:0x0c9e, B:398:0x0cb9, B:399:0x0cc2, B:404:0x0ce1, B:403:0x0cce, B:339:0x0a6f, B:341:0x0a75, B:343:0x0a7f, B:345:0x0a86, B:351:0x0a96, B:353:0x0a9d, B:355:0x0abc, B:357:0x0ac3, B:356:0x0ac0, B:352:0x0a9a, B:344:0x0a83, B:201:0x05ca, B:203:0x05d0, B:407:0x0cf3), top: B:417:0x000e, inners: #0, #1, #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01cc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zzah(java.lang.String r43, long r44) {
        /*
            Method dump skipped, instruction units count: 3344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkz.zzah(java.lang.String, long):boolean");
    }

    private final boolean zzai() {
        zzaz().zzg();
        zzB();
        zzam zzamVar = this.zze;
        zzal(zzamVar);
        if (zzamVar.zzF()) {
            return true;
        }
        zzam zzamVar2 = this.zze;
        zzal(zzamVar2);
        return !TextUtils.isEmpty(zzamVar2.zzr());
    }

    private final boolean zzaj(com.google.android.gms.internal.measurement.zzfr zzfrVar, com.google.android.gms.internal.measurement.zzfr zzfrVar2) {
        Preconditions.checkArgument("_e".equals(zzfrVar.zzo()));
        zzal(this.zzi);
        com.google.android.gms.internal.measurement.zzfw zzfwVarZzB = zzlb.zzB((com.google.android.gms.internal.measurement.zzfs) zzfrVar.zzaE(), "_sc");
        String strZzh = zzfwVarZzB == null ? null : zzfwVarZzB.zzh();
        zzal(this.zzi);
        com.google.android.gms.internal.measurement.zzfw zzfwVarZzB2 = zzlb.zzB((com.google.android.gms.internal.measurement.zzfs) zzfrVar2.zzaE(), "_pc");
        String strZzh2 = zzfwVarZzB2 != null ? zzfwVarZzB2.zzh() : null;
        if (strZzh2 == null || !strZzh2.equals(strZzh)) {
            return false;
        }
        Preconditions.checkArgument("_e".equals(zzfrVar.zzo()));
        zzal(this.zzi);
        com.google.android.gms.internal.measurement.zzfw zzfwVarZzB3 = zzlb.zzB((com.google.android.gms.internal.measurement.zzfs) zzfrVar.zzaE(), "_et");
        if (zzfwVarZzB3 == null || !zzfwVarZzB3.zzw() || zzfwVarZzB3.zzd() <= 0) {
            return true;
        }
        long jZzd = zzfwVarZzB3.zzd();
        zzal(this.zzi);
        com.google.android.gms.internal.measurement.zzfw zzfwVarZzB4 = zzlb.zzB((com.google.android.gms.internal.measurement.zzfs) zzfrVar2.zzaE(), "_et");
        if (zzfwVarZzB4 != null && zzfwVarZzB4.zzd() > 0) {
            jZzd += zzfwVarZzB4.zzd();
        }
        zzal(this.zzi);
        zzlb.zzz(zzfrVar2, "_et", Long.valueOf(jZzd));
        zzal(this.zzi);
        zzlb.zzz(zzfrVar, "_fr", 1L);
        return true;
    }

    private static final boolean zzak(zzq zzqVar) {
        return (TextUtils.isEmpty(zzqVar.zzb) && TextUtils.isEmpty(zzqVar.zzq)) ? false : true;
    }

    private static final zzkn zzal(zzkn zzknVar) {
        if (zzknVar == null) {
            throw new IllegalStateException("Upload Component not created");
        }
        if (zzknVar.zzY()) {
            return zzknVar;
        }
        throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(String.valueOf(zzknVar.getClass()))));
    }

    public static zzkz zzt(Context context) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (zzb == null) {
            synchronized (zzkz.class) {
                if (zzb == null) {
                    zzb = new zzkz((zzla) Preconditions.checkNotNull(new zzla(context)), null);
                }
            }
        }
        return zzb;
    }

    static /* bridge */ /* synthetic */ void zzy(zzkz zzkzVar, zzla zzlaVar) {
        zzkzVar.zzaz().zzg();
        zzkzVar.zzm = new zzfg(zzkzVar);
        zzam zzamVar = new zzam(zzkzVar);
        zzamVar.zzX();
        zzkzVar.zze = zzamVar;
        zzkzVar.zzg().zzq((zzaf) Preconditions.checkNotNull(zzkzVar.zzc));
        zzju zzjuVar = new zzju(zzkzVar);
        zzjuVar.zzX();
        zzkzVar.zzk = zzjuVar;
        zzaa zzaaVar = new zzaa(zzkzVar);
        zzaaVar.zzX();
        zzkzVar.zzh = zzaaVar;
        zzii zziiVar = new zzii(zzkzVar);
        zziiVar.zzX();
        zzkzVar.zzj = zziiVar;
        zzkl zzklVar = new zzkl(zzkzVar);
        zzklVar.zzX();
        zzkzVar.zzg = zzklVar;
        zzkzVar.zzf = new zzew(zzkzVar);
        if (zzkzVar.zzr != zzkzVar.zzs) {
            zzkzVar.zzay().zzd().zzc("Not all upload components initialized", Integer.valueOf(zzkzVar.zzr), Integer.valueOf(zzkzVar.zzs));
        }
        zzkzVar.zzo = true;
    }

    final void zzA() {
        zzaz().zzg();
        zzB();
        if (this.zzp) {
            return;
        }
        this.zzp = true;
        if (zzZ()) {
            FileChannel fileChannel = this.zzx;
            zzaz().zzg();
            int i = 0;
            if (fileChannel == null || !fileChannel.isOpen()) {
                zzay().zzd().zza("Bad channel to read from");
            } else {
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
                try {
                    fileChannel.position(0L);
                    int i2 = fileChannel.read(byteBufferAllocate);
                    if (i2 == 4) {
                        byteBufferAllocate.flip();
                        i = byteBufferAllocate.getInt();
                    } else if (i2 != -1) {
                        zzay().zzk().zzb("Unexpected data length. Bytes read", Integer.valueOf(i2));
                    }
                } catch (IOException e) {
                    zzay().zzd().zzb("Failed to read from channel", e);
                }
            }
            int iZzi = this.zzn.zzh().zzi();
            zzaz().zzg();
            if (i > iZzi) {
                zzay().zzd().zzc("Panic: can't downgrade version. Previous, current version", Integer.valueOf(i), Integer.valueOf(iZzi));
                return;
            }
            if (i < iZzi) {
                FileChannel fileChannel2 = this.zzx;
                zzaz().zzg();
                if (fileChannel2 == null || !fileChannel2.isOpen()) {
                    zzay().zzd().zza("Bad channel to read from");
                } else {
                    ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(4);
                    byteBufferAllocate2.putInt(iZzi);
                    byteBufferAllocate2.flip();
                    try {
                        fileChannel2.truncate(0L);
                        fileChannel2.write(byteBufferAllocate2);
                        fileChannel2.force(true);
                        if (fileChannel2.size() != 4) {
                            zzay().zzd().zzb("Error writing to channel. Bytes written", Long.valueOf(fileChannel2.size()));
                        }
                        zzay().zzj().zzc("Storage version upgraded. Previous, current version", Integer.valueOf(i), Integer.valueOf(iZzi));
                        return;
                    } catch (IOException e2) {
                        zzay().zzd().zzb("Failed to write to channel", e2);
                    }
                }
                zzay().zzd().zzc("Storage version upgrade failed. Previous, current version", Integer.valueOf(i), Integer.valueOf(iZzi));
            }
        }
    }

    final void zzB() {
        if (!this.zzo) {
            throw new IllegalStateException("UploadController is not initialized");
        }
    }

    final void zzC(String str, com.google.android.gms.internal.measurement.zzgb zzgbVar) {
        int iZza;
        int iIndexOf;
        zzow.zzc();
        if (zzg().zzs(str, zzeb.zzam)) {
            zzfp zzfpVar = this.zzc;
            zzal(zzfpVar);
            Set setZzk = zzfpVar.zzk(str);
            if (setZzk != null) {
                zzgbVar.zzi(setZzk);
            }
        }
        if (zzg().zzs(str, zzeb.zzao)) {
            zzfp zzfpVar2 = this.zzc;
            zzal(zzfpVar2);
            if (zzfpVar2.zzv(str)) {
                zzgbVar.zzp();
            }
            zzfp zzfpVar3 = this.zzc;
            zzal(zzfpVar3);
            if (zzfpVar3.zzy(str)) {
                if (zzg().zzs(str, zzeb.zzay)) {
                    String strZzar = zzgbVar.zzar();
                    if (!TextUtils.isEmpty(strZzar) && (iIndexOf = strZzar.indexOf(".")) != -1) {
                        zzgbVar.zzY(strZzar.substring(0, iIndexOf));
                    }
                } else {
                    zzgbVar.zzu();
                }
            }
        }
        if (zzg().zzs(str, zzeb.zzap)) {
            zzfp zzfpVar4 = this.zzc;
            zzal(zzfpVar4);
            if (zzfpVar4.zzz(str) && (iZza = zzlb.zza(zzgbVar, APEZProvider.FILEID)) != -1) {
                zzgbVar.zzB(iZza);
            }
        }
        if (zzg().zzs(str, zzeb.zzaq)) {
            zzfp zzfpVar5 = this.zzc;
            zzal(zzfpVar5);
            if (zzfpVar5.zzx(str)) {
                zzgbVar.zzq();
            }
        }
        if (zzg().zzs(str, zzeb.zzat)) {
            zzfp zzfpVar6 = this.zzc;
            zzal(zzfpVar6);
            if (zzfpVar6.zzu(str)) {
                zzgbVar.zzn();
                if (zzg().zzs(str, zzeb.zzau)) {
                    zzky zzkyVar = (zzky) this.zzC.get(str);
                    if (zzkyVar == null || zzkyVar.zzb + zzg().zzi(str, zzeb.zzR) < zzav().elapsedRealtime()) {
                        zzkyVar = new zzky(this);
                        this.zzC.put(str, zzkyVar);
                    }
                    zzgbVar.zzR(zzkyVar.zza);
                }
            }
        }
        if (zzg().zzs(str, zzeb.zzav)) {
            zzfp zzfpVar7 = this.zzc;
            zzal(zzfpVar7);
            if (zzfpVar7.zzw(str)) {
                zzgbVar.zzy();
            }
        }
    }

    final void zzD(zzh zzhVar) {
        ArrayMap arrayMap;
        ArrayMap arrayMap2;
        zzaz().zzg();
        if (TextUtils.isEmpty(zzhVar.zzy()) && TextUtils.isEmpty(zzhVar.zzr())) {
            zzI((String) Preconditions.checkNotNull(zzhVar.zzt()), 204, null, null, null);
            return;
        }
        zzko zzkoVar = this.zzl;
        Uri.Builder builder = new Uri.Builder();
        String strZzy = zzhVar.zzy();
        if (TextUtils.isEmpty(strZzy)) {
            strZzy = zzhVar.zzr();
        }
        ArrayMap arrayMap3 = null;
        Uri.Builder builderAppendQueryParameter = builder.scheme((String) zzeb.zzd.zza(null)).encodedAuthority((String) zzeb.zze.zza(null)).path("config/app/".concat(String.valueOf(strZzy))).appendQueryParameter("platform", "android");
        zzkoVar.zzs.zzf().zzh();
        builderAppendQueryParameter.appendQueryParameter("gmp_version", String.valueOf(73000L)).appendQueryParameter("runtime_version", AppEventsConstants.EVENT_PARAM_VALUE_NO);
        zzow.zzc();
        if (!zzkoVar.zzs.zzf().zzs(zzhVar.zzt(), zzeb.zzak)) {
            builder.appendQueryParameter("app_instance_id", zzhVar.zzu());
        }
        String string = builder.build().toString();
        try {
            String str = (String) Preconditions.checkNotNull(zzhVar.zzt());
            URL url = new URL(string);
            zzay().zzj().zzb("Fetching remote configuration", str);
            zzfp zzfpVar = this.zzc;
            zzal(zzfpVar);
            com.google.android.gms.internal.measurement.zzfe zzfeVarZze = zzfpVar.zze(str);
            zzfp zzfpVar2 = this.zzc;
            zzal(zzfpVar2);
            String strZzh = zzfpVar2.zzh(str);
            if (zzfeVarZze == null) {
                arrayMap = arrayMap3;
            } else {
                if (TextUtils.isEmpty(strZzh)) {
                    arrayMap2 = null;
                } else {
                    arrayMap2 = new ArrayMap();
                    arrayMap2.put(HttpHeaders.IF_MODIFIED_SINCE, strZzh);
                }
                zzow.zzc();
                if (zzg().zzs(null, zzeb.zzaw)) {
                    zzfp zzfpVar3 = this.zzc;
                    zzal(zzfpVar3);
                    String strZzf = zzfpVar3.zzf(str);
                    if (!TextUtils.isEmpty(strZzf)) {
                        if (arrayMap2 == null) {
                            arrayMap2 = new ArrayMap();
                        }
                        arrayMap3 = arrayMap2;
                        arrayMap3.put(HttpHeaders.IF_NONE_MATCH, strZzf);
                        arrayMap = arrayMap3;
                    }
                }
                arrayMap = arrayMap2;
            }
            this.zzt = true;
            zzeu zzeuVar = this.zzd;
            zzal(zzeuVar);
            zzkr zzkrVar = new zzkr(this);
            zzeuVar.zzg();
            zzeuVar.zzW();
            Preconditions.checkNotNull(url);
            Preconditions.checkNotNull(zzkrVar);
            zzeuVar.zzs.zzaz().zzo(new zzet(zzeuVar, str, url, null, arrayMap, zzkrVar));
        } catch (MalformedURLException unused) {
            zzay().zzd().zzc("Failed to parse config URL. Not fetching. appId", zzeo.zzn(zzhVar.zzt()), string);
        }
    }

    final void zzE(zzaw zzawVar, zzq zzqVar) {
        zzaw zzawVar2;
        List<zzac> listZzt;
        List<zzac> listZzt2;
        List<zzac> listZzt3;
        String str;
        Preconditions.checkNotNull(zzqVar);
        Preconditions.checkNotEmpty(zzqVar.zza);
        zzaz().zzg();
        zzB();
        String str2 = zzqVar.zza;
        long j = zzawVar.zzd;
        zzep zzepVarZzb = zzep.zzb(zzawVar);
        zzaz().zzg();
        zzik zzikVar = null;
        if (this.zzD != null && (str = this.zzE) != null && str.equals(str2)) {
            zzikVar = this.zzD;
        }
        zzlh.zzK(zzikVar, zzepVarZzb.zzd, false);
        zzaw zzawVarZza = zzepVarZzb.zza();
        zzal(this.zzi);
        if (zzlb.zzA(zzawVarZza, zzqVar)) {
            if (!zzqVar.zzh) {
                zzd(zzqVar);
                return;
            }
            List list = zzqVar.zzt;
            if (list == null) {
                zzawVar2 = zzawVarZza;
            } else if (!list.contains(zzawVarZza.zza)) {
                zzay().zzc().zzd("Dropping non-safelisted event. appId, event name, origin", str2, zzawVarZza.zza, zzawVarZza.zzc);
                return;
            } else {
                Bundle bundleZzc = zzawVarZza.zzb.zzc();
                bundleZzc.putLong("ga_safelisted", 1L);
                zzawVar2 = new zzaw(zzawVarZza.zza, new zzau(bundleZzc), zzawVarZza.zzc, zzawVarZza.zzd);
            }
            zzam zzamVar = this.zze;
            zzal(zzamVar);
            zzamVar.zzw();
            try {
                zzam zzamVar2 = this.zze;
                zzal(zzamVar2);
                Preconditions.checkNotEmpty(str2);
                zzamVar2.zzg();
                zzamVar2.zzW();
                if (j < 0) {
                    zzamVar2.zzs.zzay().zzk().zzc("Invalid time querying timed out conditional properties", zzeo.zzn(str2), Long.valueOf(j));
                    listZzt = Collections.emptyList();
                } else {
                    listZzt = zzamVar2.zzt("active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout", new String[]{str2, String.valueOf(j)});
                }
                for (zzac zzacVar : listZzt) {
                    if (zzacVar != null) {
                        zzay().zzj().zzd("User property timed out", zzacVar.zza, this.zzn.zzj().zzf(zzacVar.zzc.zzb), zzacVar.zzc.zza());
                        zzaw zzawVar3 = zzacVar.zzg;
                        if (zzawVar3 != null) {
                            zzY(new zzaw(zzawVar3, j), zzqVar);
                        }
                        zzam zzamVar3 = this.zze;
                        zzal(zzamVar3);
                        zzamVar3.zza(str2, zzacVar.zzc.zzb);
                    }
                }
                zzam zzamVar4 = this.zze;
                zzal(zzamVar4);
                Preconditions.checkNotEmpty(str2);
                zzamVar4.zzg();
                zzamVar4.zzW();
                if (j < 0) {
                    zzamVar4.zzs.zzay().zzk().zzc("Invalid time querying expired conditional properties", zzeo.zzn(str2), Long.valueOf(j));
                    listZzt2 = Collections.emptyList();
                } else {
                    listZzt2 = zzamVar4.zzt("active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live", new String[]{str2, String.valueOf(j)});
                }
                ArrayList arrayList = new ArrayList(listZzt2.size());
                for (zzac zzacVar2 : listZzt2) {
                    if (zzacVar2 != null) {
                        zzay().zzj().zzd("User property expired", zzacVar2.zza, this.zzn.zzj().zzf(zzacVar2.zzc.zzb), zzacVar2.zzc.zza());
                        zzam zzamVar5 = this.zze;
                        zzal(zzamVar5);
                        zzamVar5.zzA(str2, zzacVar2.zzc.zzb);
                        zzaw zzawVar4 = zzacVar2.zzk;
                        if (zzawVar4 != null) {
                            arrayList.add(zzawVar4);
                        }
                        zzam zzamVar6 = this.zze;
                        zzal(zzamVar6);
                        zzamVar6.zza(str2, zzacVar2.zzc.zzb);
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    zzY(new zzaw((zzaw) it.next(), j), zzqVar);
                }
                zzam zzamVar7 = this.zze;
                zzal(zzamVar7);
                String str3 = zzawVar2.zza;
                Preconditions.checkNotEmpty(str2);
                Preconditions.checkNotEmpty(str3);
                zzamVar7.zzg();
                zzamVar7.zzW();
                if (j < 0) {
                    zzamVar7.zzs.zzay().zzk().zzd("Invalid time querying triggered conditional properties", zzeo.zzn(str2), zzamVar7.zzs.zzj().zzd(str3), Long.valueOf(j));
                    listZzt3 = Collections.emptyList();
                } else {
                    listZzt3 = zzamVar7.zzt("active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout", new String[]{str2, str3, String.valueOf(j)});
                }
                ArrayList arrayList2 = new ArrayList(listZzt3.size());
                for (zzac zzacVar3 : listZzt3) {
                    if (zzacVar3 != null) {
                        zzlc zzlcVar = zzacVar3.zzc;
                        zzle zzleVar = new zzle((String) Preconditions.checkNotNull(zzacVar3.zza), zzacVar3.zzb, zzlcVar.zzb, j, Preconditions.checkNotNull(zzlcVar.zza()));
                        zzam zzamVar8 = this.zze;
                        zzal(zzamVar8);
                        if (zzamVar8.zzL(zzleVar)) {
                            zzay().zzj().zzd("User property triggered", zzacVar3.zza, this.zzn.zzj().zzf(zzleVar.zzc), zzleVar.zze);
                        } else {
                            zzay().zzd().zzd("Too many active user properties, ignoring", zzeo.zzn(zzacVar3.zza), this.zzn.zzj().zzf(zzleVar.zzc), zzleVar.zze);
                        }
                        zzaw zzawVar5 = zzacVar3.zzi;
                        if (zzawVar5 != null) {
                            arrayList2.add(zzawVar5);
                        }
                        zzacVar3.zzc = new zzlc(zzleVar);
                        zzacVar3.zze = true;
                        zzam zzamVar9 = this.zze;
                        zzal(zzamVar9);
                        zzamVar9.zzK(zzacVar3);
                    }
                }
                zzY(zzawVar2, zzqVar);
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    zzY(new zzaw((zzaw) it2.next(), j), zzqVar);
                }
                zzam zzamVar10 = this.zze;
                zzal(zzamVar10);
                zzamVar10.zzC();
            } finally {
                zzam zzamVar11 = this.zze;
                zzal(zzamVar11);
                zzamVar11.zzx();
            }
        }
    }

    final void zzF(zzaw zzawVar, String str) {
        zzam zzamVar = this.zze;
        zzal(zzamVar);
        zzh zzhVarZzj = zzamVar.zzj(str);
        if (zzhVarZzj == null || TextUtils.isEmpty(zzhVarZzj.zzw())) {
            zzay().zzc().zzb("No app data available; dropping event", str);
            return;
        }
        Boolean boolZzad = zzad(zzhVarZzj);
        if (boolZzad == null) {
            if (!"_ui".equals(zzawVar.zza)) {
                zzay().zzk().zzb("Could not find package. appId", zzeo.zzn(str));
            }
        } else if (!boolZzad.booleanValue()) {
            zzay().zzd().zzb("App version does not match; dropping event. appId", zzeo.zzn(str));
            return;
        }
        String strZzy = zzhVarZzj.zzy();
        String strZzw = zzhVarZzj.zzw();
        long jZzb = zzhVarZzj.zzb();
        String strZzv = zzhVarZzj.zzv();
        long jZzm = zzhVarZzj.zzm();
        long jZzj = zzhVarZzj.zzj();
        boolean zZzai = zzhVarZzj.zzai();
        String strZzx = zzhVarZzj.zzx();
        zzhVarZzj.zza();
        zzG(zzawVar, new zzq(str, strZzy, strZzw, jZzb, strZzv, jZzm, jZzj, (String) null, zZzai, false, strZzx, 0L, 0L, 0, zzhVarZzj.zzah(), false, zzhVarZzj.zzr(), zzhVarZzj.zzq(), zzhVarZzj.zzk(), zzhVarZzj.zzC(), (String) null, zzh(str).zzh(), "", (String) null));
    }

    final void zzG(zzaw zzawVar, zzq zzqVar) {
        Preconditions.checkNotEmpty(zzqVar.zza);
        zzep zzepVarZzb = zzep.zzb(zzawVar);
        zzlh zzlhVarZzv = zzv();
        Bundle bundle = zzepVarZzb.zzd;
        zzam zzamVar = this.zze;
        zzal(zzamVar);
        zzlhVarZzv.zzL(bundle, zzamVar.zzi(zzqVar.zza));
        zzv().zzM(zzepVarZzb, zzg().zzd(zzqVar.zza));
        zzaw zzawVarZza = zzepVarZzb.zza();
        if (Constants.ScionAnalytics.EVENT_FIREBASE_CAMPAIGN.equals(zzawVarZza.zza) && "referrer API v2".equals(zzawVarZza.zzb.zzg("_cis"))) {
            String strZzg = zzawVarZza.zzb.zzg("gclid");
            if (!TextUtils.isEmpty(strZzg)) {
                zzW(new zzlc("_lgclid", zzawVarZza.zzd, strZzg, "auto"), zzqVar);
            }
        }
        zzE(zzawVarZza, zzqVar);
    }

    final void zzH() {
        this.zzs++;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0120 A[Catch: all -> 0x0196, TRY_ENTER, TryCatch #1 {all -> 0x0196, blocks: (B:6:0x002c, B:16:0x0049, B:71:0x0188, B:21:0x0063, B:26:0x00b5, B:25:0x00a6, B:29:0x00bd, B:32:0x00c9, B:34:0x00cf, B:36:0x00d7, B:39:0x00e8, B:42:0x00f4, B:44:0x00fa, B:49:0x0107, B:61:0x013c, B:63:0x0151, B:65:0x0170, B:67:0x017b, B:69:0x0181, B:70:0x0185, B:64:0x015f, B:55:0x0120, B:57:0x012b), top: B:80:0x002c, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x012b A[Catch: all -> 0x0196, TRY_LEAVE, TryCatch #1 {all -> 0x0196, blocks: (B:6:0x002c, B:16:0x0049, B:71:0x0188, B:21:0x0063, B:26:0x00b5, B:25:0x00a6, B:29:0x00bd, B:32:0x00c9, B:34:0x00cf, B:36:0x00d7, B:39:0x00e8, B:42:0x00f4, B:44:0x00fa, B:49:0x0107, B:61:0x013c, B:63:0x0151, B:65:0x0170, B:67:0x017b, B:69:0x0181, B:70:0x0185, B:64:0x015f, B:55:0x0120, B:57:0x012b), top: B:80:0x002c, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0151 A[Catch: all -> 0x0196, TryCatch #1 {all -> 0x0196, blocks: (B:6:0x002c, B:16:0x0049, B:71:0x0188, B:21:0x0063, B:26:0x00b5, B:25:0x00a6, B:29:0x00bd, B:32:0x00c9, B:34:0x00cf, B:36:0x00d7, B:39:0x00e8, B:42:0x00f4, B:44:0x00fa, B:49:0x0107, B:61:0x013c, B:63:0x0151, B:65:0x0170, B:67:0x017b, B:69:0x0181, B:70:0x0185, B:64:0x015f, B:55:0x0120, B:57:0x012b), top: B:80:0x002c, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x015f A[Catch: all -> 0x0196, TryCatch #1 {all -> 0x0196, blocks: (B:6:0x002c, B:16:0x0049, B:71:0x0188, B:21:0x0063, B:26:0x00b5, B:25:0x00a6, B:29:0x00bd, B:32:0x00c9, B:34:0x00cf, B:36:0x00d7, B:39:0x00e8, B:42:0x00f4, B:44:0x00fa, B:49:0x0107, B:61:0x013c, B:63:0x0151, B:65:0x0170, B:67:0x017b, B:69:0x0181, B:70:0x0185, B:64:0x015f, B:55:0x0120, B:57:0x012b), top: B:80:0x002c, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x017b A[Catch: all -> 0x0196, TryCatch #1 {all -> 0x0196, blocks: (B:6:0x002c, B:16:0x0049, B:71:0x0188, B:21:0x0063, B:26:0x00b5, B:25:0x00a6, B:29:0x00bd, B:32:0x00c9, B:34:0x00cf, B:36:0x00d7, B:39:0x00e8, B:42:0x00f4, B:44:0x00fa, B:49:0x0107, B:61:0x013c, B:63:0x0151, B:65:0x0170, B:67:0x017b, B:69:0x0181, B:70:0x0185, B:64:0x015f, B:55:0x0120, B:57:0x012b), top: B:80:0x002c, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0185 A[Catch: all -> 0x0196, TryCatch #1 {all -> 0x0196, blocks: (B:6:0x002c, B:16:0x0049, B:71:0x0188, B:21:0x0063, B:26:0x00b5, B:25:0x00a6, B:29:0x00bd, B:32:0x00c9, B:34:0x00cf, B:36:0x00d7, B:39:0x00e8, B:42:0x00f4, B:44:0x00fa, B:49:0x0107, B:61:0x013c, B:63:0x0151, B:65:0x0170, B:67:0x017b, B:69:0x0181, B:70:0x0185, B:64:0x015f, B:55:0x0120, B:57:0x012b), top: B:80:0x002c, outer: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void zzI(java.lang.String r9, int r10, java.lang.Throwable r11, byte[] r12, java.util.Map r13) {
        /*
            Method dump skipped, instruction units count: 423
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkz.zzI(java.lang.String, int, java.lang.Throwable, byte[], java.util.Map):void");
    }

    final void zzJ(boolean z) {
        zzag();
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x014a A[Catch: all -> 0x016a, TryCatch #1 {all -> 0x016a, blocks: (B:4:0x000d, B:5:0x000f, B:46:0x0122, B:51:0x0159, B:50:0x014a, B:12:0x0025, B:34:0x00c3, B:36:0x00d8, B:38:0x00de, B:40:0x00e9, B:39:0x00e2, B:42:0x00ed, B:43:0x00f5, B:45:0x00f7), top: B:58:0x000d, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0025 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void zzK(int r9, java.lang.Throwable r10, byte[] r11, java.lang.String r12) {
        /*
            Method dump skipped, instruction units count: 369
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkz.zzK(int, java.lang.Throwable, byte[], java.lang.String):void");
    }

    final void zzL(zzq zzqVar) {
        String str;
        String str2;
        String str3;
        zzas zzasVarZzn;
        boolean z;
        int i;
        PackageInfo packageInfo;
        String str4;
        String str5;
        int i2;
        int i3;
        String str6;
        ApplicationInfo applicationInfo;
        boolean z2;
        SQLiteDatabase sQLiteDatabaseZzh;
        String[] strArr;
        int iDelete;
        zzaz().zzg();
        zzB();
        Preconditions.checkNotNull(zzqVar);
        Preconditions.checkNotEmpty(zzqVar.zza);
        if (zzak(zzqVar)) {
            zzam zzamVar = this.zze;
            zzal(zzamVar);
            zzh zzhVarZzj = zzamVar.zzj(zzqVar.zza);
            if (zzhVarZzj != null && TextUtils.isEmpty(zzhVarZzj.zzy()) && !TextUtils.isEmpty(zzqVar.zzb)) {
                zzhVarZzj.zzL(0L);
                zzam zzamVar2 = this.zze;
                zzal(zzamVar2);
                zzamVar2.zzD(zzhVarZzj);
                zzfp zzfpVar = this.zzc;
                zzal(zzfpVar);
                zzfpVar.zzm(zzqVar.zza);
            }
            if (!zzqVar.zzh) {
                zzd(zzqVar);
                return;
            }
            long jCurrentTimeMillis = zzqVar.zzm;
            if (jCurrentTimeMillis == 0) {
                jCurrentTimeMillis = zzav().currentTimeMillis();
            }
            this.zzn.zzg().zzd();
            int i4 = zzqVar.zzn;
            if (i4 != 0 && i4 != 1) {
                zzay().zzk().zzc("Incorrect app type, assuming installed app. appId, appType", zzeo.zzn(zzqVar.zza), Integer.valueOf(i4));
                i4 = 0;
            }
            zzam zzamVar3 = this.zze;
            zzal(zzamVar3);
            zzamVar3.zzw();
            try {
                zzam zzamVar4 = this.zze;
                zzal(zzamVar4);
                zzle zzleVarZzp = zzamVar4.zzp(zzqVar.zza, "_npa");
                if (zzleVarZzp != null && !"auto".equals(zzleVarZzp.zzb)) {
                    str = "_sysu";
                    str2 = "_sys";
                } else if (zzqVar.zzr != null) {
                    str = "_sysu";
                    str2 = "_sys";
                    zzlc zzlcVar = new zzlc("_npa", jCurrentTimeMillis, Long.valueOf(true != zzqVar.zzr.booleanValue() ? 0L : 1L), "auto");
                    if (zzleVarZzp == null || !zzleVarZzp.zze.equals(zzlcVar.zzd)) {
                        zzW(zzlcVar, zzqVar);
                    }
                } else {
                    str = "_sysu";
                    str2 = "_sys";
                    if (zzleVarZzp != null) {
                        zzP(new zzlc("_npa", jCurrentTimeMillis, null, "auto"), zzqVar);
                    }
                }
                zzam zzamVar5 = this.zze;
                zzal(zzamVar5);
                zzh zzhVarZzj2 = zzamVar5.zzj((String) Preconditions.checkNotNull(zzqVar.zza));
                if (zzhVarZzj2 == null || !zzv().zzam(zzqVar.zzb, zzhVarZzj2.zzy(), zzqVar.zzq, zzhVarZzj2.zzr())) {
                    str3 = "_pfo";
                } else {
                    zzay().zzk().zzb("New GMP App Id passed in. Removing cached database data. appId", zzeo.zzn(zzhVarZzj2.zzt()));
                    zzam zzamVar6 = this.zze;
                    zzal(zzamVar6);
                    String strZzt = zzhVarZzj2.zzt();
                    zzamVar6.zzW();
                    zzamVar6.zzg();
                    Preconditions.checkNotEmpty(strZzt);
                    try {
                        sQLiteDatabaseZzh = zzamVar6.zzh();
                        strArr = new String[]{strZzt};
                        iDelete = sQLiteDatabaseZzh.delete("events", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("user_attributes", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("conditional_properties", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("apps", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("raw_events", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("raw_events_metadata", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("event_filters", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("property_filters", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("audience_filter_values", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("consent_settings", "app_id=?", strArr);
                        zzoh.zzc();
                        str3 = "_pfo";
                    } catch (SQLiteException e) {
                        e = e;
                        str3 = "_pfo";
                    }
                    try {
                        if (zzamVar6.zzs.zzf().zzs(null, zzeb.zzaB)) {
                            iDelete += sQLiteDatabaseZzh.delete("default_event_params", "app_id=?", strArr);
                        }
                        if (iDelete > 0) {
                            zzamVar6.zzs.zzay().zzj().zzc("Deleted application data. app, records", strZzt, Integer.valueOf(iDelete));
                        }
                    } catch (SQLiteException e2) {
                        e = e2;
                        zzamVar6.zzs.zzay().zzd().zzc("Error deleting application data. appId, error", zzeo.zzn(strZzt), e);
                    }
                    zzhVarZzj2 = null;
                }
                if (zzhVarZzj2 != null) {
                    boolean z3 = (zzhVarZzj2.zzb() == -2147483648L || zzhVarZzj2.zzb() == zzqVar.zzj) ? false : true;
                    String strZzw = zzhVarZzj2.zzw();
                    if (z3 | ((zzhVarZzj2.zzb() != -2147483648L || strZzw == null || strZzw.equals(zzqVar.zzc)) ? false : true)) {
                        Bundle bundle = new Bundle();
                        bundle.putString("_pv", strZzw);
                        zzE(new zzaw("_au", new zzau(bundle), "auto", jCurrentTimeMillis), zzqVar);
                    }
                }
                zzd(zzqVar);
                if (i4 == 0) {
                    zzam zzamVar7 = this.zze;
                    zzal(zzamVar7);
                    zzasVarZzn = zzamVar7.zzn(zzqVar.zza, "_f");
                    z = false;
                } else {
                    zzam zzamVar8 = this.zze;
                    zzal(zzamVar8);
                    zzasVarZzn = zzamVar8.zzn(zzqVar.zza, "_v");
                    z = true;
                }
                if (zzasVarZzn == null) {
                    long j = ((jCurrentTimeMillis / 3600000) + 1) * 3600000;
                    if (z) {
                        zzW(new zzlc("_fvt", jCurrentTimeMillis, Long.valueOf(j), "auto"), zzqVar);
                        zzaz().zzg();
                        zzB();
                        Bundle bundle2 = new Bundle();
                        bundle2.putLong("_c", 1L);
                        bundle2.putLong("_r", 1L);
                        bundle2.putLong("_et", 1L);
                        if (zzqVar.zzp) {
                            bundle2.putLong("_dac", 1L);
                        }
                        zzG(new zzaw("_v", new zzau(bundle2), "auto", jCurrentTimeMillis), zzqVar);
                    } else {
                        zzW(new zzlc("_fot", jCurrentTimeMillis, Long.valueOf(j), "auto"), zzqVar);
                        zzaz().zzg();
                        zzfg zzfgVar = (zzfg) Preconditions.checkNotNull(this.zzm);
                        String str7 = zzqVar.zza;
                        if (str7 == null || str7.isEmpty()) {
                            i = 0;
                            zzfgVar.zza.zzay().zzm().zza("Install Referrer Reporter was called with invalid app package name");
                        } else {
                            zzfgVar.zza.zzaz().zzg();
                            if (zzfgVar.zza()) {
                                zzff zzffVar = new zzff(zzfgVar, str7);
                                zzfgVar.zza.zzaz().zzg();
                                Intent intent = new Intent("com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE");
                                intent.setComponent(new ComponentName("com.android.vending", "com.google.android.finsky.externalreferrer.GetInstallReferrerService"));
                                PackageManager packageManager = zzfgVar.zza.zzau().getPackageManager();
                                if (packageManager == null) {
                                    zzfgVar.zza.zzay().zzm().zza("Failed to obtain Package Manager to verify binding conditions for Install Referrer");
                                } else {
                                    i = 0;
                                    List<ResolveInfo> listQueryIntentServices = packageManager.queryIntentServices(intent, 0);
                                    if (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) {
                                        zzfgVar.zza.zzay().zzi().zza("Play Service for fetching Install Referrer is unavailable on device");
                                    } else {
                                        ResolveInfo resolveInfo = listQueryIntentServices.get(0);
                                        if (resolveInfo.serviceInfo != null) {
                                            String str8 = resolveInfo.serviceInfo.packageName;
                                            if (resolveInfo.serviceInfo.name != null && "com.android.vending".equals(str8) && zzfgVar.zza()) {
                                                try {
                                                } catch (RuntimeException e3) {
                                                    e = e3;
                                                }
                                                try {
                                                    zzfgVar.zza.zzay().zzj().zzb("Install Referrer Service is", true != ConnectionTracker.getInstance().bindService(zzfgVar.zza.zzau(), new Intent(intent), zzffVar, 1) ? "not available" : "available");
                                                } catch (RuntimeException e4) {
                                                    e = e4;
                                                    zzfgVar.zza.zzay().zzd().zzb("Exception occurred while binding to Install Referrer Service", e.getMessage());
                                                }
                                            } else {
                                                zzfgVar.zza.zzay().zzk().zza("Play Store version 8.3.73 or higher required for Install Referrer");
                                            }
                                        }
                                    }
                                }
                            } else {
                                zzfgVar.zza.zzay().zzi().zza("Install Referrer Reporter is not available");
                            }
                            i = 0;
                        }
                        zzaz().zzg();
                        zzB();
                        Bundle bundle3 = new Bundle();
                        bundle3.putLong("_c", 1L);
                        bundle3.putLong("_r", 1L);
                        bundle3.putLong("_uwa", 0L);
                        String str9 = str3;
                        bundle3.putLong(str9, 0L);
                        String str10 = str2;
                        bundle3.putLong(str10, 0L);
                        String str11 = str;
                        bundle3.putLong(str11, 0L);
                        bundle3.putLong("_et", 1L);
                        if (zzqVar.zzp) {
                            bundle3.putLong("_dac", 1L);
                        }
                        String str12 = (String) Preconditions.checkNotNull(zzqVar.zza);
                        zzam zzamVar9 = this.zze;
                        zzal(zzamVar9);
                        Preconditions.checkNotEmpty(str12);
                        zzamVar9.zzg();
                        zzamVar9.zzW();
                        long jZzc = zzamVar9.zzc(str12, "first_open_count");
                        if (this.zzn.zzau().getPackageManager() == null) {
                            zzay().zzd().zzb("PackageManager is null, first open report might be inaccurate. appId", zzeo.zzn(str12));
                        } else {
                            try {
                                packageInfo = Wrappers.packageManager(this.zzn.zzau()).getPackageInfo(str12, i);
                            } catch (PackageManager.NameNotFoundException e5) {
                                zzay().zzd().zzc("Package info is null, first open report might be inaccurate. appId", zzeo.zzn(str12), e5);
                                packageInfo = null;
                            }
                            if (packageInfo == null || packageInfo.firstInstallTime == 0) {
                                str4 = str12;
                                str5 = str11;
                                i2 = 1;
                                i3 = 0;
                            } else {
                                str4 = str12;
                                if (packageInfo.firstInstallTime != packageInfo.lastUpdateTime) {
                                    if (!zzg().zzs(null, zzeb.zzab)) {
                                        bundle3.putLong("_uwa", 1L);
                                    } else if (jZzc == 0) {
                                        bundle3.putLong("_uwa", 1L);
                                        jZzc = 0;
                                    }
                                    z2 = false;
                                } else {
                                    z2 = true;
                                }
                                i2 = 1;
                                str5 = str11;
                                i3 = 0;
                                zzW(new zzlc("_fi", jCurrentTimeMillis, Long.valueOf(true != z2 ? 0L : 1L), "auto"), zzqVar);
                            }
                            try {
                                str6 = str4;
                            } catch (PackageManager.NameNotFoundException e6) {
                                e = e6;
                                str6 = str4;
                            }
                            try {
                                applicationInfo = Wrappers.packageManager(this.zzn.zzau()).getApplicationInfo(str6, i3);
                            } catch (PackageManager.NameNotFoundException e7) {
                                e = e7;
                                zzay().zzd().zzc("Application info is null, first open report might be inaccurate. appId", zzeo.zzn(str6), e);
                                applicationInfo = null;
                            }
                            if (applicationInfo != null) {
                                if ((i2 & applicationInfo.flags) != 0) {
                                    bundle3.putLong(str10, 1L);
                                }
                                if ((applicationInfo.flags & 128) != 0) {
                                    bundle3.putLong(str5, 1L);
                                }
                            }
                        }
                        if (jZzc >= 0) {
                            bundle3.putLong(str9, jZzc);
                        }
                        zzG(new zzaw("_f", new zzau(bundle3), "auto", jCurrentTimeMillis), zzqVar);
                    }
                } else if (zzqVar.zzi) {
                    zzG(new zzaw("_cd", new zzau(new Bundle()), "auto", jCurrentTimeMillis), zzqVar);
                }
                zzam zzamVar10 = this.zze;
                zzal(zzamVar10);
                zzamVar10.zzC();
            } finally {
                zzam zzamVar11 = this.zze;
                zzal(zzamVar11);
                zzamVar11.zzx();
            }
        }
    }

    final void zzM() {
        this.zzr++;
    }

    final void zzN(zzac zzacVar) {
        zzq zzqVarZzac = zzac((String) Preconditions.checkNotNull(zzacVar.zza));
        if (zzqVarZzac != null) {
            zzO(zzacVar, zzqVarZzac);
        }
    }

    final void zzO(zzac zzacVar, zzq zzqVar) {
        Preconditions.checkNotNull(zzacVar);
        Preconditions.checkNotEmpty(zzacVar.zza);
        Preconditions.checkNotNull(zzacVar.zzc);
        Preconditions.checkNotEmpty(zzacVar.zzc.zzb);
        zzaz().zzg();
        zzB();
        if (zzak(zzqVar)) {
            if (!zzqVar.zzh) {
                zzd(zzqVar);
                return;
            }
            zzam zzamVar = this.zze;
            zzal(zzamVar);
            zzamVar.zzw();
            try {
                zzd(zzqVar);
                String str = (String) Preconditions.checkNotNull(zzacVar.zza);
                zzam zzamVar2 = this.zze;
                zzal(zzamVar2);
                zzac zzacVarZzk = zzamVar2.zzk(str, zzacVar.zzc.zzb);
                if (zzacVarZzk != null) {
                    zzay().zzc().zzc("Removing conditional user property", zzacVar.zza, this.zzn.zzj().zzf(zzacVar.zzc.zzb));
                    zzam zzamVar3 = this.zze;
                    zzal(zzamVar3);
                    zzamVar3.zza(str, zzacVar.zzc.zzb);
                    if (zzacVarZzk.zze) {
                        zzam zzamVar4 = this.zze;
                        zzal(zzamVar4);
                        zzamVar4.zzA(str, zzacVar.zzc.zzb);
                    }
                    zzaw zzawVar = zzacVar.zzk;
                    if (zzawVar != null) {
                        zzau zzauVar = zzawVar.zzb;
                        zzY((zzaw) Preconditions.checkNotNull(zzv().zzz(str, ((zzaw) Preconditions.checkNotNull(zzacVar.zzk)).zza, zzauVar != null ? zzauVar.zzc() : null, zzacVarZzk.zzb, zzacVar.zzk.zzd, true, true)), zzqVar);
                    }
                } else {
                    zzay().zzk().zzc("Conditional user property doesn't exist", zzeo.zzn(zzacVar.zza), this.zzn.zzj().zzf(zzacVar.zzc.zzb));
                }
                zzam zzamVar5 = this.zze;
                zzal(zzamVar5);
                zzamVar5.zzC();
            } finally {
                zzam zzamVar6 = this.zze;
                zzal(zzamVar6);
                zzamVar6.zzx();
            }
        }
    }

    final void zzP(zzlc zzlcVar, zzq zzqVar) {
        zzaz().zzg();
        zzB();
        if (zzak(zzqVar)) {
            if (!zzqVar.zzh) {
                zzd(zzqVar);
                return;
            }
            if ("_npa".equals(zzlcVar.zzb) && zzqVar.zzr != null) {
                zzay().zzc().zza("Falling back to manifest metadata value for ad personalization");
                zzW(new zzlc("_npa", zzav().currentTimeMillis(), Long.valueOf(true != zzqVar.zzr.booleanValue() ? 0L : 1L), "auto"), zzqVar);
                return;
            }
            zzay().zzc().zzb("Removing user property", this.zzn.zzj().zzf(zzlcVar.zzb));
            zzam zzamVar = this.zze;
            zzal(zzamVar);
            zzamVar.zzw();
            try {
                zzd(zzqVar);
                if (APEZProvider.FILEID.equals(zzlcVar.zzb)) {
                    zzam zzamVar2 = this.zze;
                    zzal(zzamVar2);
                    zzamVar2.zzA((String) Preconditions.checkNotNull(zzqVar.zza), "_lair");
                }
                zzam zzamVar3 = this.zze;
                zzal(zzamVar3);
                zzamVar3.zzA((String) Preconditions.checkNotNull(zzqVar.zza), zzlcVar.zzb);
                zzam zzamVar4 = this.zze;
                zzal(zzamVar4);
                zzamVar4.zzC();
                zzay().zzc().zzb("User property removed", this.zzn.zzj().zzf(zzlcVar.zzb));
            } finally {
                zzam zzamVar5 = this.zze;
                zzal(zzamVar5);
                zzamVar5.zzx();
            }
        }
    }

    final void zzQ(zzq zzqVar) {
        if (this.zzy != null) {
            ArrayList arrayList = new ArrayList();
            this.zzz = arrayList;
            arrayList.addAll(this.zzy);
        }
        zzam zzamVar = this.zze;
        zzal(zzamVar);
        String str = (String) Preconditions.checkNotNull(zzqVar.zza);
        Preconditions.checkNotEmpty(str);
        zzamVar.zzg();
        zzamVar.zzW();
        try {
            SQLiteDatabase sQLiteDatabaseZzh = zzamVar.zzh();
            String[] strArr = {str};
            int iDelete = sQLiteDatabaseZzh.delete("apps", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("events", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("user_attributes", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("conditional_properties", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("raw_events", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("raw_events_metadata", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("queue", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("audience_filter_values", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("main_event_params", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("default_event_params", "app_id=?", strArr);
            if (iDelete > 0) {
                zzamVar.zzs.zzay().zzj().zzc("Reset analytics data. app, records", str, Integer.valueOf(iDelete));
            }
        } catch (SQLiteException e) {
            zzamVar.zzs.zzay().zzd().zzc("Error resetting analytics data. appId, error", zzeo.zzn(str), e);
        }
        if (zzqVar.zzh) {
            zzL(zzqVar);
        }
    }

    public final void zzR(String str, zzik zzikVar) {
        zzaz().zzg();
        String str2 = this.zzE;
        if (str2 == null || str2.equals(str) || zzikVar != null) {
            this.zzE = str;
            this.zzD = zzikVar;
        }
    }

    protected final void zzS() {
        zzaz().zzg();
        zzam zzamVar = this.zze;
        zzal(zzamVar);
        zzamVar.zzz();
        if (this.zzk.zzc.zza() == 0) {
            this.zzk.zzc.zzb(zzav().currentTimeMillis());
        }
        zzag();
    }

    final void zzT(zzac zzacVar) {
        zzq zzqVarZzac = zzac((String) Preconditions.checkNotNull(zzacVar.zza));
        if (zzqVarZzac != null) {
            zzU(zzacVar, zzqVarZzac);
        }
    }

    final void zzU(zzac zzacVar, zzq zzqVar) {
        Preconditions.checkNotNull(zzacVar);
        Preconditions.checkNotEmpty(zzacVar.zza);
        Preconditions.checkNotNull(zzacVar.zzb);
        Preconditions.checkNotNull(zzacVar.zzc);
        Preconditions.checkNotEmpty(zzacVar.zzc.zzb);
        zzaz().zzg();
        zzB();
        if (zzak(zzqVar)) {
            if (!zzqVar.zzh) {
                zzd(zzqVar);
                return;
            }
            zzac zzacVar2 = new zzac(zzacVar);
            boolean z = false;
            zzacVar2.zze = false;
            zzam zzamVar = this.zze;
            zzal(zzamVar);
            zzamVar.zzw();
            try {
                zzam zzamVar2 = this.zze;
                zzal(zzamVar2);
                zzac zzacVarZzk = zzamVar2.zzk((String) Preconditions.checkNotNull(zzacVar2.zza), zzacVar2.zzc.zzb);
                if (zzacVarZzk != null && !zzacVarZzk.zzb.equals(zzacVar2.zzb)) {
                    zzay().zzk().zzd("Updating a conditional user property with different origin. name, origin, origin (from DB)", this.zzn.zzj().zzf(zzacVar2.zzc.zzb), zzacVar2.zzb, zzacVarZzk.zzb);
                }
                if (zzacVarZzk != null && zzacVarZzk.zze) {
                    zzacVar2.zzb = zzacVarZzk.zzb;
                    zzacVar2.zzd = zzacVarZzk.zzd;
                    zzacVar2.zzh = zzacVarZzk.zzh;
                    zzacVar2.zzf = zzacVarZzk.zzf;
                    zzacVar2.zzi = zzacVarZzk.zzi;
                    zzacVar2.zze = true;
                    zzlc zzlcVar = zzacVar2.zzc;
                    zzacVar2.zzc = new zzlc(zzlcVar.zzb, zzacVarZzk.zzc.zzc, zzlcVar.zza(), zzacVarZzk.zzc.zzf);
                } else if (TextUtils.isEmpty(zzacVar2.zzf)) {
                    zzlc zzlcVar2 = zzacVar2.zzc;
                    zzacVar2.zzc = new zzlc(zzlcVar2.zzb, zzacVar2.zzd, zzlcVar2.zza(), zzacVar2.zzc.zzf);
                    zzacVar2.zze = true;
                    z = true;
                }
                if (zzacVar2.zze) {
                    zzlc zzlcVar3 = zzacVar2.zzc;
                    zzle zzleVar = new zzle((String) Preconditions.checkNotNull(zzacVar2.zza), zzacVar2.zzb, zzlcVar3.zzb, zzlcVar3.zzc, Preconditions.checkNotNull(zzlcVar3.zza()));
                    zzam zzamVar3 = this.zze;
                    zzal(zzamVar3);
                    if (zzamVar3.zzL(zzleVar)) {
                        zzay().zzc().zzd("User property updated immediately", zzacVar2.zza, this.zzn.zzj().zzf(zzleVar.zzc), zzleVar.zze);
                    } else {
                        zzay().zzd().zzd("(2)Too many active user properties, ignoring", zzeo.zzn(zzacVar2.zza), this.zzn.zzj().zzf(zzleVar.zzc), zzleVar.zze);
                    }
                    if (z && zzacVar2.zzi != null) {
                        zzY(new zzaw(zzacVar2.zzi, zzacVar2.zzd), zzqVar);
                    }
                }
                zzam zzamVar4 = this.zze;
                zzal(zzamVar4);
                if (zzamVar4.zzK(zzacVar2)) {
                    zzay().zzc().zzd("Conditional property added", zzacVar2.zza, this.zzn.zzj().zzf(zzacVar2.zzc.zzb), zzacVar2.zzc.zza());
                } else {
                    zzay().zzd().zzd("Too many conditional properties, ignoring", zzeo.zzn(zzacVar2.zza), this.zzn.zzj().zzf(zzacVar2.zzc.zzb), zzacVar2.zzc.zza());
                }
                zzam zzamVar5 = this.zze;
                zzal(zzamVar5);
                zzamVar5.zzC();
            } finally {
                zzam zzamVar6 = this.zze;
                zzal(zzamVar6);
                zzamVar6.zzx();
            }
        }
    }

    final void zzV(String str, zzai zzaiVar) {
        zzaz().zzg();
        zzB();
        this.zzB.put(str, zzaiVar);
        zzam zzamVar = this.zze;
        zzal(zzamVar);
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(zzaiVar);
        zzamVar.zzg();
        zzamVar.zzW();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("consent_state", zzaiVar.zzh());
        try {
            if (zzamVar.zzh().insertWithOnConflict("consent_settings", null, contentValues, 5) == -1) {
                zzamVar.zzs.zzay().zzd().zzb("Failed to insert/update consent setting (got -1). appId", zzeo.zzn(str));
            }
        } catch (SQLiteException e) {
            zzamVar.zzs.zzay().zzd().zzc("Error storing consent setting. appId, error", zzeo.zzn(str), e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00db  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void zzW(com.google.android.gms.measurement.internal.zzlc r18, com.google.android.gms.measurement.internal.zzq r19) {
        /*
            Method dump skipped, instruction units count: 478
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkz.zzW(com.google.android.gms.measurement.internal.zzlc, com.google.android.gms.measurement.internal.zzq):void");
    }

    /* JADX WARN: Not initialized variable reg: 11, insn: 0x059a: MOVE (r9 I:??[OBJECT, ARRAY]) = (r11 I:??[OBJECT, ARRAY]), block:B:241:0x059a */
    /* JADX WARN: Removed duplicated region for block: B:128:0x027b A[Catch: all -> 0x05a1, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x05a1, blocks: (B:3:0x0010, B:11:0x0038, B:15:0x004e, B:20:0x005c, B:24:0x0077, B:28:0x0095, B:34:0x00bd, B:38:0x00e0, B:40:0x00f1, B:68:0x013c, B:72:0x0164, B:76:0x016c, B:141:0x02aa, B:143:0x02b0, B:145:0x02bc, B:146:0x02c0, B:148:0x02c6, B:150:0x02da, B:154:0x02e3, B:156:0x02e9, B:162:0x030e, B:159:0x02fe, B:161:0x0308, B:163:0x0311, B:165:0x032c, B:169:0x033b, B:171:0x0360, B:173:0x039a, B:175:0x039f, B:177:0x03a7, B:178:0x03aa, B:180:0x03af, B:181:0x03b2, B:183:0x03be, B:184:0x03d4, B:185:0x03dc, B:187:0x03ed, B:189:0x03ff, B:191:0x0421, B:193:0x0432, B:196:0x047a, B:198:0x048c, B:200:0x04a1, B:202:0x04ac, B:203:0x04b5, B:199:0x049a, B:205:0x04f9, B:194:0x0467, B:195:0x0471, B:128:0x027b, B:140:0x02a7, B:209:0x0510, B:210:0x0513, B:211:0x0514, B:217:0x0557, B:234:0x0580, B:236:0x0586, B:238:0x0591, B:222:0x0562, B:243:0x059d, B:244:0x05a0), top: B:249:0x0010, inners: #10 }] */
    /* JADX WARN: Removed duplicated region for block: B:143:0x02b0 A[Catch: all -> 0x05a1, TryCatch #0 {all -> 0x05a1, blocks: (B:3:0x0010, B:11:0x0038, B:15:0x004e, B:20:0x005c, B:24:0x0077, B:28:0x0095, B:34:0x00bd, B:38:0x00e0, B:40:0x00f1, B:68:0x013c, B:72:0x0164, B:76:0x016c, B:141:0x02aa, B:143:0x02b0, B:145:0x02bc, B:146:0x02c0, B:148:0x02c6, B:150:0x02da, B:154:0x02e3, B:156:0x02e9, B:162:0x030e, B:159:0x02fe, B:161:0x0308, B:163:0x0311, B:165:0x032c, B:169:0x033b, B:171:0x0360, B:173:0x039a, B:175:0x039f, B:177:0x03a7, B:178:0x03aa, B:180:0x03af, B:181:0x03b2, B:183:0x03be, B:184:0x03d4, B:185:0x03dc, B:187:0x03ed, B:189:0x03ff, B:191:0x0421, B:193:0x0432, B:196:0x047a, B:198:0x048c, B:200:0x04a1, B:202:0x04ac, B:203:0x04b5, B:199:0x049a, B:205:0x04f9, B:194:0x0467, B:195:0x0471, B:128:0x027b, B:140:0x02a7, B:209:0x0510, B:210:0x0513, B:211:0x0514, B:217:0x0557, B:234:0x0580, B:236:0x0586, B:238:0x0591, B:222:0x0562, B:243:0x059d, B:244:0x05a0), top: B:249:0x0010, inners: #10 }] */
    /* JADX WARN: Removed duplicated region for block: B:236:0x0586 A[Catch: all -> 0x05a1, TryCatch #0 {all -> 0x05a1, blocks: (B:3:0x0010, B:11:0x0038, B:15:0x004e, B:20:0x005c, B:24:0x0077, B:28:0x0095, B:34:0x00bd, B:38:0x00e0, B:40:0x00f1, B:68:0x013c, B:72:0x0164, B:76:0x016c, B:141:0x02aa, B:143:0x02b0, B:145:0x02bc, B:146:0x02c0, B:148:0x02c6, B:150:0x02da, B:154:0x02e3, B:156:0x02e9, B:162:0x030e, B:159:0x02fe, B:161:0x0308, B:163:0x0311, B:165:0x032c, B:169:0x033b, B:171:0x0360, B:173:0x039a, B:175:0x039f, B:177:0x03a7, B:178:0x03aa, B:180:0x03af, B:181:0x03b2, B:183:0x03be, B:184:0x03d4, B:185:0x03dc, B:187:0x03ed, B:189:0x03ff, B:191:0x0421, B:193:0x0432, B:196:0x047a, B:198:0x048c, B:200:0x04a1, B:202:0x04ac, B:203:0x04b5, B:199:0x049a, B:205:0x04f9, B:194:0x0467, B:195:0x0471, B:128:0x027b, B:140:0x02a7, B:209:0x0510, B:210:0x0513, B:211:0x0514, B:217:0x0557, B:234:0x0580, B:236:0x0586, B:238:0x0591, B:222:0x0562, B:243:0x059d, B:244:0x05a0), top: B:249:0x0010, inners: #10 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x010e A[Catch: all -> 0x0034, PHI: r7 r11
      0x010e: PHI (r7v20 long) = (r7v0 long), (r7v22 long), (r7v0 long) binds: [B:60:0x012e, B:51:0x0116, B:47:0x010c] A[DONT_GENERATE, DONT_INLINE]
      0x010e: PHI (r11v23 android.database.Cursor) = (r11v22 android.database.Cursor), (r11v25 android.database.Cursor), (r11v25 android.database.Cursor) binds: [B:60:0x012e, B:51:0x0116, B:47:0x010c] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #13 {all -> 0x0034, blocks: (B:5:0x0021, B:13:0x003e, B:18:0x0056, B:22:0x0067, B:26:0x0082, B:31:0x00b4, B:37:0x00c9, B:43:0x00f7, B:48:0x010e, B:62:0x0131, B:66:0x0138, B:67:0x013b, B:83:0x01a8), top: B:261:0x001f }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0138 A[Catch: all -> 0x0034, TryCatch #13 {all -> 0x0034, blocks: (B:5:0x0021, B:13:0x003e, B:18:0x0056, B:22:0x0067, B:26:0x0082, B:31:0x00b4, B:37:0x00c9, B:43:0x00f7, B:48:0x010e, B:62:0x0131, B:66:0x0138, B:67:0x013b, B:83:0x01a8), top: B:261:0x001f }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01a2 A[Catch: SQLiteException -> 0x0282, all -> 0x050c, TRY_LEAVE, TryCatch #6 {SQLiteException -> 0x0282, blocks: (B:79:0x019c, B:81:0x01a2, B:85:0x01af, B:86:0x01b5, B:87:0x01b9, B:88:0x01c4), top: B:256:0x019c }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01af A[Catch: SQLiteException -> 0x0282, all -> 0x050c, TRY_ENTER, TryCatch #6 {SQLiteException -> 0x0282, blocks: (B:79:0x019c, B:81:0x01a2, B:85:0x01af, B:86:0x01b5, B:87:0x01b9, B:88:0x01c4), top: B:256:0x019c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void zzX() {
        /*
            Method dump skipped, instruction units count: 1449
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkz.zzX():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:257:0x090e, code lost:
    
        r30 = 1;
     */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0717  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x016b A[Catch: all -> 0x0a47, TRY_ENTER, TryCatch #2 {all -> 0x0a47, blocks: (B:28:0x0124, B:31:0x0135, B:33:0x013f, B:38:0x014b, B:90:0x02e1, B:99:0x0317, B:101:0x0354, B:103:0x0359, B:104:0x0370, B:108:0x0383, B:110:0x039c, B:112:0x03a1, B:113:0x03b8, B:119:0x03e5, B:123:0x0406, B:124:0x041d, B:128:0x042f, B:131:0x044e, B:132:0x0462, B:134:0x046c, B:136:0x0479, B:138:0x047f, B:139:0x0488, B:140:0x0496, B:142:0x04ba, B:152:0x04de, B:153:0x04f3, B:155:0x051c, B:158:0x0534, B:161:0x0577, B:163:0x05a3, B:165:0x05e0, B:166:0x05e5, B:168:0x05ed, B:169:0x05f2, B:171:0x05fa, B:172:0x05ff, B:174:0x060f, B:176:0x0617, B:177:0x061c, B:179:0x0625, B:180:0x0629, B:182:0x0636, B:183:0x063b, B:185:0x0662, B:187:0x066a, B:188:0x066f, B:190:0x0677, B:191:0x067a, B:193:0x0692, B:196:0x069a, B:197:0x06b4, B:199:0x06ba, B:201:0x06ce, B:203:0x06da, B:205:0x06e7, B:209:0x0701, B:210:0x0711, B:214:0x071a, B:215:0x071d, B:217:0x073b, B:219:0x073f, B:221:0x0751, B:223:0x0755, B:225:0x0760, B:226:0x076b, B:228:0x07aa, B:230:0x07b4, B:231:0x07b7, B:233:0x07c4, B:235:0x07e6, B:236:0x07f3, B:237:0x0829, B:239:0x0831, B:241:0x083b, B:242:0x0848, B:244:0x0852, B:245:0x085f, B:246:0x086b, B:248:0x0871, B:250:0x08a1, B:251:0x08e7, B:252:0x08f2, B:253:0x08fe, B:255:0x0904, B:264:0x0951, B:265:0x099f, B:267:0x09b0, B:281:0x0a14, B:270:0x09c8, B:272:0x09cc, B:258:0x0911, B:260:0x093b, B:276:0x09e5, B:277:0x09fc, B:280:0x09ff, B:162:0x0595, B:149:0x04c6, B:93:0x02f7, B:94:0x02fe, B:96:0x0304, B:98:0x0310, B:43:0x015f, B:46:0x016b, B:48:0x0182, B:53:0x019b, B:60:0x01d9, B:62:0x01df, B:64:0x01ed, B:66:0x0202, B:69:0x0209, B:87:0x02a6, B:89:0x02b1, B:71:0x0231, B:72:0x0250, B:74:0x0255, B:76:0x0259, B:86:0x028a, B:85:0x0277, B:56:0x01a9, B:59:0x01cf), top: B:293:0x0124, inners: #5, #7, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01cf A[Catch: all -> 0x0a47, TRY_ENTER, TryCatch #2 {all -> 0x0a47, blocks: (B:28:0x0124, B:31:0x0135, B:33:0x013f, B:38:0x014b, B:90:0x02e1, B:99:0x0317, B:101:0x0354, B:103:0x0359, B:104:0x0370, B:108:0x0383, B:110:0x039c, B:112:0x03a1, B:113:0x03b8, B:119:0x03e5, B:123:0x0406, B:124:0x041d, B:128:0x042f, B:131:0x044e, B:132:0x0462, B:134:0x046c, B:136:0x0479, B:138:0x047f, B:139:0x0488, B:140:0x0496, B:142:0x04ba, B:152:0x04de, B:153:0x04f3, B:155:0x051c, B:158:0x0534, B:161:0x0577, B:163:0x05a3, B:165:0x05e0, B:166:0x05e5, B:168:0x05ed, B:169:0x05f2, B:171:0x05fa, B:172:0x05ff, B:174:0x060f, B:176:0x0617, B:177:0x061c, B:179:0x0625, B:180:0x0629, B:182:0x0636, B:183:0x063b, B:185:0x0662, B:187:0x066a, B:188:0x066f, B:190:0x0677, B:191:0x067a, B:193:0x0692, B:196:0x069a, B:197:0x06b4, B:199:0x06ba, B:201:0x06ce, B:203:0x06da, B:205:0x06e7, B:209:0x0701, B:210:0x0711, B:214:0x071a, B:215:0x071d, B:217:0x073b, B:219:0x073f, B:221:0x0751, B:223:0x0755, B:225:0x0760, B:226:0x076b, B:228:0x07aa, B:230:0x07b4, B:231:0x07b7, B:233:0x07c4, B:235:0x07e6, B:236:0x07f3, B:237:0x0829, B:239:0x0831, B:241:0x083b, B:242:0x0848, B:244:0x0852, B:245:0x085f, B:246:0x086b, B:248:0x0871, B:250:0x08a1, B:251:0x08e7, B:252:0x08f2, B:253:0x08fe, B:255:0x0904, B:264:0x0951, B:265:0x099f, B:267:0x09b0, B:281:0x0a14, B:270:0x09c8, B:272:0x09cc, B:258:0x0911, B:260:0x093b, B:276:0x09e5, B:277:0x09fc, B:280:0x09ff, B:162:0x0595, B:149:0x04c6, B:93:0x02f7, B:94:0x02fe, B:96:0x0304, B:98:0x0310, B:43:0x015f, B:46:0x016b, B:48:0x0182, B:53:0x019b, B:60:0x01d9, B:62:0x01df, B:64:0x01ed, B:66:0x0202, B:69:0x0209, B:87:0x02a6, B:89:0x02b1, B:71:0x0231, B:72:0x0250, B:74:0x0255, B:76:0x0259, B:86:0x028a, B:85:0x0277, B:56:0x01a9, B:59:0x01cf), top: B:293:0x0124, inners: #5, #7, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01df A[Catch: all -> 0x0a47, TryCatch #2 {all -> 0x0a47, blocks: (B:28:0x0124, B:31:0x0135, B:33:0x013f, B:38:0x014b, B:90:0x02e1, B:99:0x0317, B:101:0x0354, B:103:0x0359, B:104:0x0370, B:108:0x0383, B:110:0x039c, B:112:0x03a1, B:113:0x03b8, B:119:0x03e5, B:123:0x0406, B:124:0x041d, B:128:0x042f, B:131:0x044e, B:132:0x0462, B:134:0x046c, B:136:0x0479, B:138:0x047f, B:139:0x0488, B:140:0x0496, B:142:0x04ba, B:152:0x04de, B:153:0x04f3, B:155:0x051c, B:158:0x0534, B:161:0x0577, B:163:0x05a3, B:165:0x05e0, B:166:0x05e5, B:168:0x05ed, B:169:0x05f2, B:171:0x05fa, B:172:0x05ff, B:174:0x060f, B:176:0x0617, B:177:0x061c, B:179:0x0625, B:180:0x0629, B:182:0x0636, B:183:0x063b, B:185:0x0662, B:187:0x066a, B:188:0x066f, B:190:0x0677, B:191:0x067a, B:193:0x0692, B:196:0x069a, B:197:0x06b4, B:199:0x06ba, B:201:0x06ce, B:203:0x06da, B:205:0x06e7, B:209:0x0701, B:210:0x0711, B:214:0x071a, B:215:0x071d, B:217:0x073b, B:219:0x073f, B:221:0x0751, B:223:0x0755, B:225:0x0760, B:226:0x076b, B:228:0x07aa, B:230:0x07b4, B:231:0x07b7, B:233:0x07c4, B:235:0x07e6, B:236:0x07f3, B:237:0x0829, B:239:0x0831, B:241:0x083b, B:242:0x0848, B:244:0x0852, B:245:0x085f, B:246:0x086b, B:248:0x0871, B:250:0x08a1, B:251:0x08e7, B:252:0x08f2, B:253:0x08fe, B:255:0x0904, B:264:0x0951, B:265:0x099f, B:267:0x09b0, B:281:0x0a14, B:270:0x09c8, B:272:0x09cc, B:258:0x0911, B:260:0x093b, B:276:0x09e5, B:277:0x09fc, B:280:0x09ff, B:162:0x0595, B:149:0x04c6, B:93:0x02f7, B:94:0x02fe, B:96:0x0304, B:98:0x0310, B:43:0x015f, B:46:0x016b, B:48:0x0182, B:53:0x019b, B:60:0x01d9, B:62:0x01df, B:64:0x01ed, B:66:0x0202, B:69:0x0209, B:87:0x02a6, B:89:0x02b1, B:71:0x0231, B:72:0x0250, B:74:0x0255, B:76:0x0259, B:86:0x028a, B:85:0x0277, B:56:0x01a9, B:59:0x01cf), top: B:293:0x0124, inners: #5, #7, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x02b1 A[Catch: all -> 0x0a47, TryCatch #2 {all -> 0x0a47, blocks: (B:28:0x0124, B:31:0x0135, B:33:0x013f, B:38:0x014b, B:90:0x02e1, B:99:0x0317, B:101:0x0354, B:103:0x0359, B:104:0x0370, B:108:0x0383, B:110:0x039c, B:112:0x03a1, B:113:0x03b8, B:119:0x03e5, B:123:0x0406, B:124:0x041d, B:128:0x042f, B:131:0x044e, B:132:0x0462, B:134:0x046c, B:136:0x0479, B:138:0x047f, B:139:0x0488, B:140:0x0496, B:142:0x04ba, B:152:0x04de, B:153:0x04f3, B:155:0x051c, B:158:0x0534, B:161:0x0577, B:163:0x05a3, B:165:0x05e0, B:166:0x05e5, B:168:0x05ed, B:169:0x05f2, B:171:0x05fa, B:172:0x05ff, B:174:0x060f, B:176:0x0617, B:177:0x061c, B:179:0x0625, B:180:0x0629, B:182:0x0636, B:183:0x063b, B:185:0x0662, B:187:0x066a, B:188:0x066f, B:190:0x0677, B:191:0x067a, B:193:0x0692, B:196:0x069a, B:197:0x06b4, B:199:0x06ba, B:201:0x06ce, B:203:0x06da, B:205:0x06e7, B:209:0x0701, B:210:0x0711, B:214:0x071a, B:215:0x071d, B:217:0x073b, B:219:0x073f, B:221:0x0751, B:223:0x0755, B:225:0x0760, B:226:0x076b, B:228:0x07aa, B:230:0x07b4, B:231:0x07b7, B:233:0x07c4, B:235:0x07e6, B:236:0x07f3, B:237:0x0829, B:239:0x0831, B:241:0x083b, B:242:0x0848, B:244:0x0852, B:245:0x085f, B:246:0x086b, B:248:0x0871, B:250:0x08a1, B:251:0x08e7, B:252:0x08f2, B:253:0x08fe, B:255:0x0904, B:264:0x0951, B:265:0x099f, B:267:0x09b0, B:281:0x0a14, B:270:0x09c8, B:272:0x09cc, B:258:0x0911, B:260:0x093b, B:276:0x09e5, B:277:0x09fc, B:280:0x09ff, B:162:0x0595, B:149:0x04c6, B:93:0x02f7, B:94:0x02fe, B:96:0x0304, B:98:0x0310, B:43:0x015f, B:46:0x016b, B:48:0x0182, B:53:0x019b, B:60:0x01d9, B:62:0x01df, B:64:0x01ed, B:66:0x0202, B:69:0x0209, B:87:0x02a6, B:89:0x02b1, B:71:0x0231, B:72:0x0250, B:74:0x0255, B:76:0x0259, B:86:0x028a, B:85:0x0277, B:56:0x01a9, B:59:0x01cf), top: B:293:0x0124, inners: #5, #7, #8 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void zzY(com.google.android.gms.measurement.internal.zzaw r36, com.google.android.gms.measurement.internal.zzq r37) {
        /*
            Method dump skipped, instruction units count: 2646
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkz.zzY(com.google.android.gms.measurement.internal.zzaw, com.google.android.gms.measurement.internal.zzq):void");
    }

    final boolean zzZ() {
        zzaz().zzg();
        FileLock fileLock = this.zzw;
        if (fileLock != null && fileLock.isValid()) {
            zzay().zzj().zza("Storage concurrent access okay");
            return true;
        }
        this.zze.zzs.zzf();
        try {
            FileChannel channel = new RandomAccessFile(new File(this.zzn.zzau().getFilesDir(), "google_app_measurement.db"), "rw").getChannel();
            this.zzx = channel;
            FileLock fileLockTryLock = channel.tryLock();
            this.zzw = fileLockTryLock;
            if (fileLockTryLock != null) {
                zzay().zzj().zza("Storage concurrent access okay");
                return true;
            }
            zzay().zzd().zza("Storage concurrent data access panic");
            return false;
        } catch (FileNotFoundException e) {
            zzay().zzd().zzb("Failed to acquire storage lock", e);
            return false;
        } catch (IOException e2) {
            zzay().zzd().zzb("Failed to access storage lock file", e2);
            return false;
        } catch (OverlappingFileLockException e3) {
            zzay().zzk().zzb("Storage lock already acquired", e3);
            return false;
        }
    }

    final long zza() {
        long jCurrentTimeMillis = zzav().currentTimeMillis();
        zzju zzjuVar = this.zzk;
        zzjuVar.zzW();
        zzjuVar.zzg();
        long jZza = zzjuVar.zze.zza();
        if (jZza == 0) {
            jZza = ((long) zzjuVar.zzs.zzv().zzG().nextInt(86400000)) + 1;
            zzjuVar.zze.zzb(jZza);
        }
        return ((((jCurrentTimeMillis + jZza) / 1000) / 60) / 60) / 24;
    }

    @Override // com.google.android.gms.measurement.internal.zzgt
    public final Context zzau() {
        return this.zzn.zzau();
    }

    @Override // com.google.android.gms.measurement.internal.zzgt
    public final Clock zzav() {
        return ((zzfy) Preconditions.checkNotNull(this.zzn)).zzav();
    }

    @Override // com.google.android.gms.measurement.internal.zzgt
    public final zzab zzaw() {
        throw null;
    }

    @Override // com.google.android.gms.measurement.internal.zzgt
    public final zzeo zzay() {
        return ((zzfy) Preconditions.checkNotNull(this.zzn)).zzay();
    }

    @Override // com.google.android.gms.measurement.internal.zzgt
    public final zzfv zzaz() {
        return ((zzfy) Preconditions.checkNotNull(this.zzn)).zzaz();
    }

    final zzh zzd(zzq zzqVar) {
        zzaz().zzg();
        zzB();
        Preconditions.checkNotNull(zzqVar);
        Preconditions.checkNotEmpty(zzqVar.zza);
        zzow.zzc();
        zzkx zzkxVar = null;
        if (zzg().zzs(zzqVar.zza, zzeb.zzat) && !zzqVar.zzw.isEmpty()) {
            this.zzC.put(zzqVar.zza, new zzky(this, zzqVar.zzw));
        }
        zzam zzamVar = this.zze;
        zzal(zzamVar);
        zzh zzhVarZzj = zzamVar.zzj(zzqVar.zza);
        zzai zzaiVarZzc = zzh(zzqVar.zza).zzc(zzai.zzb(zzqVar.zzv));
        String strZzf = zzaiVarZzc.zzi(zzah.AD_STORAGE) ? this.zzk.zzf(zzqVar.zza, zzqVar.zzo) : "";
        if (zzhVarZzj == null) {
            zzhVarZzj = new zzh(this.zzn, zzqVar.zza);
            if (zzaiVarZzc.zzi(zzah.ANALYTICS_STORAGE)) {
                zzhVarZzj.zzH(zzw(zzaiVarZzc));
            }
            if (zzaiVarZzc.zzi(zzah.AD_STORAGE)) {
                zzhVarZzj.zzae(strZzf);
            }
        } else if (zzaiVarZzc.zzi(zzah.AD_STORAGE) && strZzf != null && !strZzf.equals(zzhVarZzj.zzA())) {
            zzhVarZzj.zzae(strZzf);
            if (zzqVar.zzo && !"00000000-0000-0000-0000-000000000000".equals(this.zzk.zzd(zzqVar.zza, zzaiVarZzc).first)) {
                zzhVarZzj.zzH(zzw(zzaiVarZzc));
                zzam zzamVar2 = this.zze;
                zzal(zzamVar2);
                if (zzamVar2.zzp(zzqVar.zza, APEZProvider.FILEID) != null) {
                    zzam zzamVar3 = this.zze;
                    zzal(zzamVar3);
                    if (zzamVar3.zzp(zzqVar.zza, "_lair") == null) {
                        zzle zzleVar = new zzle(zzqVar.zza, "auto", "_lair", zzav().currentTimeMillis(), 1L);
                        zzam zzamVar4 = this.zze;
                        zzal(zzamVar4);
                        zzamVar4.zzL(zzleVar);
                    }
                }
            }
        } else if (TextUtils.isEmpty(zzhVarZzj.zzu()) && zzaiVarZzc.zzi(zzah.ANALYTICS_STORAGE)) {
            zzhVarZzj.zzH(zzw(zzaiVarZzc));
        }
        zzhVarZzj.zzW(zzqVar.zzb);
        zzhVarZzj.zzF(zzqVar.zzq);
        if (!TextUtils.isEmpty(zzqVar.zzk)) {
            zzhVarZzj.zzV(zzqVar.zzk);
        }
        long j = zzqVar.zze;
        if (j != 0) {
            zzhVarZzj.zzX(j);
        }
        if (!TextUtils.isEmpty(zzqVar.zzc)) {
            zzhVarZzj.zzJ(zzqVar.zzc);
        }
        zzhVarZzj.zzK(zzqVar.zzj);
        String str = zzqVar.zzd;
        if (str != null) {
            zzhVarZzj.zzI(str);
        }
        zzhVarZzj.zzS(zzqVar.zzf);
        zzhVarZzj.zzac(zzqVar.zzh);
        if (!TextUtils.isEmpty(zzqVar.zzg)) {
            zzhVarZzj.zzY(zzqVar.zzg);
        }
        zzhVarZzj.zzG(zzqVar.zzo);
        zzhVarZzj.zzad(zzqVar.zzr);
        zzhVarZzj.zzT(zzqVar.zzs);
        zzoz.zzc();
        if (zzg().zzs(null, zzeb.zzar)) {
            zzhVarZzj.zzag(zzqVar.zzx);
        }
        zzns.zzc();
        if (zzg().zzs(null, zzeb.zzaj)) {
            zzhVarZzj.zzaf(zzqVar.zzt);
        } else {
            zzns.zzc();
            if (zzg().zzs(null, zzeb.zzai)) {
                zzhVarZzj.zzaf(null);
            }
        }
        if (zzhVarZzj.zzaj()) {
            zzam zzamVar5 = this.zze;
            zzal(zzamVar5);
            zzamVar5.zzD(zzhVarZzj);
        }
        return zzhVarZzj;
    }

    public final zzaa zzf() {
        zzaa zzaaVar = this.zzh;
        zzal(zzaaVar);
        return zzaaVar;
    }

    public final zzag zzg() {
        return ((zzfy) Preconditions.checkNotNull(this.zzn)).zzf();
    }

    final zzai zzh(String str) {
        String string;
        zzai zzaiVar = zzai.zza;
        zzaz().zzg();
        zzB();
        zzai zzaiVar2 = (zzai) this.zzB.get(str);
        if (zzaiVar2 != null) {
            return zzaiVar2;
        }
        zzam zzamVar = this.zze;
        zzal(zzamVar);
        Preconditions.checkNotNull(str);
        zzamVar.zzg();
        zzamVar.zzW();
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = zzamVar.zzh().rawQuery("select consent_state from consent_settings where app_id=? limit 1;", new String[]{str});
                if (cursorRawQuery.moveToFirst()) {
                    string = cursorRawQuery.getString(0);
                } else {
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    string = "G1";
                }
                zzai zzaiVarZzb = zzai.zzb(string);
                zzV(str, zzaiVarZzb);
                return zzaiVarZzb;
            } catch (SQLiteException e) {
                zzamVar.zzs.zzay().zzd().zzc("Database error", "select consent_state from consent_settings where app_id=? limit 1;", e);
                throw e;
            }
        } finally {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
        }
    }

    public final zzam zzi() {
        zzam zzamVar = this.zze;
        zzal(zzamVar);
        return zzamVar;
    }

    public final zzej zzj() {
        return this.zzn.zzj();
    }

    public final zzeu zzl() {
        zzeu zzeuVar = this.zzd;
        zzal(zzeuVar);
        return zzeuVar;
    }

    public final zzew zzm() {
        zzew zzewVar = this.zzf;
        if (zzewVar != null) {
            return zzewVar;
        }
        throw new IllegalStateException("Network broadcast receiver not created");
    }

    public final zzfp zzo() {
        zzfp zzfpVar = this.zzc;
        zzal(zzfpVar);
        return zzfpVar;
    }

    final zzfy zzq() {
        return this.zzn;
    }

    public final zzii zzr() {
        zzii zziiVar = this.zzj;
        zzal(zziiVar);
        return zziiVar;
    }

    public final zzju zzs() {
        return this.zzk;
    }

    public final zzlb zzu() {
        zzlb zzlbVar = this.zzi;
        zzal(zzlbVar);
        return zzlbVar;
    }

    public final zzlh zzv() {
        return ((zzfy) Preconditions.checkNotNull(this.zzn)).zzv();
    }

    final String zzw(zzai zzaiVar) {
        if (!zzaiVar.zzi(zzah.ANALYTICS_STORAGE)) {
            return null;
        }
        byte[] bArr = new byte[16];
        zzv().zzG().nextBytes(bArr);
        return String.format(Locale.US, "%032x", new BigInteger(1, bArr));
    }

    final String zzx(zzq zzqVar) {
        try {
            return (String) zzaz().zzh(new zzks(this, zzqVar)).get(30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            zzay().zzd().zzc("Failed to get app instance id. appId", zzeo.zzn(zzqVar.zza), e);
            return null;
        }
    }

    final void zzz(Runnable runnable) {
        zzaz().zzg();
        if (this.zzq == null) {
            this.zzq = new ArrayList();
        }
        this.zzq.add(runnable);
    }
}
