package com.google.android.gms.internal.auth;

import com.google.common.base.Ascii;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@18.0.4 */
/* JADX INFO: loaded from: classes3.dex */
final class zzhm {
    private static final zzhk zza;

    static {
        if (zzhi.zzu() && zzhi.zzv()) {
            int i = zzdr.zza;
        }
        zza = new zzhl();
    }

    static /* bridge */ /* synthetic */ int zza(byte[] bArr, int i, int i2) {
        byte b2 = bArr[i - 1];
        int i3 = i2 - i;
        if (i3 != 0) {
            if (i3 == 1) {
                byte b3 = bArr[i];
                if (b2 <= -12 && b3 <= -65) {
                    return b2 ^ (b3 << 8);
                }
            } else {
                if (i3 != 2) {
                    throw new AssertionError();
                }
                byte b4 = bArr[i];
                byte b5 = bArr[i + 1];
                if (b2 <= -12 && b4 <= -65 && b5 <= -65) {
                    return ((b4 << 8) ^ b2) ^ (b5 << Ascii.DLE);
                }
            }
        } else if (b2 <= -12) {
            return b2;
        }
        return -1;
    }

    static String zzb(byte[] bArr, int i, int i2) throws zzfa {
        int length = bArr.length;
        if ((i | i2 | ((length - i) - i2)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(i), Integer.valueOf(i2)));
        }
        int i3 = i + i2;
        char[] cArr = new char[i2];
        int i4 = 0;
        while (i < i3) {
            byte b2 = bArr[i];
            if (!zzhj.zzd(b2)) {
                break;
            }
            i++;
            cArr[i4] = (char) b2;
            i4++;
        }
        int i5 = i4;
        while (i < i3) {
            int i6 = i + 1;
            byte b3 = bArr[i];
            if (zzhj.zzd(b3)) {
                int i7 = i5 + 1;
                cArr[i5] = (char) b3;
                i = i6;
                while (true) {
                    i5 = i7;
                    if (i < i3) {
                        byte b4 = bArr[i];
                        if (!zzhj.zzd(b4)) {
                            break;
                        }
                        i++;
                        i7 = i5 + 1;
                        cArr[i5] = (char) b4;
                    }
                }
            } else if (b3 < -32) {
                if (i6 >= i3) {
                    throw zzfa.zzb();
                }
                zzhj.zzc(b3, bArr[i6], cArr, i5);
                i = i6 + 1;
                i5++;
            } else if (b3 < -16) {
                if (i6 >= i3 - 1) {
                    throw zzfa.zzb();
                }
                int i8 = i6 + 1;
                zzhj.zzb(b3, bArr[i6], bArr[i8], cArr, i5);
                i = i8 + 1;
                i5++;
            } else {
                if (i6 >= i3 - 2) {
                    throw zzfa.zzb();
                }
                int i9 = i6 + 1;
                int i10 = i9 + 1;
                zzhj.zza(b3, bArr[i6], bArr[i9], bArr[i10], cArr, i5);
                i5 += 2;
                i = i10 + 1;
            }
        }
        return new String(cArr, 0, i5);
    }

    static boolean zzc(byte[] bArr) {
        return zza.zzb(bArr, 0, bArr.length);
    }

    static boolean zzd(byte[] bArr, int i, int i2) {
        return zza.zzb(bArr, i, i2);
    }
}
