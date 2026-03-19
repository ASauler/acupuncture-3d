package com.google.ar.core;

import com.google.apphosting.datastore.testing.DatastoreTestTrace;
import com.google.ar.core.ArCoreApk;

/* JADX INFO: compiled from: ArCoreApk.java */
/* JADX INFO: loaded from: classes3.dex */
enum g extends ArCoreApk.Availability {
    g() {
        super("SUPPORTED_APK_TOO_OLD", 5, DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER);
    }

    @Override // com.google.ar.core.ArCoreApk.Availability
    public final boolean isSupported() {
        return true;
    }
}
