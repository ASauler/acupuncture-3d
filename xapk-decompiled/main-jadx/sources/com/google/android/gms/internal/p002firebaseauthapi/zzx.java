package com.google.android.gms.internal.p002firebaseauthapi;

import java.util.logging.Logger;
import java.util.regex.Pattern;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zzx {
    private static final Logger zza = Logger.getLogger(zzx.class.getName());
    private static final zzw zzb = new zzw(null);

    private zzx() {
    }

    static zzq zza(String str) {
        return new zzt(Pattern.compile("[.-]"));
    }

    static String zzb(@CheckForNull String str) {
        return str == null ? "" : str;
    }

    static boolean zzc(@CheckForNull String str) {
        return str == null || str.isEmpty();
    }
}
