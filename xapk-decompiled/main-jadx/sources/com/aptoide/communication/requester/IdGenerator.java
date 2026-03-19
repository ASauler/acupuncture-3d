package com.aptoide.communication.requester;

/* JADX INFO: loaded from: classes.dex */
class IdGenerator {
    IdGenerator() {
    }

    public long generateRequestCode() {
        return System.currentTimeMillis() + Thread.currentThread().getId();
    }
}
