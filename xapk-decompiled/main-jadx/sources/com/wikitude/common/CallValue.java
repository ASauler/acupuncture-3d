package com.wikitude.common;

/* JADX INFO: loaded from: classes2.dex */
public interface CallValue<T> {
    WikitudeError getError();

    T getValue();

    boolean isSuccess();
}
