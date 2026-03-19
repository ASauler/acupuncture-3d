package com.luck.picture.lib.tools;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.net.Uri;
import androidx.exifinterface.media.ExifInterface;
import com.luck.picture.lib.PictureContentResolver;
import com.luck.picture.lib.config.PictureMimeType;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class BitmapUtils {
    public static void rotateImage(Context context, boolean z, String str) throws Throwable {
        if (z) {
            try {
                int pictureDegree = readPictureDegree(context, str);
                if (pictureDegree > 0) {
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inSampleSize = 2;
                    File file = new File(str);
                    Bitmap bitmapRotatingImage = rotatingImage(BitmapFactory.decodeFile(file.getAbsolutePath(), options), pictureDegree);
                    if (bitmapRotatingImage != null) {
                        saveBitmapFile(bitmapRotatingImage, file);
                        bitmapRotatingImage.recycle();
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static Bitmap rotatingImage(Bitmap bitmap, int i) {
        Matrix matrix = new Matrix();
        matrix.postRotate(i);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    private static void saveBitmapFile(Bitmap bitmap, File file) throws Throwable {
        BufferedOutputStream bufferedOutputStream;
        BufferedOutputStream bufferedOutputStream2 = null;
        try {
            try {
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            bitmap.compress(Bitmap.CompressFormat.JPEG, 80, bufferedOutputStream);
            bufferedOutputStream.flush();
            PictureFileUtils.close(bufferedOutputStream);
        } catch (Exception e2) {
            e = e2;
            bufferedOutputStream2 = bufferedOutputStream;
            e.printStackTrace();
            PictureFileUtils.close(bufferedOutputStream2);
        } catch (Throwable th2) {
            th = th2;
            bufferedOutputStream2 = bufferedOutputStream;
            PictureFileUtils.close(bufferedOutputStream2);
            throw th;
        }
    }

    public static int readPictureDegree(Context context, String str) {
        ExifInterface exifInterface;
        InputStream contentResolverOpenInputStream = null;
        try {
            if (PictureMimeType.isContent(str)) {
                contentResolverOpenInputStream = PictureContentResolver.getContentResolverOpenInputStream(context, Uri.parse(str));
                exifInterface = new ExifInterface(contentResolverOpenInputStream);
            } else {
                exifInterface = new ExifInterface(str);
            }
            int attributeInt = exifInterface.getAttributeInt(ExifInterface.TAG_ORIENTATION, 1);
            if (attributeInt == 3) {
                PictureFileUtils.close(contentResolverOpenInputStream);
                return 180;
            }
            if (attributeInt == 6) {
                PictureFileUtils.close(contentResolverOpenInputStream);
                return 90;
            }
            if (attributeInt != 8) {
                return 0;
            }
            PictureFileUtils.close(contentResolverOpenInputStream);
            return 270;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        } finally {
            PictureFileUtils.close(contentResolverOpenInputStream);
        }
    }

    public static int readPictureDegree(InputStream inputStream) {
        try {
            int attributeInt = new ExifInterface(inputStream).getAttributeInt(ExifInterface.TAG_ORIENTATION, 1);
            if (attributeInt == 3) {
                return 180;
            }
            if (attributeInt != 6) {
                return attributeInt != 8 ? 0 : 270;
            }
            return 90;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }
}
