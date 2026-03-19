package org.matomo.sdk.dispatcher;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.LinkedBlockingDeque;
import org.matomo.sdk.Matomo;
import timber.log.Timber;

/* JADX INFO: loaded from: classes4.dex */
public class EventCache {
    private static final String TAG = Matomo.tag(EventCache.class);
    private final EventDiskCache mDiskCache;
    private final LinkedBlockingDeque<Event> mQueue = new LinkedBlockingDeque<>();

    public EventCache(EventDiskCache eventDiskCache) {
        this.mDiskCache = eventDiskCache;
    }

    public void add(Event event) {
        this.mQueue.add(event);
    }

    public void drainTo(List<Event> list) {
        this.mQueue.drainTo(list);
    }

    public void clear() {
        this.mDiskCache.uncache();
        this.mQueue.clear();
    }

    public boolean isEmpty() {
        return this.mQueue.isEmpty() && this.mDiskCache.isEmpty();
    }

    public boolean updateState(boolean z) {
        if (z) {
            List<Event> listUncache = this.mDiskCache.uncache();
            ListIterator<Event> listIterator = listUncache.listIterator(listUncache.size());
            while (listIterator.hasPrevious()) {
                this.mQueue.offerFirst(listIterator.previous());
            }
            Timber.tag(TAG).d("Switched state to ONLINE, uncached %d events from disk.", Integer.valueOf(listUncache.size()));
        } else if (!this.mQueue.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            this.mQueue.drainTo(arrayList);
            this.mDiskCache.cache(arrayList);
            Timber.tag(TAG).d("Switched state to OFFLINE, caching %d events to disk.", Integer.valueOf(arrayList.size()));
        }
        return z && !this.mQueue.isEmpty();
    }

    public void requeue(List<Event> list) {
        Iterator<Event> it = list.iterator();
        while (it.hasNext()) {
            this.mQueue.offerFirst(it.next());
        }
    }
}
