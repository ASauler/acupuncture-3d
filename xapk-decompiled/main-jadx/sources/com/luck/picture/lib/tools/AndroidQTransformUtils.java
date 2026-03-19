package com.luck.picture.lib.tools;

import android.content.Context;
import android.net.Uri;
import com.luck.picture.lib.PictureContentResolver;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

/* JADX INFO: loaded from: classes2.dex */
public class AndroidQTransformUtils {
    public static String copyPathToAndroidQ(Context context, long j, String str, int i, int i2, String str2, String str3) {
        try {
            String strCreateFilePath = PictureFileUtils.createFilePath(context, StringUtils.getEncryptionValue(j, i, i2), str2, str3);
            File file = new File(strCreateFilePath);
            return file.exists() ? strCreateFilePath : PictureFileUtils.writeFileFromIS(PictureContentResolver.getContentResolverOpenInputStream(context, Uri.parse(str)), new FileOutputStream(file)) ? strCreateFilePath : "";
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static boolean copyPathToDCIM(Context context, File file, Uri uri) {
        try {
            return PictureFileUtils.writeFileFromIS(new FileInputStream(file), PictureContentResolver.getContentResolverOpenOutputStream(context, uri));
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
