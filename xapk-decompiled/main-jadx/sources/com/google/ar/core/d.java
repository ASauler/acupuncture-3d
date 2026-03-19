package com.google.ar.core;

import com.google.ar.core.ArCoreApk;

/* JADX INFO: compiled from: ArCoreApk.java */
/* JADX INFO: loaded from: classes3.dex */
enum d extends ArCoreApk.Availability {
    d() {
        super("UNKNOWN_TIMED_OUT", 2, 2);
    }

    @Override // com.google.ar.core.ArCoreApk.Availability
    public final boolean isUnknown() {
        return true;
    }
}
