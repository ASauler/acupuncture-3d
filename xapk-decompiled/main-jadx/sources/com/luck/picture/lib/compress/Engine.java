package com.luck.picture.lib.compress;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import com.luck.picture.lib.config.PictureMimeType;
import com.luck.picture.lib.tools.BitmapUtils;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
class Engine {
    private static final int DEFAULT_QUALITY = 80;
    private int compressQuality;
    private final Context context;

    @Deprecated
    private final boolean focusAlpha;
    private final boolean isAutoRotating;
    private int srcHeight;
    private final InputStreamProvider srcImg;
    private int srcWidth;
    private final File tagImg;

    Engine(Context context, InputStreamProvider inputStreamProvider, File file, boolean z, int i, boolean z2) throws IOException {
        this.tagImg = file;
        this.srcImg = inputStreamProvider;
        this.context = context;
        this.focusAlpha = z;
        this.isAutoRotating = z2;
        this.compressQuality = i <= 0 ? 80 : i;
        if (inputStreamProvider.getMedia().getWidth() > 0 && inputStreamProvider.getMedia().getHeight() > 0) {
            this.srcWidth = inputStreamProvider.getMedia().getWidth();
            this.srcHeight = inputStreamProvider.getMedia().getHeight();
            return;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        options.inSampleSize = 1;
        BitmapFactory.decodeStream(inputStreamProvider.open(), null, options);
        this.srcWidth = options.outWidth;
        this.srcHeight = options.outHeight;
    }

    private int computeSize() {
        int i = this.srcWidth;
        if (i % 2 == 1) {
            i++;
        }
        this.srcWidth = i;
        int i2 = this.srcHeight;
        if (i2 % 2 == 1) {
            i2++;
        }
        this.srcHeight = i2;
        int iMax = Math.max(i, i2);
        float fMin = Math.min(this.srcWidth, this.srcHeight) / iMax;
        if (fMin > 1.0f || fMin <= 0.5625d) {
            double d = fMin;
            if (d <= 0.5625d && d > 0.5d) {
                int i3 = iMax / 1280;
                if (i3 == 0) {
                    return 1;
                }
                return i3;
            }
            return (int) Math.ceil(((double) iMax) / (1280.0d / d));
        }
        if (iMax < 1664) {
            return 1;
        }
        if (iMax < 4990) {
            return 2;
        }
        if (iMax <= 4990 || iMax >= 10240) {
            return iMax / 1280;
        }
        return 4;
    }

    File compress() throws IOException {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = computeSize();
        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(this.srcImg.open(), null, options);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (this.isAutoRotating && Checker.SINGLE.isJPG(this.srcImg.getMedia().getMimeType())) {
            String cutPath = this.srcImg.getMedia().isCut() && !TextUtils.isEmpty(this.srcImg.getMedia().getCutPath()) ? this.srcImg.getMedia().getCutPath() : this.srcImg.getMedia().getPath();
            int pictureDegree = PictureMimeType.isContent(cutPath) ? BitmapUtils.readPictureDegree(this.srcImg.open()) : BitmapUtils.readPictureDegree(this.context, cutPath);
            if (pictureDegree > 0) {
                bitmapDecodeStream = BitmapUtils.rotatingImage(bitmapDecodeStream, pictureDegree);
            }
        }
        if (bitmapDecodeStream == null) {
            return null;
        }
        int i = this.compressQuality;
        if (i <= 0 || i > 100) {
            i = 80;
        }
        this.compressQuality = i;
        bitmapDecodeStream.compress((this.focusAlpha || bitmapDecodeStream.hasAlpha()) ? Bitmap.CompressFormat.PNG : Bitmap.CompressFormat.JPEG, this.compressQuality, byteArrayOutputStream);
        bitmapDecodeStream.recycle();
        FileOutputStream fileOutputStream = new FileOutputStream(this.tagImg);
        fileOutputStream.write(byteArrayOutputStream.toByteArray());
        fileOutputStream.flush();
        fileOutputStream.close();
        byteArrayOutputStream.close();
        return this.tagImg;
    }
}
