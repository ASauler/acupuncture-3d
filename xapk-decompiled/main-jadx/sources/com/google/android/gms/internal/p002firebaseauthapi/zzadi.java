package com.google.android.gms.internal.p002firebaseauthapi;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zzadi {
    private static final zzadh zza;
    private static final zzadh zzb;

    static {
        zzadh zzadhVar;
        try {
            zzadhVar = (zzadh) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            zzadhVar = null;
        }
        zza = zzadhVar;
        zzb = new zzadh();
    }

    static zzadh zza() {
        return zza;
    }

    static zzadh zzb() {
        return zzb;
    }
}
