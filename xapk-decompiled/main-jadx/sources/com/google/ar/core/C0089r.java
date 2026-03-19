package com.google.ar.core;

import android.animation.ValueAnimator;

/* JADX INFO: renamed from: com.google.ar.core.r, reason: case insensitive filesystem */
/* JADX INFO: compiled from: InstallActivity.java */
/* JADX INFO: loaded from: classes3.dex */
final class C0089r implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f223a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ int f224b;
    final /* synthetic */ int c;
    final /* synthetic */ InstallActivity d;

    C0089r(InstallActivity installActivity, int i, int i2, int i3) {
        this.d = installActivity;
        this.f223a = i;
        this.f224b = i2;
        this.c = i3;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float animatedFraction = 1.0f - valueAnimator.getAnimatedFraction();
        float animatedFraction2 = valueAnimator.getAnimatedFraction();
        float f = this.f224b * animatedFraction2;
        this.d.getWindow().setLayout((int) ((this.f223a * animatedFraction) + f), (int) ((this.c * animatedFraction) + f));
        this.d.getWindow().getDecorView().refreshDrawableState();
    }
}
