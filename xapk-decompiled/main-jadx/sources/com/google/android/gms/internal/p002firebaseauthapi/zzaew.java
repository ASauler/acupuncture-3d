package com.google.android.gms.internal.p002firebaseauthapi;

import sun.misc.Unsafe;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zzaew extends zzaey {
    zzaew(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzaey
    public final double zza(Object obj, long j) {
        return Double.longBitsToDouble(zzk(obj, j));
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzaey
    public final float zzb(Object obj, long j) {
        return Float.intBitsToFloat(zzj(obj, j));
    }

    /* JADX WARN: Failed to inline method: com.google.android.gms.internal.firebase-auth-api.zzaez.zzj(java.lang.Object, long, boolean):void */
    /* JADX WARN: Failed to replace arg (r3v0 'z' boolean A[IMMUTABLE_TYPE, METHOD_ARGUMENT]) for method inline: com.google.android.gms.internal.firebase-auth-api.zzaez.zzj(java.lang.Object, long, boolean):void */
    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzaey
    public final void zzc(Object obj, long j, boolean z) {
        if (zzaez.zzb) {
            zzaez.zzD(obj, j, z ? (byte) 1 : (byte) 0);
        } else {
            zzaez.zzj(obj, j, z);
        }
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzaey
    public final void zzd(Object obj, long j, byte b2) {
        if (zzaez.zzb) {
            zzaez.zzD(obj, j, b2);
        } else {
            zzaez.zzE(obj, j, b2);
        }
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzaey
    public final void zze(Object obj, long j, double d) {
        zzo(obj, j, Double.doubleToLongBits(d));
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzaey
    public final void zzf(Object obj, long j, float f) {
        zzn(obj, j, Float.floatToIntBits(f));
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzaey
    public final boolean zzg(Object obj, long j) {
        return zzaez.zzb ? zzaez.zzt(obj, j) : zzaez.zzu(obj, j);
    }
}
