package com.wikitude.common.internal;

import com.wikitude.common.CallStatus;
import com.wikitude.common.WikitudeError;

/* JADX INFO: loaded from: classes2.dex */
public class CallValueF {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f458a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CallStatus f459b;

    private CallValueF(float f, CallStatus callStatus) {
        this.f458a = f;
        this.f459b = callStatus;
    }

    public static CallValueF a(float f) {
        return new CallValueF(f, CallStatusInternal.success());
    }

    public static CallValueF a(WikitudeError wikitudeError) {
        return new CallValueF(-1.0f, CallStatusInternal.error(wikitudeError));
    }

    public CallStatus getCallStatus() {
        return this.f459b;
    }

    public WikitudeError getError() {
        return this.f459b.getError();
    }

    public float getValue() {
        return this.f458a;
    }

    public boolean isSuccess() {
        return this.f459b.isSuccess();
    }
}
