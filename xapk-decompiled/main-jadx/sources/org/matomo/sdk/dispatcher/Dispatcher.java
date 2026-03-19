package org.matomo.sdk.dispatcher;

import java.util.List;
import org.matomo.sdk.TrackMe;

/* JADX INFO: loaded from: classes4.dex */
public interface Dispatcher {
    public static final int DEFAULT_CONNECTION_TIMEOUT = 5000;
    public static final long DEFAULT_DISPATCH_INTERVAL = 120000;

    void clear();

    boolean forceDispatch();

    void forceDispatchBlocking();

    int getConnectionTimeOut();

    boolean getDispatchGzipped();

    long getDispatchInterval();

    DispatchMode getDispatchMode();

    List<Packet> getDryRunTarget();

    void setConnectionTimeOut(int i);

    void setDispatchGzipped(boolean z);

    void setDispatchInterval(long j);

    void setDispatchMode(DispatchMode dispatchMode);

    void setDryRunTarget(List<Packet> list);

    void submit(TrackMe trackMe);
}
