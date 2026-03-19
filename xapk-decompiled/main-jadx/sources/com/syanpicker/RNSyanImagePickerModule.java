package com.syanpicker;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.MediaMetadataRetriever;
import android.text.TextUtils;
import android.util.Base64;
import com.facebook.react.bridge.ActivityEventListener;
import com.facebook.react.bridge.BaseActivityEventListener;
import com.facebook.react.bridge.Callback;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.WritableArray;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.bridge.WritableNativeArray;
import com.facebook.react.bridge.WritableNativeMap;
import com.luck.picture.lib.PictureSelector;
import com.luck.picture.lib.config.PictureConfig;
import com.luck.picture.lib.config.PictureMimeType;
import com.luck.picture.lib.entity.LocalMedia;
import com.luck.picture.lib.tools.PictureFileUtils;
import com.luck.picture.lib.tools.SdkVersionUtils;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import net.lingala.zip4j.util.InternalZipConstants;

/* JADX INFO: loaded from: classes2.dex */
public class RNSyanImagePickerModule extends ReactContextBaseJavaModule {
    private static String SY_SELECT_IMAGE_FAILED_CODE = "0";
    private ReadableMap cameraOptions;
    private final ActivityEventListener mActivityEventListener;
    private Callback mPickerCallback;
    private Promise mPickerPromise;
    private final ReactApplicationContext reactContext;
    private List<LocalMedia> selectList;

    @Override // com.facebook.react.bridge.NativeModule
    public String getName() {
        return "RNSyanImagePicker";
    }

