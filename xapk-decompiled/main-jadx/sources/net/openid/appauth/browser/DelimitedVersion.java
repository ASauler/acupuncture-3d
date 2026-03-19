package net.openid.appauth.browser;

import com.facebook.appevents.AppEventsConstants;

/* JADX INFO: loaded from: classes4.dex */
public class DelimitedVersion implements Comparable<DelimitedVersion> {
    private static final long BIT_MASK_32 = -1;
    private static final int PRIME_HASH_FACTOR = 92821;
    private final long[] mNumericParts;

    private int compareLongs(long l1, long l2) {
        if (l1 < l2) {
            return -1;
        }
        return l1 > l2 ? 1 : 0;
    }

    public DelimitedVersion(long[] numericParts) {
        this.mNumericParts = numericParts;
    }

    public String toString() {
        if (this.mNumericParts.length == 0) {
            return AppEventsConstants.EVENT_PARAM_VALUE_NO;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.mNumericParts[0]);
        for (int i = 1; i < this.mNumericParts.length; i++) {
            sb.append('.');
            sb.append(this.mNumericParts[i]);
        }
        return sb.toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && (obj instanceof DelimitedVersion) && compareTo((DelimitedVersion) obj) == 0;
    }

    public int hashCode() {
        int i = 0;
        for (long j : this.mNumericParts) {
            i = (i * PRIME_HASH_FACTOR) + ((int) (j & (-1)));
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0023, code lost:
    
        return compareLongs(r1.length, r6.mNumericParts.length);
     */
    @Override // java.lang.Comparable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int compareTo(net.openid.appauth.browser.DelimitedVersion r6) {
        /*
            r5 = this;
            r0 = 0
        L1:
            long[] r1 = r5.mNumericParts
            int r2 = r1.length
            if (r0 >= r2) goto L19
            long[] r2 = r6.mNumericParts
            int r3 = r2.length
            if (r0 >= r3) goto L19
            r3 = r1[r0]
            r1 = r2[r0]
            int r1 = r5.compareLongs(r3, r1)
            if (r1 == 0) goto L16
            return r1
        L16:
            int r0 = r0 + 1
            goto L1
        L19:
            int r0 = r1.length
            long r0 = (long) r0
            long[] r6 = r6.mNumericParts
            int r6 = r6.length
            long r2 = (long) r6
            int r6 = r5.compareLongs(r0, r2)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: net.openid.appauth.browser.DelimitedVersion.compareTo(net.openid.appauth.browser.DelimitedVersion):int");
    }

    public static DelimitedVersion parse(String versionString) {
        if (versionString == null) {
            return new DelimitedVersion(new long[0]);
        }
        String[] strArrSplit = versionString.split("[^0-9]+");
        long[] jArr = new long[strArrSplit.length];
        int i = 0;
        for (String str : strArrSplit) {
            if (!str.isEmpty()) {
                jArr[i] = Long.parseLong(str);
                i++;
            }
        }
        do {
            i--;
            if (i < 0) {
                break;
            }
        } while (jArr[i] <= 0);
        int i2 = i + 1;
        long[] jArr2 = new long[i2];
        System.arraycopy(jArr, 0, jArr2, 0, i2);
        return new DelimitedVersion(jArr2);
    }
}
