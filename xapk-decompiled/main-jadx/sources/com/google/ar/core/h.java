package com.google.ar.core;

import com.google.apphosting.datastore.testing.DatastoreTestTrace;
import com.google.ar.core.ArCoreApk;

/* JADX INFO: compiled from: ArCoreApk.java */
/* JADX INFO: loaded from: classes3.dex */
enum h extends ArCoreApk.Availability {
    h() {
        super("SUPPORTED_INSTALLED", 6, DatastoreTestTrace.FirestoreV1Action.MATCHING_DOCUMENTS_FIELD_NUMBER);
    }

    @Override // com.google.ar.core.ArCoreApk.Availability
    public final boolean isSupported() {
        return true;
    }
}
