package a.a.a.f.a;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f64a;

    public c(int i) throws IllegalArgumentException {
        if (i < 1 || i > 360) {
            throw new IllegalArgumentException("Alpha need to be between 1 and 360");
        }
        this.f64a = i;
    }

    public void a(float[] fArr, float[] fArr2) {
        for (int i = 0; i < fArr.length; i++) {
            float fAbs = Math.abs(fArr[i] - fArr2[i]) / this.f64a;
            if (fAbs >= 1.0f) {
                fArr2[i] = fArr[i];
            } else {
                float f = fArr2[i];
                fArr2[i] = f + (fAbs * (fArr[i] - f));
            }
        }
    }
}
