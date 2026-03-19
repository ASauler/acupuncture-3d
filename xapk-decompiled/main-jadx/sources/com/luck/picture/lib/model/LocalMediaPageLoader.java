package com.luck.picture.lib.model;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import com.android.vending.expansion.zipfile.APEZProvider;
import com.luck.picture.lib.config.PictureMimeType;
import com.luck.picture.lib.config.PictureSelectionConfig;
import com.luck.picture.lib.entity.LocalMedia;
import com.luck.picture.lib.entity.LocalMediaFolder;
import com.luck.picture.lib.entity.MediaData;
import com.luck.picture.lib.listener.OnQueryDataResultListener;
import com.luck.picture.lib.thread.PictureThreadUtils;
import com.luck.picture.lib.tools.MediaUtils;
import com.luck.picture.lib.tools.SdkVersionUtils;
import com.luck.picture.lib.tools.ValueOf;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public final class LocalMediaPageLoader {
    private static final String COLUMN_BUCKET_ID = "bucket_id";
    private static final String COLUMN_COUNT = "count";
    private static final long FILE_SIZE_UNIT = 1048576;
    private static final String GROUP_BY_BUCKET_Id = " GROUP BY (bucket_id";
    private static final String NOT_GIF = " AND (mime_type!='image/gif' AND mime_type!='image/*')";
    private static final String NOT_GIF_UNKNOWN = "!='image/*'";
    private static final String ORDER_BY = "_id DESC";
    private static final String TAG = "LocalMediaPageLoader";
    private static LocalMediaPageLoader instance;
    private final PictureSelectionConfig config = PictureSelectionConfig.getInstance();
    private final Context mContext;
    private static final Uri QUERY_URI = MediaStore.Files.getContentUri("external");
    private static final String COLUMN_BUCKET_DISPLAY_NAME = "bucket_display_name";
    private static final String[] PROJECTION_29 = {APEZProvider.FILEID, "bucket_id", COLUMN_BUCKET_DISPLAY_NAME, "mime_type"};
    private static final String[] PROJECTION = {APEZProvider.FILEID, "_data", "bucket_id", COLUMN_BUCKET_DISPLAY_NAME, "mime_type", "COUNT(*) AS count"};
    private static final String[] PROJECTION_PAGE = {APEZProvider.FILEID, "_data", "mime_type", "width", "height", "duration", "_size", COLUMN_BUCKET_DISPLAY_NAME, "_display_name", "bucket_id", "date_added"};

    public LocalMediaPageLoader(Context context) {
        this.mContext = context;
    }

    private static String getSelectionArgsForAllMediaCondition(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder("(media_type=?");
        sb.append(str3).append(" OR media_type=? AND ").append(str).append(") AND ").append(str2);
        if (SdkVersionUtils.checkedAndroid_Q()) {
            return sb.toString();
        }
        return sb.append(") GROUP BY (bucket_id").toString();
    }

    private static String getSelectionArgsForImageMediaCondition(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        if (SdkVersionUtils.checkedAndroid_Q()) {
            return sb.append("media_type=?").append(str).append(" AND ").append(str2).toString();
        }
        return sb.append("(media_type=?").append(str).append(") AND ").append(str2).append(") GROUP BY (bucket_id").toString();
    }

    private static String getSelectionArgsForVideoOrAudioMediaCondition(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        if (SdkVersionUtils.checkedAndroid_Q()) {
            return sb.append("media_type=?").append(str).append(" AND ").append(str2).toString();
        }
        return sb.append("(media_type=?").append(str).append(") AND ").append(str2).append(") GROUP BY (bucket_id").toString();
    }

    private static String[] getSelectionArgsForAllMediaType() {
        return new String[]{String.valueOf(1), String.valueOf(3)};
    }

    private static String[] getSelectionArgsForSingleMediaType(int i) {
        return new String[]{String.valueOf(i)};
    }

    private static String[] getSelectionArgsForPageSingleMediaType(int i, long j) {
        String strValueOf = String.valueOf(i);
        return j == -1 ? new String[]{strValueOf} : new String[]{strValueOf, ValueOf.toString(Long.valueOf(j))};
    }

    /* JADX WARN: Not initialized variable reg: 3, insn: 0x00bd: MOVE (r2 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:45:0x00bd */
    public String getFirstCover(long j) throws Throwable {
        Cursor cursorQuery;
        Cursor cursor;
        Cursor cursor2 = null;
        try {
            try {
                cursorQuery = SdkVersionUtils.checkedAndroid_R() ? this.mContext.getContentResolver().query(QUERY_URI, new String[]{APEZProvider.FILEID, "mime_type", "_data"}, MediaUtils.createQueryArgsBundle(getPageSelection(j), getPageSelectionArgs(j), 1, 0), null) : this.mContext.getContentResolver().query(QUERY_URI, new String[]{APEZProvider.FILEID, "mime_type", "_data"}, getPageSelection(j), getPageSelectionArgs(j), "_id DESC limit 1 offset 0");
                if (cursorQuery != null) {
                    try {
                        if (cursorQuery.getCount() > 0) {
                            if (!cursorQuery.moveToFirst()) {
                                if (cursorQuery != null && !cursorQuery.isClosed()) {
                                    cursorQuery.close();
                                }
                                return null;
                            }
                            String realPathUri = SdkVersionUtils.checkedAndroid_Q() ? PictureMimeType.getRealPathUri(cursorQuery.getLong(cursorQuery.getColumnIndexOrThrow(APEZProvider.FILEID)), cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("mime_type"))) : cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                            if (cursorQuery != null && !cursorQuery.isClosed()) {
                                cursorQuery.close();
                            }
                            return realPathUri;
                        }
                    } catch (Exception e) {
                        e = e;
                        e.printStackTrace();
                        if (cursorQuery != null && !cursorQuery.isClosed()) {
                        }
                        return null;
                    }
                }
            } catch (Throwable th) {
                th = th;
                cursor2 = cursor;
                if (cursor2 != null && !cursor2.isClosed()) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
        if (cursorQuery != null && !cursorQuery.isClosed()) {
            cursorQuery.close();
        }
        return null;
    }

    public void loadPageMediaData(long j, int i, int i2, OnQueryDataResultListener<LocalMedia> onQueryDataResultListener) {
        loadPageMediaData(j, i, i2, this.config.pageSize, onQueryDataResultListener);
    }

    public void loadPageMediaData(long j, int i, OnQueryDataResultListener<LocalMedia> onQueryDataResultListener) {
        loadPageMediaData(j, i, this.config.pageSize, this.config.pageSize, onQueryDataResultListener);
    }

    public void loadPageMediaData(final long j, final int i, final int i2, final int i3, final OnQueryDataResultListener<LocalMedia> onQueryDataResultListener) {
        PictureThreadUtils.executeByIo(new PictureThreadUtils.SimpleTask<MediaData>() { // from class: com.luck.picture.lib.model.LocalMediaPageLoader.1
            /* JADX WARN: Removed duplicated region for block: B:132:0x026f A[EDGE_INSN: B:132:0x026f->B:87:0x026f BREAK  A[LOOP:0: B:24:0x0123->B:88:0x0270], SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:48:0x0196 A[Catch: Exception -> 0x0299, all -> 0x02db, PHI: r2
              0x0196: PHI (r2v10 java.lang.String) = (r2v9 java.lang.String), (r2v14 java.lang.String), (r2v14 java.lang.String) binds: [B:38:0x0174, B:44:0x018d, B:46:0x0193] A[DONT_GENERATE, DONT_INLINE], TryCatch #1 {Exception -> 0x0299, blocks: (B:21:0x0098, B:23:0x00a4, B:24:0x0123, B:26:0x0131, B:27:0x0135, B:29:0x0147, B:31:0x0154, B:33:0x015e, B:85:0x0269, B:37:0x016e, B:39:0x0176, B:41:0x017c, B:43:0x0185, B:45:0x018f, B:42:0x0181, B:48:0x0196, B:50:0x01a0, B:53:0x01ab, B:55:0x01b5, B:58:0x01c0, B:60:0x01ef, B:64:0x0206, B:66:0x020c, B:68:0x0216, B:72:0x0228, B:74:0x0232, B:84:0x024e, B:89:0x027f, B:93:0x028a), top: B:125:0x0098 }] */
            /* JADX WARN: Removed duplicated region for block: B:88:0x0270 A[LOOP:0: B:24:0x0123->B:88:0x0270, LOOP_END] */
            @Override // com.luck.picture.lib.thread.PictureThreadUtils.Task
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.luck.picture.lib.entity.MediaData doInBackground() throws java.lang.Throwable {
                /*
                    Method dump skipped, instruction units count: 745
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.luck.picture.lib.model.LocalMediaPageLoader.AnonymousClass1.doInBackground():com.luck.picture.lib.entity.MediaData");
            }

            @Override // com.luck.picture.lib.thread.PictureThreadUtils.Task
            public void onSuccess(MediaData mediaData) {
                PictureThreadUtils.cancel(PictureThreadUtils.getIoPool());
                OnQueryDataResultListener onQueryDataResultListener2 = onQueryDataResultListener;
                if (onQueryDataResultListener2 == null || mediaData == null) {
                    return;
                }
                onQueryDataResultListener2.onComplete(mediaData.data, i, mediaData.isHasNextMore);
            }
        });
    }

    public void loadAllMedia(final OnQueryDataResultListener<LocalMediaFolder> onQueryDataResultListener) {
        PictureThreadUtils.executeByIo(new PictureThreadUtils.SimpleTask<List<LocalMediaFolder>>() { // from class: com.luck.picture.lib.model.LocalMediaPageLoader.2
            /* JADX WARN: Removed duplicated region for block: B:77:0x0225  */
            @Override // com.luck.picture.lib.thread.PictureThreadUtils.Task
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.util.List<com.luck.picture.lib.entity.LocalMediaFolder> doInBackground() throws java.lang.Throwable {
                /*
                    Method dump skipped, instruction units count: 558
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.luck.picture.lib.model.LocalMediaPageLoader.AnonymousClass2.doInBackground():java.util.List");
            }

            @Override // com.luck.picture.lib.thread.PictureThreadUtils.Task
            public void onSuccess(List<LocalMediaFolder> list) {
                PictureThreadUtils.cancel(PictureThreadUtils.getIoPool());
                OnQueryDataResultListener onQueryDataResultListener2 = onQueryDataResultListener;
                if (onQueryDataResultListener2 == null || list == null) {
                    return;
                }
                onQueryDataResultListener2.onComplete(list, 1, false);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getFirstUri(Cursor cursor) {
        return PictureMimeType.getRealPathUri(cursor.getLong(cursor.getColumnIndex(APEZProvider.FILEID)), cursor.getString(cursor.getColumnIndex("mime_type")));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getFirstCoverMimeType(Cursor cursor) {
        return cursor.getString(cursor.getColumnIndex("mime_type"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getFirstUrl(Cursor cursor) {
        return cursor.getString(cursor.getColumnIndex("_data"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getPageSelection(long j) {
        String durationCondition = getDurationCondition();
        String fileSizeCondition = getFileSizeCondition();
        String queryMimeCondition = getQueryMimeCondition();
        int i = this.config.chooseMode;
        if (i == 0) {
            return getPageSelectionArgsForAllMediaCondition(j, queryMimeCondition, durationCondition, fileSizeCondition);
        }
        if (i == 1) {
            return getPageSelectionArgsForImageMediaCondition(j, queryMimeCondition, fileSizeCondition);
        }
        if (i == 2 || i == 3) {
            return getPageSelectionArgsForVideoOrAudioMediaCondition(j, queryMimeCondition, durationCondition, fileSizeCondition);
        }
        return null;
    }

    private static String getPageSelectionArgsForAllMediaCondition(long j, String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder("(media_type=?");
        sb.append(str).append(" OR media_type=? AND ").append(str2).append(") AND ");
        if (j == -1) {
            return sb.append(str3).toString();
        }
        return sb.append("bucket_id=? AND ").append(str3).toString();
    }

    private static String getPageSelectionArgsForImageMediaCondition(long j, String str, String str2) {
        StringBuilder sb = new StringBuilder("(media_type=?");
        if (j == -1) {
            return sb.append(str).append(") AND ").append(str2).toString();
        }
        return sb.append(str).append(") AND bucket_id=? AND ").append(str2).toString();
    }

    private static String getPageSelectionArgsForVideoOrAudioMediaCondition(long j, String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder("(media_type=?");
        sb.append(str).append(" AND ").append(str2).append(") AND ");
        if (j == -1) {
            return sb.append(str3).toString();
        }
        return sb.append("bucket_id=? AND ").append(str3).toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String[] getPageSelectionArgs(long j) {
        int i = this.config.chooseMode;
        if (i == 0) {
            if (j == -1) {
                return new String[]{String.valueOf(1), String.valueOf(3)};
            }
            return new String[]{String.valueOf(1), String.valueOf(3), ValueOf.toString(Long.valueOf(j))};
        }
        if (i == 1) {
            return getSelectionArgsForPageSingleMediaType(1, j);
        }
        if (i == 2) {
            return getSelectionArgsForPageSingleMediaType(3, j);
        }
        if (i != 3) {
            return null;
        }
        return getSelectionArgsForPageSingleMediaType(2, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getSelection() {
        String fileSizeCondition = getFileSizeCondition();
        String queryMimeCondition = getQueryMimeCondition();
        int i = this.config.chooseMode;
        if (i == 0) {
            return getSelectionArgsForAllMediaCondition(getDurationCondition(), fileSizeCondition, queryMimeCondition);
        }
        if (i == 1) {
            return getSelectionArgsForImageMediaCondition(queryMimeCondition, fileSizeCondition);
        }
        if (i == 2 || i == 3) {
            return getSelectionArgsForVideoOrAudioMediaCondition(queryMimeCondition, fileSizeCondition);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String[] getSelectionArgs() {
        int i = this.config.chooseMode;
        if (i == 0) {
            return getSelectionArgsForAllMediaType();
        }
        if (i == 1) {
            return getSelectionArgsForSingleMediaType(1);
        }
        if (i == 2) {
            return getSelectionArgsForSingleMediaType(3);
        }
        if (i != 3) {
            return null;
        }
        return getSelectionArgsForSingleMediaType(2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sortFolder(List<LocalMediaFolder> list) {
        Collections.sort(list, new Comparator() { // from class: com.luck.picture.lib.model.LocalMediaPageLoader$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return LocalMediaPageLoader.lambda$sortFolder$0((LocalMediaFolder) obj, (LocalMediaFolder) obj2);
            }
        });
    }

    static /* synthetic */ int lambda$sortFolder$0(LocalMediaFolder localMediaFolder, LocalMediaFolder localMediaFolder2) {
        if (localMediaFolder.getData() == null || localMediaFolder2.getData() == null) {
            return 0;
        }
        return Integer.compare(localMediaFolder2.getImageNum(), localMediaFolder.getImageNum());
    }

    private String getDurationCondition() {
        long j = this.config.videoMaxSecond == 0 ? Long.MAX_VALUE : this.config.videoMaxSecond;
        Locale locale = Locale.CHINA;
        Object[] objArr = new Object[3];
        objArr[0] = Long.valueOf(Math.max(0L, this.config.videoMinSecond));
        objArr[1] = Math.max(0L, (long) this.config.videoMinSecond) == 0 ? "" : "=";
        objArr[2] = Long.valueOf(j);
        return String.format(locale, "%d <%s duration and duration <= %d", objArr);
    }

    private String getFileSizeCondition() {
        long j = this.config.filterMaxFileSize == 0 ? Long.MAX_VALUE : this.config.filterMaxFileSize;
        Locale locale = Locale.CHINA;
        Object[] objArr = new Object[3];
        objArr[0] = Long.valueOf(Math.max(0L, this.config.filterMinFileSize));
        objArr[1] = Math.max(0L, this.config.filterMinFileSize) == 0 ? "" : "=";
        objArr[2] = Long.valueOf(j);
        return String.format(locale, "%d <%s _size and _size <= %d", objArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String getQueryMimeCondition() {
        /*
            r10 = this;
            com.luck.picture.lib.config.PictureSelectionConfig r0 = r10.config
            java.util.HashSet<java.lang.String> r0 = r0.queryMimeTypeHashSet
            if (r0 != 0) goto Lb
            java.util.HashSet r0 = new java.util.HashSet
            r0.<init>()
        Lb:
            com.luck.picture.lib.config.PictureSelectionConfig r1 = r10.config
            java.lang.String r1 = r1.specifiedFormat
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 != 0) goto L1c
            com.luck.picture.lib.config.PictureSelectionConfig r1 = r10.config
            java.lang.String r1 = r1.specifiedFormat
            r0.add(r1)
        L1c:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.util.Iterator r2 = r0.iterator()
            r3 = -1
        L26:
            boolean r4 = r2.hasNext()
            if (r4 == 0) goto La1
            java.lang.Object r4 = r2.next()
            java.lang.String r4 = (java.lang.String) r4
            boolean r5 = android.text.TextUtils.isEmpty(r4)
            if (r5 == 0) goto L39
            goto L26
        L39:
            com.luck.picture.lib.config.PictureSelectionConfig r5 = r10.config
            int r5 = r5.chooseMode
            int r6 = com.luck.picture.lib.config.PictureMimeType.ofVideo()
            java.lang.String r7 = "audio"
            java.lang.String r8 = "image"
            if (r5 != r6) goto L54
            boolean r5 = r4.startsWith(r8)
            if (r5 != 0) goto L26
            boolean r5 = r4.startsWith(r7)
            if (r5 == 0) goto L84
            goto L26
        L54:
            com.luck.picture.lib.config.PictureSelectionConfig r5 = r10.config
            int r5 = r5.chooseMode
            int r6 = com.luck.picture.lib.config.PictureMimeType.ofImage()
            java.lang.String r9 = "video"
            if (r5 != r6) goto L6d
            boolean r5 = r4.startsWith(r7)
            if (r5 != 0) goto L26
            boolean r5 = r4.startsWith(r9)
            if (r5 == 0) goto L84
            goto L26
        L6d:
            com.luck.picture.lib.config.PictureSelectionConfig r5 = r10.config
            int r5 = r5.chooseMode
            int r6 = com.luck.picture.lib.config.PictureMimeType.ofAudio()
            if (r5 != r6) goto L84
            boolean r5 = r4.startsWith(r9)
            if (r5 != 0) goto L26
            boolean r5 = r4.startsWith(r8)
            if (r5 == 0) goto L84
            goto L26
        L84:
            int r3 = r3 + 1
            if (r3 != 0) goto L8b
            java.lang.String r5 = " AND "
            goto L8d
        L8b:
            java.lang.String r5 = " OR "
        L8d:
            java.lang.StringBuilder r5 = r1.append(r5)
            java.lang.String r6 = "mime_type='"
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.StringBuilder r4 = r5.append(r4)
            java.lang.String r5 = "'"
            r4.append(r5)
            goto L26
        La1:
            com.luck.picture.lib.config.PictureSelectionConfig r2 = r10.config
            int r2 = r2.chooseMode
            int r3 = com.luck.picture.lib.config.PictureMimeType.ofVideo()
            if (r2 == r3) goto Lc0
            com.luck.picture.lib.config.PictureSelectionConfig r2 = r10.config
            boolean r2 = r2.isGif
            if (r2 != 0) goto Lc0
            java.lang.String r2 = com.luck.picture.lib.config.PictureMimeType.ofGIF()
            boolean r0 = r0.contains(r2)
            if (r0 != 0) goto Lc0
            java.lang.String r0 = " AND (mime_type!='image/gif' AND mime_type!='image/*')"
            r1.append(r0)
        Lc0:
            java.lang.String r0 = r1.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.luck.picture.lib.model.LocalMediaPageLoader.getQueryMimeCondition():java.lang.String");
    }

    public static LocalMediaPageLoader getInstance(Context context) {
        if (instance == null) {
            synchronized (LocalMediaPageLoader.class) {
                if (instance == null) {
                    instance = new LocalMediaPageLoader(context.getApplicationContext());
                }
            }
        }
        return instance;
    }

    public static void setInstanceNull() {
        instance = null;
    }
}
