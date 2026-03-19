package com.aptoide.communication.requester;

/* JADX INFO: loaded from: classes.dex */
public class MainThreadException extends Exception {
    public MainThreadException(String str) {
        super(str + " method can't run on main thread");
    }
}
