package com.luck.picture.lib.compress;

import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import android.util.Log;
import com.luck.picture.lib.PictureContentResolver;
import com.luck.picture.lib.config.PictureMimeType;
import com.luck.picture.lib.entity.LocalMedia;
import com.luck.picture.lib.thread.PictureThreadUtils;
import com.luck.picture.lib.tools.AndroidQTransformUtils;
import com.luck.picture.lib.tools.DateUtils;
import com.luck.picture.lib.tools.SdkVersionUtils;
import com.luck.picture.lib.tools.StringUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.lingala.zip4j.util.InternalZipConstants;

/* JADX INFO: loaded from: classes2.dex */
public class Luban {
    private static final String TAG = "Luban";
    private final int compressQuality;
    private final int dataCount;
    private final boolean focusAlpha;
    private int index;
    private final boolean isAutoRotating;
    private final boolean isCamera;
    private final OnCompressListener mCompressListener;
    private final CompressionPredicate mCompressionPredicate;
    private final int mLeastCompressSize;
    private final String mNewFileName;
    private final List<String> mPaths;
    private final OnRenameListener mRenameListener;
    private final List<InputStreamProvider> mStreamProviders;
    private String mTargetDir;
    private final List<LocalMedia> mediaList;

    static /* synthetic */ int access$1408(Luban luban) {
        int i = luban.index;
        luban.index = i + 1;
        return i;
    }

    private Luban(Builder builder) {
        this.index = -1;
        this.mPaths = builder.mPaths;
        this.mediaList = builder.mediaList;
        this.dataCount = builder.dataCount;
        this.mTargetDir = builder.mTargetDir;
        this.mNewFileName = builder.mNewFileName;
        this.mRenameListener = builder.mRenameListener;
        this.mStreamProviders = builder.mStreamProviders;
        this.mCompressListener = builder.mCompressListener;
        this.mLeastCompressSize = builder.mLeastCompressSize;
        this.mCompressionPredicate = builder.mCompressionPredicate;
        this.compressQuality = builder.compressQuality;
        this.isAutoRotating = builder.isAutoRotating;
        this.focusAlpha = builder.focusAlpha;
        this.isCamera = builder.isCamera;
    }

    public static Builder with(Context context) {
        return new Builder(context);
    }

    private File getImageCacheFile(Context context, InputStreamProvider inputStreamProvider, String str) {
        String string;
        File imageCacheDir;
        if (TextUtils.isEmpty(this.mTargetDir) && (imageCacheDir = getImageCacheDir(context)) != null) {
            this.mTargetDir = imageCacheDir.getAbsolutePath();
        }
        try {
            LocalMedia media = inputStreamProvider.getMedia();
            String encryptionValue = StringUtils.getEncryptionValue(media.getId(), media.getWidth(), media.getHeight());
            StringBuilder sb = new StringBuilder();
            sb.append(this.mTargetDir);
            if (TextUtils.isEmpty(encryptionValue) && !media.isCut()) {
                StringBuilder sbAppend = sb.append(InternalZipConstants.ZIP_FILE_SEPARATOR).append(DateUtils.getCreateFileName("IMG_CMP_"));
                if (TextUtils.isEmpty(str)) {
                    str = PictureMimeType.JPG;
                }
                string = sbAppend.append(str).toString();
            } else {
                StringBuilder sbAppend2 = sb.append("/IMG_CMP_").append(encryptionValue);
                if (TextUtils.isEmpty(str)) {
                    str = PictureMimeType.JPG;
                }
                string = sbAppend2.append(str).toString();
            }
        } catch (Exception e) {
            e.printStackTrace();
            string = "";
        }
        return new File(string);
    }

    private File getImageCustomFile(Context context, String str) {
        if (TextUtils.isEmpty(this.mTargetDir)) {
            File imageCacheDir = getImageCacheDir(context);
            this.mTargetDir = imageCacheDir != null ? imageCacheDir.getAbsolutePath() : "";
        }
        return new File(this.mTargetDir + InternalZipConstants.ZIP_FILE_SEPARATOR + str);
    }

