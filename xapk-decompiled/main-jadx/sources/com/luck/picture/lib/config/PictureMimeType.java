package com.luck.picture.lib.config;

import android.content.ContentUris;
import android.content.Context;
import android.net.Uri;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import com.luck.picture.lib.R;
import java.io.File;
import net.lingala.zip4j.util.InternalZipConstants;

/* JADX INFO: loaded from: classes2.dex */
public final class PictureMimeType {
    public static final String AMR = ".amr";
    public static final String AMR_Q = "audio/amr";
    public static final String AVI = ".avi";
    public static final String AVI_Q = "video/avi";
    public static final String BMP = ".bmp";
    public static final String CAMERA = "Camera";
    public static final String DCIM = "DCIM/Camera";
    public static final String GIF = ".gif";
    public static final String JPEG = ".jpeg";
    public static final String JPEG_Q = "image/jpeg";
    public static final String JPG = ".jpg";
    private static final String MIME_TYPE_3GP = "video/3gp";
    public static final String MIME_TYPE_AUDIO = "audio/mpeg";
    public static final String MIME_TYPE_AUDIO_AMR = "audio/amr";
    private static final String MIME_TYPE_AVI = "video/avi";
    private static final String MIME_TYPE_BMP = "image/bmp";
    private static final String MIME_TYPE_GIF = "image/gif";
    public static final String MIME_TYPE_IMAGE = "image/jpeg";
    public static final String MIME_TYPE_JPEG = "image/jpeg";
    private static final String MIME_TYPE_JPG = "image/jpg";
    private static final String MIME_TYPE_MP4 = "video/mp4";
    private static final String MIME_TYPE_MPEG = "video/mpeg";
    private static final String MIME_TYPE_PNG = "image/png";
    public static final String MIME_TYPE_PREFIX_AUDIO = "audio";
    public static final String MIME_TYPE_PREFIX_IMAGE = "image";
    public static final String MIME_TYPE_PREFIX_VIDEO = "video";
    public static final String MIME_TYPE_VIDEO = "video/mp4";
    private static final String MIME_TYPE_WEBP = "image/webp";
    public static final String MP3 = ".mp3";
    public static final String MP3_Q = "audio/mpeg";
    public static final String MP4 = ".mp4";
    public static final String MP4_Q = "video/mp4";
    public static final String PNG = ".png";
    public static final String PNG_Q = "image/png";
    public static final String WAV = ".wav";
    public static final String WAV_Q = "audio/x-wav";
    public static final String WEBP = ".webp";

    public static String of3GP() {
        return MIME_TYPE_3GP;
    }

    public static String ofAVI() {
        return "video/avi";
    }

    public static int ofAll() {
        return 0;
    }

    @Deprecated
    public static int ofAudio() {
        return 3;
    }

    public static String ofBMP() {
        return MIME_TYPE_BMP;
    }

    public static String ofGIF() {
        return MIME_TYPE_GIF;
    }

    public static int ofImage() {
        return 1;
    }

    public static String ofJPEG() {
        return "image/jpeg";
    }

    public static String ofMP4() {
        return "video/mp4";
    }

    public static String ofMPEG() {
        return MIME_TYPE_MPEG;
    }

    public static String ofPNG() {
        return "image/png";
    }

    public static int ofVideo() {
        return 2;
    }

    public static String ofWEBP() {
        return "image/webp";
    }

    public static String getRealPathUri(long j, String str) {
        Uri contentUri;
        if (isHasImage(str)) {
            contentUri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
        } else if (isHasVideo(str)) {
            contentUri = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
        } else if (isHasAudio(str)) {
            contentUri = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
        } else {
            contentUri = MediaStore.Files.getContentUri("external");
        }
        return ContentUris.withAppendedId(contentUri, j).toString();
    }

    public static boolean isGif(String str) {
        return str != null && (str.equals(MIME_TYPE_GIF) || str.equals("image/GIF"));
    }

    public static boolean isWebp(String str) {
        return str != null && str.equalsIgnoreCase("image/webp");
    }

