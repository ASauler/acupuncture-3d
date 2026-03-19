package com.unity3d.splash.services.core.cache;

import android.content.Context;
import android.os.Environment;
import com.bumptech.glide.load.Key;
import com.unity3d.splash.services.core.log.DeviceLog;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

/* JADX INFO: loaded from: classes2.dex */
public class CacheDirectory {
    private static final String TEST_FILE_NAME = "UnityAdsTest.txt";
    private String _cacheDirName;
    private boolean _initialized = false;
    private File _cacheDirectory = null;
    private CacheDirectoryType _type = null;

    public CacheDirectory(String str) {
        this._cacheDirName = str;
    }

    private void createNoMediaFile(File file) {
        try {
            if (new File(file, ".nomedia").createNewFile()) {
                DeviceLog.debug("Successfully created .nomedia file");
            } else {
                DeviceLog.debug("Using existing .nomedia file");
            }
        } catch (Exception e) {
            DeviceLog.exception("Failed to create .nomedia file", e);
        }
    }

    public File createCacheDirectory(File file, String str) {
        if (file == null) {
            return null;
        }
        File file2 = new File(file, str);
        file2.mkdirs();
        if (file2.isDirectory()) {
            return file2;
        }
        return null;
    }

    public File getCacheDirectory(Context context) {
        File fileCreateCacheDirectory;
        StringBuilder sbAppend;
        if (this._initialized) {
            return this._cacheDirectory;
        }
        this._initialized = true;
        if ("mounted".equals(Environment.getExternalStorageState())) {
            try {
                fileCreateCacheDirectory = createCacheDirectory(context.getExternalCacheDir(), this._cacheDirName);
            } catch (Exception e) {
                DeviceLog.exception("Creating external cache directory failed", e);
                fileCreateCacheDirectory = null;
            }
            if (testCacheDirectory(fileCreateCacheDirectory)) {
                createNoMediaFile(fileCreateCacheDirectory);
                this._cacheDirectory = fileCreateCacheDirectory;
                this._type = CacheDirectoryType.EXTERNAL;
                sbAppend = new StringBuilder("Unity Ads is using external cache directory: ").append(fileCreateCacheDirectory.getAbsolutePath());
            }
            DeviceLog.debug(sbAppend.toString());
            return this._cacheDirectory;
        }
        DeviceLog.debug("External media not mounted");
        File filesDir = context.getFilesDir();
        if (!testCacheDirectory(filesDir)) {
            DeviceLog.error("Unity Ads failed to initialize cache directory");
            return null;
        }
        this._cacheDirectory = filesDir;
        this._type = CacheDirectoryType.INTERNAL;
        sbAppend = new StringBuilder("Unity Ads is using internal cache directory: ").append(filesDir.getAbsolutePath());
        DeviceLog.debug(sbAppend.toString());
        return this._cacheDirectory;
    }

    public CacheDirectoryType getType() {
        return this._type;
    }

    public boolean testCacheDirectory(File file) {
        if (file != null && file.isDirectory()) {
            try {
                byte[] bytes = "test".getBytes(Key.STRING_CHARSET_NAME);
                int length = bytes.length;
                byte[] bArr = new byte[length];
                File file2 = new File(file, TEST_FILE_NAME);
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                fileOutputStream.write(bytes);
                fileOutputStream.flush();
                fileOutputStream.close();
                FileInputStream fileInputStream = new FileInputStream(file2);
                int i = fileInputStream.read(bArr, 0, length);
                fileInputStream.close();
                if (!file2.delete()) {
                    DeviceLog.debug("Failed to delete testfile " + file2.getAbsoluteFile());
                    return false;
                }
                if (i != length) {
                    DeviceLog.debug("Read buffer size mismatch");
                    return false;
                }
                if (new String(bArr, Key.STRING_CHARSET_NAME).equals("test")) {
                    return true;
                }
                DeviceLog.debug("Read buffer content mismatch");
                return false;
            } catch (Exception e) {
                DeviceLog.debug("Unity Ads exception while testing cache directory " + file.getAbsolutePath() + ": " + e.getMessage());
            }
        }
        return false;
    }
}
