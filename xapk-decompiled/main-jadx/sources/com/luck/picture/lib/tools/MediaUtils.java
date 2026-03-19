package com.luck.picture.lib.tools;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.graphics.BitmapFactory;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.provider.MediaStore;
import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import com.android.vending.expansion.zipfile.APEZProvider;
import com.luck.picture.lib.PictureContentResolver;
import com.luck.picture.lib.app.PictureAppMaster;
import com.luck.picture.lib.config.PictureConfig;
import com.luck.picture.lib.config.PictureMimeType;
import com.luck.picture.lib.entity.LocalMedia;
import com.luck.picture.lib.entity.MediaExtraInfo;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class MediaUtils {
    public static boolean isLongImg(int i, int i2) {
        return i > 0 && i2 > 0 && i2 > i * 3;
    }

    public static Uri createImageUri(Context context, String str, String str2) {
        Context applicationContext = context.getApplicationContext();
        Uri[] uriArr = {null};
        String externalStorageState = Environment.getExternalStorageState();
        String string = ValueOf.toString(Long.valueOf(System.currentTimeMillis()));
        ContentValues contentValues = new ContentValues(3);
        if (TextUtils.isEmpty(str) || str.lastIndexOf(".") == -1) {
            contentValues.put("_display_name", DateUtils.getCreateFileName("IMG_"));
        } else {
            contentValues.put("_display_name", str.replaceAll(str.substring(str.lastIndexOf(".")), ""));
        }
        if (Build.VERSION.SDK_INT >= 29) {
            contentValues.put("datetaken", string);
        }
        if (TextUtils.isEmpty(str2) || str2.startsWith("video")) {
            str2 = "image/jpeg";
        }
        contentValues.put("mime_type", str2);
        if (externalStorageState.equals("mounted")) {
            if (Build.VERSION.SDK_INT >= 29) {
                contentValues.put("relative_path", PictureMimeType.DCIM);
            }
            uriArr[0] = applicationContext.getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
        } else {
            uriArr[0] = applicationContext.getContentResolver().insert(MediaStore.Images.Media.INTERNAL_CONTENT_URI, contentValues);
        }
        return uriArr[0];
    }

    public static Uri createVideoUri(Context context, String str, String str2) {
        Context applicationContext = context.getApplicationContext();
        Uri[] uriArr = {null};
        String externalStorageState = Environment.getExternalStorageState();
        String string = ValueOf.toString(Long.valueOf(System.currentTimeMillis()));
        ContentValues contentValues = new ContentValues(3);
        if (TextUtils.isEmpty(str) || str.lastIndexOf(".") == -1) {
            contentValues.put("_display_name", DateUtils.getCreateFileName("VID_"));
        } else {
            contentValues.put("_display_name", str.replaceAll(str.substring(str.lastIndexOf(".")), ""));
        }
        if (Build.VERSION.SDK_INT >= 29) {
            contentValues.put("datetaken", string);
        }
        if (TextUtils.isEmpty(str2) || str2.startsWith("image")) {
            str2 = "video/mp4";
        }
        contentValues.put("mime_type", str2);
        if (externalStorageState.equals("mounted")) {
            if (Build.VERSION.SDK_INT >= 29) {
                contentValues.put("relative_path", Environment.DIRECTORY_MOVIES);
            }
            uriArr[0] = applicationContext.getContentResolver().insert(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, contentValues);
        } else {
            uriArr[0] = applicationContext.getContentResolver().insert(MediaStore.Video.Media.INTERNAL_CONTENT_URI, contentValues);
        }
        return uriArr[0];
    }

    public static Uri createAudioUri(Context context, String str) {
        Context applicationContext = context.getApplicationContext();
        Uri[] uriArr = {null};
        String externalStorageState = Environment.getExternalStorageState();
        String string = ValueOf.toString(Long.valueOf(System.currentTimeMillis()));
        ContentValues contentValues = new ContentValues(3);
        contentValues.put("_display_name", DateUtils.getCreateFileName("AUD_"));
        if (Build.VERSION.SDK_INT >= 29) {
            contentValues.put("datetaken", string);
        }
        if (TextUtils.isEmpty(str) || str.startsWith("image") || str.startsWith("video")) {
            str = "audio/amr";
        }
        contentValues.put("mime_type", str);
        if (externalStorageState.equals("mounted")) {
            if (Build.VERSION.SDK_INT >= 29) {
                contentValues.put("relative_path", Environment.DIRECTORY_MUSIC);
            }
            uriArr[0] = applicationContext.getContentResolver().insert(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, contentValues);
        } else {
            uriArr[0] = applicationContext.getContentResolver().insert(MediaStore.Audio.Media.INTERNAL_CONTENT_URI, contentValues);
        }
        return uriArr[0];
    }

    public static boolean isLongImg(LocalMedia localMedia) {
        int width = localMedia.getWidth();
        int height = localMedia.getHeight();
        return width > 0 && height > 0 && height > width * 3;
    }

    public static MediaExtraInfo getImageSize(Context context, String str) {
        ExifInterface exifInterface;
        MediaExtraInfo mediaExtraInfo = new MediaExtraInfo();
        try {
            if (PictureMimeType.isContent(str)) {
                exifInterface = new ExifInterface(PictureContentResolver.getContentResolverOpenInputStream(context, Uri.parse(str)));
            } else {
                exifInterface = new ExifInterface(str);
            }
            mediaExtraInfo.setWidth(exifInterface.getAttributeInt(ExifInterface.TAG_IMAGE_WIDTH, 1));
            mediaExtraInfo.setHeight(exifInterface.getAttributeInt(ExifInterface.TAG_IMAGE_LENGTH, 1));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mediaExtraInfo;
    }

    public static MediaExtraInfo getImageSize(String str) {
        InputStream fileInputStream;
        MediaExtraInfo mediaExtraInfo = new MediaExtraInfo();
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            if (PictureMimeType.isContent(str)) {
                fileInputStream = PictureContentResolver.getContentResolverOpenInputStream(PictureAppMaster.getInstance().getAppContext(), Uri.parse(str));
            } else {
                fileInputStream = new FileInputStream(str);
            }
            BitmapFactory.decodeStream(fileInputStream, null, options);
            mediaExtraInfo.setWidth(options.outWidth);
            mediaExtraInfo.setHeight(options.outHeight);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mediaExtraInfo;
    }

    public static MediaExtraInfo getVideoSize(Context context, String str) throws IOException {
        int i;
        int i2;
        MediaExtraInfo mediaExtraInfo = new MediaExtraInfo();
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            try {
                if (PictureMimeType.isContent(str)) {
                    mediaMetadataRetriever.setDataSource(context, Uri.parse(str));
                } else {
                    mediaMetadataRetriever.setDataSource(str);
                }
                String strExtractMetadata = mediaMetadataRetriever.extractMetadata(24);
                if (TextUtils.equals("90", strExtractMetadata) || TextUtils.equals("270", strExtractMetadata)) {
                    i = ValueOf.toInt(mediaMetadataRetriever.extractMetadata(18));
                    i2 = ValueOf.toInt(mediaMetadataRetriever.extractMetadata(19));
                } else {
                    i2 = ValueOf.toInt(mediaMetadataRetriever.extractMetadata(18));
                    i = ValueOf.toInt(mediaMetadataRetriever.extractMetadata(19));
                }
                mediaExtraInfo.setWidth(i2);
                mediaExtraInfo.setHeight(i);
                mediaExtraInfo.setDuration(ValueOf.toLong(mediaMetadataRetriever.extractMetadata(9)));
            } catch (Exception e) {
                e.printStackTrace();
            }
            return mediaExtraInfo;
        } finally {
            mediaMetadataRetriever.release();
        }
    }

    public static MediaExtraInfo getAudioSize(Context context, String str) throws IOException {
        MediaExtraInfo mediaExtraInfo = new MediaExtraInfo();
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            try {
                if (PictureMimeType.isContent(str)) {
                    mediaMetadataRetriever.setDataSource(context, Uri.parse(str));
                } else {
                    mediaMetadataRetriever.setDataSource(str);
                }
                mediaExtraInfo.setDuration(ValueOf.toLong(mediaMetadataRetriever.extractMetadata(9)));
            } catch (Exception e) {
                e.printStackTrace();
            }
            return mediaExtraInfo;
        } finally {
            mediaMetadataRetriever.release();
        }
    }

    public static void removeMedia(Context context, int i) {
        try {
            context.getApplicationContext().getContentResolver().delete(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, "_id=?", new String[]{Long.toString(i)});
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static int getDCIMLastImageId(Context context) {
        Cursor cursorQuery;
        Cursor cursor = null;
        try {
            try {
                String[] strArr = {PictureFileUtils.getDCIMCameraPath() + "%"};
                if (SdkVersionUtils.checkedAndroid_R()) {
                    cursorQuery = context.getApplicationContext().getContentResolver().query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, null, createQueryArgsBundle("_data like ?", strArr, 1, 0), null);
                } else {
                    cursorQuery = context.getApplicationContext().getContentResolver().query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, null, "_data like ?", strArr, "_id DESC limit 1 offset 0");
                }
                cursor = cursorQuery;
                if (cursor == null || cursor.getCount() <= 0 || !cursor.moveToFirst()) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    return -1;
                }
                int i = DateUtils.dateDiffer(cursor.getLong(cursor.getColumnIndex("date_added"))) <= 1 ? cursor.getInt(cursor.getColumnIndex(APEZProvider.FILEID)) : -1;
                if (cursor != null) {
                    cursor.close();
                }
                return i;
            } catch (Exception e) {
                e.printStackTrace();
                if (cursor != null) {
                    cursor.close();
                }
                return -1;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public static long getCameraFirstBucketId(Context context) {
        Cursor cursorQuery;
        Cursor cursor = null;
        try {
            try {
                String[] strArr = {PictureFileUtils.getDCIMCameraPath() + "%"};
                if (SdkVersionUtils.checkedAndroid_R()) {
                    cursorQuery = context.getApplicationContext().getContentResolver().query(MediaStore.Files.getContentUri("external"), null, createQueryArgsBundle("_data like ?", strArr, 1, 0), null);
                } else {
                    cursorQuery = context.getApplicationContext().getContentResolver().query(MediaStore.Files.getContentUri("external"), null, "_data like ?", strArr, "_id DESC limit 1 offset 0");
                }
                cursor = cursorQuery;
            } catch (Exception e) {
                e.printStackTrace();
                if (cursor == null) {
                    return -1L;
                }
            }
            if (cursor != null && cursor.getCount() > 0 && cursor.moveToFirst()) {
                long j = cursor.getLong(cursor.getColumnIndex(PictureConfig.EXTRA_BUCKET_ID));
                if (cursor != null) {
                    cursor.close();
                }
                return j;
            }
            if (cursor == null) {
                return -1L;
            }
            cursor.close();
            return -1L;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public static String getAudioFilePathFromUri(Context context, Uri uri) {
        String string = "";
        try {
            Cursor cursorQuery = context.getApplicationContext().getContentResolver().query(uri, null, null, null, null);
            if (cursorQuery != null) {
                try {
                    cursorQuery.moveToFirst();
                    string = cursorQuery.getString(cursorQuery.getColumnIndex("_data"));
                } finally {
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return string;
    }

    public static Bundle createQueryArgsBundle(String str, String[] strArr, int i, int i2) {
        Bundle bundle = new Bundle();
        if (Build.VERSION.SDK_INT >= 26) {
            bundle.putString("android:query-arg-sql-selection", str);
            bundle.putStringArray("android:query-arg-sql-selection-args", strArr);
            bundle.putString("android:query-arg-sql-sort-order", "_id DESC");
            if (Build.VERSION.SDK_INT >= 30) {
                bundle.putString("android:query-arg-sql-limit", i + " offset " + i2);
            }
        }
        return bundle;
    }

    public static void deleteCamera(Context context, String str) {
        try {
            if (PictureMimeType.isContent(str)) {
                context.getContentResolver().delete(Uri.parse(str), null, null);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void deleteUri(Context context, Uri uri) {
        if (uri != null) {
            try {
                context.getContentResolver().delete(uri, null, null);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
