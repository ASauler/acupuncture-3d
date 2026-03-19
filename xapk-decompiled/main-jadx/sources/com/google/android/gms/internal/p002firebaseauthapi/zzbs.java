package com.google.android.gms.internal.p002firebaseauthapi;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zzbs implements Comparable {
    private final byte[] zza;

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        zzbs zzbsVar = (zzbs) obj;
        int length = this.zza.length;
        int length2 = zzbsVar.zza.length;
        if (length != length2) {
            return length - length2;
        }
        int i = 0;
        while (true) {
            byte[] bArr = this.zza;
            if (i >= bArr.length) {
                return 0;
            }
            byte b2 = bArr[i];
            byte b3 = zzbsVar.zza[i];
            if (b2 != b3) {
                return b2 - b3;
            }
            i++;
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzbs) {
            return Arrays.equals(this.zza, ((zzbs) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.zza);
    }

    public final String toString() {
        return zzpl.zza(this.zza);
    }
}
