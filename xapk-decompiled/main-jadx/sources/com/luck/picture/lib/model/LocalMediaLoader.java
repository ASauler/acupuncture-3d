package com.luck.picture.lib.model;

import android.content.Context;
import android.net.Uri;
import android.provider.MediaStore;
import android.text.TextUtils;
import com.android.vending.expansion.zipfile.APEZProvider;
import com.luck.picture.lib.config.PictureConfig;
import com.luck.picture.lib.config.PictureSelectionConfig;
import com.luck.picture.lib.entity.LocalMediaFolder;
import com.luck.picture.lib.tools.SdkVersionUtils;
import java.io.File;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class LocalMediaLoader {
    private static final long FILE_SIZE_UNIT = 1048576;
    private static final String NOT_GIF = " AND (mime_type!='image/gif' AND mime_type!='image/*')";
    private static final String NOT_GIF_UNKNOWN = "!='image/*'";
    private static final String ORDER_BY = "_id DESC";
    private static final String TAG = "LocalMediaLoader";
    private final Context mContext;
    private static final Uri QUERY_URI = MediaStore.Files.getContentUri("external");
    private static final String[] PROJECTION = {APEZProvider.FILEID, "_data", "mime_type", "width", "height", "duration", "_size", "bucket_display_name", "_display_name", PictureConfig.EXTRA_BUCKET_ID, "date_added"};
    private final boolean isAndroidQ = SdkVersionUtils.checkedAndroid_Q();
    private final PictureSelectionConfig config = PictureSelectionConfig.getInstance();

    private static String getSelectionArgsForVideoOrAudioMediaCondition(String str, String str2) {
        return "media_type=?" + str2 + " AND " + str;
    }

    private static String getSelectionArgsForAllMediaCondition(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder("(media_type=?");
        sb.append(str3).append(" OR media_type=? AND ").append(str).append(") AND ").append(str2).toString();
        return sb.toString();
    }

    private static String getSelectionArgsForImageMediaCondition(String str, String str2) {
        return "media_type=?" + str2 + " AND " + str;
    }

    private static String[] getSelectionArgsForAllMediaType() {
        return new String[]{String.valueOf(1), String.valueOf(3)};
    }

    private static String[] getSelectionArgsForSingleMediaType(int i) {
        return new String[]{String.valueOf(i)};
    }

    public LocalMediaLoader(Context context) {
        this.mContext = context.getApplicationContext();
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x01d3 A[EDGE_INSN: B:104:0x01d3->B:66:0x01d3 BREAK  A[LOOP:0: B:7:0x008a->B:74:0x022c], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00d9 A[Catch: all -> 0x024f, Exception -> 0x0251, PHI: r8
      0x00d9: PHI (r8v4 java.lang.String) = (r8v3 java.lang.String), (r8v10 java.lang.String), (r8v10 java.lang.String) binds: [B:15:0x00bb, B:21:0x00d0, B:23:0x00d6] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {Exception -> 0x0251, blocks: (B:4:0x001d, B:6:0x0032, B:7:0x008a, B:9:0x0098, B:10:0x009c, B:12:0x00aa, B:14:0x00b5, B:16:0x00bd, B:18:0x00c3, B:20:0x00cc, B:22:0x00d2, B:64:0x01cd, B:66:0x01d3, B:68:0x01d9, B:70:0x0204, B:72:0x0215, B:71:0x020d, B:19:0x00c8, B:25:0x00d9, B:27:0x00df, B:32:0x00fa, B:34:0x0100, B:37:0x010b, B:39:0x0137, B:43:0x0149, B:45:0x014f, B:47:0x0155, B:51:0x0165, B:53:0x016b, B:63:0x0184), top: B:101:0x001d, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x022c A[LOOP:0: B:7:0x008a->B:74:0x022c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0280  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.luck.picture.lib.entity.LocalMediaFolder> loadAllMedia() {
        /*
            Method dump skipped, instruction units count: 663
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.luck.picture.lib.model.LocalMediaLoader.loadAllMedia():java.util.List");
    }

    private String getSelection() {
        String durationCondition = getDurationCondition();
        String fileSizeCondition = getFileSizeCondition();
        String queryMimeCondition = getQueryMimeCondition();
        int i = this.config.chooseMode;
        if (i == 0) {
            return getSelectionArgsForAllMediaCondition(durationCondition, fileSizeCondition, queryMimeCondition);
        }
        if (i == 1) {
            return getSelectionArgsForImageMediaCondition(fileSizeCondition, queryMimeCondition);
        }
        if (i == 2) {
            return getSelectionArgsForVideoOrAudioMediaCondition(fileSizeCondition, queryMimeCondition);
        }
        if (i != 3) {
            return null;
        }
        return getSelectionArgsForVideoOrAudioMediaCondition(durationCondition, queryMimeCondition);
    }

    private String[] getSelectionArgs() {
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

    private void sortFolder(List<LocalMediaFolder> list) {
        Collections.sort(list, new Comparator() { // from class: com.luck.picture.lib.model.LocalMediaLoader$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return LocalMediaLoader.lambda$sortFolder$0((LocalMediaFolder) obj, (LocalMediaFolder) obj2);
            }
        });
    }

    static /* synthetic */ int lambda$sortFolder$0(LocalMediaFolder localMediaFolder, LocalMediaFolder localMediaFolder2) {
        if (localMediaFolder.getData() == null || localMediaFolder2.getData() == null) {
            return 0;
        }
        return Integer.compare(localMediaFolder2.getImageNum(), localMediaFolder.getImageNum());
    }

    private LocalMediaFolder getImageFolder(String str, String str2, String str3, List<LocalMediaFolder> list) {
        if (!this.config.isFallbackVersion) {
            for (LocalMediaFolder localMediaFolder : list) {
                String name = localMediaFolder.getName();
                if (!TextUtils.isEmpty(name) && name.equals(str3)) {
                    return localMediaFolder;
                }
            }
            LocalMediaFolder localMediaFolder2 = new LocalMediaFolder();
            localMediaFolder2.setName(str3);
            localMediaFolder2.setFirstImagePath(str);
            localMediaFolder2.setFirstMimeType(str2);
            list.add(localMediaFolder2);
            return localMediaFolder2;
        }
        File parentFile = new File(str).getParentFile();
        for (LocalMediaFolder localMediaFolder3 : list) {
            String name2 = localMediaFolder3.getName();
            if (!TextUtils.isEmpty(name2) && parentFile != null && name2.equals(parentFile.getName())) {
                return localMediaFolder3;
            }
        }
        LocalMediaFolder localMediaFolder4 = new LocalMediaFolder();
        localMediaFolder4.setName(parentFile != null ? parentFile.getName() : "");
        localMediaFolder4.setFirstImagePath(str);
        localMediaFolder4.setFirstMimeType(str2);
        list.add(localMediaFolder4);
        return localMediaFolder4;
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
        throw new UnsupportedOperationException("Method not decompiled: com.luck.picture.lib.model.LocalMediaLoader.getQueryMimeCondition():java.lang.String");
    }
}
