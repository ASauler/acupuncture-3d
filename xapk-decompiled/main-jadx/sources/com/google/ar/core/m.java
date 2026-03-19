package com.google.ar.core;

import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: FaceCache.java */
/* JADX INFO: loaded from: classes3.dex */
final class m extends LinkedHashMap<Long, AugmentedFace> {
    m() {
        super(1, 0.75f, true);
    }

    @Override // java.util.LinkedHashMap
    protected final boolean removeEldestEntry(Map.Entry<Long, AugmentedFace> entry) {
        return size() > 10;
    }
}
