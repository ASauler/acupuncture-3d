package com.google.ar.core;

import java.util.Map;

/* JADX INFO: compiled from: FaceCache.java */
/* JADX INFO: loaded from: classes3.dex */
final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Map<Long, AugmentedFace> f217a = new m();

    n() {
    }

    public final synchronized AugmentedFace a(long j, Session session) {
        Map<Long, AugmentedFace> map = this.f217a;
        Long lValueOf = Long.valueOf(j);
        AugmentedFace augmentedFace = map.get(lValueOf);
        if (augmentedFace != null) {
            return augmentedFace;
        }
        AugmentedFace augmentedFace2 = new AugmentedFace(j, session);
        this.f217a.put(lValueOf, augmentedFace2);
        return augmentedFace2;
    }
}
