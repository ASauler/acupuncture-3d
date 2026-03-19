package com.google.android.gms.internal.p002firebaseauthapi;

import net.openid.appauth.GrantTypeValues;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
public enum zzyo {
    REFRESH_TOKEN(GrantTypeValues.REFRESH_TOKEN),
    AUTHORIZATION_CODE(GrantTypeValues.AUTHORIZATION_CODE);

    private final String zzd;

    zzyo(String str) {
        this.zzd = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.zzd;
    }
}
