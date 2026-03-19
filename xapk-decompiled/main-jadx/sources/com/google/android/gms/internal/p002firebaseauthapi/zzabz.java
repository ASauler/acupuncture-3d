package com.google.android.gms.internal.p002firebaseauthapi;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zzabz {
    private static final zzabz zzb = new zzabz(true);
    final zzael zza = new zzaeb(16);
    private boolean zzc;
    private boolean zzd;

    private zzabz() {
    }

    public static zzabz zza() {
        throw null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final void zzd(com.google.android.gms.internal.p002firebaseauthapi.zzaby r2, java.lang.Object r3) {
        /*
            com.google.android.gms.internal.firebase-auth-api.zzaff r0 = r2.zzb()
            com.google.android.gms.internal.p002firebaseauthapi.zzacn.zze(r3)
            com.google.android.gms.internal.firebase-auth-api.zzaff r1 = com.google.android.gms.internal.p002firebaseauthapi.zzaff.DOUBLE
            com.google.android.gms.internal.firebase-auth-api.zzafg r1 = com.google.android.gms.internal.p002firebaseauthapi.zzafg.INT
            com.google.android.gms.internal.firebase-auth-api.zzafg r0 = r0.zza()
            int r0 = r0.ordinal()
            switch(r0) {
                case 0: goto L41;
                case 1: goto L3e;
                case 2: goto L3b;
                case 3: goto L38;
                case 4: goto L35;
                case 5: goto L32;
                case 6: goto L29;
                case 7: goto L20;
                case 8: goto L17;
                default: goto L16;
            }
        L16:
            goto L46
        L17:
            boolean r0 = r3 instanceof com.google.android.gms.internal.p002firebaseauthapi.zzadm
            if (r0 != 0) goto L45
            boolean r0 = r3 instanceof com.google.android.gms.internal.p002firebaseauthapi.zzacr
            if (r0 == 0) goto L46
            goto L45
        L20:
            boolean r0 = r3 instanceof java.lang.Integer
            if (r0 != 0) goto L45
            boolean r0 = r3 instanceof com.google.android.gms.internal.p002firebaseauthapi.zzacj
            if (r0 == 0) goto L46
            goto L45
        L29:
            boolean r0 = r3 instanceof com.google.android.gms.internal.p002firebaseauthapi.zzabe
            if (r0 != 0) goto L45
            boolean r0 = r3 instanceof byte[]
            if (r0 == 0) goto L46
            goto L45
        L32:
            boolean r0 = r3 instanceof java.lang.String
            goto L43
        L35:
            boolean r0 = r3 instanceof java.lang.Boolean
            goto L43
        L38:
            boolean r0 = r3 instanceof java.lang.Double
            goto L43
        L3b:
            boolean r0 = r3 instanceof java.lang.Float
            goto L43
        L3e:
            boolean r0 = r3 instanceof java.lang.Long
            goto L43
        L41:
            boolean r0 = r3 instanceof java.lang.Integer
        L43:
            if (r0 == 0) goto L46
        L45:
            return
        L46:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            int r1 = r2.zza()
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            com.google.android.gms.internal.firebase-auth-api.zzaff r2 = r2.zzb()
            com.google.android.gms.internal.firebase-auth-api.zzafg r2 = r2.zza()
            java.lang.Class r3 = r3.getClass()
            java.lang.String r3 = r3.getName()
            java.lang.Object[] r2 = new java.lang.Object[]{r1, r2, r3}
            java.lang.String r3 = "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"
            java.lang.String r2 = java.lang.String.format(r3, r2)
            r0.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.p002firebaseauthapi.zzabz.zzd(com.google.android.gms.internal.firebase-auth-api.zzaby, java.lang.Object):void");
    }

    public final /* bridge */ /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzabz zzabzVar = new zzabz();
        for (int i = 0; i < this.zza.zzb(); i++) {
            Map.Entry entryZzg = this.zza.zzg(i);
            zzabzVar.zzc((zzaby) entryZzg.getKey(), entryZzg.getValue());
        }
        for (Map.Entry entry : this.zza.zzc()) {
            zzabzVar.zzc((zzaby) entry.getKey(), entry.getValue());
        }
        zzabzVar.zzd = this.zzd;
        return zzabzVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzabz) {
            return this.zza.equals(((zzabz) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final void zzb() {
        if (this.zzc) {
            return;
        }
        this.zza.zza();
        this.zzc = true;
    }

    public final void zzc(zzaby zzabyVar, Object obj) {
        if (!zzabyVar.zzc()) {
            zzd(zzabyVar, obj);
        } else {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                zzd(zzabyVar, arrayList.get(i));
            }
            obj = arrayList;
        }
        if (obj instanceof zzacr) {
            this.zzd = true;
        }
        this.zza.put(zzabyVar, obj);
    }

    private zzabz(boolean z) {
        zzb();
        zzb();
    }
}