    private static File getImageCacheDir(Context context) {
        File externalFilesDir = context.getExternalFilesDir(Environment.DIRECTORY_PICTURES);
        if (externalFilesDir != null) {
            if (externalFilesDir.mkdirs() || (externalFilesDir.exists() && externalFilesDir.isDirectory())) {
                return externalFilesDir;
            }
            return null;
        }
        if (Log.isLoggable(TAG, 6)) {
            Log.e(TAG, "default disk cache dir is null");
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void launch(final Context context) {
        List<InputStreamProvider> list = this.mStreamProviders;
        if (list == null || this.mPaths == null || (list.size() == 0 && this.mCompressListener != null)) {
            this.mCompressListener.onError(new NullPointerException("image file cannot be null"));
            return;
        }
        final Iterator<InputStreamProvider> it = this.mStreamProviders.iterator();
        OnCompressListener onCompressListener = this.mCompressListener;
        if (onCompressListener != null) {
            onCompressListener.onStart();
        }
        PictureThreadUtils.executeByIo(new PictureThreadUtils.SimpleTask<List<LocalMedia>>() { // from class: com.luck.picture.lib.compress.Luban.1
            /* JADX WARN: Removed duplicated region for block: B:31:0x00c1  */
            @Override // com.luck.picture.lib.thread.PictureThreadUtils.Task
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.util.List<com.luck.picture.lib.entity.LocalMedia> doInBackground() {
                /*
                    Method dump skipped, instruction units count: 322
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.luck.picture.lib.compress.Luban.AnonymousClass1.doInBackground():java.util.List");
            }

            @Override // com.luck.picture.lib.thread.PictureThreadUtils.Task
            public void onSuccess(List<LocalMedia> list2) {
                PictureThreadUtils.cancel(PictureThreadUtils.getIoPool());
                if (Luban.this.mCompressListener == null) {
                    return;
                }
                if (list2 != null) {
                    Luban.this.mCompressListener.onSuccess(list2);
                } else {
                    Luban.this.mCompressListener.onError(new Throwable("Failed to compress file"));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File get(InputStreamProvider inputStreamProvider, Context context) throws IOException {
        try {
            return new Engine(context, inputStreamProvider, getImageCacheFile(context, inputStreamProvider, Checker.SINGLE.extSuffix(inputStreamProvider.getMedia().getMimeType())), this.focusAlpha, this.compressQuality, this.isAutoRotating).compress();
        } finally {
            inputStreamProvider.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<LocalMedia> get(Context context) throws Exception {
        File fileCompress;
        ArrayList arrayList = new ArrayList();
        Iterator<InputStreamProvider> it = this.mStreamProviders.iterator();
        while (it.hasNext()) {
            InputStreamProvider next = it.next();
            if (next.getMedia() != null) {
                LocalMedia media = next.getMedia();
                boolean z = false;
                if (media.isCompressed() && !TextUtils.isEmpty(media.getCompressPath())) {
                    if (!media.isCut() && new File(media.getCompressPath()).exists()) {
                        z = true;
                    }
                    if (z) {
                        fileCompress = new File(media.getCompressPath());
                    } else {
                        fileCompress = compress(context, next);
                    }
                    if (fileCompress != null) {
                        String absolutePath = fileCompress.getAbsolutePath();
                        media.setCompressed(true);
                        media.setCompressPath(absolutePath);
                        if (SdkVersionUtils.checkedAndroid_Q()) {
                            media.setAndroidQToPath(absolutePath);
                        }
                    }
                    arrayList.add(media);
                } else {
                    boolean z2 = PictureMimeType.isHasHttp(media.getPath()) && TextUtils.isEmpty(media.getCutPath());
                    boolean zIsHasVideo = PictureMimeType.isHasVideo(media.getMimeType());
                    File file = (z2 || zIsHasVideo) ? new File(media.getPath()) : compress(context, next);
                    if (file != null) {
                        String absolutePath2 = file.getAbsolutePath();
                        boolean z3 = !TextUtils.isEmpty(absolutePath2) && PictureMimeType.isHasHttp(absolutePath2);
                        if (!zIsHasVideo && !z3) {
                            z = true;
                        }
                        media.setCompressed(z);
                        if (zIsHasVideo || z3) {
                            absolutePath2 = null;
                        }
                        media.setCompressPath(absolutePath2);
                        if (SdkVersionUtils.checkedAndroid_Q()) {
                            media.setAndroidQToPath(media.getCompressPath());
                        }
                    }
                    arrayList.add(media);
                }
                it.remove();
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File compress(Context context, InputStreamProvider inputStreamProvider) throws Exception {
        try {
            return compressRealLocalMedia(context, inputStreamProvider);
        } finally {
            inputStreamProvider.close();
        }
    }

    private File compressReal(Context context, InputStreamProvider inputStreamProvider) throws IOException {
        String strExtSuffix = Checker.SINGLE.extSuffix(inputStreamProvider.getMedia() != null ? inputStreamProvider.getMedia().getMimeType() : "");
        File imageCacheFile = getImageCacheFile(context, inputStreamProvider, strExtSuffix);
        OnRenameListener onRenameListener = this.mRenameListener;
        if (onRenameListener != null) {
            imageCacheFile = getImageCustomFile(context, onRenameListener.rename(inputStreamProvider.getPath()));
        }
        File file = imageCacheFile;
        CompressionPredicate compressionPredicate = this.mCompressionPredicate;
        if (compressionPredicate != null) {
            if (compressionPredicate.apply(inputStreamProvider.getPath()) && Checker.SINGLE.needCompress(this.mLeastCompressSize, inputStreamProvider.getPath())) {
                return new Engine(context, inputStreamProvider, file, this.focusAlpha, this.compressQuality, this.isAutoRotating).compress();
            }
            return new File(inputStreamProvider.getPath());
        }
        if (strExtSuffix.startsWith(PictureMimeType.GIF)) {
            return new File(inputStreamProvider.getPath());
        }
        if (Checker.SINGLE.needCompress(this.mLeastCompressSize, inputStreamProvider.getPath())) {
            return new Engine(context, inputStreamProvider, file, this.focusAlpha, this.compressQuality, this.isAutoRotating).compress();
        }
        return new File(inputStreamProvider.getPath());
    }

    private File compressRealLocalMedia(Context context, InputStreamProvider inputStreamProvider) throws Exception {
        String str;
        File file;
        LocalMedia media = inputStreamProvider.getMedia();
        String realPath = (!media.isCut() || TextUtils.isEmpty(media.getCutPath())) ? media.getRealPath() : media.getCutPath();
        String strExtSuffix = Checker.SINGLE.extSuffix(media.getMimeType());
        File imageCacheFile = getImageCacheFile(context, inputStreamProvider, strExtSuffix);
        if (TextUtils.isEmpty(this.mNewFileName)) {
            str = "";
        } else {
            String strRename = (this.isCamera || this.dataCount == 1) ? this.mNewFileName : StringUtils.rename(this.mNewFileName);
            str = strRename;
            imageCacheFile = getImageCustomFile(context, strRename);
        }
        if (imageCacheFile.exists()) {
            return imageCacheFile;
        }
        if (this.mCompressionPredicate != null) {
            if (strExtSuffix.startsWith(PictureMimeType.GIF)) {
                if (SdkVersionUtils.checkedAndroid_Q()) {
                    if (media.isCut() && !TextUtils.isEmpty(media.getCutPath())) {
                        return new File(media.getCutPath());
                    }
                    return new File(AndroidQTransformUtils.copyPathToAndroidQ(context, inputStreamProvider.getMedia().getId(), inputStreamProvider.getPath(), media.getWidth(), media.getHeight(), media.getMimeType(), str));
                }
                return new File(realPath);
            }
            boolean zNeedCompressToLocalMedia = Checker.SINGLE.needCompressToLocalMedia(this.mLeastCompressSize, realPath);
            if (this.mCompressionPredicate.apply(realPath) && zNeedCompressToLocalMedia) {
                file = new Engine(context, inputStreamProvider, imageCacheFile, this.focusAlpha, this.compressQuality, this.isAutoRotating).compress();
            } else if (zNeedCompressToLocalMedia) {
                file = new Engine(context, inputStreamProvider, imageCacheFile, this.focusAlpha, this.compressQuality, this.isAutoRotating).compress();
            } else {
                if (SdkVersionUtils.checkedAndroid_Q()) {
                    String cutPath = media.isCut() ? media.getCutPath() : AndroidQTransformUtils.copyPathToAndroidQ(context, media.getId(), inputStreamProvider.getPath(), media.getWidth(), media.getHeight(), media.getMimeType(), str);
                    if (!TextUtils.isEmpty(cutPath)) {
                        realPath = cutPath;
                    }
                    return new File(realPath);
                }
                file = new File(realPath);
            }
            return file;
        }
        if (strExtSuffix.startsWith(PictureMimeType.GIF)) {
            if (SdkVersionUtils.checkedAndroid_Q()) {
                String cutPath2 = media.isCut() ? media.getCutPath() : AndroidQTransformUtils.copyPathToAndroidQ(context, media.getId(), inputStreamProvider.getPath(), media.getWidth(), media.getHeight(), media.getMimeType(), str);
                if (!TextUtils.isEmpty(cutPath2)) {
                    realPath = cutPath2;
                }
                return new File(realPath);
            }
            return new File(realPath);
        }
        if (Checker.SINGLE.needCompressToLocalMedia(this.mLeastCompressSize, realPath)) {
            return new Engine(context, inputStreamProvider, imageCacheFile, this.focusAlpha, this.compressQuality, this.isAutoRotating).compress();
        }
        if (SdkVersionUtils.checkedAndroid_Q()) {
            String cutPath3 = media.isCut() ? media.getCutPath() : AndroidQTransformUtils.copyPathToAndroidQ(context, media.getId(), inputStreamProvider.getPath(), media.getWidth(), media.getHeight(), media.getMimeType(), str);
            if (!TextUtils.isEmpty(cutPath3)) {
                realPath = cutPath3;
            }
            return new File(realPath);
        }
        return new File(realPath);
    }

    public static class Builder {
        private int compressQuality;
        private final Context context;
        private int dataCount;
        private boolean focusAlpha;
        private boolean isAutoRotating;
        private boolean isCamera;
        private OnCompressListener mCompressListener;
        private CompressionPredicate mCompressionPredicate;
        private String mNewFileName;
        private OnRenameListener mRenameListener;
        private String mTargetDir;
        private int mLeastCompressSize = 100;
        private final List<String> mPaths = new ArrayList();
        private List<LocalMedia> mediaList = new ArrayList();
        private final List<InputStreamProvider> mStreamProviders = new ArrayList();

        public Builder putGear(int i) {
            return this;
        }

        Builder(Context context) {
            this.context = context;
        }

        private Luban build() {
            return new Luban(this);
        }

        public Builder load(InputStreamProvider inputStreamProvider) {
            this.mStreamProviders.add(inputStreamProvider);
            return this;
        }

        public <T> Builder loadMediaData(List<LocalMedia> list) {
            this.mediaList = list;
            this.dataCount = list.size();
            Iterator<LocalMedia> it = list.iterator();
            while (it.hasNext()) {
                load(it.next());
            }
            return this;
        }

        private Builder load(final LocalMedia localMedia) {
            this.mStreamProviders.add(new InputStreamAdapter() { // from class: com.luck.picture.lib.compress.Luban.Builder.1
                @Override // com.luck.picture.lib.compress.InputStreamAdapter
                public InputStream openInternal() throws IOException {
                    if (PictureMimeType.isContent(localMedia.getPath()) && !localMedia.isCut()) {
                        if (TextUtils.isEmpty(localMedia.getAndroidQToPath())) {
                            return PictureContentResolver.getContentResolverOpenInputStream(Builder.this.context, Uri.parse(localMedia.getPath()));
                        }
                        return new FileInputStream(localMedia.getAndroidQToPath());
                    }
                    if (PictureMimeType.isHasHttp(localMedia.getPath()) && TextUtils.isEmpty(localMedia.getCutPath())) {
                        return null;
                    }
                    return new FileInputStream(localMedia.isCut() ? localMedia.getCutPath() : localMedia.getPath());
                }

                @Override // com.luck.picture.lib.compress.InputStreamProvider
                public String getPath() {
                    if (localMedia.isCut()) {
                        return localMedia.getCutPath();
                    }
                    return TextUtils.isEmpty(localMedia.getAndroidQToPath()) ? localMedia.getPath() : localMedia.getAndroidQToPath();
                }

                @Override // com.luck.picture.lib.compress.InputStreamProvider
                public LocalMedia getMedia() {
                    return localMedia;
                }
            });
            return this;
        }

        public Builder load(final Uri uri) {
            this.mStreamProviders.add(new InputStreamAdapter() { // from class: com.luck.picture.lib.compress.Luban.Builder.2
                @Override // com.luck.picture.lib.compress.InputStreamProvider
                public LocalMedia getMedia() {
                    return null;
                }

                @Override // com.luck.picture.lib.compress.InputStreamAdapter
                public InputStream openInternal() {
                    return PictureContentResolver.getContentResolverOpenInputStream(Builder.this.context, uri);
                }

                @Override // com.luck.picture.lib.compress.InputStreamProvider
                public String getPath() {
                    return uri.getPath();
                }
            });
            return this;
        }

        public Builder load(final File file) {
            this.mStreamProviders.add(new InputStreamAdapter() { // from class: com.luck.picture.lib.compress.Luban.Builder.3
                @Override // com.luck.picture.lib.compress.InputStreamProvider
                public LocalMedia getMedia() {
                    return null;
                }

                @Override // com.luck.picture.lib.compress.InputStreamAdapter
                public InputStream openInternal() throws IOException {
                    return new FileInputStream(file);
                }

                @Override // com.luck.picture.lib.compress.InputStreamProvider
                public String getPath() {
                    return file.getAbsolutePath();
                }
            });
            return this;
        }

        public Builder load(final String str) {
            this.mStreamProviders.add(new InputStreamAdapter() { // from class: com.luck.picture.lib.compress.Luban.Builder.4
                @Override // com.luck.picture.lib.compress.InputStreamProvider
                public LocalMedia getMedia() {
                    return null;
                }

                @Override // com.luck.picture.lib.compress.InputStreamAdapter
                public InputStream openInternal() throws IOException {
                    return new FileInputStream(str);
                }

                @Override // com.luck.picture.lib.compress.InputStreamProvider
                public String getPath() {
                    return str;
                }
            });
            return this;
        }

        public <T> Builder load(List<T> list) {
            for (T t : list) {
                if (t instanceof String) {
                    load((String) t);
                } else if (t instanceof File) {
                    load((File) t);
                } else if (t instanceof Uri) {
                    load((Uri) t);
                } else {
                    throw new IllegalArgumentException("Incoming data type exception, it must be String, File, Uri or Bitmap");
                }
            }
            return this;
        }

        @Deprecated
        public Builder setRenameListener(OnRenameListener onRenameListener) {
            this.mRenameListener = onRenameListener;
            return this;
        }

        public Builder setCompressListener(OnCompressListener onCompressListener) {
            this.mCompressListener = onCompressListener;
            return this;
        }

        public Builder setTargetDir(String str) {
            this.mTargetDir = str;
            return this;
        }

        public Builder setNewCompressFileName(String str) {
            this.mNewFileName = str;
            return this;
        }

        public Builder isCamera(boolean z) {
            this.isCamera = z;
            return this;
        }

        @Deprecated
        public Builder setFocusAlpha(boolean z) {
            this.focusAlpha = z;
            return this;
        }

        public Builder setCompressQuality(int i) {
            this.compressQuality = i;
            return this;
        }

        public Builder isAutoRotating(boolean z) {
            this.isAutoRotating = z;
            return this;
        }

        public Builder ignoreBy(int i) {
            this.mLeastCompressSize = i;
            return this;
        }

        public Builder filter(CompressionPredicate compressionPredicate) {
            this.mCompressionPredicate = compressionPredicate;
            return this;
        }

        public void launch() {
            build().launch(this.context);
        }

        public File get(final String str) throws IOException {
            return build().get(new InputStreamAdapter() { // from class: com.luck.picture.lib.compress.Luban.Builder.5
                @Override // com.luck.picture.lib.compress.InputStreamProvider
                public LocalMedia getMedia() {
                    return null;
                }

                @Override // com.luck.picture.lib.compress.InputStreamAdapter
                public InputStream openInternal() throws IOException {
                    return new FileInputStream(str);
                }

                @Override // com.luck.picture.lib.compress.InputStreamProvider
                public String getPath() {
                    return str;
                }
            }, this.context);
        }

        public List<LocalMedia> get() throws Exception {
            return build().get(this.context);
        }
    }
}
