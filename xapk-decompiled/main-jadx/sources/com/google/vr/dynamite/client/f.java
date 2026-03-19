package com.google.vr.dynamite.client;

import java.util.Objects;

/* JADX INFO: compiled from: TargetLibraryInfo.java */
/* JADX INFO: loaded from: classes2.dex */
final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f265a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f266b;

    public f(String str, String str2) {
        this.f265a = str;
        this.f266b = str2;
    }

    public final String a() {
        return this.f265a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            if (Objects.equals(this.f265a, fVar.f265a) && Objects.equals(this.f266b, fVar.f266b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (Objects.hashCode(this.f265a) * 37) + Objects.hashCode(this.f266b);
    }

    public final String toString() {
        return "[packageName=" + this.f265a + ",libraryName=" + this.f266b + "]";
    }
}
