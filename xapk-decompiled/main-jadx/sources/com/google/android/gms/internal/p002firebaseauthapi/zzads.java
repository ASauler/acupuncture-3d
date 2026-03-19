package com.google.android.gms.internal.p002firebaseauthapi;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zzads {
    private static final zzadr zza;
    private static final zzadr zzb;

    static {
        zzadr zzadrVar;
        try {
            zzadrVar = (zzadr) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            zzadrVar = null;
        }
        zza = zzadrVar;
        zzb = new zzadr();
    }

    static zzadr zza() {
        return zza;
    }

    static zzadr zzb() {
        return zzb;
    }
}