    public RNSyanImagePickerModule(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
        this.selectList = new ArrayList();
        BaseActivityEventListener baseActivityEventListener = new BaseActivityEventListener() { // from class: com.syanpicker.RNSyanImagePickerModule.1
            @Override // com.facebook.react.bridge.BaseActivityEventListener, com.facebook.react.bridge.ActivityEventListener
            public void onActivityResult(Activity activity, int i, int i2, final Intent intent) {
                if (i2 != -1) {
                    RNSyanImagePickerModule.this.invokeError(i2);
                } else if (i == 188) {
                    new Thread(new Runnable() { // from class: com.syanpicker.RNSyanImagePickerModule.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            RNSyanImagePickerModule.this.onGetResult(intent);
                        }
                    }).run();
                } else if (i == 909) {
                    RNSyanImagePickerModule.this.onGetVideoResult(intent);
                }
            }
        };
        this.mActivityEventListener = baseActivityEventListener;
        this.reactContext = reactApplicationContext;
        reactApplicationContext.addActivityEventListener(baseActivityEventListener);
    }

    @ReactMethod
    public void showImagePicker(ReadableMap readableMap, Callback callback) {
        this.cameraOptions = readableMap;
        this.mPickerPromise = null;
        this.mPickerCallback = callback;
        openImagePicker();
    }

    @ReactMethod
    public void asyncShowImagePicker(ReadableMap readableMap, Promise promise) {
        this.cameraOptions = readableMap;
        this.mPickerCallback = null;
        this.mPickerPromise = promise;
        openImagePicker();
    }

    @ReactMethod
    public void openCamera(ReadableMap readableMap, Callback callback) {
        this.cameraOptions = readableMap;
        this.mPickerPromise = null;
        this.mPickerCallback = callback;
        openCamera();
    }

    @ReactMethod
    public void asyncOpenCamera(ReadableMap readableMap, Promise promise) {
        this.cameraOptions = readableMap;
        this.mPickerCallback = null;
        this.mPickerPromise = promise;
        openCamera();
    }

    @ReactMethod
    public void deleteCache() {
        PictureFileUtils.deleteAllCacheDirFile(getCurrentActivity());
    }

    @ReactMethod
    public void removePhotoAtIndex(int i) {
        List<LocalMedia> list = this.selectList;
        if (list == null || list.size() <= i) {
            return;
        }
        this.selectList.remove(i);
    }

    @ReactMethod
    public void removeAllPhoto() {
        if (this.selectList != null) {
            this.selectList = null;
        }
    }

    @ReactMethod
    public void openVideo(ReadableMap readableMap, Callback callback) {
        this.cameraOptions = readableMap;
        this.mPickerPromise = null;
        this.mPickerCallback = callback;
        openVideo();
    }

    @ReactMethod
    public void openVideoPicker(ReadableMap readableMap, Callback callback) {
        this.cameraOptions = readableMap;
        this.mPickerPromise = null;
        this.mPickerCallback = callback;
        openVideoPicker();
    }

    private void openImagePicker() {
        int i = this.cameraOptions.getInt("imageCount");
        boolean z = this.cameraOptions.getBoolean("isCamera");
        boolean z2 = this.cameraOptions.getBoolean("isCrop");
        int i2 = this.cameraOptions.getInt("CropW");
        int i3 = this.cameraOptions.getInt("CropH");
        boolean z3 = this.cameraOptions.getBoolean("isGif");
        boolean z4 = this.cameraOptions.getBoolean("showCropCircle");
        boolean z5 = this.cameraOptions.getBoolean("showCropFrame");
        boolean z6 = this.cameraOptions.getBoolean("showCropGrid");
        boolean z7 = this.cameraOptions.getBoolean("compress");
        boolean z8 = this.cameraOptions.getBoolean("freeStyleCropEnabled");
        boolean z9 = this.cameraOptions.getBoolean("rotateEnabled");
        boolean z10 = this.cameraOptions.getBoolean("scaleEnabled");
        int i4 = this.cameraOptions.getInt("minimumCompressSize");
        int i5 = this.cameraOptions.getInt("quality");
        boolean z11 = this.cameraOptions.getBoolean("isWeChatStyle");
        this.cameraOptions.getBoolean("showSelectedIndex");
        PictureSelector.create(getCurrentActivity()).openGallery(PictureMimeType.ofImage()).loadImageEngine(GlideEngine.createGlideEngine()).maxSelectNum(i).minSelectNum(0).imageSpanCount(4).selectionMode(i != 1 ? 2 : 1).previewImage(true).previewVideo(false).enablePreviewAudio(false).isCamera(z).imageFormat(Boolean.valueOf(SdkVersionUtils.checkedAndroid_Q()).booleanValue() ? "image/png" : PictureMimeType.PNG).isZoomAnim(true).sizeMultiplier(0.5f).enableCrop(z2).compress(z7).glideOverride(160, 160).withAspectRatio(i2, i3).hideBottomControls(z2).isGif(z3).freeStyleCropEnabled(z8).circleDimmedLayer(z4).showCropFrame(z5).showCropGrid(z6).openClickSound(false).cropCompressQuality(i5).minimumCompressSize(i4).synOrAsy(true).rotateEnabled(z9).scaleEnabled(z10).selectionMedia(this.selectList).isWeChatStyle(z11).theme(0).compressFocusAlpha(this.cameraOptions.getBoolean("compressFocusAlpha")).forResult(PictureConfig.CHOOSE_REQUEST);
    }

    private void openCamera() {
        boolean z = this.cameraOptions.getBoolean("isCrop");
        int i = this.cameraOptions.getInt("CropW");
        int i2 = this.cameraOptions.getInt("CropH");
        boolean z2 = this.cameraOptions.getBoolean("showCropCircle");
        boolean z3 = this.cameraOptions.getBoolean("showCropFrame");
        boolean z4 = this.cameraOptions.getBoolean("showCropGrid");
        boolean z5 = this.cameraOptions.getBoolean("compress");
        boolean z6 = this.cameraOptions.getBoolean("freeStyleCropEnabled");
        boolean z7 = this.cameraOptions.getBoolean("rotateEnabled");
        boolean z8 = this.cameraOptions.getBoolean("scaleEnabled");
        int i3 = this.cameraOptions.getInt("minimumCompressSize");
        int i4 = this.cameraOptions.getInt("quality");
        boolean z9 = this.cameraOptions.getBoolean("isWeChatStyle");
        this.cameraOptions.getBoolean("showSelectedIndex");
        PictureSelector.create(getCurrentActivity()).openCamera(PictureMimeType.ofImage()).loadImageEngine(GlideEngine.createGlideEngine()).imageFormat(Boolean.valueOf(SdkVersionUtils.checkedAndroid_Q()).booleanValue() ? "image/png" : PictureMimeType.PNG).enableCrop(z).compress(z5).glideOverride(160, 160).withAspectRatio(i, i2).hideBottomControls(z).freeStyleCropEnabled(z6).circleDimmedLayer(z2).showCropFrame(z3).showCropGrid(z4).openClickSound(false).cropCompressQuality(i4).minimumCompressSize(i3).synOrAsy(true).rotateEnabled(z7).scaleEnabled(z8).isWeChatStyle(z9).theme(0).compressFocusAlpha(this.cameraOptions.getBoolean("compressFocusAlpha")).forResult(PictureConfig.CHOOSE_REQUEST);
    }

    private void openVideo() {
        int i = this.cameraOptions.getInt("quality");
        int i2 = this.cameraOptions.getInt("MaxSecond");
        int i3 = this.cameraOptions.getInt("MinSecond");
        PictureSelector.create(getCurrentActivity()).openCamera(PictureMimeType.ofVideo()).loadImageEngine(GlideEngine.createGlideEngine()).selectionMedia(this.selectList).openClickSound(false).maxSelectNum(this.cameraOptions.getInt("imageCount")).minSelectNum(0).imageSpanCount(4).selectionMode(2).previewVideo(true).videoQuality(i).videoMaxSecond(i2).videoMinSecond(i3).recordVideoSecond(this.cameraOptions.getInt("recordVideoSecond")).forResult(PictureConfig.REQUEST_CAMERA);
    }

    private void openVideoPicker() {
        int i = this.cameraOptions.getInt("quality");
        int i2 = this.cameraOptions.getInt("MaxSecond");
        int i3 = this.cameraOptions.getInt("MinSecond");
        PictureSelector.create(getCurrentActivity()).openGallery(PictureMimeType.ofVideo()).loadImageEngine(GlideEngine.createGlideEngine()).selectionMedia(this.selectList).openClickSound(false).isCamera(this.cameraOptions.getBoolean("allowTakeVideo")).maxSelectNum(this.cameraOptions.getInt("imageCount")).minSelectNum(1).imageSpanCount(4).selectionMode(2).previewVideo(true).videoQuality(i).videoMaxSecond(i2).videoMinSecond(i3).recordVideoSecond(this.cameraOptions.getInt("recordVideoSecond")).forResult(PictureConfig.REQUEST_CAMERA);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onGetVideoResult(Intent intent) {
        List<LocalMedia> listObtainMultipleResult = PictureSelector.obtainMultipleResult(intent);
        ReadableMap readableMap = this.cameraOptions;
        if (readableMap != null) {
            boolean z = readableMap.getBoolean("isRecordSelected");
            if (!listObtainMultipleResult.isEmpty() && z) {
                this.selectList = listObtainMultipleResult;
            }
            WritableArray writableNativeArray = new WritableNativeArray();
            for (LocalMedia localMedia : listObtainMultipleResult) {
                if (!TextUtils.isEmpty(localMedia.getPath())) {
                    WritableNativeMap writableNativeMap = new WritableNativeMap();
                    Boolean boolValueOf = Boolean.valueOf(SdkVersionUtils.checkedAndroid_Q());
                    Boolean boolValueOf2 = Boolean.valueOf(SdkVersionUtils.checkedAndroid_R());
                    String path = localMedia.getPath();
                    if (boolValueOf.booleanValue()) {
                        path = localMedia.getAndroidQToPath();
                    }
                    if (boolValueOf2.booleanValue()) {
                        path = localMedia.getRealPath();
                    }
                    writableNativeMap.putString("uri", "file://" + path);
                    writableNativeMap.putString("coverUri", "file://" + getVideoCover(path));
                    writableNativeMap.putString("fileName", new File(localMedia.getPath()).getName());
                    writableNativeMap.putDouble("size", new File(localMedia.getPath()).length());
                    writableNativeMap.putDouble("duration", localMedia.getDuration() / 1000.0d);
                    writableNativeMap.putInt("width", localMedia.getWidth());
                    writableNativeMap.putInt("height", localMedia.getHeight());
                    writableNativeMap.putString("type", "video");
                    writableNativeMap.putString("mime", localMedia.getMimeType());
                    writableNativeArray.pushMap(writableNativeMap);
                }
            }
            invokeSuccessWithResult(writableNativeArray);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onGetResult(Intent intent) {
        List<LocalMedia> listObtainMultipleResult = PictureSelector.obtainMultipleResult(intent);
        ReadableMap readableMap = this.cameraOptions;
        if (readableMap != null) {
            boolean z = readableMap.getBoolean("isRecordSelected");
            if (!listObtainMultipleResult.isEmpty() && z) {
                this.selectList = listObtainMultipleResult;
            }
            WritableNativeArray writableNativeArray = new WritableNativeArray();
            boolean z2 = this.cameraOptions.getBoolean("enableBase64");
            Iterator<LocalMedia> it = listObtainMultipleResult.iterator();
            while (it.hasNext()) {
                writableNativeArray.pushMap(getImageResult(it.next(), Boolean.valueOf(z2)));
            }
            invokeSuccessWithResult(writableNativeArray);
        }
    }

    private WritableMap getImageResult(LocalMedia localMedia, Boolean bool) {
        WritableNativeMap writableNativeMap = new WritableNativeMap();
        String path = localMedia.getPath();
        if (localMedia.isCompressed() || localMedia.isCut()) {
            path = localMedia.getCompressPath();
        }
        if (localMedia.isCut()) {
            path = localMedia.getCutPath();
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(path, options);
        writableNativeMap.putDouble("width", options.outWidth);
        writableNativeMap.putDouble("height", options.outHeight);
        writableNativeMap.putString("type", "image");
        writableNativeMap.putString("uri", "file://" + path);
        writableNativeMap.putString("original_uri", "file://" + localMedia.getPath());
        writableNativeMap.putInt("size", (int) new File(path).length());
        if (bool.booleanValue()) {
            writableNativeMap.putString("base64", getBase64StringFromFile(path));
        }
        return writableNativeMap;
    }

    private String getBase64StringFromFile(String str) {
        try {
            FileInputStream fileInputStream = new FileInputStream(new File(str));
            byte[] bArr = new byte[8192];
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                try {
                    int i = fileInputStream.read(bArr);
                    if (i == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (str.toLowerCase().endsWith("png")) {
                return "data:image/png;base64," + Base64.encodeToString(byteArray, 2);
            }
            return "data:image/jpeg;base64," + Base64.encodeToString(byteArray, 2);
        } catch (FileNotFoundException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private String getVideoCover(String str) {
        try {
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            mediaMetadataRetriever.setDataSource(str);
            Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime();
            String str2 = this.reactContext.getExternalCacheDir().getAbsolutePath() + InternalZipConstants.ZIP_FILE_SEPARATOR + ("thumb-" + UUID.randomUUID().toString()) + PictureMimeType.JPG;
            FileOutputStream fileOutputStream = new FileOutputStream(new File(str2));
            frameAtTime.compress(Bitmap.CompressFormat.JPEG, 30, fileOutputStream);
            fileOutputStream.close();
            mediaMetadataRetriever.release();
            return str2;
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return null;
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        } catch (Exception e3) {
            e3.printStackTrace();
            return null;
        }
    }

    private void invokeSuccessWithResult(WritableArray writableArray) {
        Callback callback = this.mPickerCallback;
        if (callback != null) {
            callback.invoke(null, writableArray);
            this.mPickerCallback = null;
        } else {
            Promise promise = this.mPickerPromise;
            if (promise != null) {
                promise.resolve(writableArray);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invokeError(int i) {
        String strValueOf = i != 0 ? String.valueOf(i) : "取消";
        Callback callback = this.mPickerCallback;
        if (callback != null) {
            callback.invoke(strValueOf);
            this.mPickerCallback = null;
        } else {
            Promise promise = this.mPickerPromise;
            if (promise != null) {
                promise.reject(SY_SELECT_IMAGE_FAILED_CODE, strValueOf);
            }
        }
    }
}
