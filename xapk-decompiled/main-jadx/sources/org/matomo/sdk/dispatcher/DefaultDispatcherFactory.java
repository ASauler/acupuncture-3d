package org.matomo.sdk.dispatcher;

import org.matomo.sdk.Tracker;
import org.matomo.sdk.tools.Connectivity;

/* JADX INFO: loaded from: classes4.dex */
public class DefaultDispatcherFactory implements DispatcherFactory {
    @Override // org.matomo.sdk.dispatcher.DispatcherFactory
    public Dispatcher build(Tracker tracker) {
        return new DefaultDispatcher(new EventCache(new EventDiskCache(tracker)), new Connectivity(tracker.getMatomo().getContext()), new PacketFactory(tracker.getAPIUrl()), new DefaultPacketSender());
    }
}
