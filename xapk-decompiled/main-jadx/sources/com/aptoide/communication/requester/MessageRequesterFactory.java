package com.aptoide.communication.requester;

import android.content.Context;
import com.aptoide.communication.SyncIpcMessageRequester;

/* JADX INFO: loaded from: classes.dex */
public class MessageRequesterFactory {
    public static SyncIpcMessageRequester create(Context context, String str, String str2, String str3, int i) {
        return new IntentSyncIpcMessageSender(new MessageRequesterSender(context, str, str2, str3), new MessageRequesterSynchronizer(), new IdGenerator(), new MessageSenderSynchronizer(i), i);
    }
}
