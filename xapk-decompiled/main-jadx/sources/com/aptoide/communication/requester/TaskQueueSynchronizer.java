package com.aptoide.communication.requester;

import android.os.Parcel;
import android.os.Parcelable;
import com.aptoide.sdk.core.logger.Logger;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public class TaskQueueSynchronizer {
    private final BlockingQueue<FutureTask<Parcelable>> taskQueue = new LinkedBlockingQueue();

    public TaskQueueSynchronizer() {
        new Thread(new Runnable() { // from class: com.aptoide.communication.requester.TaskQueueSynchronizer$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        while (true) {
            try {
                this.taskQueue.take().run();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                return;
            }
        }
    }

    public Parcelable executeTask(Callable<Parcelable> callable, long j, TimeUnit timeUnit) throws Exception {
        FutureTask<Parcelable> futureTask = new FutureTask<>(callable);
        this.taskQueue.put(futureTask);
        try {
            return futureTask.get(j, timeUnit);
        } catch (TimeoutException unused) {
            Logger.logWarning("Task execution timed out.");
            futureTask.cancel(true);
            return new Parcelable() { // from class: com.aptoide.communication.requester.TaskQueueSynchronizer.1
                @Override // android.os.Parcelable
                public int describeContents() {
                    return 0;
                }

                @Override // android.os.Parcelable
                public void writeToParcel(Parcel parcel, int i) {
                }
            };
        }
    }
}
