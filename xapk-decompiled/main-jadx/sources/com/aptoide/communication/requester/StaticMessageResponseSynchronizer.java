package com.aptoide.communication.requester;

import android.os.Parcelable;
import com.aptoide.sdk.core.logger.Logger;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class StaticMessageResponseSynchronizer {
    private static MessageRequesterListener messageReceivedListener;
    private static final Map<Long, Object> blockingObjects = new HashMap();
    private static final Map<Long, Parcelable> responses = new HashMap();

    private StaticMessageResponseSynchronizer() {
    }

    static void init() {
        messageReceivedListener = new MessageRequesterListener() { // from class: com.aptoide.communication.requester.StaticMessageResponseSynchronizer$$ExternalSyntheticLambda0
            @Override // com.aptoide.communication.requester.MessageRequesterListener
            public final void onMessageReceived(long j, Parcelable parcelable) {
                StaticMessageResponseSynchronizer.lambda$init$0(j, parcelable);
            }
        };
    }

    static /* synthetic */ void lambda$init$0(long j, Parcelable parcelable) {
        responses.put(Long.valueOf(j), parcelable);
        Object obj = blockingObjects.get(Long.valueOf(j));
        if (obj == null) {
            Logger.logWarning("There is no request for message id: " + j);
        } else {
            synchronized (obj) {
                obj.notifyAll();
            }
        }
    }

    public static Parcelable waitMessage(long j, int i) throws IllegalStateException, InterruptedException {
        checkIfInitialized();
        Map<Long, Parcelable> map = responses;
        if (!map.containsKey(Long.valueOf(j))) {
            Object obj = new Object();
            blockingObjects.put(Long.valueOf(j), obj);
            synchronized (obj) {
                obj.wait(i);
            }
        }
        if (!map.containsKey(Long.valueOf(j))) {
            throw new InterruptedException("timeout reached");
        }
        return map.get(Long.valueOf(j));
    }

    private static void checkIfInitialized() throws IllegalStateException {
        if (messageReceivedListener == null) {
            throw new IllegalStateException("StaticMessageResponseSynchronizer class must be initialized before being used.");
        }
    }

    public static MessageRequesterListener getMessageListener() throws IllegalStateException {
        checkIfInitialized();
        return messageReceivedListener;
    }
}
