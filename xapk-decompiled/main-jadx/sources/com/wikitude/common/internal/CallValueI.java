package com.wikitude.common.internal;

import com.wikitude.common.CallStatus;
import com.wikitude.common.WikitudeError;

/* JADX INFO: loaded from: classes2.dex */
public class CallValueI {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f460a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CallStatus f461b;

    private CallValueI(int i, CallStatus callStatus) {
        this.f460a = i;
        this.f461b = callStatus;
    }

    public static CallValueI a(int i) {
        return new CallValueI(i, CallStatusInternal.success());
    }

    public static CallValueI a(WikitudeError wikitudeError) {
        return new CallValueI(-1, CallStatusInternal.error(wikitudeError));
    }

    public CallStatus getCallStatus() {
        return this.f461b;
    }

    public WikitudeError getError() {
        return this.f461b.getError();
    }

    public int getValue() {
        return this.f460a;
    }

    public boolean isSuccess() {
        return this.f461b.isSuccess();
    }
}
