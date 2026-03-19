package com.google.android.gms.internal.p002firebaseauthapi;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
public enum zzaca {
    DOUBLE(0, 1, zzacq.DOUBLE),
    FLOAT(1, 1, zzacq.FLOAT),
    INT64(2, 1, zzacq.LONG),
    UINT64(3, 1, zzacq.LONG),
    INT32(4, 1, zzacq.INT),
    FIXED64(5, 1, zzacq.LONG),
    FIXED32(6, 1, zzacq.INT),
    BOOL(7, 1, zzacq.BOOLEAN),
    STRING(8, 1, zzacq.STRING),
    MESSAGE(9, 1, zzacq.MESSAGE),
    BYTES(10, 1, zzacq.BYTE_STRING),
    UINT32(11, 1, zzacq.INT),
    ENUM(12, 1, zzacq.ENUM),
    SFIXED32(13, 1, zzacq.INT),
    SFIXED64(14, 1, zzacq.LONG),
    SINT32(15, 1, zzacq.INT),
    SINT64(16, 1, zzacq.LONG),
    GROUP(17, 1, zzacq.MESSAGE),
    DOUBLE_LIST(18, 2, zzacq.DOUBLE),
    FLOAT_LIST(19, 2, zzacq.FLOAT),
    INT64_LIST(20, 2, zzacq.LONG),
    UINT64_LIST(21, 2, zzacq.LONG),
    INT32_LIST(22, 2, zzacq.INT),
    FIXED64_LIST(23, 2, zzacq.LONG),
    FIXED32_LIST(24, 2, zzacq.INT),
    BOOL_LIST(25, 2, zzacq.BOOLEAN),
    STRING_LIST(26, 2, zzacq.STRING),
    MESSAGE_LIST(27, 2, zzacq.MESSAGE),
    BYTES_LIST(28, 2, zzacq.BYTE_STRING),
    UINT32_LIST(29, 2, zzacq.INT),
    ENUM_LIST(30, 2, zzacq.ENUM),
    SFIXED32_LIST(31, 2, zzacq.INT),
    SFIXED64_LIST(32, 2, zzacq.LONG),
    SINT32_LIST(33, 2, zzacq.INT),
    SINT64_LIST(34, 2, zzacq.LONG),
    DOUBLE_LIST_PACKED(35, 3, zzacq.DOUBLE),
    FLOAT_LIST_PACKED(36, 3, zzacq.FLOAT),
    INT64_LIST_PACKED(37, 3, zzacq.LONG),
    UINT64_LIST_PACKED(38, 3, zzacq.LONG),
    INT32_LIST_PACKED(39, 3, zzacq.INT),
    FIXED64_LIST_PACKED(40, 3, zzacq.LONG),
    FIXED32_LIST_PACKED(41, 3, zzacq.INT),
    BOOL_LIST_PACKED(42, 3, zzacq.BOOLEAN),
    UINT32_LIST_PACKED(43, 3, zzacq.INT),
    ENUM_LIST_PACKED(44, 3, zzacq.ENUM),
    SFIXED32_LIST_PACKED(45, 3, zzacq.INT),
    SFIXED64_LIST_PACKED(46, 3, zzacq.LONG),
    SINT32_LIST_PACKED(47, 3, zzacq.INT),
    SINT64_LIST_PACKED(48, 3, zzacq.LONG),
    GROUP_LIST(49, 2, zzacq.MESSAGE),
    MAP(50, 4, zzacq.VOID);

    private static final zzaca[] zzZ;
    private final zzacq zzab;
    private final int zzac;
    private final Class zzad;

    static {
        zzaca[] zzacaVarArrValues = values();
        zzZ = new zzaca[zzacaVarArrValues.length];
        for (zzaca zzacaVar : zzacaVarArrValues) {
            zzZ[zzacaVar.zzac] = zzacaVar;
        }
    }

    zzaca(int i, int i2, zzacq zzacqVar) {
        this.zzac = i;
        this.zzab = zzacqVar;
        zzacq zzacqVar2 = zzacq.VOID;
        int i3 = i2 - 1;
        if (i3 == 1 || i3 == 3) {
            this.zzad = zzacqVar.zza();
        } else {
            this.zzad = null;
        }
        if (i2 == 1) {
            zzacqVar.ordinal();
        }
    }

    public final int zza() {
        return this.zzac;
    }
}
