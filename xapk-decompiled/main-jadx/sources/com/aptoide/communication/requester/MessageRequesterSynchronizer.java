package com.aptoide.communication.requester;

import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
class MessageRequesterSynchronizer {
    public MessageRequesterSynchronizer() {
        StaticMessageResponseSynchronizer.init();
    }

    public Parcelable waitMessage(long j, int i) throws InterruptedException {
        return StaticMessageResponseSynchronizer.waitMessage(j, i);
    }
}
