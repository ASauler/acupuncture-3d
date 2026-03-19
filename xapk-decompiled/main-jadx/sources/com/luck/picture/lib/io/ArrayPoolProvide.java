package com.luck.picture.lib.io;

import android.content.ContentResolver;
import android.net.Uri;
import android.util.LruCache;
import com.luck.picture.lib.tools.PictureFileUtils;
import java.io.InputStream;
import java.util.HashSet;

/* JADX INFO: loaded from: classes2.dex */
public class ArrayPoolProvide {
    private static final ArrayPoolProvide mInstance = new ArrayPoolProvide();
    private final HashSet<String> keyCache = new HashSet<>();
    private final LruCache<String, BufferedInputStreamWrap> bufferedLruCache = new LruCache<>(20);
    private final LruArrayPool arrayPool = new LruArrayPool(4194304);

    public byte[] get(int i) {
        return (byte[]) this.arrayPool.get(i, byte[].class);
    }

    public void put(byte[] bArr) {
        this.arrayPool.put(bArr);
    }

    public InputStream openInputStream(ContentResolver contentResolver, Uri uri) {
        try {
            BufferedInputStreamWrap bufferedInputStreamWrapWrapInputStream = this.bufferedLruCache.get(uri.toString());
            if (bufferedInputStreamWrapWrapInputStream != null) {
                bufferedInputStreamWrapWrapInputStream.reset();
            } else {
                bufferedInputStreamWrapWrapInputStream = wrapInputStream(contentResolver, uri);
            }
            return bufferedInputStreamWrapWrapInputStream;
        } catch (Exception unused) {
            return wrapInputStream(contentResolver, uri);
        }
    }

    private BufferedInputStreamWrap wrapInputStream(ContentResolver contentResolver, Uri uri) {
        BufferedInputStreamWrap bufferedInputStreamWrap;
        BufferedInputStreamWrap bufferedInputStreamWrap2 = null;
        try {
            bufferedInputStreamWrap = new BufferedInputStreamWrap(contentResolver.openInputStream(uri));
        } catch (Exception e) {
            e = e;
        }
        try {
            int iAvailable = bufferedInputStreamWrap.available();
            if (iAvailable <= 0) {
                iAvailable = BufferedInputStreamWrap.DEFAULT_MARK_READ_LIMIT;
            }
            bufferedInputStreamWrap.mark(iAvailable);
            this.bufferedLruCache.put(uri.toString(), bufferedInputStreamWrap);
            this.keyCache.add(uri.toString());
            return bufferedInputStreamWrap;
        } catch (Exception e2) {
            e = e2;
            bufferedInputStreamWrap2 = bufferedInputStreamWrap;
            e.printStackTrace();
            return bufferedInputStreamWrap2;
        }
    }

    public void clearMemory() {
        for (String str : this.keyCache) {
            PictureFileUtils.close(this.bufferedLruCache.get(str));
            this.bufferedLruCache.remove(str);
        }
        this.keyCache.clear();
        this.arrayPool.clearMemory();
    }

    public static ArrayPoolProvide getInstance() {
        return mInstance;
    }
}
