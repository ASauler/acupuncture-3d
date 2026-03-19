package com.keiwando.lib_nativefileso;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.keiwando.lib_nativefileso.androidx.core.content.FileProvider;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class NativeFileSO {
    private static final String AUTHORITY = "com.keiwando.nativefileso.{applicationId}.provider";
    private static final NativeFileOpenURLBuffer fileBuffer = NativeFileOpenURLBuffer.getInstance();

    public static void LoadTemporaryFiles(Activity activity) {
        fileBuffer.loadFromTempDir(activity.getCacheDir(), activity.getContentResolver());
    }

    public static int GetNumberOfLoadedFiles() {
        return fileBuffer.getNumberOfLoadedFiles();
    }

    public static OpenedFile GetLoadedFileAtIndex(int i) {
        return fileBuffer.getOpenedFileAtIndex(i);
    }

    public static void FreeMemory(Activity activity) {
        fileBuffer.freeMemory(activity.getCacheDir());
    }

    public static void OpenFile(Activity activity, String str) {
        Intent intent = new Intent(activity, (Class<?>) NativeFileOpenActivity.class);
        intent.putExtra("mimetypes", str);
        intent.putExtra("openedFromNativeFileSO", true);
        activity.startActivity(intent);
    }

    public static void OpenFiles(Activity activity, String str) {
        Intent intent = new Intent(activity, (Class<?>) NativeFileOpenActivity.class);
        intent.putExtra("mimetypes", str);
        intent.putExtra("openedFromNativeFileSO", true);
        intent.putExtra("canOpenMultiple", true);
        activity.startActivity(intent);
    }

    public static void SaveFile(Context context, String str, String str2) {
        Uri uriForFile = FileProvider.getUriForFile(context, AUTHORITY.replace("{applicationId}", context.getPackageName()), new File(str));
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.setFlags(1);
        intent.putExtra("android.intent.extra.STREAM", uriForFile);
        intent.setType(str2);
        context.startActivity(Intent.createChooser(intent, "Share"));
    }
}
