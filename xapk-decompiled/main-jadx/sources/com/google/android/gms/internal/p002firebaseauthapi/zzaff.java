package com.google.android.gms.internal.p002firebaseauthapi;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
public enum zzaff {
    DOUBLE(zzafg.DOUBLE, 1),
    FLOAT(zzafg.FLOAT, 5),
    INT64(zzafg.LONG, 0),
    UINT64(zzafg.LONG, 0),
    INT32(zzafg.INT, 0),
    FIXED64(zzafg.LONG, 1),
    FIXED32(zzafg.INT, 5),
    BOOL(zzafg.BOOLEAN, 0),
    STRING(zzafg.STRING, 2),
    GROUP(zzafg.MESSAGE, 3),
    MESSAGE(zzafg.MESSAGE, 2),
    BYTES(zzafg.BYTE_STRING, 2),
    UINT32(zzafg.INT, 0),
    ENUM(zzafg.ENUM, 0),
    SFIXED32(zzafg.INT, 5),
    SFIXED64(zzafg.LONG, 1),
    SINT32(zzafg.INT, 0),
    SINT64(zzafg.LONG, 0);

    private final zzafg zzt;

    zzaff(zzafg zzafgVar, int i) {
        this.zzt = zzafgVar;
    }

    public final zzafg zza() {
        return this.zzt;
    }
}
