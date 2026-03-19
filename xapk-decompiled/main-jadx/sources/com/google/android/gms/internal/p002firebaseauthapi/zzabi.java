package com.google.android.gms.internal.p002firebaseauthapi;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
public abstract class zzabi {
    public static final /* synthetic */ int zzd = 0;
    private static volatile int zze = 100;
    int zza;
    final int zzb = zze;
    zzabj zzc;

    /* synthetic */ zzabi(zzabh zzabhVar) {
    }

    public static int zzs(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    public static long zzt(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    static zzabi zzu(byte[] bArr, int i, int i2, boolean z) {
        zzabg zzabgVar = new zzabg(bArr, 0, i2, z, null);
        try {
            zzabgVar.zzc(i2);
            return zzabgVar;
        } catch (zzacp e) {
            throw new IllegalArgumentException(e);
        }
    }

    public abstract int zzb();

    public abstract int zzc(int i) throws zzacp;

    public abstract int zzf() throws IOException;

    public abstract zzabe zzj() throws IOException;

    public abstract String zzk() throws IOException;

    public abstract String zzl() throws IOException;

    public abstract void zzm(int i) throws zzacp;

    public abstract void zzn(int i);

    public abstract boolean zzp() throws IOException;

    public abstract boolean zzq() throws IOException;

    public abstract boolean zzr(int i) throws IOException;
}
