package com.aptoide.communication;

import android.os.Parcelable;
import com.aptoide.communication.requester.MainThreadException;

/* JADX INFO: loaded from: classes.dex */
public interface SyncIpcMessageRequester {
    Parcelable sendMessage(int i, Parcelable parcelable) throws InterruptedException, MainThreadException;
}
