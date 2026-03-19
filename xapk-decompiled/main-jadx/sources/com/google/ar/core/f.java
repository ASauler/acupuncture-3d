package com.google.ar.core;

import com.google.ar.core.ArCoreApk;

/* JADX INFO: compiled from: ArCoreApk.java */
/* JADX INFO: loaded from: classes3.dex */
enum f extends ArCoreApk.Availability {
    f() {
        super("SUPPORTED_NOT_INSTALLED", 4, 201);
    }

    @Override // com.google.ar.core.ArCoreApk.Availability
    public final boolean isSupported() {
        return true;
    }
}
