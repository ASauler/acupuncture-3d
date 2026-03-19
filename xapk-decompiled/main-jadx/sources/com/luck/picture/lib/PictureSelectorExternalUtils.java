package com.luck.picture.lib;

import android.content.Context;
import android.media.ExifInterface;
import android.net.Uri;
import com.luck.picture.lib.config.PictureMimeType;
import com.luck.picture.lib.tools.PictureFileUtils;
import com.luck.picture.lib.tools.SdkVersionUtils;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class PictureSelectorExternalUtils {
    public static ExifInterface getExifInterface(Context context, String str) throws Throwable {
        InputStream contentResolverOpenInputStream;
        InputStream inputStream = null;
        ExifInterface exifInterface = null;
        try {
            if (SdkVersionUtils.checkedAndroid_Q() && PictureMimeType.isContent(str)) {
                contentResolverOpenInputStream = PictureContentResolver.getContentResolverOpenInputStream(context, Uri.parse(str));
                if (contentResolverOpenInputStream != null) {
                    try {
                        try {
                            exifInterface = new ExifInterface(contentResolverOpenInputStream);
                        } catch (Exception e) {
                            e = e;
                            e.printStackTrace();
                            PictureFileUtils.close(contentResolverOpenInputStream);
                            return null;
                        }
                    } catch (Throwable th) {
                        th = th;
                        inputStream = contentResolverOpenInputStream;
                        PictureFileUtils.close(inputStream);
                        throw th;
                    }
                }
            } else {
                exifInterface = new ExifInterface(str);
                contentResolverOpenInputStream = null;
            }
            PictureFileUtils.close(contentResolverOpenInputStream);
            return exifInterface;
        } catch (Exception e2) {
            e = e2;
            contentResolverOpenInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            PictureFileUtils.close(inputStream);
            throw th;
        }
    }
}
