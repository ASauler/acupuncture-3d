package com.twitter.sdk.android.core.internal.persistence;

import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public interface FileStore {
    File getCacheDir();

    File getExternalCacheDir();

    File getExternalFilesDir();

    File getFilesDir();
}
