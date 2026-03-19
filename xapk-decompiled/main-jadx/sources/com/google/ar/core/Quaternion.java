package com.google.ar.core;

/* JADX INFO: loaded from: classes3.dex */
class Quaternion {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Quaternion f187a = new Quaternion();
    private float x = 0.0f;
    private float y = 0.0f;
    private float z = 0.0f;
    private float w = 1.0f;

    public Quaternion() {
        a(0.0f, 0.0f, 0.0f, 1.0f);
    }

    public static Quaternion i(Quaternion quaternion, Quaternion quaternion2, float f) {
        float fSin;
        Quaternion quaternion3 = new Quaternion();
        float f2 = (quaternion.x * quaternion2.x) + (quaternion.y * quaternion2.y) + (quaternion.z * quaternion2.z) + (quaternion.w * quaternion2.w);
        if (f2 < 0.0f) {
            Quaternion quaternion4 = new Quaternion(quaternion2);
            f2 = -f2;
            quaternion4.x = -quaternion4.x;
            quaternion4.y = -quaternion4.y;
            quaternion4.z = -quaternion4.z;
            quaternion4.w = -quaternion4.w;
            quaternion2 = quaternion4;
        }
        float fAcos = (float) Math.acos(f2);
        float fSqrt = (float) Math.sqrt(1.0f - (f2 * f2));
        if (Math.abs(fSqrt) > 0.001d) {
            float f3 = 1.0f / fSqrt;
            fSin = ((float) Math.sin((1.0f - f) * fAcos)) * f3;
            f = ((float) Math.sin(f * fAcos)) * f3;
        } else {
            fSin = 1.0f - f;
        }
        quaternion3.x = (quaternion.x * fSin) + (quaternion2.x * f);
        quaternion3.y = (quaternion.y * fSin) + (quaternion2.y * f);
        quaternion3.z = (quaternion.z * fSin) + (quaternion2.z * f);
        quaternion3.w = (fSin * quaternion.w) + (f * quaternion2.w);
        float fSqrt2 = (float) (1.0d / Math.sqrt((((r1 * r1) + (r2 * r2)) + (r4 * r4)) + (r3 * r3)));
        quaternion3.x *= fSqrt2;
        quaternion3.y *= fSqrt2;
        quaternion3.z *= fSqrt2;
        quaternion3.w *= fSqrt2;
        return quaternion3;
    }

    public static void j(Quaternion quaternion, float[] fArr, int i, float[] fArr2, int i2) {
        float f = fArr[i];
        float f2 = fArr[i + 1];
        float f3 = fArr[i + 2];
        float f4 = quaternion.x;
        float f5 = quaternion.y;
        float f6 = quaternion.z;
        float f7 = quaternion.w;
        float f8 = ((f7 * f) + (f5 * f3)) - (f6 * f2);
        float f9 = ((f7 * f2) + (f6 * f)) - (f4 * f3);
        float f10 = ((f7 * f3) + (f4 * f2)) - (f5 * f);
        float f11 = -f4;
        float f12 = ((f * f11) - (f2 * f5)) - (f3 * f6);
        float f13 = -f6;
        float f14 = -f5;
        fArr2[i2] = (((f8 * f7) + (f12 * f11)) + (f9 * f13)) - (f10 * f14);
        fArr2[i2 + 1] = (((f9 * f7) + (f12 * f14)) + (f10 * f11)) - (f8 * f13);
        fArr2[i2 + 2] = (((f10 * f7) + (f12 * f13)) + (f8 * f14)) - (f9 * f11);
    }

    public final void a(float f, float f2, float f3, float f4) {
        this.x = f;
        this.y = f2;
        this.z = f3;
        this.w = f4;
    }

    public final float b() {
        return this.x;
    }

    public final float c() {
        return this.y;
    }

    public final float d() {
        return this.z;
    }

    public final float e() {
        return this.w;
    }

    public final void f(float[] fArr, int i) {
        fArr[i] = this.x;
        fArr[i + 1] = this.y;
        fArr[i + 2] = this.z;
        fArr[i + 3] = this.w;
    }

    public final Quaternion g() {
        return new Quaternion(-this.x, -this.y, -this.z, this.w);
    }

    public final Quaternion h(Quaternion quaternion) {
        Quaternion quaternion2 = new Quaternion();
        float f = this.x;
        float f2 = quaternion.w;
        float f3 = this.y;
        float f4 = quaternion.z;
        float f5 = this.z;
        float f6 = quaternion.y;
        float f7 = this.w;
        quaternion2.x = (((f * f2) + (f3 * f4)) - (f5 * f6)) + (quaternion.x * f7);
        float f8 = this.x;
        float f9 = -f8;
        float f10 = quaternion.x;
        quaternion2.y = (f9 * f4) + (f3 * f2) + (f5 * f10) + (f6 * f7);
        float f11 = quaternion.y;
        float f12 = this.y;
        quaternion2.z = ((f8 * f11) - (f12 * f10)) + (f5 * f2) + (f4 * f7);
        quaternion2.w = (((f9 * f10) - (f12 * f11)) - (this.z * quaternion.z)) + (f7 * f2);
        return quaternion2;
    }

    public final void k(float[] fArr, int i) {
        float f = this.x;
        float f2 = this.y;
        float f3 = this.z;
        float f4 = this.w;
        float f5 = (f * f) + (f2 * f2) + (f3 * f3) + (f4 * f4);
        float f6 = f5 > 0.0f ? 2.0f / f5 : 0.0f;
        float f7 = f * f6;
        float f8 = f2 * f6;
        float f9 = f6 * f3;
        float f10 = f4 * f7;
        float f11 = f4 * f8;
        float f12 = f4 * f9;
        float f13 = f7 * f;
        float f14 = f * f8;
        float f15 = f * f9;
        float f16 = f8 * f2;
        float f17 = f2 * f9;
        float f18 = f3 * f9;
        fArr[i] = 1.0f - (f16 + f18);
        fArr[i + 4] = f14 - f12;
        fArr[i + 8] = f15 + f11;
        fArr[i + 1] = f14 + f12;
        fArr[i + 5] = 1.0f - (f18 + f13);
        fArr[i + 9] = f17 - f10;
        fArr[i + 2] = f15 - f11;
        fArr[i + 6] = f17 + f10;
        fArr[i + 10] = 1.0f - (f13 + f16);
    }

    public final String toString() {
        return String.format("[%.3f, %.3f, %.3f, %.3f]", Float.valueOf(this.x), Float.valueOf(this.y), Float.valueOf(this.z), Float.valueOf(this.w));
    }

    public Quaternion(float f, float f2, float f3, float f4) {
        a(f, f2, f3, f4);
    }

    public Quaternion(Quaternion quaternion) {
        a(quaternion.x, quaternion.y, quaternion.z, quaternion.w);
    }
}
