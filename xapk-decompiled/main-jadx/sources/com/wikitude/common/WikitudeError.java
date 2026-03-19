package com.wikitude.common;

/* JADX INFO: loaded from: classes2.dex */
public interface WikitudeError {
    String a();

    String b();

    int getCode();

    String getDomain();

    String getMessage();

    WikitudeError getUnderlyingError();
}
