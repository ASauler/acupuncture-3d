package com.twitter.sdk.android.tweetcomposer;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
class FileUtils {
    private static final String MEDIA_SCHEME = "com.android.providers.media.documents";

    FileUtils() {
    }

    static String getPath(Context context, Uri uri) {
        if (isMediaDocumentAuthority(uri)) {
            String[] strArrSplit = DocumentsContract.getDocumentId(uri).split(":");
            if ("image".equals(strArrSplit[0])) {
                return resolveFilePath(context, MediaStore.Images.Media.EXTERNAL_CONTENT_URI, "_id=?", new String[]{strArrSplit[1]});
            }
            return null;
        }
        if (isContentScheme(uri)) {
            return resolveFilePath(context, uri, null, null);
        }
        if (isFileScheme(uri)) {
            return uri.getPath();
        }
        return null;
    }

    static boolean isMediaDocumentAuthority(Uri uri) {
        return MEDIA_SCHEME.equalsIgnoreCase(uri.getAuthority());
    }

    static boolean isContentScheme(Uri uri) {
        return "content".equalsIgnoreCase(uri.getScheme());
    }

    static boolean isFileScheme(Uri uri) {
        return "file".equalsIgnoreCase(uri.getScheme());
    }

    static String resolveFilePath(Context context, Uri uri, String str, String[] strArr) throws Throwable {
        Cursor cursor = null;
        try {
            Cursor cursorQuery = context.getContentResolver().query(uri, new String[]{"_data"}, str, strArr, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return string;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    static String getMimeType(File file) {
        String extension = getExtension(file.getName());
        return !TextUtils.isEmpty(extension) ? MimeTypeMap.getSingleton().getMimeTypeFromExtension(extension) : "application/octet-stream";
    }

    static String getExtension(String str) {
        if (str == null) {
            return null;
        }
        int iLastIndexOf = str.lastIndexOf(".");
        return iLastIndexOf < 0 ? "" : str.substring(iLastIndexOf + 1);
    }
}
