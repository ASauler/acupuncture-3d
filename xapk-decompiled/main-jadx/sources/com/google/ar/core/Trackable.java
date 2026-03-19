package com.google.ar.core;

import java.util.Collection;

/* JADX INFO: loaded from: classes3.dex */
public interface Trackable {
    Anchor createAnchor(Pose pose);

    Collection<Anchor> getAnchors();

    TrackingState getTrackingState();
}
