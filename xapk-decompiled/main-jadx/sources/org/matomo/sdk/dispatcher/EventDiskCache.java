package org.matomo.sdk.dispatcher;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
import org.matomo.sdk.Matomo;
import org.matomo.sdk.Tracker;
import timber.log.Timber;

/* JADX INFO: loaded from: classes4.dex */
public class EventDiskCache {
    private static final String CACHE_DIR_NAME = "piwik_cache";
    private static final String TAG = Matomo.tag(EventDiskCache.class);
    private static final String VERSION = "1";
    private final File mCacheDir;
    private final long mMaxAge;
    private final long mMaxSize;
    private final LinkedBlockingQueue<File> mEventContainer = new LinkedBlockingQueue<>();
    private long mCurrentSize = 0;
    private boolean mDelayedClear = false;

    public EventDiskCache(Tracker tracker) {
        this.mMaxAge = tracker.getOfflineCacheAge();
        this.mMaxSize = tracker.getOfflineCacheSize();
        try {
            File file = new File(new File(tracker.getMatomo().getContext().getCacheDir(), CACHE_DIR_NAME), new URL(tracker.getAPIUrl()).getHost());
            this.mCacheDir = file;
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null) {
                Arrays.sort(fileArrListFiles);
                for (File file2 : fileArrListFiles) {
                    this.mCurrentSize += file2.length();
                    this.mEventContainer.add(file2);
                }
                return;
            }
            if (file.mkdirs()) {
                return;
            }
            Timber.tag(TAG).e("Failed to make disk-cache dir %s", file);
        } catch (MalformedURLException e) {
            throw new RuntimeException(e);
        }
    }

    private void checkCacheLimits() {
        long jLongValue;
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = this.mMaxAge;
        if (j < 0) {
            Timber.tag(TAG).d("Caching is disabled.", new Object[0]);
            while (!this.mEventContainer.isEmpty()) {
                File filePoll = this.mEventContainer.poll();
                if (filePoll.delete()) {
                    Timber.tag(TAG).e("Deleted cache container %s", filePoll.getPath());
                }
            }
        } else if (j > 0) {
            Iterator<File> it = this.mEventContainer.iterator();
            while (it.hasNext()) {
                File next = it.next();
                try {
                    jLongValue = Long.valueOf(next.getName().split("_")[1]).longValue();
                } catch (Exception e) {
                    Timber.tag(TAG).e(e);
                    jLongValue = 0;
                }
                if (jLongValue >= System.currentTimeMillis() - this.mMaxAge) {
                    break;
                }
                if (next.delete()) {
                    Timber.tag(TAG).e("Deleted cache container %s", next.getPath());
                } else {
                    Timber.tag(TAG).e("Failed to delete cache container %s", next.getPath());
                }
                it.remove();
            }
        }
        if (this.mMaxSize != 0) {
            Iterator<File> it2 = this.mEventContainer.iterator();
            while (it2.hasNext() && this.mCurrentSize > this.mMaxSize) {
                File next2 = it2.next();
                this.mCurrentSize -= next2.length();
                it2.remove();
                if (next2.delete()) {
                    Timber.tag(TAG).e("Deleted cache container %s", next2.getPath());
                } else {
                    Timber.tag(TAG).e("Failed to delete cache container %s", next2.getPath());
                }
            }
        }
        Timber.tag(TAG).d("Cache check took %dms", Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis));
    }

    private boolean isCachingEnabled() {
        return this.mMaxAge >= 0;
    }

    public synchronized void cache(List<Event> list) {
        if (isCachingEnabled() && !list.isEmpty()) {
            checkCacheLimits();
            long jCurrentTimeMillis = System.currentTimeMillis();
            File fileWriteEventFile = writeEventFile(list);
            if (fileWriteEventFile != null) {
                this.mEventContainer.add(fileWriteEventFile);
                this.mCurrentSize += fileWriteEventFile.length();
            }
            Timber.tag(TAG).d("Caching of %d events took %dms (%s)", Integer.valueOf(list.size()), Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis), fileWriteEventFile);
        }
    }

    public synchronized List<Event> uncache() {
        ArrayList arrayList = new ArrayList();
        if (!isCachingEnabled()) {
            return arrayList;
        }
        checkCacheLimits();
        long jCurrentTimeMillis = System.currentTimeMillis();
        while (!this.mEventContainer.isEmpty()) {
            File filePoll = this.mEventContainer.poll();
            if (filePoll != null) {
                arrayList.addAll(readEventFile(filePoll));
                if (!filePoll.delete()) {
                    Timber.tag(TAG).e("Failed to delete cache container %s", filePoll.getPath());
                }
            }
        }
        Timber.tag(TAG).d("Uncaching of %d events took %dms", Integer.valueOf(arrayList.size()), Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis));
        return arrayList;
    }

    public synchronized boolean isEmpty() {
        if (!this.mDelayedClear) {
            checkCacheLimits();
            this.mDelayedClear = true;
        }
        return this.mEventContainer.isEmpty();
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x00c3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.List<org.matomo.sdk.dispatcher.Event> readEventFile(java.io.File r15) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.matomo.sdk.dispatcher.EventDiskCache.readEventFile(java.io.File):java.util.List");
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00dd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.io.File writeEventFile(java.util.List<org.matomo.sdk.dispatcher.Event> r15) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.matomo.sdk.dispatcher.EventDiskCache.writeEventFile(java.util.List):java.io.File");
    }
}
