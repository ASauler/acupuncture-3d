package org.matomo.sdk.dispatcher;

import org.matomo.sdk.Tracker;

/* JADX INFO: loaded from: classes4.dex */
public interface DispatcherFactory {
    Dispatcher build(Tracker tracker);
}
