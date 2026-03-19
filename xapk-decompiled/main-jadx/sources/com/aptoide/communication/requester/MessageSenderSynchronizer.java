package com.aptoide.communication.requester;

import android.os.Parcelable;
import com.aptoide.sdk.core.logger.Logger;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class MessageSenderSynchronizer {
    private final TaskQueueSynchronizer taskQueueSynchronizer = new TaskQueueSynchronizer();
    private final int timeout;

    public MessageSenderSynchronizer(int i) {
        this.timeout = i;
    }

    public Parcelable addTaskToQueue(Callable<Parcelable> callable) {
        try {
            return this.taskQueueSynchronizer.executeTask(callable, this.timeout, TimeUnit.MILLISECONDS);
        } catch (Exception e) {
            Logger.logError("Failed to send synchronized message: " + e);
            return null;
        }
    }
}
