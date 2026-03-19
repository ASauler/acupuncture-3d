package com.vesal.jlsx.international.utils;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.facebook.appevents.UserDataStore;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class FileUtils {
    private static final int FAILED = 0;
    private static final int SUCCESS = 1;
    private static FileUtils instance;
    private FileOperateCallback callback;
    private Context context;
    private String errorStr;
    private Handler handler = new Handler(Looper.getMainLooper()) { // from class: com.vesal.jlsx.international.utils.FileUtils.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (FileUtils.this.callback != null) {
                if (message.what == 1) {
                    FileUtils.this.callback.onSuccess();
                }
                if (message.what == 0) {
                    FileUtils.this.callback.onFailed(message.obj.toString());
                }
            }
        }
    };
    private volatile boolean isSuccess;

    public interface FileOperateCallback {
        void onFailed(String str);

        void onSuccess();
    }

    public static FileUtils getInstance(Context context) {
        if (instance == null) {
            instance = new FileUtils(context);
        }
        return instance;
    }

    private FileUtils(Context context) {
        this.context = context;
    }

    public FileUtils copyAssetsToSD(final String str, String str2) {
        new Thread(new Runnable() { // from class: com.vesal.jlsx.international.utils.FileUtils.2
            @Override // java.lang.Runnable
            public void run() {
                FileUtils fileUtils = FileUtils.this;
                fileUtils.copyAssetsToDst(fileUtils.context, str);
                if (FileUtils.this.isSuccess) {
                    FileUtils.this.handler.obtainMessage(1).sendToTarget();
                } else {
                    FileUtils.this.handler.obtainMessage(0, FileUtils.this.errorStr).sendToTarget();
                }
            }
        }).start();
        return this;
    }

    public void setFileOperateCallback(FileOperateCallback fileOperateCallback) {
        this.callback = fileOperateCallback;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void copyAssetsToDst(Context context, String str) {
        try {
            File file = new File(context.getExternalFilesDir("").getAbsolutePath(), UserDataStore.DATE_OF_BIRTH);
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = new File(context.getExternalFilesDir("").getAbsolutePath() + File.separator + UserDataStore.DATE_OF_BIRTH, str);
            InputStream inputStreamOpen = context.getAssets().open(str);
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            byte[] bArr = new byte[1024];
            while (true) {
                int i = inputStreamOpen.read(bArr);
                if (i != -1) {
                    fileOutputStream.write(bArr, 0, i);
                } else {
                    fileOutputStream.flush();
                    inputStreamOpen.close();
                    fileOutputStream.close();
                    this.isSuccess = true;
                    return;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            this.errorStr = e.getMessage();
            this.isSuccess = false;
        }
    }
}
