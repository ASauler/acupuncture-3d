package com.wikitude.common.internal;

import com.wikitude.common.CallStatus;
import com.wikitude.common.WikitudeError;

/* JADX INFO: loaded from: classes2.dex */
public class CallStatusInternal implements CallStatus {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f456a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final WikitudeError f457b;

    private CallStatusInternal(boolean z, WikitudeError wikitudeError) {
        this.f456a = z;
        this.f457b = wikitudeError;
    }

    public static CallStatus error(WikitudeError wikitudeError) {
        return new CallStatusInternal(false, wikitudeError);
    }

    public static CallStatus success() {
        return new CallStatusInternal(true, null);
    }

    @Override // com.wikitude.common.CallStatus
    public WikitudeError getError() {
        return this.f457b;
    }

    @Override // com.wikitude.common.CallStatus
    public boolean isSuccess() {
        return this.f456a;
    }
}
