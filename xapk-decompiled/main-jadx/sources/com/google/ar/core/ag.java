package com.google.ar.core;

/* JADX INFO: compiled from: Session.java */
/* JADX INFO: loaded from: classes3.dex */
enum ag {
    BASE_TRACKABLE(1095893248, Trackable.class),
    UNKNOWN_TO_JAVA(-1, null),
    PLANE(1095893249, Plane.class),
    POINT(1095893250, Point.class),
    AUGMENTED_IMAGE(1095893252, AugmentedImage.class),
    FACE(1095893253, AugmentedFace.class),
    DEPTH_POINT(1095893265, DepthPoint.class),
    INSTANT_PLACEMENT_POINT(1095893266, InstantPlacementPoint.class);

    final int i;
    private final Class<?> j;

    ag(int i, Class cls) {
        this.i = i;
        this.j = cls;
    }

    public static ag a(Class<? extends Trackable> cls) {
        for (ag agVar : values()) {
            Class<?> cls2 = agVar.j;
            if (cls2 != null && cls2.equals(cls)) {
                return agVar;
            }
        }
        return UNKNOWN_TO_JAVA;
    }
}
