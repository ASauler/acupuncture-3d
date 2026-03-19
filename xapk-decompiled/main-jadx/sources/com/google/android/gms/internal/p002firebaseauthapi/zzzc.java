package com.google.android.gms.internal.p002firebaseauthapi;

import com.bumptech.glide.load.Key;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Base64Utils;
import java.io.UnsupportedEncodingException;
import java.util.List;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzzc {
    public static long zza(String str) {
        Preconditions.checkNotEmpty(str);
        List listZzd = zzaf.zzb('.').zzd(str);
        if (listZzd.size() < 2) {
            throw new RuntimeException("Invalid idToken ".concat(String.valueOf(str)));
        }
        try {
            zzzd zzzdVarZza = zzzd.zza(new String(Base64Utils.decodeUrlSafeNoPadding((String) listZzd.get(1)), Key.STRING_CHARSET_NAME));
            return zzzdVarZza.zzb().longValue() - zzzdVarZza.zzc().longValue();
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("Unable to decode token", e);
        }
    }
}
