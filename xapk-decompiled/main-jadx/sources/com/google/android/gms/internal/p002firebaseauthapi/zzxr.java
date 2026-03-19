package com.google.android.gms.internal.p002firebaseauthapi;

import android.app.Activity;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.util.DefaultClock;
import com.google.firebase.auth.PhoneAuthProvider;
import java.util.Map;
import java.util.concurrent.Executor;
import org.matomo.sdk.dispatcher.Dispatcher;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzxr {
    private static final Map zza = new ArrayMap();

    public static PhoneAuthProvider.OnVerificationStateChangedCallbacks zza(String str, PhoneAuthProvider.OnVerificationStateChangedCallbacks onVerificationStateChangedCallbacks, zzxd zzxdVar) {
        zze(str, zzxdVar);
        return new zzxp(onVerificationStateChangedCallbacks, str);
    }

    public static void zzc() {
        zza.clear();
    }

    public static boolean zzd(String str, PhoneAuthProvider.OnVerificationStateChangedCallbacks onVerificationStateChangedCallbacks, Activity activity, Executor executor) {
        Map map = zza;
        if (!map.containsKey(str)) {
            zze(str, null);
            return false;
        }
        zzxq zzxqVar = (zzxq) map.get(str);
        if (DefaultClock.getInstance().currentTimeMillis() - zzxqVar.zzb >= Dispatcher.DEFAULT_DISPATCH_INTERVAL) {
            zze(str, null);
            return false;
        }
        zzxd zzxdVar = zzxqVar.zza;
        if (zzxdVar == null) {
            return true;
        }
        zzxdVar.zzh(onVerificationStateChangedCallbacks, activity, executor, str);
        return true;
    }

    private static void zze(String str, zzxd zzxdVar) {
        zza.put(str, new zzxq(zzxdVar, DefaultClock.getInstance().currentTimeMillis()));
    }
}
