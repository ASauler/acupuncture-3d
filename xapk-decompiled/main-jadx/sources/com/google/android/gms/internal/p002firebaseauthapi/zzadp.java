package com.google.android.gms.internal.p002firebaseauthapi;

import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.text.HtmlCompat;
import com.facebook.soloader.Elf64_Ehdr;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zzadp<T> implements zzady<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzaez.zzg();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzadm zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final boolean zzj;
    private final int[] zzk;
    private final int zzl;
    private final int zzm;
    private final zzada zzn;
    private final zzaep zzo;
    private final zzabv zzp;
    private final zzadr zzq;
    private final zzadh zzr;

    private zzadp(int[] iArr, Object[] objArr, int i, int i2, zzadm zzadmVar, boolean z, boolean z2, int[] iArr2, int i3, int i4, zzadr zzadrVar, zzada zzadaVar, zzaep zzaepVar, zzabv zzabvVar, zzadh zzadhVar, byte[] bArr) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i;
        this.zzf = i2;
        this.zzi = zzadmVar instanceof zzach;
        this.zzj = z;
        boolean z3 = false;
        if (zzabvVar != null && zzabvVar.zzh(zzadmVar)) {
            z3 = true;
        }
        this.zzh = z3;
        this.zzk = iArr2;
        this.zzl = i3;
        this.zzm = i4;
        this.zzq = zzadrVar;
        this.zzn = zzadaVar;
        this.zzo = zzaepVar;
        this.zzp = zzabvVar;
        this.zzg = zzadmVar;
        this.zzr = zzadhVar;
    }

    private final int zzA(int i, int i2) {
        int length = (this.zzc.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.zzc[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    private static int zzB(int i) {
        return (i >>> 20) & 255;
    }

    private final int zzC(int i) {
        return this.zzc[i + 1];
    }

    private static long zzD(Object obj, long j) {
        return ((Long) zzaez.zzf(obj, j)).longValue();
    }

    private final zzacl zzE(int i) {
        int i2 = i / 3;
        return (zzacl) this.zzd[i2 + i2 + 1];
    }

    private final zzady zzF(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        zzady zzadyVar = (zzady) this.zzd[i3];
        if (zzadyVar != null) {
            return zzadyVar;
        }
        zzady zzadyVarZzb = zzadu.zza().zzb((Class) this.zzd[i3 + 1]);
        this.zzd[i3] = zzadyVarZzb;
        return zzadyVarZzb;
    }

    private final Object zzG(Object obj, int i, Object obj2, zzaep zzaepVar) {
        int i2 = this.zzc[i];
        Object objZzf = zzaez.zzf(obj, zzC(i) & 1048575);
        if (objZzf == null || zzE(i) == null) {
            return obj2;
        }
        throw null;
    }

    private final Object zzH(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    private static Field zzI(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    private final void zzJ(Object obj, Object obj2, int i) {
        long jZzC = zzC(i) & 1048575;
        if (zzQ(obj2, i)) {
            Object objZzf = zzaez.zzf(obj, jZzC);
            Object objZzf2 = zzaez.zzf(obj2, jZzC);
            if (objZzf != null && objZzf2 != null) {
                zzaez.zzs(obj, jZzC, zzacn.zzg(objZzf, objZzf2));
                zzM(obj, i);
            } else if (objZzf2 != null) {
                zzaez.zzs(obj, jZzC, objZzf2);
                zzM(obj, i);
            }
        }
    }

    private final void zzK(Object obj, Object obj2, int i) {
        int iZzC = zzC(i);
        int i2 = this.zzc[i];
        long j = iZzC & 1048575;
        if (zzT(obj2, i2, i)) {
            Object objZzf = zzT(obj, i2, i) ? zzaez.zzf(obj, j) : null;
            Object objZzf2 = zzaez.zzf(obj2, j);
            if (objZzf != null && objZzf2 != null) {
                zzaez.zzs(obj, j, zzacn.zzg(objZzf, objZzf2));
                zzN(obj, i2, i);
            } else if (objZzf2 != null) {
                zzaez.zzs(obj, j, objZzf2);
                zzN(obj, i2, i);
            }
        }
    }

    private final void zzL(Object obj, int i, zzadx zzadxVar) throws IOException {
        if (zzP(i)) {
            zzaez.zzs(obj, i & 1048575, zzadxVar.zzu());
        } else if (this.zzi) {
            zzaez.zzs(obj, i & 1048575, zzadxVar.zzt());
        } else {
            zzaez.zzs(obj, i & 1048575, zzadxVar.zzp());
        }
    }

    private final void zzM(Object obj, int i) {
        int iZzz = zzz(i);
        long j = 1048575 & iZzz;
        if (j == 1048575) {
            return;
        }
        zzaez.zzq(obj, j, (1 << (iZzz >>> 20)) | zzaez.zzc(obj, j));
    }

    private final void zzN(Object obj, int i, int i2) {
        zzaez.zzq(obj, zzz(i2) & 1048575, i);
    }

    private final boolean zzO(Object obj, Object obj2, int i) {
        return zzQ(obj, i) == zzQ(obj2, i);
    }

    private static boolean zzP(int i) {
        return (i & 536870912) != 0;
    }

    private final boolean zzQ(Object obj, int i) {
        int iZzz = zzz(i);
        long j = iZzz & 1048575;
        if (j != 1048575) {
            return (zzaez.zzc(obj, j) & (1 << (iZzz >>> 20))) != 0;
        }
        int iZzC = zzC(i);
        long j2 = iZzC & 1048575;
        switch (zzB(iZzC)) {
            case 0:
                return Double.doubleToRawLongBits(zzaez.zza(obj, j2)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzaez.zzb(obj, j2)) != 0;
            case 2:
                return zzaez.zzd(obj, j2) != 0;
            case 3:
                return zzaez.zzd(obj, j2) != 0;
            case 4:
                return zzaez.zzc(obj, j2) != 0;
            case 5:
                return zzaez.zzd(obj, j2) != 0;
            case 6:
                return zzaez.zzc(obj, j2) != 0;
            case 7:
                return zzaez.zzw(obj, j2);
            case 8:
                Object objZzf = zzaez.zzf(obj, j2);
                if (objZzf instanceof String) {
                    return !((String) objZzf).isEmpty();
                }
                if (objZzf instanceof zzabe) {
                    return !zzabe.zzb.equals(objZzf);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzaez.zzf(obj, j2) != null;
            case 10:
                return !zzabe.zzb.equals(zzaez.zzf(obj, j2));
            case 11:
                return zzaez.zzc(obj, j2) != 0;
            case 12:
                return zzaez.zzc(obj, j2) != 0;
            case 13:
                return zzaez.zzc(obj, j2) != 0;
            case 14:
                return zzaez.zzd(obj, j2) != 0;
            case 15:
                return zzaez.zzc(obj, j2) != 0;
            case 16:
                return zzaez.zzd(obj, j2) != 0;
            case 17:
                return zzaez.zzf(obj, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zzR(Object obj, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? zzQ(obj, i) : (i3 & i4) != 0;
    }

    private static boolean zzS(Object obj, int i, zzady zzadyVar) {
        return zzadyVar.zzk(zzaez.zzf(obj, i & 1048575));
    }

    private final boolean zzT(Object obj, int i, int i2) {
        return zzaez.zzc(obj, (long) (zzz(i2) & 1048575)) == i;
    }

    private static boolean zzU(Object obj, long j) {
        return ((Boolean) zzaez.zzf(obj, j)).booleanValue();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private final void zzV(Object obj, zzabq zzabqVar) throws IOException {
        int i;
        boolean z;
        if (this.zzh) {
            this.zzp.zza(obj);
            throw null;
        }
        int length = this.zzc.length;
        Unsafe unsafe = zzb;
        int i2 = 1048575;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i4 < length) {
            int iZzC = zzC(i4);
            int[] iArr = this.zzc;
            int i6 = iArr[i4];
            int iZzB = zzB(iZzC);
            if (iZzB <= 17) {
                int i7 = iArr[i4 + 2];
                int i8 = i7 & i2;
                if (i8 != i3) {
                    i5 = unsafe.getInt(obj, i8);
                    i3 = i8;
                }
                i = 1 << (i7 >>> 20);
            } else {
                i = 0;
            }
            long j = iZzC & i2;
            switch (iZzB) {
                case 0:
                    if ((i5 & i) != 0) {
                        zzabqVar.zzf(i6, zzaez.zza(obj, j));
                    }
                    break;
                case 1:
                    if ((i5 & i) != 0) {
                        zzabqVar.zzo(i6, zzaez.zzb(obj, j));
                    }
                    break;
                case 2:
                    if ((i5 & i) != 0) {
                        zzabqVar.zzt(i6, unsafe.getLong(obj, j));
                    }
                    break;
                case 3:
                    if ((i5 & i) != 0) {
                        zzabqVar.zzJ(i6, unsafe.getLong(obj, j));
                    }
                    break;
                case 4:
                    if ((i5 & i) != 0) {
                        zzabqVar.zzr(i6, unsafe.getInt(obj, j));
                    }
                    break;
                case 5:
                    if ((i5 & i) != 0) {
                        zzabqVar.zzm(i6, unsafe.getLong(obj, j));
                    }
                    break;
                case 6:
                    if ((i5 & i) != 0) {
                        zzabqVar.zzk(i6, unsafe.getInt(obj, j));
                    }
                    break;
                case 7:
                    if ((i5 & i) != 0) {
                        zzabqVar.zzb(i6, zzaez.zzw(obj, j));
                    }
                    break;
                case 8:
                    if ((i5 & i) != 0) {
                        zzX(i6, unsafe.getObject(obj, j), zzabqVar);
                    }
                    break;
                case 9:
                    if ((i5 & i) != 0) {
                        zzabqVar.zzv(i6, unsafe.getObject(obj, j), zzF(i4));
                    }
                    break;
                case 10:
                    if ((i5 & i) != 0) {
                        zzabqVar.zzd(i6, (zzabe) unsafe.getObject(obj, j));
                    }
                    break;
                case 11:
                    if ((i5 & i) != 0) {
                        zzabqVar.zzH(i6, unsafe.getInt(obj, j));
                    }
                    break;
                case 12:
                    if ((i5 & i) != 0) {
                        zzabqVar.zzi(i6, unsafe.getInt(obj, j));
                    }
                    break;
                case 13:
                    if ((i5 & i) != 0) {
                        zzabqVar.zzw(i6, unsafe.getInt(obj, j));
                    }
                    break;
                case 14:
                    if ((i5 & i) != 0) {
                        zzabqVar.zzy(i6, unsafe.getLong(obj, j));
                    }
                    break;
                case 15:
                    if ((i5 & i) != 0) {
                        zzabqVar.zzA(i6, unsafe.getInt(obj, j));
                    }
                    break;
                case 16:
                    if ((i5 & i) != 0) {
                        zzabqVar.zzC(i6, unsafe.getLong(obj, j));
                    }
                    break;
                case 17:
                    if ((i5 & i) != 0) {
                        zzabqVar.zzq(i6, unsafe.getObject(obj, j), zzF(i4));
                    }
                    break;
                case 18:
                    zzaea.zzL(this.zzc[i4], (List) unsafe.getObject(obj, j), zzabqVar, false);
                    break;
                case 19:
                    zzaea.zzP(this.zzc[i4], (List) unsafe.getObject(obj, j), zzabqVar, false);
                    break;
                case 20:
                    zzaea.zzS(this.zzc[i4], (List) unsafe.getObject(obj, j), zzabqVar, false);
                    break;
                case 21:
                    zzaea.zzaa(this.zzc[i4], (List) unsafe.getObject(obj, j), zzabqVar, false);
                    break;
                case 22:
                    zzaea.zzR(this.zzc[i4], (List) unsafe.getObject(obj, j), zzabqVar, false);
                    break;
                case 23:
                    zzaea.zzO(this.zzc[i4], (List) unsafe.getObject(obj, j), zzabqVar, false);
                    break;
                case 24:
                    zzaea.zzN(this.zzc[i4], (List) unsafe.getObject(obj, j), zzabqVar, false);
                    break;
                case 25:
                    zzaea.zzJ(this.zzc[i4], (List) unsafe.getObject(obj, j), zzabqVar, false);
                    break;
                case 26:
                    zzaea.zzY(this.zzc[i4], (List) unsafe.getObject(obj, j), zzabqVar);
                    break;
                case 27:
                    zzaea.zzT(this.zzc[i4], (List) unsafe.getObject(obj, j), zzabqVar, zzF(i4));
                    break;
                case 28:
                    zzaea.zzK(this.zzc[i4], (List) unsafe.getObject(obj, j), zzabqVar);
                    break;
                case 29:
                    z = false;
                    zzaea.zzZ(this.zzc[i4], (List) unsafe.getObject(obj, j), zzabqVar, false);
                    break;
                case 30:
                    z = false;
                    zzaea.zzM(this.zzc[i4], (List) unsafe.getObject(obj, j), zzabqVar, false);
                    break;
                case 31:
                    z = false;
                    zzaea.zzU(this.zzc[i4], (List) unsafe.getObject(obj, j), zzabqVar, false);
                    break;
                case 32:
                    z = false;
                    zzaea.zzV(this.zzc[i4], (List) unsafe.getObject(obj, j), zzabqVar, false);
                    break;
                case 33:
                    z = false;
                    zzaea.zzW(this.zzc[i4], (List) unsafe.getObject(obj, j), zzabqVar, false);
                    break;
                case 34:
                    z = false;
                    zzaea.zzX(this.zzc[i4], (List) unsafe.getObject(obj, j), zzabqVar, false);
                    break;
                case 35:
                    zzaea.zzL(this.zzc[i4], (List) unsafe.getObject(obj, j), zzabqVar, true);
                    break;
                case 36:
                    zzaea.zzP(this.zzc[i4], (List) unsafe.getObject(obj, j), zzabqVar, true);
                    break;
                case 37:
                    zzaea.zzS(this.zzc[i4], (List) unsafe.getObject(obj, j), zzabqVar, true);
                    break;
                case 38:
                    zzaea.zzaa(this.zzc[i4], (List) unsafe.getObject(obj, j), zzabqVar, true);
                    break;
                case 39:
                    zzaea.zzR(this.zzc[i4], (List) unsafe.getObject(obj, j), zzabqVar, true);
                    break;
                case 40:
                    zzaea.zzO(this.zzc[i4], (List) unsafe.getObject(obj, j), zzabqVar, true);
                    break;
                case 41:
                    zzaea.zzN(this.zzc[i4], (List) unsafe.getObject(obj, j), zzabqVar, true);
                    break;
                case 42:
                    zzaea.zzJ(this.zzc[i4], (List) unsafe.getObject(obj, j), zzabqVar, true);
                    break;
                case 43:
                    zzaea.zzZ(this.zzc[i4], (List) unsafe.getObject(obj, j), zzabqVar, true);
                    break;
                case 44:
                    zzaea.zzM(this.zzc[i4], (List) unsafe.getObject(obj, j), zzabqVar, true);
                    break;
                case 45:
                    zzaea.zzU(this.zzc[i4], (List) unsafe.getObject(obj, j), zzabqVar, true);
                    break;
                case 46:
                    zzaea.zzV(this.zzc[i4], (List) unsafe.getObject(obj, j), zzabqVar, true);
                    break;
                case 47:
                    zzaea.zzW(this.zzc[i4], (List) unsafe.getObject(obj, j), zzabqVar, true);
                    break;
                case 48:
                    zzaea.zzX(this.zzc[i4], (List) unsafe.getObject(obj, j), zzabqVar, true);
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
                    zzaea.zzQ(this.zzc[i4], (List) unsafe.getObject(obj, j), zzabqVar, zzF(i4));
                    break;
                case 50:
                    zzW(zzabqVar, i6, unsafe.getObject(obj, j), i4);
                    break;
                case 51:
                    if (zzT(obj, i6, i4)) {
                        zzabqVar.zzf(i6, zzo(obj, j));
                    }
                    break;
                case 52:
                    if (zzT(obj, i6, i4)) {
                        zzabqVar.zzo(i6, zzp(obj, j));
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF /* 53 */:
                    if (zzT(obj, i6, i4)) {
                        zzabqVar.zzt(i6, zzD(obj, j));
                    }
                    break;
                case 54:
                    if (zzT(obj, i6, i4)) {
                        zzabqVar.zzJ(i6, zzD(obj, j));
                    }
                    break;
                case 55:
                    if (zzT(obj, i6, i4)) {
                        zzabqVar.zzr(i6, zzs(obj, j));
                    }
                    break;
                case 56:
                    if (zzT(obj, i6, i4)) {
                        zzabqVar.zzm(i6, zzD(obj, j));
                    }
                    break;
                case 57:
                    if (zzT(obj, i6, i4)) {
                        zzabqVar.zzk(i6, zzs(obj, j));
                    }
                    break;
                case Elf64_Ehdr.e_shentsize /* 58 */:
                    if (zzT(obj, i6, i4)) {
                        zzabqVar.zzb(i6, zzU(obj, j));
                    }
                    break;
                case 59:
                    if (zzT(obj, i6, i4)) {
                        zzX(i6, unsafe.getObject(obj, j), zzabqVar);
                    }
                    break;
                case 60:
                    if (zzT(obj, i6, i4)) {
                        zzabqVar.zzv(i6, unsafe.getObject(obj, j), zzF(i4));
                    }
                    break;
                case LockFreeTaskQueueCore.CLOSED_SHIFT /* 61 */:
                    if (zzT(obj, i6, i4)) {
                        zzabqVar.zzd(i6, (zzabe) unsafe.getObject(obj, j));
                    }
                    break;
                case Elf64_Ehdr.e_shstrndx /* 62 */:
                    if (zzT(obj, i6, i4)) {
                        zzabqVar.zzH(i6, zzs(obj, j));
                    }
                    break;
                case HtmlCompat.FROM_HTML_MODE_COMPACT /* 63 */:
                    if (zzT(obj, i6, i4)) {
                        zzabqVar.zzi(i6, zzs(obj, j));
                    }
                    break;
                case 64:
                    if (zzT(obj, i6, i4)) {
                        zzabqVar.zzw(i6, zzs(obj, j));
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_HEIGHT /* 65 */:
                    if (zzT(obj, i6, i4)) {
                        zzabqVar.zzy(i6, zzD(obj, j));
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT /* 66 */:
                    if (zzT(obj, i6, i4)) {
                        zzabqVar.zzA(i6, zzs(obj, j));
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.GUIDELINE_USE_RTL /* 67 */:
                    if (zzT(obj, i6, i4)) {
                        zzabqVar.zzC(i6, zzD(obj, j));
                    }
                    break;
                case 68:
                    if (zzT(obj, i6, i4)) {
                        zzabqVar.zzq(i6, unsafe.getObject(obj, j), zzF(i4));
                    }
                    break;
            }
            i4 += 3;
            i2 = 1048575;
        }
        zzaep zzaepVar = this.zzo;
        zzaepVar.zzr(zzaepVar.zzd(obj), zzabqVar);
    }

    private final void zzW(zzabq zzabqVar, int i, Object obj, int i2) throws IOException {
        if (obj == null) {
            return;
        }
        throw null;
    }

    private static final void zzX(int i, Object obj, zzabq zzabqVar) throws IOException {
        if (obj instanceof String) {
            zzabqVar.zzF(i, (String) obj);
        } else {
            zzabqVar.zzd(i, (zzabe) obj);
        }
    }

    static zzaeq zzd(Object obj) {
        zzach zzachVar = (zzach) obj;
        zzaeq zzaeqVar = zzachVar.zzc;
        if (zzaeqVar != zzaeq.zzc()) {
            return zzaeqVar;
        }
        zzaeq zzaeqVarZze = zzaeq.zze();
        zzachVar.zzc = zzaeqVarZze;
        return zzaeqVarZze;
    }

    static zzadp zzl(Class cls, zzadj zzadjVar, zzadr zzadrVar, zzada zzadaVar, zzaep zzaepVar, zzabv zzabvVar, zzadh zzadhVar) {
        if (zzadjVar instanceof zzadw) {
            return zzm((zzadw) zzadjVar, zzadrVar, zzadaVar, zzaepVar, zzabvVar, zzadhVar);
        }
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:123:0x025e  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x027c  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x032b  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0378  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0391  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static com.google.android.gms.internal.p002firebaseauthapi.zzadp zzm(com.google.android.gms.internal.p002firebaseauthapi.zzadw r34, com.google.android.gms.internal.p002firebaseauthapi.zzadr r35, com.google.android.gms.internal.p002firebaseauthapi.zzada r36, com.google.android.gms.internal.p002firebaseauthapi.zzaep r37, com.google.android.gms.internal.p002firebaseauthapi.zzabv r38, com.google.android.gms.internal.p002firebaseauthapi.zzadh r39) {
        /*
            Method dump skipped, instruction units count: 1017
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.p002firebaseauthapi.zzadp.zzm(com.google.android.gms.internal.firebase-auth-api.zzadw, com.google.android.gms.internal.firebase-auth-api.zzadr, com.google.android.gms.internal.firebase-auth-api.zzada, com.google.android.gms.internal.firebase-auth-api.zzaep, com.google.android.gms.internal.firebase-auth-api.zzabv, com.google.android.gms.internal.firebase-auth-api.zzadh):com.google.android.gms.internal.firebase-auth-api.zzadp");
    }

    private static double zzo(Object obj, long j) {
        return ((Double) zzaez.zzf(obj, j)).doubleValue();
    }

    private static float zzp(Object obj, long j) {
        return ((Float) zzaez.zzf(obj, j)).floatValue();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private final int zzq(Object obj) {
        int i;
        int iZzE;
        int iZzE2;
        int iZzE3;
        int iZzF;
        int iZzE4;
        int iZzy;
        int iZzE5;
        int iZzE6;
        int iZzd;
        int iZzE7;
        int i2;
        int iZzu;
        boolean z;
        int iZzd2;
        int iZzi;
        int iZzD;
        int iZzE8;
        int iZzE9;
        int iZzE10;
        int iZzE11;
        int iZzE12;
        int iZzF2;
        int iZzE13;
        int iZzd3;
        int iZzE14;
        int i3;
        Unsafe unsafe = zzb;
        int i4 = 1048575;
        int i5 = 1048575;
        int i6 = 0;
        int iZzE15 = 0;
        int i7 = 0;
        while (i6 < this.zzc.length) {
            int iZzC = zzC(i6);
            int[] iArr = this.zzc;
            int i8 = iArr[i6];
            int iZzB = zzB(iZzC);
            if (iZzB <= 17) {
                int i9 = iArr[i6 + 2];
                int i10 = i9 & i4;
                i = 1 << (i9 >>> 20);
                if (i10 != i5) {
                    i7 = unsafe.getInt(obj, i10);
                    i5 = i10;
                }
            } else {
                i = 0;
            }
            long j = iZzC & i4;
            switch (iZzB) {
                case 0:
                    if ((i7 & i) != 0) {
                        iZzE = zzabp.zzE(i8 << 3);
                        iZzE5 = iZzE + 8;
                        iZzE15 += iZzE5;
                    }
                    break;
                case 1:
                    if ((i7 & i) != 0) {
                        iZzE2 = zzabp.zzE(i8 << 3);
                        iZzE5 = iZzE2 + 4;
                        iZzE15 += iZzE5;
                    }
                    break;
                case 2:
                    if ((i7 & i) != 0) {
                        long j2 = unsafe.getLong(obj, j);
                        iZzE3 = zzabp.zzE(i8 << 3);
                        iZzF = zzabp.zzF(j2);
                        iZzE15 += iZzE3 + iZzF;
                    }
                    break;
                case 3:
                    if ((i7 & i) != 0) {
                        long j3 = unsafe.getLong(obj, j);
                        iZzE3 = zzabp.zzE(i8 << 3);
                        iZzF = zzabp.zzF(j3);
                        iZzE15 += iZzE3 + iZzF;
                    }
                    break;
                case 4:
                    if ((i7 & i) != 0) {
                        int i11 = unsafe.getInt(obj, j);
                        iZzE4 = zzabp.zzE(i8 << 3);
                        iZzy = zzabp.zzy(i11);
                        i2 = iZzE4 + iZzy;
                        iZzE15 += i2;
                    }
                    break;
                case 5:
                    if ((i7 & i) != 0) {
                        iZzE = zzabp.zzE(i8 << 3);
                        iZzE5 = iZzE + 8;
                        iZzE15 += iZzE5;
                    }
                    break;
                case 6:
                    if ((i7 & i) != 0) {
                        iZzE2 = zzabp.zzE(i8 << 3);
                        iZzE5 = iZzE2 + 4;
                        iZzE15 += iZzE5;
                    }
                    break;
                case 7:
                    if ((i7 & i) != 0) {
                        iZzE5 = zzabp.zzE(i8 << 3) + 1;
                        iZzE15 += iZzE5;
                    }
                    break;
                case 8:
                    if ((i7 & i) != 0) {
                        Object object = unsafe.getObject(obj, j);
                        if (!(object instanceof zzabe)) {
                            iZzE4 = zzabp.zzE(i8 << 3);
                            iZzy = zzabp.zzC((String) object);
                            i2 = iZzE4 + iZzy;
                            iZzE15 += i2;
                        } else {
                            iZzE6 = zzabp.zzE(i8 << 3);
                            iZzd = ((zzabe) object).zzd();
                            iZzE7 = zzabp.zzE(iZzd);
                            i2 = iZzE6 + iZzE7 + iZzd;
                            iZzE15 += i2;
                        }
                    }
                    break;
                case 9:
                    if ((i7 & i) != 0) {
                        iZzE5 = zzaea.zzo(i8, unsafe.getObject(obj, j), zzF(i6));
                        iZzE15 += iZzE5;
                    }
                    break;
                case 10:
                    if ((i7 & i) != 0) {
                        zzabe zzabeVar = (zzabe) unsafe.getObject(obj, j);
                        iZzE6 = zzabp.zzE(i8 << 3);
                        iZzd = zzabeVar.zzd();
                        iZzE7 = zzabp.zzE(iZzd);
                        i2 = iZzE6 + iZzE7 + iZzd;
                        iZzE15 += i2;
                    }
                    break;
                case 11:
                    if ((i7 & i) != 0) {
                        int i12 = unsafe.getInt(obj, j);
                        iZzE4 = zzabp.zzE(i8 << 3);
                        iZzy = zzabp.zzE(i12);
                        i2 = iZzE4 + iZzy;
                        iZzE15 += i2;
                    }
                    break;
                case 12:
                    if ((i7 & i) != 0) {
                        int i13 = unsafe.getInt(obj, j);
                        iZzE4 = zzabp.zzE(i8 << 3);
                        iZzy = zzabp.zzy(i13);
                        i2 = iZzE4 + iZzy;
                        iZzE15 += i2;
                    }
                    break;
                case 13:
                    if ((i7 & i) != 0) {
                        iZzE2 = zzabp.zzE(i8 << 3);
                        iZzE5 = iZzE2 + 4;
                        iZzE15 += iZzE5;
                    }
                    break;
                case 14:
                    if ((i7 & i) != 0) {
                        iZzE = zzabp.zzE(i8 << 3);
                        iZzE5 = iZzE + 8;
                        iZzE15 += iZzE5;
                    }
                    break;
                case 15:
                    if ((i7 & i) != 0) {
                        int i14 = unsafe.getInt(obj, j);
                        iZzE4 = zzabp.zzE(i8 << 3);
                        iZzy = zzabp.zzE((i14 >> 31) ^ (i14 + i14));
                        i2 = iZzE4 + iZzy;
                        iZzE15 += i2;
                    }
                    break;
                case 16:
                    if ((i & i7) != 0) {
                        long j4 = unsafe.getLong(obj, j);
                        iZzE15 += zzabp.zzE(i8 << 3) + zzabp.zzF((j4 >> 63) ^ (j4 + j4));
                    }
                    break;
                case 17:
                    if ((i7 & i) != 0) {
                        iZzE5 = zzabp.zzx(i8, (zzadm) unsafe.getObject(obj, j), zzF(i6));
                        iZzE15 += iZzE5;
                    }
                    break;
                case 18:
                    iZzE5 = zzaea.zzh(i8, (List) unsafe.getObject(obj, j), false);
                    iZzE15 += iZzE5;
                    break;
                case 19:
                    iZzE5 = zzaea.zzf(i8, (List) unsafe.getObject(obj, j), false);
                    iZzE15 += iZzE5;
                    break;
                case 20:
                    iZzE5 = zzaea.zzm(i8, (List) unsafe.getObject(obj, j), false);
                    iZzE15 += iZzE5;
                    break;
                case 21:
                    iZzE5 = zzaea.zzx(i8, (List) unsafe.getObject(obj, j), false);
                    iZzE15 += iZzE5;
                    break;
                case 22:
                    iZzE5 = zzaea.zzk(i8, (List) unsafe.getObject(obj, j), false);
                    iZzE15 += iZzE5;
                    break;
                case 23:
                    iZzE5 = zzaea.zzh(i8, (List) unsafe.getObject(obj, j), false);
                    iZzE15 += iZzE5;
                    break;
                case 24:
                    iZzE5 = zzaea.zzf(i8, (List) unsafe.getObject(obj, j), false);
                    iZzE15 += iZzE5;
                    break;
                case 25:
                    iZzE5 = zzaea.zza(i8, (List) unsafe.getObject(obj, j), false);
                    iZzE15 += iZzE5;
                    break;
                case 26:
                    iZzu = zzaea.zzu(i8, (List) unsafe.getObject(obj, j));
                    iZzE15 += iZzu;
                    break;
                case 27:
                    iZzu = zzaea.zzp(i8, (List) unsafe.getObject(obj, j), zzF(i6));
                    iZzE15 += iZzu;
                    break;
                case 28:
                    iZzu = zzaea.zzc(i8, (List) unsafe.getObject(obj, j));
                    iZzE15 += iZzu;
                    break;
                case 29:
                    iZzu = zzaea.zzv(i8, (List) unsafe.getObject(obj, j), false);
                    iZzE15 += iZzu;
                    break;
                case 30:
                    z = false;
                    iZzd2 = zzaea.zzd(i8, (List) unsafe.getObject(obj, j), false);
                    iZzE15 += iZzd2;
                    break;
                case 31:
                    z = false;
                    iZzd2 = zzaea.zzf(i8, (List) unsafe.getObject(obj, j), false);
                    iZzE15 += iZzd2;
                    break;
                case 32:
                    z = false;
                    iZzd2 = zzaea.zzh(i8, (List) unsafe.getObject(obj, j), false);
                    iZzE15 += iZzd2;
                    break;
                case 33:
                    z = false;
                    iZzd2 = zzaea.zzq(i8, (List) unsafe.getObject(obj, j), false);
                    iZzE15 += iZzd2;
                    break;
                case 34:
                    z = false;
                    iZzd2 = zzaea.zzs(i8, (List) unsafe.getObject(obj, j), false);
                    iZzE15 += iZzd2;
                    break;
                case 35:
                    iZzi = zzaea.zzi((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzD = zzabp.zzD(i8);
                        iZzE8 = zzabp.zzE(iZzi);
                        iZzE9 = iZzD + iZzE8;
                        i3 = iZzE9 + iZzi;
                        iZzE15 += i3;
                    }
                    break;
                case 36:
                    iZzi = zzaea.zzg((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzD = zzabp.zzD(i8);
                        iZzE8 = zzabp.zzE(iZzi);
                        iZzE9 = iZzD + iZzE8;
                        i3 = iZzE9 + iZzi;
                        iZzE15 += i3;
                    }
                    break;
                case 37:
                    iZzi = zzaea.zzn((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzD = zzabp.zzD(i8);
                        iZzE8 = zzabp.zzE(iZzi);
                        iZzE9 = iZzD + iZzE8;
                        i3 = iZzE9 + iZzi;
                        iZzE15 += i3;
                    }
                    break;
                case 38:
                    iZzi = zzaea.zzy((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzD = zzabp.zzD(i8);
                        iZzE8 = zzabp.zzE(iZzi);
                        iZzE9 = iZzD + iZzE8;
                        i3 = iZzE9 + iZzi;
                        iZzE15 += i3;
                    }
                    break;
                case 39:
                    iZzi = zzaea.zzl((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzD = zzabp.zzD(i8);
                        iZzE8 = zzabp.zzE(iZzi);
                        iZzE9 = iZzD + iZzE8;
                        i3 = iZzE9 + iZzi;
                        iZzE15 += i3;
                    }
                    break;
                case 40:
                    iZzi = zzaea.zzi((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzD = zzabp.zzD(i8);
                        iZzE8 = zzabp.zzE(iZzi);
                        iZzE9 = iZzD + iZzE8;
                        i3 = iZzE9 + iZzi;
                        iZzE15 += i3;
                    }
                    break;
                case 41:
                    iZzi = zzaea.zzg((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzD = zzabp.zzD(i8);
                        iZzE8 = zzabp.zzE(iZzi);
                        iZzE9 = iZzD + iZzE8;
                        i3 = iZzE9 + iZzi;
                        iZzE15 += i3;
                    }
                    break;
                case 42:
                    iZzi = zzaea.zzb((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzD = zzabp.zzD(i8);
                        iZzE8 = zzabp.zzE(iZzi);
                        iZzE9 = iZzD + iZzE8;
                        i3 = iZzE9 + iZzi;
                        iZzE15 += i3;
                    }
                    break;
                case 43:
                    iZzi = zzaea.zzw((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzD = zzabp.zzD(i8);
                        iZzE8 = zzabp.zzE(iZzi);
                        iZzE9 = iZzD + iZzE8;
                        i3 = iZzE9 + iZzi;
                        iZzE15 += i3;
                    }
                    break;
                case 44:
                    iZzi = zzaea.zze((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzD = zzabp.zzD(i8);
                        iZzE8 = zzabp.zzE(iZzi);
                        iZzE9 = iZzD + iZzE8;
                        i3 = iZzE9 + iZzi;
                        iZzE15 += i3;
                    }
                    break;
                case 45:
                    iZzi = zzaea.zzg((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzD = zzabp.zzD(i8);
                        iZzE8 = zzabp.zzE(iZzi);
                        iZzE9 = iZzD + iZzE8;
                        i3 = iZzE9 + iZzi;
                        iZzE15 += i3;
                    }
                    break;
                case 46:
                    iZzi = zzaea.zzi((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzD = zzabp.zzD(i8);
                        iZzE8 = zzabp.zzE(iZzi);
                        iZzE9 = iZzD + iZzE8;
                        i3 = iZzE9 + iZzi;
                        iZzE15 += i3;
                    }
                    break;
                case 47:
                    iZzi = zzaea.zzr((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzD = zzabp.zzD(i8);
                        iZzE8 = zzabp.zzE(iZzi);
                        iZzE9 = iZzD + iZzE8;
                        i3 = iZzE9 + iZzi;
                        iZzE15 += i3;
                    }
                    break;
                case 48:
                    iZzi = zzaea.zzt((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzD = zzabp.zzD(i8);
                        iZzE8 = zzabp.zzE(iZzi);
                        iZzE9 = iZzD + iZzE8;
                        i3 = iZzE9 + iZzi;
                        iZzE15 += i3;
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
                    iZzu = zzaea.zzj(i8, (List) unsafe.getObject(obj, j), zzF(i6));
                    iZzE15 += iZzu;
                    break;
                case 50:
                    zzadh.zza(i8, unsafe.getObject(obj, j), zzH(i6));
                    break;
                case 51:
                    if (zzT(obj, i8, i6)) {
                        iZzE10 = zzabp.zzE(i8 << 3);
                        iZzu = iZzE10 + 8;
                        iZzE15 += iZzu;
                    }
                    break;
                case 52:
                    if (zzT(obj, i8, i6)) {
                        iZzE11 = zzabp.zzE(i8 << 3);
                        iZzu = iZzE11 + 4;
                        iZzE15 += iZzu;
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF /* 53 */:
                    if (zzT(obj, i8, i6)) {
                        long jZzD = zzD(obj, j);
                        iZzE12 = zzabp.zzE(i8 << 3);
                        iZzF2 = zzabp.zzF(jZzD);
                        iZzE15 += iZzE12 + iZzF2;
                    }
                    break;
                case 54:
                    if (zzT(obj, i8, i6)) {
                        long jZzD2 = zzD(obj, j);
                        iZzE12 = zzabp.zzE(i8 << 3);
                        iZzF2 = zzabp.zzF(jZzD2);
                        iZzE15 += iZzE12 + iZzF2;
                    }
                    break;
                case 55:
                    if (zzT(obj, i8, i6)) {
                        int iZzs = zzs(obj, j);
                        iZzE9 = zzabp.zzE(i8 << 3);
                        iZzi = zzabp.zzy(iZzs);
                        i3 = iZzE9 + iZzi;
                        iZzE15 += i3;
                    }
                    break;
                case 56:
                    if (zzT(obj, i8, i6)) {
                        iZzE10 = zzabp.zzE(i8 << 3);
                        iZzu = iZzE10 + 8;
                        iZzE15 += iZzu;
                    }
                    break;
                case 57:
                    if (zzT(obj, i8, i6)) {
                        iZzE11 = zzabp.zzE(i8 << 3);
                        iZzu = iZzE11 + 4;
                        iZzE15 += iZzu;
                    }
                    break;
                case Elf64_Ehdr.e_shentsize /* 58 */:
                    if (zzT(obj, i8, i6)) {
                        iZzu = zzabp.zzE(i8 << 3) + 1;
                        iZzE15 += iZzu;
                    }
                    break;
                case 59:
                    if (zzT(obj, i8, i6)) {
                        Object object2 = unsafe.getObject(obj, j);
                        if (object2 instanceof zzabe) {
                            iZzE13 = zzabp.zzE(i8 << 3);
                            iZzd3 = ((zzabe) object2).zzd();
                            iZzE14 = zzabp.zzE(iZzd3);
                            i3 = iZzE13 + iZzE14 + iZzd3;
                            iZzE15 += i3;
                        } else {
                            iZzE9 = zzabp.zzE(i8 << 3);
                            iZzi = zzabp.zzC((String) object2);
                            i3 = iZzE9 + iZzi;
                            iZzE15 += i3;
                        }
                    }
                    break;
                case 60:
                    if (zzT(obj, i8, i6)) {
                        iZzu = zzaea.zzo(i8, unsafe.getObject(obj, j), zzF(i6));
                        iZzE15 += iZzu;
                    }
                    break;
                case LockFreeTaskQueueCore.CLOSED_SHIFT /* 61 */:
                    if (zzT(obj, i8, i6)) {
                        zzabe zzabeVar2 = (zzabe) unsafe.getObject(obj, j);
                        iZzE13 = zzabp.zzE(i8 << 3);
                        iZzd3 = zzabeVar2.zzd();
                        iZzE14 = zzabp.zzE(iZzd3);
                        i3 = iZzE13 + iZzE14 + iZzd3;
                        iZzE15 += i3;
                    }
                    break;
                case Elf64_Ehdr.e_shstrndx /* 62 */:
                    if (zzT(obj, i8, i6)) {
                        int iZzs2 = zzs(obj, j);
                        iZzE9 = zzabp.zzE(i8 << 3);
                        iZzi = zzabp.zzE(iZzs2);
                        i3 = iZzE9 + iZzi;
                        iZzE15 += i3;
                    }
                    break;
                case HtmlCompat.FROM_HTML_MODE_COMPACT /* 63 */:
                    if (zzT(obj, i8, i6)) {
                        int iZzs3 = zzs(obj, j);
                        iZzE9 = zzabp.zzE(i8 << 3);
                        iZzi = zzabp.zzy(iZzs3);
                        i3 = iZzE9 + iZzi;
                        iZzE15 += i3;
                    }
                    break;
                case 64:
                    if (zzT(obj, i8, i6)) {
                        iZzE11 = zzabp.zzE(i8 << 3);
                        iZzu = iZzE11 + 4;
                        iZzE15 += iZzu;
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_HEIGHT /* 65 */:
                    if (zzT(obj, i8, i6)) {
                        iZzE10 = zzabp.zzE(i8 << 3);
                        iZzu = iZzE10 + 8;
                        iZzE15 += iZzu;
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT /* 66 */:
                    if (zzT(obj, i8, i6)) {
                        int iZzs4 = zzs(obj, j);
                        iZzE9 = zzabp.zzE(i8 << 3);
                        iZzi = zzabp.zzE((iZzs4 >> 31) ^ (iZzs4 + iZzs4));
                        i3 = iZzE9 + iZzi;
                        iZzE15 += i3;
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.GUIDELINE_USE_RTL /* 67 */:
                    if (zzT(obj, i8, i6)) {
                        long jZzD3 = zzD(obj, j);
                        iZzE15 += zzabp.zzE(i8 << 3) + zzabp.zzF((jZzD3 >> 63) ^ (jZzD3 + jZzD3));
                    }
                    break;
                case 68:
                    if (zzT(obj, i8, i6)) {
                        iZzu = zzabp.zzx(i8, (zzadm) unsafe.getObject(obj, j), zzF(i6));
                        iZzE15 += iZzu;
                    }
                    break;
            }
            i6 += 3;
            i4 = 1048575;
        }
        zzaep zzaepVar = this.zzo;
        int iZza = iZzE15 + zzaepVar.zza(zzaepVar.zzd(obj));
        if (!this.zzh) {
            return iZza;
        }
        this.zzp.zza(obj);
        throw null;
    }

    private final int zzr(Object obj) {
        int iZzE;
        int iZzE2;
        int iZzE3;
        int iZzF;
        int iZzE4;
        int iZzy;
        int iZzE5;
        int iZzE6;
        int iZzd;
        int iZzE7;
        int iZzo;
        int iZzD;
        int iZzE8;
        int i;
        Unsafe unsafe = zzb;
        int i2 = 0;
        for (int i3 = 0; i3 < this.zzc.length; i3 += 3) {
            int iZzC = zzC(i3);
            int iZzB = zzB(iZzC);
            int i4 = this.zzc[i3];
            long j = iZzC & 1048575;
            if (iZzB >= zzaca.DOUBLE_LIST_PACKED.zza() && iZzB <= zzaca.SINT64_LIST_PACKED.zza()) {
                int i5 = this.zzc[i3 + 2];
            }
            switch (iZzB) {
                case 0:
                    if (zzQ(obj, i3)) {
                        iZzE = zzabp.zzE(i4 << 3);
                        iZzo = iZzE + 8;
                        i2 += iZzo;
                    }
                    break;
                case 1:
                    if (zzQ(obj, i3)) {
                        iZzE2 = zzabp.zzE(i4 << 3);
                        iZzo = iZzE2 + 4;
                        i2 += iZzo;
                    }
                    break;
                case 2:
                    if (zzQ(obj, i3)) {
                        long jZzd = zzaez.zzd(obj, j);
                        iZzE3 = zzabp.zzE(i4 << 3);
                        iZzF = zzabp.zzF(jZzd);
                        i2 += iZzE3 + iZzF;
                    }
                    break;
                case 3:
                    if (zzQ(obj, i3)) {
                        long jZzd2 = zzaez.zzd(obj, j);
                        iZzE3 = zzabp.zzE(i4 << 3);
                        iZzF = zzabp.zzF(jZzd2);
                        i2 += iZzE3 + iZzF;
                    }
                    break;
                case 4:
                    if (zzQ(obj, i3)) {
                        int iZzc = zzaez.zzc(obj, j);
                        iZzE4 = zzabp.zzE(i4 << 3);
                        iZzy = zzabp.zzy(iZzc);
                        i = iZzE4 + iZzy;
                        i2 += i;
                    }
                    break;
                case 5:
                    if (zzQ(obj, i3)) {
                        iZzE = zzabp.zzE(i4 << 3);
                        iZzo = iZzE + 8;
                        i2 += iZzo;
                    }
                    break;
                case 6:
                    if (zzQ(obj, i3)) {
                        iZzE2 = zzabp.zzE(i4 << 3);
                        iZzo = iZzE2 + 4;
                        i2 += iZzo;
                    }
                    break;
                case 7:
                    if (zzQ(obj, i3)) {
                        iZzE5 = zzabp.zzE(i4 << 3);
                        iZzo = iZzE5 + 1;
                        i2 += iZzo;
                    }
                    break;
                case 8:
                    if (zzQ(obj, i3)) {
                        Object objZzf = zzaez.zzf(obj, j);
                        if (objZzf instanceof zzabe) {
                            iZzE6 = zzabp.zzE(i4 << 3);
                            iZzd = ((zzabe) objZzf).zzd();
                            iZzE7 = zzabp.zzE(iZzd);
                            i = iZzE6 + iZzE7 + iZzd;
                            i2 += i;
                        } else {
                            iZzE4 = zzabp.zzE(i4 << 3);
                            iZzy = zzabp.zzC((String) objZzf);
                            i = iZzE4 + iZzy;
                            i2 += i;
                        }
                    }
                    break;
                case 9:
                    if (zzQ(obj, i3)) {
                        iZzo = zzaea.zzo(i4, zzaez.zzf(obj, j), zzF(i3));
                        i2 += iZzo;
                    }
                    break;
                case 10:
                    if (zzQ(obj, i3)) {
                        zzabe zzabeVar = (zzabe) zzaez.zzf(obj, j);
                        iZzE6 = zzabp.zzE(i4 << 3);
                        iZzd = zzabeVar.zzd();
                        iZzE7 = zzabp.zzE(iZzd);
                        i = iZzE6 + iZzE7 + iZzd;
                        i2 += i;
                    }
                    break;
                case 11:
                    if (zzQ(obj, i3)) {
                        int iZzc2 = zzaez.zzc(obj, j);
                        iZzE4 = zzabp.zzE(i4 << 3);
                        iZzy = zzabp.zzE(iZzc2);
                        i = iZzE4 + iZzy;
                        i2 += i;
                    }
                    break;
                case 12:
                    if (zzQ(obj, i3)) {
                        int iZzc3 = zzaez.zzc(obj, j);
                        iZzE4 = zzabp.zzE(i4 << 3);
                        iZzy = zzabp.zzy(iZzc3);
                        i = iZzE4 + iZzy;
                        i2 += i;
                    }
                    break;
                case 13:
                    if (zzQ(obj, i3)) {
                        iZzE2 = zzabp.zzE(i4 << 3);
                        iZzo = iZzE2 + 4;
                        i2 += iZzo;
                    }
                    break;
                case 14:
                    if (zzQ(obj, i3)) {
                        iZzE = zzabp.zzE(i4 << 3);
                        iZzo = iZzE + 8;
                        i2 += iZzo;
                    }
                    break;
                case 15:
                    if (zzQ(obj, i3)) {
                        int iZzc4 = zzaez.zzc(obj, j);
                        iZzE4 = zzabp.zzE(i4 << 3);
                        iZzy = zzabp.zzE((iZzc4 >> 31) ^ (iZzc4 + iZzc4));
                        i = iZzE4 + iZzy;
                        i2 += i;
                    }
                    break;
                case 16:
                    if (zzQ(obj, i3)) {
                        long jZzd3 = zzaez.zzd(obj, j);
                        iZzE4 = zzabp.zzE(i4 << 3);
                        iZzy = zzabp.zzF((jZzd3 >> 63) ^ (jZzd3 + jZzd3));
                        i = iZzE4 + iZzy;
                        i2 += i;
                    }
                    break;
                case 17:
                    if (zzQ(obj, i3)) {
                        iZzo = zzabp.zzx(i4, (zzadm) zzaez.zzf(obj, j), zzF(i3));
                        i2 += iZzo;
                    }
                    break;
                case 18:
                    iZzo = zzaea.zzh(i4, (List) zzaez.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 19:
                    iZzo = zzaea.zzf(i4, (List) zzaez.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 20:
                    iZzo = zzaea.zzm(i4, (List) zzaez.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 21:
                    iZzo = zzaea.zzx(i4, (List) zzaez.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 22:
                    iZzo = zzaea.zzk(i4, (List) zzaez.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 23:
                    iZzo = zzaea.zzh(i4, (List) zzaez.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 24:
                    iZzo = zzaea.zzf(i4, (List) zzaez.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 25:
                    iZzo = zzaea.zza(i4, (List) zzaez.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 26:
                    iZzo = zzaea.zzu(i4, (List) zzaez.zzf(obj, j));
                    i2 += iZzo;
                    break;
                case 27:
                    iZzo = zzaea.zzp(i4, (List) zzaez.zzf(obj, j), zzF(i3));
                    i2 += iZzo;
                    break;
                case 28:
                    iZzo = zzaea.zzc(i4, (List) zzaez.zzf(obj, j));
                    i2 += iZzo;
                    break;
                case 29:
                    iZzo = zzaea.zzv(i4, (List) zzaez.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 30:
                    iZzo = zzaea.zzd(i4, (List) zzaez.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 31:
                    iZzo = zzaea.zzf(i4, (List) zzaez.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 32:
                    iZzo = zzaea.zzh(i4, (List) zzaez.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 33:
                    iZzo = zzaea.zzq(i4, (List) zzaez.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 34:
                    iZzo = zzaea.zzs(i4, (List) zzaez.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 35:
                    iZzy = zzaea.zzi((List) unsafe.getObject(obj, j));
                    if (iZzy > 0) {
                        iZzD = zzabp.zzD(i4);
                        iZzE8 = zzabp.zzE(iZzy);
                        iZzE4 = iZzD + iZzE8;
                        i = iZzE4 + iZzy;
                        i2 += i;
                    }
                    break;
                case 36:
                    iZzy = zzaea.zzg((List) unsafe.getObject(obj, j));
                    if (iZzy > 0) {
                        iZzD = zzabp.zzD(i4);
                        iZzE8 = zzabp.zzE(iZzy);
                        iZzE4 = iZzD + iZzE8;
                        i = iZzE4 + iZzy;
                        i2 += i;
                    }
                    break;
                case 37:
                    iZzy = zzaea.zzn((List) unsafe.getObject(obj, j));
                    if (iZzy > 0) {
                        iZzD = zzabp.zzD(i4);
                        iZzE8 = zzabp.zzE(iZzy);
                        iZzE4 = iZzD + iZzE8;
                        i = iZzE4 + iZzy;
                        i2 += i;
                    }
                    break;
                case 38:
                    iZzy = zzaea.zzy((List) unsafe.getObject(obj, j));
                    if (iZzy > 0) {
                        iZzD = zzabp.zzD(i4);
                        iZzE8 = zzabp.zzE(iZzy);
                        iZzE4 = iZzD + iZzE8;
                        i = iZzE4 + iZzy;
                        i2 += i;
                    }
                    break;
                case 39:
                    iZzy = zzaea.zzl((List) unsafe.getObject(obj, j));
                    if (iZzy > 0) {
                        iZzD = zzabp.zzD(i4);
                        iZzE8 = zzabp.zzE(iZzy);
                        iZzE4 = iZzD + iZzE8;
                        i = iZzE4 + iZzy;
                        i2 += i;
                    }
                    break;
                case 40:
                    iZzy = zzaea.zzi((List) unsafe.getObject(obj, j));
                    if (iZzy > 0) {
                        iZzD = zzabp.zzD(i4);
                        iZzE8 = zzabp.zzE(iZzy);
                        iZzE4 = iZzD + iZzE8;
                        i = iZzE4 + iZzy;
                        i2 += i;
                    }
                    break;
                case 41:
                    iZzy = zzaea.zzg((List) unsafe.getObject(obj, j));
                    if (iZzy > 0) {
                        iZzD = zzabp.zzD(i4);
                        iZzE8 = zzabp.zzE(iZzy);
                        iZzE4 = iZzD + iZzE8;
                        i = iZzE4 + iZzy;
                        i2 += i;
                    }
                    break;
                case 42:
                    iZzy = zzaea.zzb((List) unsafe.getObject(obj, j));
                    if (iZzy > 0) {
                        iZzD = zzabp.zzD(i4);
                        iZzE8 = zzabp.zzE(iZzy);
                        iZzE4 = iZzD + iZzE8;
                        i = iZzE4 + iZzy;
                        i2 += i;
                    }
                    break;
                case 43:
                    iZzy = zzaea.zzw((List) unsafe.getObject(obj, j));
                    if (iZzy > 0) {
                        iZzD = zzabp.zzD(i4);
                        iZzE8 = zzabp.zzE(iZzy);
                        iZzE4 = iZzD + iZzE8;
                        i = iZzE4 + iZzy;
                        i2 += i;
                    }
                    break;
                case 44:
                    iZzy = zzaea.zze((List) unsafe.getObject(obj, j));
                    if (iZzy > 0) {
                        iZzD = zzabp.zzD(i4);
                        iZzE8 = zzabp.zzE(iZzy);
                        iZzE4 = iZzD + iZzE8;
                        i = iZzE4 + iZzy;
                        i2 += i;
                    }
                    break;
                case 45:
                    iZzy = zzaea.zzg((List) unsafe.getObject(obj, j));
                    if (iZzy > 0) {
                        iZzD = zzabp.zzD(i4);
                        iZzE8 = zzabp.zzE(iZzy);
                        iZzE4 = iZzD + iZzE8;
                        i = iZzE4 + iZzy;
                        i2 += i;
                    }
                    break;
                case 46:
                    iZzy = zzaea.zzi((List) unsafe.getObject(obj, j));
                    if (iZzy > 0) {
                        iZzD = zzabp.zzD(i4);
                        iZzE8 = zzabp.zzE(iZzy);
                        iZzE4 = iZzD + iZzE8;
                        i = iZzE4 + iZzy;
                        i2 += i;
                    }
                    break;
                case 47:
                    iZzy = zzaea.zzr((List) unsafe.getObject(obj, j));
                    if (iZzy > 0) {
                        iZzD = zzabp.zzD(i4);
                        iZzE8 = zzabp.zzE(iZzy);
                        iZzE4 = iZzD + iZzE8;
                        i = iZzE4 + iZzy;
                        i2 += i;
                    }
                    break;
                case 48:
                    iZzy = zzaea.zzt((List) unsafe.getObject(obj, j));
                    if (iZzy > 0) {
                        iZzD = zzabp.zzD(i4);
                        iZzE8 = zzabp.zzE(iZzy);
                        iZzE4 = iZzD + iZzE8;
                        i = iZzE4 + iZzy;
                        i2 += i;
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
                    iZzo = zzaea.zzj(i4, (List) zzaez.zzf(obj, j), zzF(i3));
                    i2 += iZzo;
                    break;
                case 50:
                    zzadh.zza(i4, zzaez.zzf(obj, j), zzH(i3));
                    break;
                case 51:
                    if (zzT(obj, i4, i3)) {
                        iZzE = zzabp.zzE(i4 << 3);
                        iZzo = iZzE + 8;
                        i2 += iZzo;
                    }
                    break;
                case 52:
                    if (zzT(obj, i4, i3)) {
                        iZzE2 = zzabp.zzE(i4 << 3);
                        iZzo = iZzE2 + 4;
                        i2 += iZzo;
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF /* 53 */:
                    if (zzT(obj, i4, i3)) {
                        long jZzD = zzD(obj, j);
                        iZzE3 = zzabp.zzE(i4 << 3);
                        iZzF = zzabp.zzF(jZzD);
                        i2 += iZzE3 + iZzF;
                    }
                    break;
                case 54:
                    if (zzT(obj, i4, i3)) {
                        long jZzD2 = zzD(obj, j);
                        iZzE3 = zzabp.zzE(i4 << 3);
                        iZzF = zzabp.zzF(jZzD2);
                        i2 += iZzE3 + iZzF;
                    }
                    break;
                case 55:
                    if (zzT(obj, i4, i3)) {
                        int iZzs = zzs(obj, j);
                        iZzE4 = zzabp.zzE(i4 << 3);
                        iZzy = zzabp.zzy(iZzs);
                        i = iZzE4 + iZzy;
                        i2 += i;
                    }
                    break;
                case 56:
                    if (zzT(obj, i4, i3)) {
                        iZzE = zzabp.zzE(i4 << 3);
                        iZzo = iZzE + 8;
                        i2 += iZzo;
                    }
                    break;
                case 57:
                    if (zzT(obj, i4, i3)) {
                        iZzE2 = zzabp.zzE(i4 << 3);
                        iZzo = iZzE2 + 4;
                        i2 += iZzo;
                    }
                    break;
                case Elf64_Ehdr.e_shentsize /* 58 */:
                    if (zzT(obj, i4, i3)) {
                        iZzE5 = zzabp.zzE(i4 << 3);
                        iZzo = iZzE5 + 1;
                        i2 += iZzo;
                    }
                    break;
                case 59:
                    if (zzT(obj, i4, i3)) {
                        Object objZzf2 = zzaez.zzf(obj, j);
                        if (objZzf2 instanceof zzabe) {
                            iZzE6 = zzabp.zzE(i4 << 3);
                            iZzd = ((zzabe) objZzf2).zzd();
                            iZzE7 = zzabp.zzE(iZzd);
                            i = iZzE6 + iZzE7 + iZzd;
                            i2 += i;
                        } else {
                            iZzE4 = zzabp.zzE(i4 << 3);
                            iZzy = zzabp.zzC((String) objZzf2);
                            i = iZzE4 + iZzy;
                            i2 += i;
                        }
                    }
                    break;
                case 60:
                    if (zzT(obj, i4, i3)) {
                        iZzo = zzaea.zzo(i4, zzaez.zzf(obj, j), zzF(i3));
                        i2 += iZzo;
                    }
                    break;
                case LockFreeTaskQueueCore.CLOSED_SHIFT /* 61 */:
                    if (zzT(obj, i4, i3)) {
                        zzabe zzabeVar2 = (zzabe) zzaez.zzf(obj, j);
                        iZzE6 = zzabp.zzE(i4 << 3);
                        iZzd = zzabeVar2.zzd();
                        iZzE7 = zzabp.zzE(iZzd);
                        i = iZzE6 + iZzE7 + iZzd;
                        i2 += i;
                    }
                    break;
                case Elf64_Ehdr.e_shstrndx /* 62 */:
                    if (zzT(obj, i4, i3)) {
                        int iZzs2 = zzs(obj, j);
                        iZzE4 = zzabp.zzE(i4 << 3);
                        iZzy = zzabp.zzE(iZzs2);
                        i = iZzE4 + iZzy;
                        i2 += i;
                    }
                    break;
                case HtmlCompat.FROM_HTML_MODE_COMPACT /* 63 */:
                    if (zzT(obj, i4, i3)) {
                        int iZzs3 = zzs(obj, j);
                        iZzE4 = zzabp.zzE(i4 << 3);
                        iZzy = zzabp.zzy(iZzs3);
                        i = iZzE4 + iZzy;
                        i2 += i;
                    }
                    break;
                case 64:
                    if (zzT(obj, i4, i3)) {
                        iZzE2 = zzabp.zzE(i4 << 3);
                        iZzo = iZzE2 + 4;
                        i2 += iZzo;
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_HEIGHT /* 65 */:
                    if (zzT(obj, i4, i3)) {
                        iZzE = zzabp.zzE(i4 << 3);
                        iZzo = iZzE + 8;
                        i2 += iZzo;
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT /* 66 */:
                    if (zzT(obj, i4, i3)) {
                        int iZzs4 = zzs(obj, j);
                        iZzE4 = zzabp.zzE(i4 << 3);
                        iZzy = zzabp.zzE((iZzs4 >> 31) ^ (iZzs4 + iZzs4));
                        i = iZzE4 + iZzy;
                        i2 += i;
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.GUIDELINE_USE_RTL /* 67 */:
                    if (zzT(obj, i4, i3)) {
                        long jZzD3 = zzD(obj, j);
                        iZzE4 = zzabp.zzE(i4 << 3);
                        iZzy = zzabp.zzF((jZzD3 >> 63) ^ (jZzD3 + jZzD3));
                        i = iZzE4 + iZzy;
                        i2 += i;
                    }
                    break;
                case 68:
                    if (zzT(obj, i4, i3)) {
                        iZzo = zzabp.zzx(i4, (zzadm) zzaez.zzf(obj, j), zzF(i3));
                        i2 += iZzo;
                    }
                    break;
            }
        }
        zzaep zzaepVar = this.zzo;
        return i2 + zzaepVar.zza(zzaepVar.zzd(obj));
    }

    private static int zzs(Object obj, long j) {
        return ((Integer) zzaez.zzf(obj, j)).intValue();
    }

    private final int zzt(Object obj, byte[] bArr, int i, int i2, int i3, long j, zzaar zzaarVar) throws IOException {
        Unsafe unsafe = zzb;
        Object objZzH = zzH(i3);
        Object object = unsafe.getObject(obj, j);
        if (zzadh.zzb(object)) {
            zzadg zzadgVarZzb = zzadg.zza().zzb();
            zzadh.zzc(zzadgVarZzb, object);
            unsafe.putObject(obj, j, zzadgVarZzb);
        }
        throw null;
    }

    private final int zzu(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, zzaar zzaarVar) throws IOException {
        Unsafe unsafe = zzb;
        long j2 = this.zzc[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 != 1) {
                    return i;
                }
                unsafe.putObject(obj, j, Double.valueOf(Double.longBitsToDouble(zzaas.zzn(bArr, i))));
                unsafe.putInt(obj, j2, i4);
                return i + 8;
            case 52:
                if (i5 != 5) {
                    return i;
                }
                unsafe.putObject(obj, j, Float.valueOf(Float.intBitsToFloat(zzaas.zzb(bArr, i))));
                unsafe.putInt(obj, j2, i4);
                return i + 4;
            case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF /* 53 */:
            case 54:
                if (i5 != 0) {
                    return i;
                }
                int iZzm = zzaas.zzm(bArr, i, zzaarVar);
                unsafe.putObject(obj, j, Long.valueOf(zzaarVar.zzb));
                unsafe.putInt(obj, j2, i4);
                return iZzm;
            case 55:
            case Elf64_Ehdr.e_shstrndx /* 62 */:
                if (i5 != 0) {
                    return i;
                }
                int iZzj = zzaas.zzj(bArr, i, zzaarVar);
                unsafe.putObject(obj, j, Integer.valueOf(zzaarVar.zza));
                unsafe.putInt(obj, j2, i4);
                return iZzj;
            case 56:
            case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_HEIGHT /* 65 */:
                if (i5 != 1) {
                    return i;
                }
                unsafe.putObject(obj, j, Long.valueOf(zzaas.zzn(bArr, i)));
                unsafe.putInt(obj, j2, i4);
                return i + 8;
            case 57:
            case 64:
                if (i5 != 5) {
                    return i;
                }
                unsafe.putObject(obj, j, Integer.valueOf(zzaas.zzb(bArr, i)));
                unsafe.putInt(obj, j2, i4);
                return i + 4;
            case Elf64_Ehdr.e_shentsize /* 58 */:
                if (i5 != 0) {
                    return i;
                }
                int iZzm2 = zzaas.zzm(bArr, i, zzaarVar);
                unsafe.putObject(obj, j, Boolean.valueOf(zzaarVar.zzb != 0));
                unsafe.putInt(obj, j2, i4);
                return iZzm2;
            case 59:
                if (i5 != 2) {
                    return i;
                }
                int iZzj2 = zzaas.zzj(bArr, i, zzaarVar);
                int i9 = zzaarVar.zza;
                if (i9 == 0) {
                    unsafe.putObject(obj, j, "");
                } else {
                    if ((i6 & 536870912) != 0 && !zzafe.zzf(bArr, iZzj2, iZzj2 + i9)) {
                        throw zzacp.zzd();
                    }
                    unsafe.putObject(obj, j, new String(bArr, iZzj2, i9, zzacn.zzb));
                    iZzj2 += i9;
                }
                unsafe.putInt(obj, j2, i4);
                return iZzj2;
            case 60:
                if (i5 != 2) {
                    return i;
                }
                int iZzd = zzaas.zzd(zzF(i8), bArr, i, i2, zzaarVar);
                Object object = unsafe.getInt(obj, j2) == i4 ? unsafe.getObject(obj, j) : null;
                if (object == null) {
                    unsafe.putObject(obj, j, zzaarVar.zzc);
                } else {
                    unsafe.putObject(obj, j, zzacn.zzg(object, zzaarVar.zzc));
                }
                unsafe.putInt(obj, j2, i4);
                return iZzd;
            case LockFreeTaskQueueCore.CLOSED_SHIFT /* 61 */:
                if (i5 != 2) {
                    return i;
                }
                int iZza = zzaas.zza(bArr, i, zzaarVar);
                unsafe.putObject(obj, j, zzaarVar.zzc);
                unsafe.putInt(obj, j2, i4);
                return iZza;
            case HtmlCompat.FROM_HTML_MODE_COMPACT /* 63 */:
                if (i5 != 0) {
                    return i;
                }
                int iZzj3 = zzaas.zzj(bArr, i, zzaarVar);
                int i10 = zzaarVar.zza;
                zzacl zzaclVarZzE = zzE(i8);
                if (zzaclVarZzE == null || zzaclVarZzE.zza()) {
                    unsafe.putObject(obj, j, Integer.valueOf(i10));
                    unsafe.putInt(obj, j2, i4);
                } else {
                    zzd(obj).zzh(i3, Long.valueOf(i10));
                }
                return iZzj3;
            case ConstraintLayout.LayoutParams.Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT /* 66 */:
                if (i5 != 0) {
                    return i;
                }
                int iZzj4 = zzaas.zzj(bArr, i, zzaarVar);
                unsafe.putObject(obj, j, Integer.valueOf(zzabi.zzs(zzaarVar.zza)));
                unsafe.putInt(obj, j2, i4);
                return iZzj4;
            case ConstraintLayout.LayoutParams.Table.GUIDELINE_USE_RTL /* 67 */:
                if (i5 != 0) {
                    return i;
                }
                int iZzm3 = zzaas.zzm(bArr, i, zzaarVar);
                unsafe.putObject(obj, j, Long.valueOf(zzabi.zzt(zzaarVar.zzb)));
                unsafe.putInt(obj, j2, i4);
                return iZzm3;
            case 68:
                if (i5 != 3) {
                    return i;
                }
                int iZzc = zzaas.zzc(zzF(i8), bArr, i, i2, (i3 & (-8)) | 4, zzaarVar);
                Object object2 = unsafe.getInt(obj, j2) == i4 ? unsafe.getObject(obj, j) : null;
                if (object2 == null) {
                    unsafe.putObject(obj, j, zzaarVar.zzc);
                } else {
                    unsafe.putObject(obj, j, zzacn.zzg(object2, zzaarVar.zzc));
                }
                unsafe.putInt(obj, j2, i4);
                return iZzc;
            default:
                return i;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:25:0x0080. Please report as an issue. */
    private final int zzv(Object obj, byte[] bArr, int i, int i2, zzaar zzaarVar) throws IOException {
        int i3;
        int iZzk;
        int i4;
        int i5;
        int i6;
        Unsafe unsafe;
        int i7;
        int i8;
        int i9;
        int i10;
        int iZzm;
        int iZzd;
        int i11;
        int i12;
        int i13;
        zzadp<T> zzadpVar = this;
        Object obj2 = obj;
        byte[] bArr2 = bArr;
        int i14 = i2;
        zzaar zzaarVar2 = zzaarVar;
        Unsafe unsafe2 = zzb;
        int i15 = 1048575;
        int i16 = -1;
        int iZzi = i;
        int i17 = -1;
        int i18 = 1048575;
        int i19 = 0;
        int i20 = 0;
        while (iZzi < i14) {
            int i21 = iZzi + 1;
            byte b2 = bArr2[iZzi];
            if (b2 < 0) {
                iZzk = zzaas.zzk(b2, bArr2, i21, zzaarVar2);
                i3 = zzaarVar2.zza;
            } else {
                i3 = b2;
                iZzk = i21;
            }
            int i22 = i3 >>> 3;
            int i23 = i3 & 7;
            int iZzy = i22 > i17 ? zzadpVar.zzy(i22, i19 / 3) : zzadpVar.zzx(i22);
            if (iZzy == i16) {
                i4 = iZzk;
                i5 = i22;
                i6 = i16;
                unsafe = unsafe2;
                i7 = 0;
            } else {
                int[] iArr = zzadpVar.zzc;
                int i24 = iArr[iZzy + 1];
                int iZzB = zzB(i24);
                long j = i24 & i15;
                if (iZzB <= 17) {
                    int i25 = iArr[iZzy + 2];
                    int i26 = 1 << (i25 >>> 20);
                    int i27 = i25 & 1048575;
                    if (i27 != i18) {
                        if (i18 != 1048575) {
                            unsafe2.putInt(obj2, i18, i20);
                        }
                        if (i27 != 1048575) {
                            i20 = unsafe2.getInt(obj2, i27);
                        }
                        i18 = i27;
                    }
                    switch (iZzB) {
                        case 0:
                            zzaarVar2 = zzaarVar;
                            i8 = iZzy;
                            i9 = iZzk;
                            i10 = 1048575;
                            i5 = i22;
                            if (i23 != 1) {
                                i4 = i9;
                                unsafe = unsafe2;
                                i7 = i8;
                                i6 = -1;
                            } else {
                                zzaez.zzo(obj2, j, Double.longBitsToDouble(zzaas.zzn(bArr2, i9)));
                                iZzi = i9 + 8;
                                i20 |= i26;
                                i19 = i8;
                                i17 = i5;
                                i15 = i10;
                                i16 = -1;
                            }
                            break;
                        case 1:
                            zzaarVar2 = zzaarVar;
                            i8 = iZzy;
                            i9 = iZzk;
                            i10 = 1048575;
                            i5 = i22;
                            if (i23 != 5) {
                                i4 = i9;
                                unsafe = unsafe2;
                                i7 = i8;
                                i6 = -1;
                            } else {
                                zzaez.zzp(obj2, j, Float.intBitsToFloat(zzaas.zzb(bArr2, i9)));
                                iZzi = i9 + 4;
                                i20 |= i26;
                                i19 = i8;
                                i17 = i5;
                                i15 = i10;
                                i16 = -1;
                            }
                            break;
                        case 2:
                        case 3:
                            zzaarVar2 = zzaarVar;
                            i8 = iZzy;
                            i9 = iZzk;
                            i10 = 1048575;
                            i5 = i22;
                            if (i23 != 0) {
                                i4 = i9;
                                unsafe = unsafe2;
                                i7 = i8;
                                i6 = -1;
                            } else {
                                iZzm = zzaas.zzm(bArr2, i9, zzaarVar2);
                                unsafe2.putLong(obj, j, zzaarVar2.zzb);
                                i20 |= i26;
                                iZzi = iZzm;
                                i19 = i8;
                                i17 = i5;
                                i15 = i10;
                                i16 = -1;
                            }
                            break;
                        case 4:
                        case 11:
                            zzaarVar2 = zzaarVar;
                            i8 = iZzy;
                            i9 = iZzk;
                            i10 = 1048575;
                            i5 = i22;
                            if (i23 != 0) {
                                i4 = i9;
                                unsafe = unsafe2;
                                i7 = i8;
                                i6 = -1;
                            } else {
                                iZzi = zzaas.zzj(bArr2, i9, zzaarVar2);
                                unsafe2.putInt(obj2, j, zzaarVar2.zza);
                                i20 |= i26;
                                i19 = i8;
                                i17 = i5;
                                i15 = i10;
                                i16 = -1;
                            }
                            break;
                        case 5:
                        case 14:
                            zzaarVar2 = zzaarVar;
                            i8 = iZzy;
                            i10 = 1048575;
                            i5 = i22;
                            if (i23 != 1) {
                                i9 = iZzk;
                                i4 = i9;
                                unsafe = unsafe2;
                                i7 = i8;
                                i6 = -1;
                            } else {
                                i9 = iZzk;
                                unsafe2.putLong(obj, j, zzaas.zzn(bArr2, iZzk));
                                iZzi = i9 + 8;
                                i20 |= i26;
                                i19 = i8;
                                i17 = i5;
                                i15 = i10;
                                i16 = -1;
                            }
                            break;
                        case 6:
                        case 13:
                            zzaarVar2 = zzaarVar;
                            i8 = iZzy;
                            i10 = 1048575;
                            i5 = i22;
                            if (i23 != 5) {
                                i9 = iZzk;
                                i4 = i9;
                                unsafe = unsafe2;
                                i7 = i8;
                                i6 = -1;
                            } else {
                                unsafe2.putInt(obj2, j, zzaas.zzb(bArr2, iZzk));
                                iZzi = iZzk + 4;
                                i20 |= i26;
                                i19 = i8;
                                i17 = i5;
                                i15 = i10;
                                i16 = -1;
                            }
                            break;
                        case 7:
                            zzaarVar2 = zzaarVar;
                            i8 = iZzy;
                            i10 = 1048575;
                            i5 = i22;
                            if (i23 != 0) {
                                i9 = iZzk;
                                i4 = i9;
                                unsafe = unsafe2;
                                i7 = i8;
                                i6 = -1;
                            } else {
                                iZzi = zzaas.zzm(bArr2, iZzk, zzaarVar2);
                                zzaez.zzm(obj2, j, zzaarVar2.zzb != 0);
                                i20 |= i26;
                                i19 = i8;
                                i17 = i5;
                                i15 = i10;
                                i16 = -1;
                            }
                            break;
                        case 8:
                            zzaarVar2 = zzaarVar;
                            i8 = iZzy;
                            i10 = 1048575;
                            i5 = i22;
                            if (i23 != 2) {
                                i9 = iZzk;
                                i4 = i9;
                                unsafe = unsafe2;
                                i7 = i8;
                                i6 = -1;
                            } else {
                                iZzi = (536870912 & i24) == 0 ? zzaas.zzg(bArr2, iZzk, zzaarVar2) : zzaas.zzh(bArr2, iZzk, zzaarVar2);
                                unsafe2.putObject(obj2, j, zzaarVar2.zzc);
                                i20 |= i26;
                                i19 = i8;
                                i17 = i5;
                                i15 = i10;
                                i16 = -1;
                            }
                            break;
                        case 9:
                            zzaarVar2 = zzaarVar;
                            i8 = iZzy;
                            i10 = 1048575;
                            i5 = i22;
                            if (i23 != 2) {
                                i9 = iZzk;
                                i4 = i9;
                                unsafe = unsafe2;
                                i7 = i8;
                                i6 = -1;
                            } else {
                                iZzd = zzaas.zzd(zzadpVar.zzF(i8), bArr2, iZzk, i14, zzaarVar2);
                                Object object = unsafe2.getObject(obj2, j);
                                if (object == null) {
                                    unsafe2.putObject(obj2, j, zzaarVar2.zzc);
                                } else {
                                    unsafe2.putObject(obj2, j, zzacn.zzg(object, zzaarVar2.zzc));
                                }
                                i20 |= i26;
                                iZzi = iZzd;
                                i19 = i8;
                                i17 = i5;
                                i15 = i10;
                                i16 = -1;
                            }
                            break;
                        case 10:
                            zzaarVar2 = zzaarVar;
                            i8 = iZzy;
                            i10 = 1048575;
                            i5 = i22;
                            if (i23 != 2) {
                                i9 = iZzk;
                                i4 = i9;
                                unsafe = unsafe2;
                                i7 = i8;
                                i6 = -1;
                            } else {
                                iZzd = zzaas.zza(bArr2, iZzk, zzaarVar2);
                                unsafe2.putObject(obj2, j, zzaarVar2.zzc);
                                i20 |= i26;
                                iZzi = iZzd;
                                i19 = i8;
                                i17 = i5;
                                i15 = i10;
                                i16 = -1;
                            }
                            break;
                        case 12:
                            zzaarVar2 = zzaarVar;
                            i8 = iZzy;
                            i10 = 1048575;
                            i5 = i22;
                            if (i23 != 0) {
                                i9 = iZzk;
                                i4 = i9;
                                unsafe = unsafe2;
                                i7 = i8;
                                i6 = -1;
                            } else {
                                iZzd = zzaas.zzj(bArr2, iZzk, zzaarVar2);
                                unsafe2.putInt(obj2, j, zzaarVar2.zza);
                                i20 |= i26;
                                iZzi = iZzd;
                                i19 = i8;
                                i17 = i5;
                                i15 = i10;
                                i16 = -1;
                            }
                            break;
                        case 15:
                            zzaarVar2 = zzaarVar;
                            i8 = iZzy;
                            i10 = 1048575;
                            i5 = i22;
                            if (i23 != 0) {
                                i9 = iZzk;
                                i4 = i9;
                                unsafe = unsafe2;
                                i7 = i8;
                                i6 = -1;
                            } else {
                                iZzd = zzaas.zzj(bArr2, iZzk, zzaarVar2);
                                unsafe2.putInt(obj2, j, zzabi.zzs(zzaarVar2.zza));
                                i20 |= i26;
                                iZzi = iZzd;
                                i19 = i8;
                                i17 = i5;
                                i15 = i10;
                                i16 = -1;
                            }
                            break;
                        case 16:
                            if (i23 != 0) {
                                i5 = i22;
                                i8 = iZzy;
                                i9 = iZzk;
                                i4 = i9;
                                unsafe = unsafe2;
                                i7 = i8;
                                i6 = -1;
                            } else {
                                zzaarVar2 = zzaarVar;
                                iZzm = zzaas.zzm(bArr2, iZzk, zzaarVar2);
                                i8 = iZzy;
                                i5 = i22;
                                i10 = 1048575;
                                unsafe2.putLong(obj, j, zzabi.zzt(zzaarVar2.zzb));
                                i20 |= i26;
                                iZzi = iZzm;
                                i19 = i8;
                                i17 = i5;
                                i15 = i10;
                                i16 = -1;
                            }
                            break;
                        default:
                            i5 = i22;
                            i8 = iZzy;
                            i9 = iZzk;
                            i4 = i9;
                            unsafe = unsafe2;
                            i7 = i8;
                            i6 = -1;
                            break;
                    }
                } else {
                    zzaarVar2 = zzaarVar;
                    i8 = iZzy;
                    int i28 = iZzk;
                    i10 = 1048575;
                    i5 = i22;
                    if (iZzB == 27) {
                        if (i23 == 2) {
                            zzacm zzacmVarZzd = (zzacm) unsafe2.getObject(obj2, j);
                            if (!zzacmVarZzd.zzc()) {
                                int size = zzacmVarZzd.size();
                                zzacmVarZzd = zzacmVarZzd.zzd(size == 0 ? 10 : size + size);
                                unsafe2.putObject(obj2, j, zzacmVarZzd);
                            }
                            iZzi = zzaas.zze(zzadpVar.zzF(i8), i3, bArr, i28, i2, zzacmVarZzd, zzaarVar);
                            i20 = i20;
                            i19 = i8;
                            i17 = i5;
                            i15 = i10;
                            i16 = -1;
                        } else {
                            i11 = i28;
                            i12 = i20;
                            i13 = i18;
                            unsafe = unsafe2;
                            i7 = i8;
                            i6 = -1;
                        }
                    } else if (iZzB <= 49) {
                        i12 = i20;
                        i13 = i18;
                        i6 = -1;
                        unsafe = unsafe2;
                        i7 = i8;
                        iZzi = zzw(obj, bArr, i28, i2, i3, i5, i23, i8, i24, iZzB, j, zzaarVar);
                        if (iZzi != i28) {
                            obj2 = obj;
                            bArr2 = bArr;
                            i14 = i2;
                            zzaarVar2 = zzaarVar;
                            i18 = i13;
                            i16 = i6;
                            i17 = i5;
                            i20 = i12;
                            i19 = i7;
                            unsafe2 = unsafe;
                            i15 = 1048575;
                            zzadpVar = this;
                        } else {
                            i4 = iZzi;
                            i18 = i13;
                            i20 = i12;
                        }
                    } else {
                        i11 = i28;
                        i12 = i20;
                        i13 = i18;
                        unsafe = unsafe2;
                        i7 = i8;
                        i6 = -1;
                        if (iZzB != 50) {
                            iZzi = zzu(obj, bArr, i11, i2, i3, i5, i23, i24, iZzB, j, i7, zzaarVar);
                            if (iZzi != i11) {
                                obj2 = obj;
                                bArr2 = bArr;
                                i14 = i2;
                                zzaarVar2 = zzaarVar;
                                i18 = i13;
                                i16 = i6;
                                i17 = i5;
                                i20 = i12;
                                i19 = i7;
                                unsafe2 = unsafe;
                                i15 = 1048575;
                                zzadpVar = this;
                            } else {
                                i4 = iZzi;
                                i18 = i13;
                                i20 = i12;
                            }
                        } else if (i23 == 2) {
                            iZzi = zzt(obj, bArr, i11, i2, i7, j, zzaarVar);
                            if (iZzi != i11) {
                                obj2 = obj;
                                bArr2 = bArr;
                                i14 = i2;
                                zzaarVar2 = zzaarVar;
                                i18 = i13;
                                i16 = i6;
                                i17 = i5;
                                i20 = i12;
                                i19 = i7;
                                unsafe2 = unsafe;
                                i15 = 1048575;
                                zzadpVar = this;
                            } else {
                                i4 = iZzi;
                                i18 = i13;
                                i20 = i12;
                            }
                        }
                    }
                    i4 = i11;
                    i18 = i13;
                    i20 = i12;
                }
            }
            iZzi = zzaas.zzi(i3, bArr, i4, i2, zzd(obj), zzaarVar);
            zzadpVar = this;
            obj2 = obj;
            bArr2 = bArr;
            i14 = i2;
            zzaarVar2 = zzaarVar;
            i16 = i6;
            i17 = i5;
            i19 = i7;
            unsafe2 = unsafe;
            i15 = 1048575;
        }
        int i29 = i20;
        int i30 = i18;
        Unsafe unsafe3 = unsafe2;
        if (i30 != i15) {
            unsafe3.putInt(obj, i30, i29);
        }
        if (iZzi == i2) {
            return iZzi;
        }
        throw zzacp.zzg();
    }

    private final int zzw(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7, long j2, zzaar zzaarVar) throws IOException {
        int i8;
        int i9;
        int i10;
        int i11;
        int iZzj;
        int iZzj2 = i;
        Unsafe unsafe = zzb;
        zzacm zzacmVarZzd = (zzacm) unsafe.getObject(obj, j2);
        if (!zzacmVarZzd.zzc()) {
            int size = zzacmVarZzd.size();
            zzacmVarZzd = zzacmVarZzd.zzd(size == 0 ? 10 : size + size);
            unsafe.putObject(obj, j2, zzacmVarZzd);
        }
        switch (i7) {
            case 18:
            case 35:
                if (i5 == 2) {
                    zzabr zzabrVar = (zzabr) zzacmVarZzd;
                    int iZzj3 = zzaas.zzj(bArr, iZzj2, zzaarVar);
                    int i12 = zzaarVar.zza + iZzj3;
                    while (iZzj3 < i12) {
                        zzabrVar.zze(Double.longBitsToDouble(zzaas.zzn(bArr, iZzj3)));
                        iZzj3 += 8;
                    }
                    if (iZzj3 == i12) {
                        return iZzj3;
                    }
                    throw zzacp.zzi();
                }
                if (i5 == 1) {
                    zzabr zzabrVar2 = (zzabr) zzacmVarZzd;
                    zzabrVar2.zze(Double.longBitsToDouble(zzaas.zzn(bArr, i)));
                    while (true) {
                        i8 = iZzj2 + 8;
                        if (i8 < i2) {
                            iZzj2 = zzaas.zzj(bArr, i8, zzaarVar);
                            if (i3 == zzaarVar.zza) {
                                zzabrVar2.zze(Double.longBitsToDouble(zzaas.zzn(bArr, iZzj2)));
                            }
                        }
                    }
                    return i8;
                }
                return iZzj2;
            case 19:
            case 36:
                if (i5 == 2) {
                    zzacb zzacbVar = (zzacb) zzacmVarZzd;
                    int iZzj4 = zzaas.zzj(bArr, iZzj2, zzaarVar);
                    int i13 = zzaarVar.zza + iZzj4;
                    while (iZzj4 < i13) {
                        zzacbVar.zze(Float.intBitsToFloat(zzaas.zzb(bArr, iZzj4)));
                        iZzj4 += 4;
                    }
                    if (iZzj4 == i13) {
                        return iZzj4;
                    }
                    throw zzacp.zzi();
                }
                if (i5 == 5) {
                    zzacb zzacbVar2 = (zzacb) zzacmVarZzd;
                    zzacbVar2.zze(Float.intBitsToFloat(zzaas.zzb(bArr, i)));
                    while (true) {
                        i9 = iZzj2 + 4;
                        if (i9 < i2) {
                            iZzj2 = zzaas.zzj(bArr, i9, zzaarVar);
                            if (i3 == zzaarVar.zza) {
                                zzacbVar2.zze(Float.intBitsToFloat(zzaas.zzb(bArr, iZzj2)));
                            }
                        }
                    }
                    return i9;
                }
                return iZzj2;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i5 == 2) {
                    zzadb zzadbVar = (zzadb) zzacmVarZzd;
                    int iZzj5 = zzaas.zzj(bArr, iZzj2, zzaarVar);
                    int i14 = zzaarVar.zza + iZzj5;
                    while (iZzj5 < i14) {
                        iZzj5 = zzaas.zzm(bArr, iZzj5, zzaarVar);
                        zzadbVar.zzf(zzaarVar.zzb);
                    }
                    if (iZzj5 == i14) {
                        return iZzj5;
                    }
                    throw zzacp.zzi();
                }
                if (i5 == 0) {
                    zzadb zzadbVar2 = (zzadb) zzacmVarZzd;
                    int iZzm = zzaas.zzm(bArr, iZzj2, zzaarVar);
                    zzadbVar2.zzf(zzaarVar.zzb);
                    while (iZzm < i2) {
                        int iZzj6 = zzaas.zzj(bArr, iZzm, zzaarVar);
                        if (i3 != zzaarVar.zza) {
                            return iZzm;
                        }
                        iZzm = zzaas.zzm(bArr, iZzj6, zzaarVar);
                        zzadbVar2.zzf(zzaarVar.zzb);
                    }
                    return iZzm;
                }
                return iZzj2;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i5 == 2) {
                    return zzaas.zzf(bArr, iZzj2, zzacmVarZzd, zzaarVar);
                }
                if (i5 == 0) {
                    return zzaas.zzl(i3, bArr, i, i2, zzacmVarZzd, zzaarVar);
                }
                return iZzj2;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i5 == 2) {
                    zzadb zzadbVar3 = (zzadb) zzacmVarZzd;
                    int iZzj7 = zzaas.zzj(bArr, iZzj2, zzaarVar);
                    int i15 = zzaarVar.zza + iZzj7;
                    while (iZzj7 < i15) {
                        zzadbVar3.zzf(zzaas.zzn(bArr, iZzj7));
                        iZzj7 += 8;
                    }
                    if (iZzj7 == i15) {
                        return iZzj7;
                    }
                    throw zzacp.zzi();
                }
                if (i5 == 1) {
                    zzadb zzadbVar4 = (zzadb) zzacmVarZzd;
                    zzadbVar4.zzf(zzaas.zzn(bArr, i));
                    while (true) {
                        i10 = iZzj2 + 8;
                        if (i10 < i2) {
                            iZzj2 = zzaas.zzj(bArr, i10, zzaarVar);
                            if (i3 == zzaarVar.zza) {
                                zzadbVar4.zzf(zzaas.zzn(bArr, iZzj2));
                            }
                        }
                    }
                    return i10;
                }
                return iZzj2;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i5 == 2) {
                    zzaci zzaciVar = (zzaci) zzacmVarZzd;
                    int iZzj8 = zzaas.zzj(bArr, iZzj2, zzaarVar);
                    int i16 = zzaarVar.zza + iZzj8;
                    while (iZzj8 < i16) {
                        zzaciVar.zzf(zzaas.zzb(bArr, iZzj8));
                        iZzj8 += 4;
                    }
                    if (iZzj8 == i16) {
                        return iZzj8;
                    }
                    throw zzacp.zzi();
                }
                if (i5 == 5) {
                    zzaci zzaciVar2 = (zzaci) zzacmVarZzd;
                    zzaciVar2.zzf(zzaas.zzb(bArr, i));
                    while (true) {
                        i11 = iZzj2 + 4;
                        if (i11 < i2) {
                            iZzj2 = zzaas.zzj(bArr, i11, zzaarVar);
                            if (i3 == zzaarVar.zza) {
                                zzaciVar2.zzf(zzaas.zzb(bArr, iZzj2));
                            }
                        }
                    }
                    return i11;
                }
                return iZzj2;
            case 25:
            case 42:
                if (i5 == 2) {
                    zzaat zzaatVar = (zzaat) zzacmVarZzd;
                    iZzj = zzaas.zzj(bArr, iZzj2, zzaarVar);
                    int i17 = zzaarVar.zza + iZzj;
                    while (iZzj < i17) {
                        iZzj = zzaas.zzm(bArr, iZzj, zzaarVar);
                        zzaatVar.zze(zzaarVar.zzb != 0);
                    }
                    if (iZzj != i17) {
                        throw zzacp.zzi();
                    }
                    return iZzj;
                }
                if (i5 == 0) {
                    zzaat zzaatVar2 = (zzaat) zzacmVarZzd;
                    int iZzm2 = zzaas.zzm(bArr, iZzj2, zzaarVar);
                    zzaatVar2.zze(zzaarVar.zzb != 0);
                    while (iZzm2 < i2) {
                        int iZzj9 = zzaas.zzj(bArr, iZzm2, zzaarVar);
                        if (i3 != zzaarVar.zza) {
                            return iZzm2;
                        }
                        iZzm2 = zzaas.zzm(bArr, iZzj9, zzaarVar);
                        zzaatVar2.zze(zzaarVar.zzb != 0);
                    }
                    return iZzm2;
                }
                return iZzj2;
            case 26:
                if (i5 == 2) {
                    if ((j & 536870912) == 0) {
                        int iZzj10 = zzaas.zzj(bArr, iZzj2, zzaarVar);
                        int i18 = zzaarVar.zza;
                        if (i18 < 0) {
                            throw zzacp.zzf();
                        }
                        if (i18 == 0) {
                            zzacmVarZzd.add("");
                        } else {
                            zzacmVarZzd.add(new String(bArr, iZzj10, i18, zzacn.zzb));
                            iZzj10 += i18;
                        }
                        while (iZzj10 < i2) {
                            int iZzj11 = zzaas.zzj(bArr, iZzj10, zzaarVar);
                            if (i3 != zzaarVar.zza) {
                                return iZzj10;
                            }
                            iZzj10 = zzaas.zzj(bArr, iZzj11, zzaarVar);
                            int i19 = zzaarVar.zza;
                            if (i19 < 0) {
                                throw zzacp.zzf();
                            }
                            if (i19 == 0) {
                                zzacmVarZzd.add("");
                            } else {
                                zzacmVarZzd.add(new String(bArr, iZzj10, i19, zzacn.zzb));
                                iZzj10 += i19;
                            }
                        }
                        return iZzj10;
                    }
                    int iZzj12 = zzaas.zzj(bArr, iZzj2, zzaarVar);
                    int i20 = zzaarVar.zza;
                    if (i20 < 0) {
                        throw zzacp.zzf();
                    }
                    if (i20 == 0) {
                        zzacmVarZzd.add("");
                    } else {
                        int i21 = iZzj12 + i20;
                        if (!zzafe.zzf(bArr, iZzj12, i21)) {
                            throw zzacp.zzd();
                        }
                        zzacmVarZzd.add(new String(bArr, iZzj12, i20, zzacn.zzb));
                        iZzj12 = i21;
                    }
                    while (iZzj12 < i2) {
                        int iZzj13 = zzaas.zzj(bArr, iZzj12, zzaarVar);
                        if (i3 != zzaarVar.zza) {
                            return iZzj12;
                        }
                        iZzj12 = zzaas.zzj(bArr, iZzj13, zzaarVar);
                        int i22 = zzaarVar.zza;
                        if (i22 < 0) {
                            throw zzacp.zzf();
                        }
                        if (i22 == 0) {
                            zzacmVarZzd.add("");
                        } else {
                            int i23 = iZzj12 + i22;
                            if (!zzafe.zzf(bArr, iZzj12, i23)) {
                                throw zzacp.zzd();
                            }
                            zzacmVarZzd.add(new String(bArr, iZzj12, i22, zzacn.zzb));
                            iZzj12 = i23;
                        }
                    }
                    return iZzj12;
                }
                return iZzj2;
            case 27:
                if (i5 == 2) {
                    return zzaas.zze(zzF(i6), i3, bArr, i, i2, zzacmVarZzd, zzaarVar);
                }
                return iZzj2;
            case 28:
                if (i5 == 2) {
                    int iZzj14 = zzaas.zzj(bArr, iZzj2, zzaarVar);
                    int i24 = zzaarVar.zza;
                    if (i24 < 0) {
                        throw zzacp.zzf();
                    }
                    if (i24 > bArr.length - iZzj14) {
                        throw zzacp.zzi();
                    }
                    if (i24 == 0) {
                        zzacmVarZzd.add(zzabe.zzb);
                    } else {
                        zzacmVarZzd.add(zzabe.zzo(bArr, iZzj14, i24));
                        iZzj14 += i24;
                    }
                    while (iZzj14 < i2) {
                        int iZzj15 = zzaas.zzj(bArr, iZzj14, zzaarVar);
                        if (i3 != zzaarVar.zza) {
                            return iZzj14;
                        }
                        iZzj14 = zzaas.zzj(bArr, iZzj15, zzaarVar);
                        int i25 = zzaarVar.zza;
                        if (i25 < 0) {
                            throw zzacp.zzf();
                        }
                        if (i25 > bArr.length - iZzj14) {
                            throw zzacp.zzi();
                        }
                        if (i25 == 0) {
                            zzacmVarZzd.add(zzabe.zzb);
                        } else {
                            zzacmVarZzd.add(zzabe.zzo(bArr, iZzj14, i25));
                            iZzj14 += i25;
                        }
                    }
                    return iZzj14;
                }
                return iZzj2;
            case 30:
            case 44:
                if (i5 != 2) {
                    if (i5 == 0) {
                        iZzj = zzaas.zzl(i3, bArr, i, i2, zzacmVarZzd, zzaarVar);
                    }
                    return iZzj2;
                }
                iZzj = zzaas.zzf(bArr, iZzj2, zzacmVarZzd, zzaarVar);
                zzach zzachVar = (zzach) obj;
                zzaeq zzaeqVar = zzachVar.zzc;
                if (zzaeqVar == zzaeq.zzc()) {
                    zzaeqVar = null;
                }
                Object objZzC = zzaea.zzC(i4, zzacmVarZzd, zzE(i6), zzaeqVar, this.zzo);
                if (objZzC != null) {
                    zzachVar.zzc = (zzaeq) objZzC;
                    return iZzj;
                }
                return iZzj;
            case 33:
            case 47:
                if (i5 == 2) {
                    zzaci zzaciVar3 = (zzaci) zzacmVarZzd;
                    int iZzj16 = zzaas.zzj(bArr, iZzj2, zzaarVar);
                    int i26 = zzaarVar.zza + iZzj16;
                    while (iZzj16 < i26) {
                        iZzj16 = zzaas.zzj(bArr, iZzj16, zzaarVar);
                        zzaciVar3.zzf(zzabi.zzs(zzaarVar.zza));
                    }
                    if (iZzj16 == i26) {
                        return iZzj16;
                    }
                    throw zzacp.zzi();
                }
                if (i5 == 0) {
                    zzaci zzaciVar4 = (zzaci) zzacmVarZzd;
                    int iZzj17 = zzaas.zzj(bArr, iZzj2, zzaarVar);
                    zzaciVar4.zzf(zzabi.zzs(zzaarVar.zza));
                    while (iZzj17 < i2) {
                        int iZzj18 = zzaas.zzj(bArr, iZzj17, zzaarVar);
                        if (i3 != zzaarVar.zza) {
                            return iZzj17;
                        }
                        iZzj17 = zzaas.zzj(bArr, iZzj18, zzaarVar);
                        zzaciVar4.zzf(zzabi.zzs(zzaarVar.zza));
                    }
                    return iZzj17;
                }
                return iZzj2;
            case 34:
            case 48:
                if (i5 == 2) {
                    zzadb zzadbVar5 = (zzadb) zzacmVarZzd;
                    int iZzj19 = zzaas.zzj(bArr, iZzj2, zzaarVar);
                    int i27 = zzaarVar.zza + iZzj19;
                    while (iZzj19 < i27) {
                        iZzj19 = zzaas.zzm(bArr, iZzj19, zzaarVar);
                        zzadbVar5.zzf(zzabi.zzt(zzaarVar.zzb));
                    }
                    if (iZzj19 == i27) {
                        return iZzj19;
                    }
                    throw zzacp.zzi();
                }
                if (i5 == 0) {
                    zzadb zzadbVar6 = (zzadb) zzacmVarZzd;
                    int iZzm3 = zzaas.zzm(bArr, iZzj2, zzaarVar);
                    zzadbVar6.zzf(zzabi.zzt(zzaarVar.zzb));
                    while (iZzm3 < i2) {
                        int iZzj20 = zzaas.zzj(bArr, iZzm3, zzaarVar);
                        if (i3 != zzaarVar.zza) {
                            return iZzm3;
                        }
                        iZzm3 = zzaas.zzm(bArr, iZzj20, zzaarVar);
                        zzadbVar6.zzf(zzabi.zzt(zzaarVar.zzb));
                    }
                    return iZzm3;
                }
                return iZzj2;
            default:
                if (i5 == 3) {
                    zzady zzadyVarZzF = zzF(i6);
                    int i28 = (i3 & (-8)) | 4;
                    int iZzc = zzaas.zzc(zzadyVarZzF, bArr, i, i2, i28, zzaarVar);
                    zzacmVarZzd.add(zzaarVar.zzc);
                    while (iZzc < i2) {
                        int iZzj21 = zzaas.zzj(bArr, iZzc, zzaarVar);
                        if (i3 != zzaarVar.zza) {
                            return iZzc;
                        }
                        iZzc = zzaas.zzc(zzadyVarZzF, bArr, iZzj21, i2, i28, zzaarVar);
                        zzacmVarZzd.add(zzaarVar.zzc);
                    }
                    return iZzc;
                }
                return iZzj2;
        }
    }

    private final int zzx(int i) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzA(i, 0);
    }

    private final int zzy(int i, int i2) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzA(i, i2);
    }

    private final int zzz(int i) {
        return this.zzc[i + 2];
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzady
    public final int zza(Object obj) {
        return this.zzj ? zzr(obj) : zzq(obj);
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzady
    public final int zzb(Object obj) {
        int i;
        int iZzc;
        int length = this.zzc.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 3) {
            int iZzC = zzC(i3);
            int i4 = this.zzc[i3];
            long j = 1048575 & iZzC;
            int iHashCode = 37;
            switch (zzB(iZzC)) {
                case 0:
                    i = i2 * 53;
                    iZzc = zzacn.zzc(Double.doubleToLongBits(zzaez.zza(obj, j)));
                    i2 = i + iZzc;
                    break;
                case 1:
                    i = i2 * 53;
                    iZzc = Float.floatToIntBits(zzaez.zzb(obj, j));
                    i2 = i + iZzc;
                    break;
                case 2:
                    i = i2 * 53;
                    iZzc = zzacn.zzc(zzaez.zzd(obj, j));
                    i2 = i + iZzc;
                    break;
                case 3:
                    i = i2 * 53;
                    iZzc = zzacn.zzc(zzaez.zzd(obj, j));
                    i2 = i + iZzc;
                    break;
                case 4:
                    i = i2 * 53;
                    iZzc = zzaez.zzc(obj, j);
                    i2 = i + iZzc;
                    break;
                case 5:
                    i = i2 * 53;
                    iZzc = zzacn.zzc(zzaez.zzd(obj, j));
                    i2 = i + iZzc;
                    break;
                case 6:
                    i = i2 * 53;
                    iZzc = zzaez.zzc(obj, j);
                    i2 = i + iZzc;
                    break;
                case 7:
                    i = i2 * 53;
                    iZzc = zzacn.zza(zzaez.zzw(obj, j));
                    i2 = i + iZzc;
                    break;
                case 8:
                    i = i2 * 53;
                    iZzc = ((String) zzaez.zzf(obj, j)).hashCode();
                    i2 = i + iZzc;
                    break;
                case 9:
                    Object objZzf = zzaez.zzf(obj, j);
                    if (objZzf != null) {
                        iHashCode = objZzf.hashCode();
                    }
                    i2 = (i2 * 53) + iHashCode;
                    break;
                case 10:
                    i = i2 * 53;
                    iZzc = zzaez.zzf(obj, j).hashCode();
                    i2 = i + iZzc;
                    break;
                case 11:
                    i = i2 * 53;
                    iZzc = zzaez.zzc(obj, j);
                    i2 = i + iZzc;
                    break;
                case 12:
                    i = i2 * 53;
                    iZzc = zzaez.zzc(obj, j);
                    i2 = i + iZzc;
                    break;
                case 13:
                    i = i2 * 53;
                    iZzc = zzaez.zzc(obj, j);
                    i2 = i + iZzc;
                    break;
                case 14:
                    i = i2 * 53;
                    iZzc = zzacn.zzc(zzaez.zzd(obj, j));
                    i2 = i + iZzc;
                    break;
                case 15:
                    i = i2 * 53;
                    iZzc = zzaez.zzc(obj, j);
                    i2 = i + iZzc;
                    break;
                case 16:
                    i = i2 * 53;
                    iZzc = zzacn.zzc(zzaez.zzd(obj, j));
                    i2 = i + iZzc;
                    break;
                case 17:
                    Object objZzf2 = zzaez.zzf(obj, j);
                    if (objZzf2 != null) {
                        iHashCode = objZzf2.hashCode();
                    }
                    i2 = (i2 * 53) + iHashCode;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
                    i = i2 * 53;
                    iZzc = zzaez.zzf(obj, j).hashCode();
                    i2 = i + iZzc;
                    break;
                case 50:
                    i = i2 * 53;
                    iZzc = zzaez.zzf(obj, j).hashCode();
                    i2 = i + iZzc;
                    break;
                case 51:
                    if (zzT(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzacn.zzc(Double.doubleToLongBits(zzo(obj, j)));
                        i2 = i + iZzc;
                    }
                    break;
                case 52:
                    if (zzT(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = Float.floatToIntBits(zzp(obj, j));
                        i2 = i + iZzc;
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF /* 53 */:
                    if (zzT(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzacn.zzc(zzD(obj, j));
                        i2 = i + iZzc;
                    }
                    break;
                case 54:
                    if (zzT(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzacn.zzc(zzD(obj, j));
                        i2 = i + iZzc;
                    }
                    break;
                case 55:
                    if (zzT(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzs(obj, j);
                        i2 = i + iZzc;
                    }
                    break;
                case 56:
                    if (zzT(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzacn.zzc(zzD(obj, j));
                        i2 = i + iZzc;
                    }
                    break;
                case 57:
                    if (zzT(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzs(obj, j);
                        i2 = i + iZzc;
                    }
                    break;
                case Elf64_Ehdr.e_shentsize /* 58 */:
                    if (zzT(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzacn.zza(zzU(obj, j));
                        i2 = i + iZzc;
                    }
                    break;
                case 59:
                    if (zzT(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = ((String) zzaez.zzf(obj, j)).hashCode();
                        i2 = i + iZzc;
                    }
                    break;
                case 60:
                    if (zzT(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzaez.zzf(obj, j).hashCode();
                        i2 = i + iZzc;
                    }
                    break;
                case LockFreeTaskQueueCore.CLOSED_SHIFT /* 61 */:
                    if (zzT(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzaez.zzf(obj, j).hashCode();
                        i2 = i + iZzc;
                    }
                    break;
                case Elf64_Ehdr.e_shstrndx /* 62 */:
                    if (zzT(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzs(obj, j);
                        i2 = i + iZzc;
                    }
                    break;
                case HtmlCompat.FROM_HTML_MODE_COMPACT /* 63 */:
                    if (zzT(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzs(obj, j);
                        i2 = i + iZzc;
                    }
                    break;
                case 64:
                    if (zzT(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzs(obj, j);
                        i2 = i + iZzc;
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_HEIGHT /* 65 */:
                    if (zzT(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzacn.zzc(zzD(obj, j));
                        i2 = i + iZzc;
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT /* 66 */:
                    if (zzT(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzs(obj, j);
                        i2 = i + iZzc;
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.GUIDELINE_USE_RTL /* 67 */:
                    if (zzT(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzacn.zzc(zzD(obj, j));
                        i2 = i + iZzc;
                    }
                    break;
                case 68:
                    if (zzT(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzaez.zzf(obj, j).hashCode();
                        i2 = i + iZzc;
                    }
                    break;
            }
        }
        int iHashCode2 = (i2 * 53) + this.zzo.zzd(obj).hashCode();
        if (!this.zzh) {
            return iHashCode2;
        }
        this.zzp.zza(obj);
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:143:0x043b, code lost:
    
        if (r6 == r3) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x043d, code lost:
    
        r26.putInt(r12, r6, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0443, code lost:
    
        r3 = r9.zzl;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0447, code lost:
    
        if (r3 >= r9.zzm) goto L209;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x0449, code lost:
    
        r9.zzG(r12, r9.zzk[r3], r2, r9.zzo);
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0455, code lost:
    
        if (r7 != 0) goto L155;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0459, code lost:
    
        if (r0 != r32) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x0460, code lost:
    
        throw com.google.android.gms.internal.p002firebaseauthapi.zzacp.zzg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x0463, code lost:
    
        if (r0 > r32) goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0465, code lost:
    
        if (r1 != r7) goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x0467, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x046c, code lost:
    
        throw com.google.android.gms.internal.p002firebaseauthapi.zzacp.zzg();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final int zzc(java.lang.Object r29, byte[] r30, int r31, int r32, int r33, com.google.android.gms.internal.p002firebaseauthapi.zzaar r34) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1172
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.p002firebaseauthapi.zzadp.zzc(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.firebase-auth-api.zzaar):int");
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzady
    public final Object zze() {
        return ((zzach) this.zzg).zzj(4, null, null);
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzady
    public final void zzf(Object obj) {
        int i;
        int i2 = this.zzl;
        while (true) {
            i = this.zzm;
            if (i2 >= i) {
                break;
            }
            long jZzC = zzC(this.zzk[i2]) & 1048575;
            Object objZzf = zzaez.zzf(obj, jZzC);
            if (objZzf != null) {
                ((zzadg) objZzf).zzc();
                zzaez.zzs(obj, jZzC, objZzf);
            }
            i2++;
        }
        int length = this.zzk.length;
        while (i < length) {
            this.zzn.zzb(obj, this.zzk[i]);
            i++;
        }
        this.zzo.zzm(obj);
        if (this.zzh) {
            this.zzp.zze(obj);
        }
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzady
    public final void zzh(Object obj, zzadx zzadxVar, zzabu zzabuVar) throws IOException {
        zzabuVar.getClass();
        zzaep zzaepVar = this.zzo;
        zzabv zzabvVar = this.zzp;
        zzabz zzabzVarZzb = null;
        Object objZzG = null;
        while (true) {
            try {
                int iZzc = zzadxVar.zzc();
                int iZzx = zzx(iZzc);
                if (iZzx >= 0) {
                    int iZzC = zzC(iZzx);
                    try {
                        switch (zzB(iZzC)) {
                            case 0:
                                zzaez.zzo(obj, iZzC & 1048575, zzadxVar.zza());
                                zzM(obj, iZzx);
                                break;
                            case 1:
                                zzaez.zzp(obj, iZzC & 1048575, zzadxVar.zzb());
                                zzM(obj, iZzx);
                                break;
                            case 2:
                                zzaez.zzr(obj, iZzC & 1048575, zzadxVar.zzl());
                                zzM(obj, iZzx);
                                break;
                            case 3:
                                zzaez.zzr(obj, iZzC & 1048575, zzadxVar.zzo());
                                zzM(obj, iZzx);
                                break;
                            case 4:
                                zzaez.zzq(obj, iZzC & 1048575, zzadxVar.zzg());
                                zzM(obj, iZzx);
                                break;
                            case 5:
                                zzaez.zzr(obj, iZzC & 1048575, zzadxVar.zzk());
                                zzM(obj, iZzx);
                                break;
                            case 6:
                                zzaez.zzq(obj, iZzC & 1048575, zzadxVar.zzf());
                                zzM(obj, iZzx);
                                break;
                            case 7:
                                zzaez.zzm(obj, iZzC & 1048575, zzadxVar.zzN());
                                zzM(obj, iZzx);
                                break;
                            case 8:
                                zzL(obj, iZzC, zzadxVar);
                                zzM(obj, iZzx);
                                break;
                            case 9:
                                if (zzQ(obj, iZzx)) {
                                    long j = iZzC & 1048575;
                                    zzaez.zzs(obj, j, zzacn.zzg(zzaez.zzf(obj, j), zzadxVar.zzs(zzF(iZzx), zzabuVar)));
                                } else {
                                    zzaez.zzs(obj, iZzC & 1048575, zzadxVar.zzs(zzF(iZzx), zzabuVar));
                                    zzM(obj, iZzx);
                                }
                                break;
                            case 10:
                                zzaez.zzs(obj, iZzC & 1048575, zzadxVar.zzp());
                                zzM(obj, iZzx);
                                break;
                            case 11:
                                zzaez.zzq(obj, iZzC & 1048575, zzadxVar.zzj());
                                zzM(obj, iZzx);
                                break;
                            case 12:
                                int iZze = zzadxVar.zze();
                                zzacl zzaclVarZzE = zzE(iZzx);
                                if (zzaclVarZzE == null || zzaclVarZzE.zza()) {
                                    zzaez.zzq(obj, iZzC & 1048575, iZze);
                                    zzM(obj, iZzx);
                                } else {
                                    objZzG = zzaea.zzD(iZzc, iZze, objZzG, zzaepVar);
                                }
                                break;
                            case 13:
                                zzaez.zzq(obj, iZzC & 1048575, zzadxVar.zzh());
                                zzM(obj, iZzx);
                                break;
                            case 14:
                                zzaez.zzr(obj, iZzC & 1048575, zzadxVar.zzm());
                                zzM(obj, iZzx);
                                break;
                            case 15:
                                zzaez.zzq(obj, iZzC & 1048575, zzadxVar.zzi());
                                zzM(obj, iZzx);
                                break;
                            case 16:
                                zzaez.zzr(obj, iZzC & 1048575, zzadxVar.zzn());
                                zzM(obj, iZzx);
                                break;
                            case 17:
                                if (zzQ(obj, iZzx)) {
                                    long j2 = iZzC & 1048575;
                                    zzaez.zzs(obj, j2, zzacn.zzg(zzaez.zzf(obj, j2), zzadxVar.zzr(zzF(iZzx), zzabuVar)));
                                } else {
                                    zzaez.zzs(obj, iZzC & 1048575, zzadxVar.zzr(zzF(iZzx), zzabuVar));
                                    zzM(obj, iZzx);
                                }
                                break;
                            case 18:
                                zzadxVar.zzx(this.zzn.zza(obj, iZzC & 1048575));
                                break;
                            case 19:
                                zzadxVar.zzB(this.zzn.zza(obj, iZzC & 1048575));
                                break;
                            case 20:
                                zzadxVar.zzE(this.zzn.zza(obj, iZzC & 1048575));
                                break;
                            case 21:
                                zzadxVar.zzM(this.zzn.zza(obj, iZzC & 1048575));
                                break;
                            case 22:
                                zzadxVar.zzD(this.zzn.zza(obj, iZzC & 1048575));
                                break;
                            case 23:
                                zzadxVar.zzA(this.zzn.zza(obj, iZzC & 1048575));
                                break;
                            case 24:
                                zzadxVar.zzz(this.zzn.zza(obj, iZzC & 1048575));
                                break;
                            case 25:
                                zzadxVar.zzv(this.zzn.zza(obj, iZzC & 1048575));
                                break;
                            case 26:
                                if (zzP(iZzC)) {
                                    ((zzabj) zzadxVar).zzK(this.zzn.zza(obj, iZzC & 1048575), true);
                                } else {
                                    ((zzabj) zzadxVar).zzK(this.zzn.zza(obj, iZzC & 1048575), false);
                                }
                                break;
                            case 27:
                                zzadxVar.zzF(this.zzn.zza(obj, iZzC & 1048575), zzF(iZzx), zzabuVar);
                                break;
                            case 28:
                                zzadxVar.zzw(this.zzn.zza(obj, iZzC & 1048575));
                                break;
                            case 29:
                                zzadxVar.zzL(this.zzn.zza(obj, iZzC & 1048575));
                                break;
                            case 30:
                                List listZza = this.zzn.zza(obj, iZzC & 1048575);
                                zzadxVar.zzy(listZza);
                                objZzG = zzaea.zzC(iZzc, listZza, zzE(iZzx), objZzG, zzaepVar);
                                break;
                            case 31:
                                zzadxVar.zzG(this.zzn.zza(obj, iZzC & 1048575));
                                break;
                            case 32:
                                zzadxVar.zzH(this.zzn.zza(obj, iZzC & 1048575));
                                break;
                            case 33:
                                zzadxVar.zzI(this.zzn.zza(obj, iZzC & 1048575));
                                break;
                            case 34:
                                zzadxVar.zzJ(this.zzn.zza(obj, iZzC & 1048575));
                                break;
                            case 35:
                                zzadxVar.zzx(this.zzn.zza(obj, iZzC & 1048575));
                                break;
                            case 36:
                                zzadxVar.zzB(this.zzn.zza(obj, iZzC & 1048575));
                                break;
                            case 37:
                                zzadxVar.zzE(this.zzn.zza(obj, iZzC & 1048575));
                                break;
                            case 38:
                                zzadxVar.zzM(this.zzn.zza(obj, iZzC & 1048575));
                                break;
                            case 39:
                                zzadxVar.zzD(this.zzn.zza(obj, iZzC & 1048575));
                                break;
                            case 40:
                                zzadxVar.zzA(this.zzn.zza(obj, iZzC & 1048575));
                                break;
                            case 41:
                                zzadxVar.zzz(this.zzn.zza(obj, iZzC & 1048575));
                                break;
                            case 42:
                                zzadxVar.zzv(this.zzn.zza(obj, iZzC & 1048575));
                                break;
                            case 43:
                                zzadxVar.zzL(this.zzn.zza(obj, iZzC & 1048575));
                                break;
                            case 44:
                                List listZza2 = this.zzn.zza(obj, iZzC & 1048575);
                                zzadxVar.zzy(listZza2);
                                objZzG = zzaea.zzC(iZzc, listZza2, zzE(iZzx), objZzG, zzaepVar);
                                break;
                            case 45:
                                zzadxVar.zzG(this.zzn.zza(obj, iZzC & 1048575));
                                break;
                            case 46:
                                zzadxVar.zzH(this.zzn.zza(obj, iZzC & 1048575));
                                break;
                            case 47:
                                zzadxVar.zzI(this.zzn.zza(obj, iZzC & 1048575));
                                break;
                            case 48:
                                zzadxVar.zzJ(this.zzn.zza(obj, iZzC & 1048575));
                                break;
                            case ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
                                zzadxVar.zzC(this.zzn.zza(obj, iZzC & 1048575), zzF(iZzx), zzabuVar);
                                break;
                            case 50:
                                Object objZzH = zzH(iZzx);
                                long jZzC = zzC(iZzx) & 1048575;
                                Object objZzf = zzaez.zzf(obj, jZzC);
                                if (objZzf == null) {
                                    objZzf = zzadg.zza().zzb();
                                    zzaez.zzs(obj, jZzC, objZzf);
                                } else if (zzadh.zzb(objZzf)) {
                                    Object objZzb = zzadg.zza().zzb();
                                    zzadh.zzc(objZzb, objZzf);
                                    zzaez.zzs(obj, jZzC, objZzb);
                                    objZzf = objZzb;
                                }
                                throw null;
                            case 51:
                                zzaez.zzs(obj, iZzC & 1048575, Double.valueOf(zzadxVar.zza()));
                                zzN(obj, iZzc, iZzx);
                                break;
                            case 52:
                                zzaez.zzs(obj, iZzC & 1048575, Float.valueOf(zzadxVar.zzb()));
                                zzN(obj, iZzc, iZzx);
                                break;
                            case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF /* 53 */:
                                zzaez.zzs(obj, iZzC & 1048575, Long.valueOf(zzadxVar.zzl()));
                                zzN(obj, iZzc, iZzx);
                                break;
                            case 54:
                                zzaez.zzs(obj, iZzC & 1048575, Long.valueOf(zzadxVar.zzo()));
                                zzN(obj, iZzc, iZzx);
                                break;
                            case 55:
                                zzaez.zzs(obj, iZzC & 1048575, Integer.valueOf(zzadxVar.zzg()));
                                zzN(obj, iZzc, iZzx);
                                break;
                            case 56:
                                zzaez.zzs(obj, iZzC & 1048575, Long.valueOf(zzadxVar.zzk()));
                                zzN(obj, iZzc, iZzx);
                                break;
                            case 57:
                                zzaez.zzs(obj, iZzC & 1048575, Integer.valueOf(zzadxVar.zzf()));
                                zzN(obj, iZzc, iZzx);
                                break;
                            case Elf64_Ehdr.e_shentsize /* 58 */:
                                zzaez.zzs(obj, iZzC & 1048575, Boolean.valueOf(zzadxVar.zzN()));
                                zzN(obj, iZzc, iZzx);
                                break;
                            case 59:
                                zzL(obj, iZzC, zzadxVar);
                                zzN(obj, iZzc, iZzx);
                                break;
                            case 60:
                                if (zzT(obj, iZzc, iZzx)) {
                                    long j3 = iZzC & 1048575;
                                    zzaez.zzs(obj, j3, zzacn.zzg(zzaez.zzf(obj, j3), zzadxVar.zzs(zzF(iZzx), zzabuVar)));
                                } else {
                                    zzaez.zzs(obj, iZzC & 1048575, zzadxVar.zzs(zzF(iZzx), zzabuVar));
                                    zzM(obj, iZzx);
                                }
                                zzN(obj, iZzc, iZzx);
                                break;
                            case LockFreeTaskQueueCore.CLOSED_SHIFT /* 61 */:
                                zzaez.zzs(obj, iZzC & 1048575, zzadxVar.zzp());
                                zzN(obj, iZzc, iZzx);
                                break;
                            case Elf64_Ehdr.e_shstrndx /* 62 */:
                                zzaez.zzs(obj, iZzC & 1048575, Integer.valueOf(zzadxVar.zzj()));
                                zzN(obj, iZzc, iZzx);
                                break;
                            case HtmlCompat.FROM_HTML_MODE_COMPACT /* 63 */:
                                int iZze2 = zzadxVar.zze();
                                zzacl zzaclVarZzE2 = zzE(iZzx);
                                if (zzaclVarZzE2 == null || zzaclVarZzE2.zza()) {
                                    zzaez.zzs(obj, iZzC & 1048575, Integer.valueOf(iZze2));
                                    zzN(obj, iZzc, iZzx);
                                } else {
                                    objZzG = zzaea.zzD(iZzc, iZze2, objZzG, zzaepVar);
                                }
                                break;
                            case 64:
                                zzaez.zzs(obj, iZzC & 1048575, Integer.valueOf(zzadxVar.zzh()));
                                zzN(obj, iZzc, iZzx);
                                break;
                            case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_HEIGHT /* 65 */:
                                zzaez.zzs(obj, iZzC & 1048575, Long.valueOf(zzadxVar.zzm()));
                                zzN(obj, iZzc, iZzx);
                                break;
                            case ConstraintLayout.LayoutParams.Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT /* 66 */:
                                zzaez.zzs(obj, iZzC & 1048575, Integer.valueOf(zzadxVar.zzi()));
                                zzN(obj, iZzc, iZzx);
                                break;
                            case ConstraintLayout.LayoutParams.Table.GUIDELINE_USE_RTL /* 67 */:
                                zzaez.zzs(obj, iZzC & 1048575, Long.valueOf(zzadxVar.zzn()));
                                zzN(obj, iZzc, iZzx);
                                break;
                            case 68:
                                zzaez.zzs(obj, iZzC & 1048575, zzadxVar.zzr(zzF(iZzx), zzabuVar));
                                zzN(obj, iZzc, iZzx);
                                break;
                            default:
                                if (objZzG == null) {
                                    objZzG = zzaepVar.zzf();
                                }
                                if (!zzaepVar.zzp(objZzG, zzadxVar)) {
                                    for (int i = this.zzl; i < this.zzm; i++) {
                                        objZzG = zzG(obj, this.zzk[i], objZzG, zzaepVar);
                                    }
                                    if (objZzG != null) {
                                        zzaepVar.zzn(obj, objZzG);
                                        return;
                                    }
                                    return;
                                }
                                break;
                                break;
                        }
                    } catch (zzaco unused) {
                        zzaepVar.zzq(zzadxVar);
                        if (objZzG == null) {
                            objZzG = zzaepVar.zzc(obj);
                        }
                        if (!zzaepVar.zzp(objZzG, zzadxVar)) {
                            for (int i2 = this.zzl; i2 < this.zzm; i2++) {
                                objZzG = zzG(obj, this.zzk[i2], objZzG, zzaepVar);
                            }
                            if (objZzG != null) {
                                zzaepVar.zzn(obj, objZzG);
                                return;
                            }
                            return;
                        }
                    }
                } else {
                    if (iZzc == Integer.MAX_VALUE) {
                        for (int i3 = this.zzl; i3 < this.zzm; i3++) {
                            objZzG = zzG(obj, this.zzk[i3], objZzG, zzaepVar);
                        }
                        if (objZzG != null) {
                            zzaepVar.zzn(obj, objZzG);
                            return;
                        }
                        return;
                    }
                    Object objZzc = !this.zzh ? null : zzabvVar.zzc(zzabuVar, this.zzg, iZzc);
                    if (objZzc != null) {
                        if (zzabzVarZzb == null) {
                            zzabzVarZzb = zzabvVar.zzb(obj);
                        }
                        zzabz zzabzVar = zzabzVarZzb;
                        objZzG = zzabvVar.zzd(zzadxVar, objZzc, zzabuVar, zzabzVar, objZzG, zzaepVar);
                        zzabzVarZzb = zzabzVar;
                    } else {
                        zzaepVar.zzq(zzadxVar);
                        if (objZzG == null) {
                            objZzG = zzaepVar.zzc(obj);
                        }
                        if (!zzaepVar.zzp(objZzG, zzadxVar)) {
                            for (int i4 = this.zzl; i4 < this.zzm; i4++) {
                                objZzG = zzG(obj, this.zzk[i4], objZzG, zzaepVar);
                            }
                            if (objZzG != null) {
                                zzaepVar.zzn(obj, objZzG);
                                return;
                            }
                            return;
                        }
                    }
                }
            } catch (Throwable th) {
                for (int i5 = this.zzl; i5 < this.zzm; i5++) {
                    objZzG = zzG(obj, this.zzk[i5], objZzG, zzaepVar);
                }
                if (objZzG != null) {
                    zzaepVar.zzn(obj, objZzG);
                }
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzady
    public final void zzi(Object obj, byte[] bArr, int i, int i2, zzaar zzaarVar) throws IOException {
        if (this.zzj) {
            zzv(obj, bArr, i, i2, zzaarVar);
        } else {
            zzc(obj, bArr, i, i2, 0, zzaarVar);
        }
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzady
    public final boolean zzj(Object obj, Object obj2) {
        boolean zZzH;
        int length = this.zzc.length;
        for (int i = 0; i < length; i += 3) {
            int iZzC = zzC(i);
            long j = iZzC & 1048575;
            switch (zzB(iZzC)) {
                case 0:
                    if (!zzO(obj, obj2, i) || Double.doubleToLongBits(zzaez.zza(obj, j)) != Double.doubleToLongBits(zzaez.zza(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 1:
                    if (!zzO(obj, obj2, i) || Float.floatToIntBits(zzaez.zzb(obj, j)) != Float.floatToIntBits(zzaez.zzb(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 2:
                    if (!zzO(obj, obj2, i) || zzaez.zzd(obj, j) != zzaez.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 3:
                    if (!zzO(obj, obj2, i) || zzaez.zzd(obj, j) != zzaez.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 4:
                    if (!zzO(obj, obj2, i) || zzaez.zzc(obj, j) != zzaez.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 5:
                    if (!zzO(obj, obj2, i) || zzaez.zzd(obj, j) != zzaez.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 6:
                    if (!zzO(obj, obj2, i) || zzaez.zzc(obj, j) != zzaez.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 7:
                    if (!zzO(obj, obj2, i) || zzaez.zzw(obj, j) != zzaez.zzw(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 8:
                    if (!zzO(obj, obj2, i) || !zzaea.zzH(zzaez.zzf(obj, j), zzaez.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 9:
                    if (!zzO(obj, obj2, i) || !zzaea.zzH(zzaez.zzf(obj, j), zzaez.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 10:
                    if (!zzO(obj, obj2, i) || !zzaea.zzH(zzaez.zzf(obj, j), zzaez.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 11:
                    if (!zzO(obj, obj2, i) || zzaez.zzc(obj, j) != zzaez.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 12:
                    if (!zzO(obj, obj2, i) || zzaez.zzc(obj, j) != zzaez.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 13:
                    if (!zzO(obj, obj2, i) || zzaez.zzc(obj, j) != zzaez.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 14:
                    if (!zzO(obj, obj2, i) || zzaez.zzd(obj, j) != zzaez.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 15:
                    if (!zzO(obj, obj2, i) || zzaez.zzc(obj, j) != zzaez.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 16:
                    if (!zzO(obj, obj2, i) || zzaez.zzd(obj, j) != zzaez.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 17:
                    if (!zzO(obj, obj2, i) || !zzaea.zzH(zzaez.zzf(obj, j), zzaez.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
                    zZzH = zzaea.zzH(zzaez.zzf(obj, j), zzaez.zzf(obj2, j));
                    break;
                case 50:
                    zZzH = zzaea.zzH(zzaez.zzf(obj, j), zzaez.zzf(obj2, j));
                    break;
                case 51:
                case 52:
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF /* 53 */:
                case 54:
                case 55:
                case 56:
                case 57:
                case Elf64_Ehdr.e_shentsize /* 58 */:
                case 59:
                case 60:
                case LockFreeTaskQueueCore.CLOSED_SHIFT /* 61 */:
                case Elf64_Ehdr.e_shstrndx /* 62 */:
                case HtmlCompat.FROM_HTML_MODE_COMPACT /* 63 */:
                case 64:
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_HEIGHT /* 65 */:
                case ConstraintLayout.LayoutParams.Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT /* 66 */:
                case ConstraintLayout.LayoutParams.Table.GUIDELINE_USE_RTL /* 67 */:
                case 68:
                    long jZzz = zzz(i) & 1048575;
                    if (zzaez.zzc(obj, jZzz) != zzaez.zzc(obj2, jZzz) || !zzaea.zzH(zzaez.zzf(obj, j), zzaez.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                default:
                    break;
            }
            if (!zZzH) {
                return false;
            }
        }
        if (!this.zzo.zzd(obj).equals(this.zzo.zzd(obj2))) {
            return false;
        }
        if (!this.zzh) {
            return true;
        }
        this.zzp.zza(obj);
        this.zzp.zza(obj2);
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x009e  */
    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzady
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzk(java.lang.Object r19) {
        /*
            Method dump skipped, instruction units count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.p002firebaseauthapi.zzadp.zzk(java.lang.Object):boolean");
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzady
    public final void zzn(Object obj, zzabq zzabqVar) throws IOException {
        if (!this.zzj) {
            zzV(obj, zzabqVar);
            return;
        }
        if (this.zzh) {
            this.zzp.zza(obj);
            throw null;
        }
        int length = this.zzc.length;
        for (int i = 0; i < length; i += 3) {
            int iZzC = zzC(i);
            int i2 = this.zzc[i];
            switch (zzB(iZzC)) {
                case 0:
                    if (zzQ(obj, i)) {
                        zzabqVar.zzf(i2, zzaez.zza(obj, iZzC & 1048575));
                    }
                    break;
                case 1:
                    if (zzQ(obj, i)) {
                        zzabqVar.zzo(i2, zzaez.zzb(obj, iZzC & 1048575));
                    }
                    break;
                case 2:
                    if (zzQ(obj, i)) {
                        zzabqVar.zzt(i2, zzaez.zzd(obj, iZzC & 1048575));
                    }
                    break;
                case 3:
                    if (zzQ(obj, i)) {
                        zzabqVar.zzJ(i2, zzaez.zzd(obj, iZzC & 1048575));
                    }
                    break;
                case 4:
                    if (zzQ(obj, i)) {
                        zzabqVar.zzr(i2, zzaez.zzc(obj, iZzC & 1048575));
                    }
                    break;
                case 5:
                    if (zzQ(obj, i)) {
                        zzabqVar.zzm(i2, zzaez.zzd(obj, iZzC & 1048575));
                    }
                    break;
                case 6:
                    if (zzQ(obj, i)) {
                        zzabqVar.zzk(i2, zzaez.zzc(obj, iZzC & 1048575));
                    }
                    break;
                case 7:
                    if (zzQ(obj, i)) {
                        zzabqVar.zzb(i2, zzaez.zzw(obj, iZzC & 1048575));
                    }
                    break;
                case 8:
                    if (zzQ(obj, i)) {
                        zzX(i2, zzaez.zzf(obj, iZzC & 1048575), zzabqVar);
                    }
                    break;
                case 9:
                    if (zzQ(obj, i)) {
                        zzabqVar.zzv(i2, zzaez.zzf(obj, iZzC & 1048575), zzF(i));
                    }
                    break;
                case 10:
                    if (zzQ(obj, i)) {
                        zzabqVar.zzd(i2, (zzabe) zzaez.zzf(obj, iZzC & 1048575));
                    }
                    break;
                case 11:
                    if (zzQ(obj, i)) {
                        zzabqVar.zzH(i2, zzaez.zzc(obj, iZzC & 1048575));
                    }
                    break;
                case 12:
                    if (zzQ(obj, i)) {
                        zzabqVar.zzi(i2, zzaez.zzc(obj, iZzC & 1048575));
                    }
                    break;
                case 13:
                    if (zzQ(obj, i)) {
                        zzabqVar.zzw(i2, zzaez.zzc(obj, iZzC & 1048575));
                    }
                    break;
                case 14:
                    if (zzQ(obj, i)) {
                        zzabqVar.zzy(i2, zzaez.zzd(obj, iZzC & 1048575));
                    }
                    break;
                case 15:
                    if (zzQ(obj, i)) {
                        zzabqVar.zzA(i2, zzaez.zzc(obj, iZzC & 1048575));
                    }
                    break;
                case 16:
                    if (zzQ(obj, i)) {
                        zzabqVar.zzC(i2, zzaez.zzd(obj, iZzC & 1048575));
                    }
                    break;
                case 17:
                    if (zzQ(obj, i)) {
                        zzabqVar.zzq(i2, zzaez.zzf(obj, iZzC & 1048575), zzF(i));
                    }
                    break;
                case 18:
                    zzaea.zzL(i2, (List) zzaez.zzf(obj, iZzC & 1048575), zzabqVar, false);
                    break;
                case 19:
                    zzaea.zzP(i2, (List) zzaez.zzf(obj, iZzC & 1048575), zzabqVar, false);
                    break;
                case 20:
                    zzaea.zzS(i2, (List) zzaez.zzf(obj, iZzC & 1048575), zzabqVar, false);
                    break;
                case 21:
                    zzaea.zzaa(i2, (List) zzaez.zzf(obj, iZzC & 1048575), zzabqVar, false);
                    break;
                case 22:
                    zzaea.zzR(i2, (List) zzaez.zzf(obj, iZzC & 1048575), zzabqVar, false);
                    break;
                case 23:
                    zzaea.zzO(i2, (List) zzaez.zzf(obj, iZzC & 1048575), zzabqVar, false);
                    break;
                case 24:
                    zzaea.zzN(i2, (List) zzaez.zzf(obj, iZzC & 1048575), zzabqVar, false);
                    break;
                case 25:
                    zzaea.zzJ(i2, (List) zzaez.zzf(obj, iZzC & 1048575), zzabqVar, false);
                    break;
                case 26:
                    zzaea.zzY(i2, (List) zzaez.zzf(obj, iZzC & 1048575), zzabqVar);
                    break;
                case 27:
                    zzaea.zzT(i2, (List) zzaez.zzf(obj, iZzC & 1048575), zzabqVar, zzF(i));
                    break;
                case 28:
                    zzaea.zzK(i2, (List) zzaez.zzf(obj, iZzC & 1048575), zzabqVar);
                    break;
                case 29:
                    zzaea.zzZ(i2, (List) zzaez.zzf(obj, iZzC & 1048575), zzabqVar, false);
                    break;
                case 30:
                    zzaea.zzM(i2, (List) zzaez.zzf(obj, iZzC & 1048575), zzabqVar, false);
                    break;
                case 31:
                    zzaea.zzU(i2, (List) zzaez.zzf(obj, iZzC & 1048575), zzabqVar, false);
                    break;
                case 32:
                    zzaea.zzV(i2, (List) zzaez.zzf(obj, iZzC & 1048575), zzabqVar, false);
                    break;
                case 33:
                    zzaea.zzW(i2, (List) zzaez.zzf(obj, iZzC & 1048575), zzabqVar, false);
                    break;
                case 34:
                    zzaea.zzX(i2, (List) zzaez.zzf(obj, iZzC & 1048575), zzabqVar, false);
                    break;
                case 35:
                    zzaea.zzL(i2, (List) zzaez.zzf(obj, iZzC & 1048575), zzabqVar, true);
                    break;
                case 36:
                    zzaea.zzP(i2, (List) zzaez.zzf(obj, iZzC & 1048575), zzabqVar, true);
                    break;
                case 37:
                    zzaea.zzS(i2, (List) zzaez.zzf(obj, iZzC & 1048575), zzabqVar, true);
                    break;
                case 38:
                    zzaea.zzaa(i2, (List) zzaez.zzf(obj, iZzC & 1048575), zzabqVar, true);
                    break;
                case 39:
                    zzaea.zzR(i2, (List) zzaez.zzf(obj, iZzC & 1048575), zzabqVar, true);
                    break;
                case 40:
                    zzaea.zzO(i2, (List) zzaez.zzf(obj, iZzC & 1048575), zzabqVar, true);
                    break;
                case 41:
                    zzaea.zzN(i2, (List) zzaez.zzf(obj, iZzC & 1048575), zzabqVar, true);
                    break;
                case 42:
                    zzaea.zzJ(i2, (List) zzaez.zzf(obj, iZzC & 1048575), zzabqVar, true);
                    break;
                case 43:
                    zzaea.zzZ(i2, (List) zzaez.zzf(obj, iZzC & 1048575), zzabqVar, true);
                    break;
                case 44:
                    zzaea.zzM(i2, (List) zzaez.zzf(obj, iZzC & 1048575), zzabqVar, true);
                    break;
                case 45:
                    zzaea.zzU(i2, (List) zzaez.zzf(obj, iZzC & 1048575), zzabqVar, true);
                    break;
                case 46:
                    zzaea.zzV(i2, (List) zzaez.zzf(obj, iZzC & 1048575), zzabqVar, true);
                    break;
                case 47:
                    zzaea.zzW(i2, (List) zzaez.zzf(obj, iZzC & 1048575), zzabqVar, true);
                    break;
                case 48:
                    zzaea.zzX(i2, (List) zzaez.zzf(obj, iZzC & 1048575), zzabqVar, true);
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
                    zzaea.zzQ(i2, (List) zzaez.zzf(obj, iZzC & 1048575), zzabqVar, zzF(i));
                    break;
                case 50:
                    zzW(zzabqVar, i2, zzaez.zzf(obj, iZzC & 1048575), i);
                    break;
                case 51:
                    if (zzT(obj, i2, i)) {
                        zzabqVar.zzf(i2, zzo(obj, iZzC & 1048575));
                    }
                    break;
                case 52:
                    if (zzT(obj, i2, i)) {
                        zzabqVar.zzo(i2, zzp(obj, iZzC & 1048575));
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF /* 53 */:
                    if (zzT(obj, i2, i)) {
                        zzabqVar.zzt(i2, zzD(obj, iZzC & 1048575));
                    }
                    break;
                case 54:
                    if (zzT(obj, i2, i)) {
                        zzabqVar.zzJ(i2, zzD(obj, iZzC & 1048575));
                    }
                    break;
                case 55:
                    if (zzT(obj, i2, i)) {
                        zzabqVar.zzr(i2, zzs(obj, iZzC & 1048575));
                    }
                    break;
                case 56:
                    if (zzT(obj, i2, i)) {
                        zzabqVar.zzm(i2, zzD(obj, iZzC & 1048575));
                    }
                    break;
                case 57:
                    if (zzT(obj, i2, i)) {
                        zzabqVar.zzk(i2, zzs(obj, iZzC & 1048575));
                    }
                    break;
                case Elf64_Ehdr.e_shentsize /* 58 */:
                    if (zzT(obj, i2, i)) {
                        zzabqVar.zzb(i2, zzU(obj, iZzC & 1048575));
                    }
                    break;
                case 59:
                    if (zzT(obj, i2, i)) {
                        zzX(i2, zzaez.zzf(obj, iZzC & 1048575), zzabqVar);
                    }
                    break;
                case 60:
                    if (zzT(obj, i2, i)) {
                        zzabqVar.zzv(i2, zzaez.zzf(obj, iZzC & 1048575), zzF(i));
                    }
                    break;
                case LockFreeTaskQueueCore.CLOSED_SHIFT /* 61 */:
                    if (zzT(obj, i2, i)) {
                        zzabqVar.zzd(i2, (zzabe) zzaez.zzf(obj, iZzC & 1048575));
                    }
                    break;
                case Elf64_Ehdr.e_shstrndx /* 62 */:
                    if (zzT(obj, i2, i)) {
                        zzabqVar.zzH(i2, zzs(obj, iZzC & 1048575));
                    }
                    break;
                case HtmlCompat.FROM_HTML_MODE_COMPACT /* 63 */:
                    if (zzT(obj, i2, i)) {
                        zzabqVar.zzi(i2, zzs(obj, iZzC & 1048575));
                    }
                    break;
                case 64:
                    if (zzT(obj, i2, i)) {
                        zzabqVar.zzw(i2, zzs(obj, iZzC & 1048575));
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_HEIGHT /* 65 */:
                    if (zzT(obj, i2, i)) {
                        zzabqVar.zzy(i2, zzD(obj, iZzC & 1048575));
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT /* 66 */:
                    if (zzT(obj, i2, i)) {
                        zzabqVar.zzA(i2, zzs(obj, iZzC & 1048575));
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.GUIDELINE_USE_RTL /* 67 */:
                    if (zzT(obj, i2, i)) {
                        zzabqVar.zzC(i2, zzD(obj, iZzC & 1048575));
                    }
                    break;
                case 68:
                    if (zzT(obj, i2, i)) {
                        zzabqVar.zzq(i2, zzaez.zzf(obj, iZzC & 1048575), zzF(i));
                    }
                    break;
            }
        }
        zzaep zzaepVar = this.zzo;
        zzaepVar.zzr(zzaepVar.zzd(obj), zzabqVar);
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzady
    public final void zzg(Object obj, Object obj2) {
        obj2.getClass();
        for (int i = 0; i < this.zzc.length; i += 3) {
            int iZzC = zzC(i);
            long j = 1048575 & iZzC;
            int i2 = this.zzc[i];
            switch (zzB(iZzC)) {
                case 0:
                    if (zzQ(obj2, i)) {
                        zzaez.zzo(obj, j, zzaez.zza(obj2, j));
                        zzM(obj, i);
                    }
                    break;
                case 1:
                    if (zzQ(obj2, i)) {
                        zzaez.zzp(obj, j, zzaez.zzb(obj2, j));
                        zzM(obj, i);
                    }
                    break;
                case 2:
                    if (zzQ(obj2, i)) {
                        zzaez.zzr(obj, j, zzaez.zzd(obj2, j));
                        zzM(obj, i);
                    }
                    break;
                case 3:
                    if (zzQ(obj2, i)) {
                        zzaez.zzr(obj, j, zzaez.zzd(obj2, j));
                        zzM(obj, i);
                    }
                    break;
                case 4:
                    if (zzQ(obj2, i)) {
                        zzaez.zzq(obj, j, zzaez.zzc(obj2, j));
                        zzM(obj, i);
                    }
                    break;
                case 5:
                    if (zzQ(obj2, i)) {
                        zzaez.zzr(obj, j, zzaez.zzd(obj2, j));
                        zzM(obj, i);
                    }
                    break;
                case 6:
                    if (zzQ(obj2, i)) {
                        zzaez.zzq(obj, j, zzaez.zzc(obj2, j));
                        zzM(obj, i);
                    }
                    break;
                case 7:
                    if (zzQ(obj2, i)) {
                        zzaez.zzm(obj, j, zzaez.zzw(obj2, j));
                        zzM(obj, i);
                    }
                    break;
                case 8:
                    if (zzQ(obj2, i)) {
                        zzaez.zzs(obj, j, zzaez.zzf(obj2, j));
                        zzM(obj, i);
                    }
                    break;
                case 9:
                    zzJ(obj, obj2, i);
                    break;
                case 10:
                    if (zzQ(obj2, i)) {
                        zzaez.zzs(obj, j, zzaez.zzf(obj2, j));
                        zzM(obj, i);
                    }
                    break;
                case 11:
                    if (zzQ(obj2, i)) {
                        zzaez.zzq(obj, j, zzaez.zzc(obj2, j));
                        zzM(obj, i);
                    }
                    break;
                case 12:
                    if (zzQ(obj2, i)) {
                        zzaez.zzq(obj, j, zzaez.zzc(obj2, j));
                        zzM(obj, i);
                    }
                    break;
                case 13:
                    if (zzQ(obj2, i)) {
                        zzaez.zzq(obj, j, zzaez.zzc(obj2, j));
                        zzM(obj, i);
                    }
                    break;
                case 14:
                    if (zzQ(obj2, i)) {
                        zzaez.zzr(obj, j, zzaez.zzd(obj2, j));
                        zzM(obj, i);
                    }
                    break;
                case 15:
                    if (zzQ(obj2, i)) {
                        zzaez.zzq(obj, j, zzaez.zzc(obj2, j));
                        zzM(obj, i);
                    }
                    break;
                case 16:
                    if (zzQ(obj2, i)) {
                        zzaez.zzr(obj, j, zzaez.zzd(obj2, j));
                        zzM(obj, i);
                    }
                    break;
                case 17:
                    zzJ(obj, obj2, i);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
                    this.zzn.zzc(obj, obj2, j);
                    break;
                case 50:
                    zzaea.zzI(this.zzr, obj, obj2, j);
                    break;
                case 51:
                case 52:
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF /* 53 */:
                case 54:
                case 55:
                case 56:
                case 57:
                case Elf64_Ehdr.e_shentsize /* 58 */:
                case 59:
                    if (zzT(obj2, i2, i)) {
                        zzaez.zzs(obj, j, zzaez.zzf(obj2, j));
                        zzN(obj, i2, i);
                    }
                    break;
                case 60:
                    zzK(obj, obj2, i);
                    break;
                case LockFreeTaskQueueCore.CLOSED_SHIFT /* 61 */:
                case Elf64_Ehdr.e_shstrndx /* 62 */:
                case HtmlCompat.FROM_HTML_MODE_COMPACT /* 63 */:
                case 64:
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_HEIGHT /* 65 */:
                case ConstraintLayout.LayoutParams.Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT /* 66 */:
                case ConstraintLayout.LayoutParams.Table.GUIDELINE_USE_RTL /* 67 */:
                    if (zzT(obj2, i2, i)) {
                        zzaez.zzs(obj, j, zzaez.zzf(obj2, j));
                        zzN(obj, i2, i);
                    }
                    break;
                case 68:
                    zzK(obj, obj2, i);
                    break;
            }
        }
        zzaea.zzF(this.zzo, obj, obj2);
        if (this.zzh) {
            zzaea.zzE(this.zzp, obj, obj2);
        }
    }
}
