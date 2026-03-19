package com.google.android.gms.internal.p002firebaseauthapi;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzll extends zzach implements zzadn {
    private static final zzll zzb;
    private int zze;
    private int zzf;
    private zzabe zzg = zzabe.zzb;

    static {
        zzll zzllVar = new zzll();
        zzb = zzllVar;
        zzach.zzE(zzll.class, zzllVar);
    }

    private zzll() {
    }

    public static zzlk zza() {
        return (zzlk) zzb.zzt();
    }

    public static zzll zzc() {
        return zzb;
    }

    public final zzabe zzd() {
        return this.zzg;
    }

    public final int zzf() {
        int i = this.zze;
        int i2 = i != 0 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? 0 : 7 : 6 : 5 : 4 : 2;
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }

    public final int zzg() {
        int iZzb = zzls.zzb(this.zzf);
        if (iZzb == 0) {
            return 1;
        }
        return iZzb;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzach
    protected final Object zzj(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzD(zzb, "\u0000\u0003\u0000\u0000\u0001\u000b\u0003\u0000\u0000\u0000\u0001\f\u0002\f\u000b\n", new Object[]{"zze", "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new zzll();
        }
        zzlj zzljVar = null;
        if (i2 == 4) {
            return new zzlk(zzljVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
