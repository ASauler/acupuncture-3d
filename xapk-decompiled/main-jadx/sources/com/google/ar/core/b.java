package com.google.ar.core;

import com.google.ar.core.ArCoreApk;

/* JADX INFO: compiled from: ArCoreApk.java */
/* JADX INFO: loaded from: classes3.dex */
enum b extends ArCoreApk.Availability {
    b() {
        super("UNKNOWN_ERROR", 0, 0);
    }

    @Override // com.google.ar.core.ArCoreApk.Availability
    public final boolean isUnknown() {
        return true;
    }
}
