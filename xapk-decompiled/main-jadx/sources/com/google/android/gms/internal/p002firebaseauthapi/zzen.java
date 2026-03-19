package com.google.android.gms.internal.p002firebaseauthapi;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public final class zzen {
    public static final zzmz zza;
    public static final zzmz zzb;
    public static final zzmz zzc;
    private static final byte[] zzd;

    static {
        byte[] bArr = new byte[0];
        zzd = bArr;
        zza = zza(4, 5, 3, zzcd.zza, zzoa.TINK, bArr);
        zzb = zza(4, 5, 4, zzcd.zza, zzoa.RAW, bArr);
        zzc = zza(4, 5, 3, zzcd.zze, zzoa.TINK, bArr);
    }

    public static zzmz zza(int i, int i2, int i3, zzmz zzmzVar, zzoa zzoaVar, byte[] bArr) {
        zzky zzkyVarZza = zzkz.zza();
        zzlk zzlkVarZza = zzll.zza();
        zzlkVarZza.zzb(4);
        zzlkVarZza.zzc(5);
        zzlkVarZza.zza(zzabe.zzn(bArr));
        zzll zzllVar = (zzll) zzlkVarZza.zzk();
        zzkv zzkvVarZza = zzkw.zza();
        zzkvVarZza.zza(zzmzVar);
        zzkw zzkwVar = (zzkw) zzkvVarZza.zzk();
        zzlb zzlbVarZzb = zzlc.zzb();
        zzlbVarZzb.zzb(zzllVar);
        zzlbVarZzb.zza(zzkwVar);
        zzlbVarZzb.zzc(i3);
        zzkyVarZza.zza((zzlc) zzlbVarZzb.zzk());
        zzkz zzkzVar = (zzkz) zzkyVarZza.zzk();
        zzmy zzmyVarZza = zzmz.zza();
        new zzef();
        zzmyVarZza.zzb("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey");
        zzmyVarZza.zza(zzoaVar);
        zzmyVarZza.zzc(zzkzVar.zzo());
        return (zzmz) zzmyVarZza.zzk();
    }
}
