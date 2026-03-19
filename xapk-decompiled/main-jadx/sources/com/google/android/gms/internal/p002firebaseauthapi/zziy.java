package com.google.android.gms.internal.p002firebaseauthapi;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
public final class zziy extends zzach implements zzadn {
    private static final zziy zzb;
    private int zze;
    private zzje zzf;
    private zzlv zzg;

    static {
        zziy zziyVar = new zziy();
        zzb = zziyVar;
        zzach.zzE(zziy.class, zziyVar);
    }

    private zziy() {
    }

    public static zzix zzb() {
        return (zzix) zzb.zzt();
    }

    public static zziy zzd(zzabe zzabeVar, zzabu zzabuVar) throws zzacp {
        return (zziy) zzach.zzw(zzb, zzabeVar, zzabuVar);
    }

    static /* synthetic */ void zzh(zziy zziyVar, zzje zzjeVar) {
        zzjeVar.getClass();
        zziyVar.zzf = zzjeVar;
    }

    static /* synthetic */ void zzi(zziy zziyVar, zzlv zzlvVar) {
        zzlvVar.getClass();
        zziyVar.zzg = zzlvVar;
    }

    public final int zza() {
        return this.zze;
    }

    public final zzje zze() {
        zzje zzjeVar = this.zzf;
        return zzjeVar == null ? zzje.zzd() : zzjeVar;
    }

    public final zzlv zzf() {
        zzlv zzlvVar = this.zzg;
        return zzlvVar == null ? zzlv.zzd() : zzlvVar;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzach
    protected final Object zzj(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzD(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\t", new Object[]{"zze", "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new zziy();
        }
        zziw zziwVar = null;
        if (i2 == 4) {
            return new zzix(zziwVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