    public static boolean isGifForSuffix(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return GIF.equalsIgnoreCase(str);
    }

    public static boolean isHasVideo(String str) {
        return str != null && str.startsWith("video");
    }

    public static boolean isUrlHasVideo(String str) {
        return str.endsWith(".mp4");
    }

    public static boolean isHasAudio(String str) {
        return str != null && str.startsWith(MIME_TYPE_PREFIX_AUDIO);
    }

    public static boolean isHasImage(String str) {
        return str != null && str.startsWith("image");
    }

    public static boolean isJPEG(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("image/jpeg") || str.startsWith("image/jpg");
    }

    public static boolean isJPG(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("image/jpg");
    }

    public static boolean isHasHttp(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("http") || str.startsWith("https") || str.startsWith("/http") || str.startsWith("/https");
    }

    public static String getMimeTypeFromMediaContentUri(Context context, Uri uri) {
        String mimeTypeFromExtension;
        if (uri.getScheme().equals("content")) {
            mimeTypeFromExtension = context.getContentResolver().getType(uri);
        } else {
            mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(MimeTypeMap.getFileExtensionFromUrl(uri.toString()).toLowerCase());
        }
        return TextUtils.isEmpty(mimeTypeFromExtension) ? "image/jpeg" : mimeTypeFromExtension;
    }

    public static boolean isSuffixOfImage(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return PNG.equalsIgnoreCase(str) || ".jpeg".equalsIgnoreCase(str) || JPG.equalsIgnoreCase(str) || WEBP.equalsIgnoreCase(str) || GIF.equalsIgnoreCase(str) || BMP.equalsIgnoreCase(str);
    }

    public static boolean isMimeTypeSame(String str, String str2) {
        return getMimeType(str) == getMimeType(str2);
    }

    public static String getImageMimeType(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return "image/jpeg";
            }
            String name = new File(str).getName();
            int iLastIndexOf = name.lastIndexOf(".");
            return "image/" + (iLastIndexOf == -1 ? "jpeg" : name.substring(iLastIndexOf + 1));
        } catch (Exception e) {
            e.printStackTrace();
            return "image/jpeg";
        }
    }

    public static String getImageMimeType(String str, int i) {
        try {
            String name = new File(str).getName();
            int iLastIndexOf = name.lastIndexOf(".");
            boolean z = iLastIndexOf != -1;
            return i != 2 ? i != 3 ? z ? "image/" + name.substring(iLastIndexOf + 1) : "image/jpeg" : z ? "audio/" + name.substring(iLastIndexOf + 1) : "audio/amr" : z ? "video/" + name.substring(iLastIndexOf + 1) : "video/mp4";
        } catch (Exception e) {
            e.printStackTrace();
            return "image/jpeg";
        }
    }

    public static String getLastImgType(String str) {
        try {
            int iLastIndexOf = str.lastIndexOf(".");
            return iLastIndexOf != -1 ? str.substring(iLastIndexOf) : PNG;
        } catch (Exception e) {
            e.printStackTrace();
            return PNG;
        }
    }

    public static int getMimeType(String str) {
        if (TextUtils.isEmpty(str)) {
            return 1;
        }
        if (str.startsWith("video")) {
            return 2;
        }
        return str.startsWith(MIME_TYPE_PREFIX_AUDIO) ? 3 : 1;
    }

    public static String getLastImgSuffix(String str) {
        try {
            int iLastIndexOf = str.lastIndexOf(InternalZipConstants.ZIP_FILE_SEPARATOR) + 1;
            return iLastIndexOf > 0 ? "." + str.substring(iLastIndexOf) : PNG;
        } catch (Exception e) {
            e.printStackTrace();
            return PNG;
        }
    }

    public static boolean isContent(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("content://");
    }

    public static String s(Context context, String str) {
        Context applicationContext = context.getApplicationContext();
        if (isHasVideo(str)) {
            return applicationContext.getString(R.string.picture_video_error);
        }
        if (isHasAudio(str)) {
            return applicationContext.getString(R.string.picture_audio_error);
        }
        return applicationContext.getString(R.string.picture_error);
    }
}
