package com.aptoide.sdk.billing.service;

/* JADX INFO: loaded from: classes.dex */
public class RequestResponse {
    private final Exception exception;
    private final String response;
    private final int responseCode;

    public RequestResponse(int i, String str, Exception exc) {
        this.responseCode = i;
        this.response = str;
        this.exception = exc;
    }

    public int getResponseCode() {
        return this.responseCode;
    }

    public String getResponse() {
        return this.response;
    }

    public Exception getException() {
        return this.exception;
    }
}
