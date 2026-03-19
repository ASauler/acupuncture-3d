package com.wikitude.common.internal;

import com.wikitude.common.CallStatus;
import com.wikitude.common.CallValue;
import com.wikitude.common.WikitudeError;

/* JADX INFO: loaded from: classes2.dex */
public class CallValueInternal<T> implements CallValue<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final T f462a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CallStatus f463b;

    private CallValueInternal(T t, CallStatus callStatus) {
        this.f462a = t;
        this.f463b = callStatus;
    }

    public static <T> CallValue<T> a(WikitudeError wikitudeError) {
        return new CallValueInternal(null, CallStatusInternal.error(wikitudeError));
    }

    public static <T> CallValue<T> a(T t) {
        return new CallValueInternal(t, CallStatusInternal.success());
    }

    public CallStatus getCallStatus() {
        return this.f463b;
    }

    @Override // com.wikitude.common.CallValue
    public WikitudeError getError() {
        return this.f463b.getError();
    }

    @Override // com.wikitude.common.CallValue
    public T getValue() {
        return this.f462a;
    }

    @Override // com.wikitude.common.CallValue
    public boolean isSuccess() {
        return this.f463b.isSuccess();
    }
}
