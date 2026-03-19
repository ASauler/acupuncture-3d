package com.google.android.gms.internal.p002firebaseauthapi;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zzabx {
    private static final zzabv zza = new zzabw();
    private static final zzabv zzb;

    static {
        zzabv zzabvVar;
        try {
            zzabvVar = (zzabv) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            zzabvVar = null;
        }
        zzb = zzabvVar;
    }

    static zzabv zza() {
        zzabv zzabvVar = zzb;
        if (zzabvVar != null) {
            return zzabvVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    static zzabv zzb() {
        return zza;
    }
}
