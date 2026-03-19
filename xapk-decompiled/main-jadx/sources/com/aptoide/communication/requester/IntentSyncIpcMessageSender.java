package com.aptoide.communication.requester;

import android.os.Looper;
import android.os.Parcelable;
import com.aptoide.communication.SyncIpcMessageRequester;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public class IntentSyncIpcMessageSender implements SyncIpcMessageRequester {
    private final IdGenerator idGenerator;
    private final MessageRequesterSynchronizer messageResponseSynchronizer;
    private final MessageRequesterSender messageSender;
    private final MessageSenderSynchronizer messageSenderSynchronizer;
    private final int timeout;

    public IntentSyncIpcMessageSender(MessageRequesterSender messageRequesterSender, MessageRequesterSynchronizer messageRequesterSynchronizer, IdGenerator idGenerator, MessageSenderSynchronizer messageSenderSynchronizer, int i) {
        this.messageSender = messageRequesterSender;
        this.messageResponseSynchronizer = messageRequesterSynchronizer;
        this.idGenerator = idGenerator;
        this.messageSenderSynchronizer = messageSenderSynchronizer;
        this.timeout = i;
    }

    @Override // com.aptoide.communication.SyncIpcMessageRequester
    public Parcelable sendMessage(final int i, final Parcelable parcelable) throws MainThreadException {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new MainThreadException("sendMessage");
        }
        return this.messageSenderSynchronizer.addTaskToQueue(new Callable() { // from class: com.aptoide.communication.requester.IntentSyncIpcMessageSender$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f$0.lambda$sendMessage$0(i, parcelable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Parcelable lambda$sendMessage$0(int i, Parcelable parcelable) throws Exception {
        long jGenerateRequestCode = this.idGenerator.generateRequestCode();
        this.messageSender.sendMessage(jGenerateRequestCode, i, parcelable);
        return this.messageResponseSynchronizer.waitMessage(jGenerateRequestCode, this.timeout);
    }
}
