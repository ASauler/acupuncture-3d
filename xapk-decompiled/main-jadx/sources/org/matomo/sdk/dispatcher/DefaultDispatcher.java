package org.matomo.sdk.dispatcher;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import org.matomo.sdk.Matomo;
import org.matomo.sdk.TrackMe;
import org.matomo.sdk.tools.Connectivity;
import timber.log.Timber;

/* JADX INFO: loaded from: classes4.dex */
public class DefaultDispatcher implements Dispatcher {
    private static final String TAG = Matomo.tag(DefaultDispatcher.class);
    private final Connectivity mConnectivity;
    private final EventCache mEventCache;
    private final PacketFactory mPacketFactory;
    private final PacketSender mPacketSender;
    private final Object mThreadControl = new Object();
    private final Semaphore mSleepToken = new Semaphore(0);
    private volatile int mTimeOut = Dispatcher.DEFAULT_CONNECTION_TIMEOUT;
    private volatile long mDispatchInterval = Dispatcher.DEFAULT_DISPATCH_INTERVAL;
    private volatile int mRetryCounter = 0;
    private volatile boolean mForcedBlocking = false;
    private boolean mDispatchGzipped = false;
    private volatile DispatchMode mDispatchMode = DispatchMode.ALWAYS;
    private volatile boolean mRunning = false;
    private volatile Thread mDispatchThread = null;
    private List<Packet> mDryRunTarget = null;
    private final Runnable mLoop = new Runnable() { // from class: org.matomo.sdk.dispatcher.DefaultDispatcher.1
        @Override // java.lang.Runnable
        public void run() {
            boolean zSend;
            DefaultDispatcher.this.mRetryCounter = 0;
            while (DefaultDispatcher.this.mRunning) {
                try {
                    long jMin = DefaultDispatcher.this.mDispatchInterval;
                    if (DefaultDispatcher.this.mRetryCounter > 1) {
                        jMin += Math.min(((long) DefaultDispatcher.this.mRetryCounter) * DefaultDispatcher.this.mDispatchInterval, DefaultDispatcher.this.mDispatchInterval * 5);
                    }
                    DefaultDispatcher.this.mSleepToken.tryAcquire(jMin, TimeUnit.MILLISECONDS);
                } catch (InterruptedException e) {
                    Timber.tag(DefaultDispatcher.TAG).e(e);
                }
                if (DefaultDispatcher.this.mEventCache.updateState(DefaultDispatcher.this.isOnline())) {
                    ArrayList arrayList = new ArrayList();
                    DefaultDispatcher.this.mEventCache.drainTo(arrayList);
                    Timber.tag(DefaultDispatcher.TAG).d("Drained %s events.", Integer.valueOf(arrayList.size()));
                    Iterator<Packet> it = DefaultDispatcher.this.mPacketFactory.buildPackets(arrayList).iterator();
                    int eventCount = 0;
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        Packet next = it.next();
                        if (DefaultDispatcher.this.mDryRunTarget != null) {
                            Timber.tag(DefaultDispatcher.TAG).d("DryRun, stored HttpRequest, now %d.", Integer.valueOf(DefaultDispatcher.this.mDryRunTarget.size()));
                            zSend = DefaultDispatcher.this.mDryRunTarget.add(next);
                        } else {
                            zSend = DefaultDispatcher.this.mPacketSender.send(next);
                        }
                        if (!zSend) {
                            Timber.tag(DefaultDispatcher.TAG).d("Failure while trying to send packet", new Object[0]);
                            DefaultDispatcher.access$008(DefaultDispatcher.this);
                            break;
                        } else {
                            eventCount += next.getEventCount();
                            DefaultDispatcher.this.mRetryCounter = 0;
                            if (!DefaultDispatcher.this.isOnline()) {
                                Timber.tag(DefaultDispatcher.TAG).d("Disconnected during dispatch loop", new Object[0]);
                                break;
                            }
                        }
                    }
                    Timber.tag(DefaultDispatcher.TAG).d("Dispatched %d events.", Integer.valueOf(eventCount));
                    if (eventCount < arrayList.size()) {
                        Timber.tag(DefaultDispatcher.TAG).d("Unable to send all events, requeueing %d events", Integer.valueOf(arrayList.size() - eventCount));
                        DefaultDispatcher.this.mEventCache.requeue(arrayList.subList(eventCount, arrayList.size()));
                        DefaultDispatcher.this.mEventCache.updateState(DefaultDispatcher.this.isOnline());
                    }
                }
                synchronized (DefaultDispatcher.this.mThreadControl) {
                    if (!DefaultDispatcher.this.mForcedBlocking && !DefaultDispatcher.this.mEventCache.isEmpty() && DefaultDispatcher.this.mDispatchInterval >= 0) {
                    }
                    DefaultDispatcher.this.mRunning = false;
                    return;
                }
            }
        }
    };

    static /* synthetic */ int access$008(DefaultDispatcher defaultDispatcher) {
        int i = defaultDispatcher.mRetryCounter;
        defaultDispatcher.mRetryCounter = i + 1;
        return i;
    }

    public DefaultDispatcher(EventCache eventCache, Connectivity connectivity, PacketFactory packetFactory, PacketSender packetSender) {
        this.mConnectivity = connectivity;
        this.mEventCache = eventCache;
        this.mPacketFactory = packetFactory;
        this.mPacketSender = packetSender;
        packetSender.setGzipData(this.mDispatchGzipped);
        packetSender.setTimeout(this.mTimeOut);
    }

    @Override // org.matomo.sdk.dispatcher.Dispatcher
    public int getConnectionTimeOut() {
        return this.mTimeOut;
    }

    @Override // org.matomo.sdk.dispatcher.Dispatcher
    public void setConnectionTimeOut(int i) {
        this.mTimeOut = i;
        this.mPacketSender.setTimeout(this.mTimeOut);
    }

    @Override // org.matomo.sdk.dispatcher.Dispatcher
    public void setDispatchInterval(long j) {
        this.mDispatchInterval = j;
        if (this.mDispatchInterval != -1) {
            launch();
        }
    }

    @Override // org.matomo.sdk.dispatcher.Dispatcher
    public long getDispatchInterval() {
        return this.mDispatchInterval;
    }

    @Override // org.matomo.sdk.dispatcher.Dispatcher
    public void setDispatchGzipped(boolean z) {
        this.mDispatchGzipped = z;
        this.mPacketSender.setGzipData(z);
    }

    @Override // org.matomo.sdk.dispatcher.Dispatcher
    public boolean getDispatchGzipped() {
        return this.mDispatchGzipped;
    }

    @Override // org.matomo.sdk.dispatcher.Dispatcher
    public void setDispatchMode(DispatchMode dispatchMode) {
        this.mDispatchMode = dispatchMode;
    }

    @Override // org.matomo.sdk.dispatcher.Dispatcher
    public DispatchMode getDispatchMode() {
        return this.mDispatchMode;
    }

    private boolean launch() {
        synchronized (this.mThreadControl) {
            if (this.mRunning) {
                return false;
            }
            this.mRunning = true;
            Thread thread = new Thread(this.mLoop);
            thread.setPriority(1);
            this.mDispatchThread = thread;
            thread.start();
            return true;
        }
    }

    @Override // org.matomo.sdk.dispatcher.Dispatcher
    public boolean forceDispatch() {
        if (launch()) {
            return true;
        }
        this.mRetryCounter = 0;
        this.mSleepToken.release();
        return false;
    }

    @Override // org.matomo.sdk.dispatcher.Dispatcher
    public void forceDispatchBlocking() {
        synchronized (this.mThreadControl) {
            this.mForcedBlocking = true;
        }
        if (forceDispatch()) {
            this.mSleepToken.release();
        }
        Thread thread = this.mDispatchThread;
        if (thread != null) {
            try {
                thread.join();
            } catch (InterruptedException unused) {
                Timber.tag(TAG).d("Interrupted while waiting for dispatch thread to complete", new Object[0]);
            }
        }
        synchronized (this.mThreadControl) {
            this.mForcedBlocking = false;
        }
    }

    @Override // org.matomo.sdk.dispatcher.Dispatcher
    public void clear() {
        this.mEventCache.clear();
        if (this.mRunning) {
            forceDispatch();
        }
    }

    @Override // org.matomo.sdk.dispatcher.Dispatcher
    public void submit(TrackMe trackMe) {
        this.mEventCache.add(new Event(trackMe.toMap()));
        if (this.mDispatchInterval != -1) {
            launch();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isOnline() {
        if (!this.mConnectivity.isConnected()) {
            return false;
        }
        int i = AnonymousClass2.$SwitchMap$org$matomo$sdk$dispatcher$DispatchMode[this.mDispatchMode.ordinal()];
        if (i != 2) {
            return i == 3 && this.mConnectivity.getType() == Connectivity.Type.WIFI;
        }
        return true;
    }

    /* JADX INFO: renamed from: org.matomo.sdk.dispatcher.DefaultDispatcher$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$org$matomo$sdk$dispatcher$DispatchMode;

        static {
            int[] iArr = new int[DispatchMode.values().length];
            $SwitchMap$org$matomo$sdk$dispatcher$DispatchMode = iArr;
            try {
                iArr[DispatchMode.EXCEPTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$matomo$sdk$dispatcher$DispatchMode[DispatchMode.ALWAYS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$matomo$sdk$dispatcher$DispatchMode[DispatchMode.WIFI_ONLY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @Override // org.matomo.sdk.dispatcher.Dispatcher
    public void setDryRunTarget(List<Packet> list) {
        this.mDryRunTarget = list;
    }

    @Override // org.matomo.sdk.dispatcher.Dispatcher
    public List<Packet> getDryRunTarget() {
        return this.mDryRunTarget;
    }
}
