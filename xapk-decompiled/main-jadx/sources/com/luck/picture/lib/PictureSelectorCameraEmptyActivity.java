package com.luck.picture.lib;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.text.TextUtils;
import android.view.Window;
import android.view.WindowManager;
import androidx.core.content.ContextCompat;
import com.luck.picture.lib.config.PictureConfig;
import com.luck.picture.lib.config.PictureMimeType;
import com.luck.picture.lib.config.PictureSelectionConfig;
import com.luck.picture.lib.entity.LocalMedia;
import com.luck.picture.lib.entity.MediaExtraInfo;
import com.luck.picture.lib.immersive.ImmersiveManage;
import com.luck.picture.lib.manager.UCropManager;
import com.luck.picture.lib.permissions.PermissionChecker;
import com.luck.picture.lib.tools.BitmapUtils;
import com.luck.picture.lib.tools.DateUtils;
import com.luck.picture.lib.tools.MediaUtils;
import com.luck.picture.lib.tools.PictureFileUtils;
import com.luck.picture.lib.tools.SdkVersionUtils;
import com.luck.picture.lib.tools.ToastUtils;
import com.luck.picture.lib.tools.ValueOf;
import com.yalantis.ucrop.UCrop;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import net.lingala.zip4j.util.InternalZipConstants;

/* JADX INFO: loaded from: classes2.dex */
public class PictureSelectorCameraEmptyActivity extends PictureBaseActivity {
    @Override // com.luck.picture.lib.PictureBaseActivity
    public void immersive() {
        ImmersiveManage.immersiveAboveAPI23(this, ContextCompat.getColor(this, R.color.picture_color_transparent), ContextCompat.getColor(this, R.color.picture_color_transparent), this.openWhiteStatusBar);
    }

    @Override // com.luck.picture.lib.PictureBaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.config == null) {
            exit();
            return;
        }
        if (this.config.isUseCustomCamera) {
            return;
        }
        setActivitySize();
        if (bundle == null) {
            if (PermissionChecker.checkSelfPermission(this, "android.permission.WRITE_EXTERNAL_STORAGE")) {
                if (PictureSelectionConfig.onCustomCameraInterfaceListener != null) {
                    if (this.config.chooseMode == 2) {
                        PictureSelectionConfig.onCustomCameraInterfaceListener.onCameraClick(getContext(), this.config, 2);
                        return;
                    } else {
                        PictureSelectionConfig.onCustomCameraInterfaceListener.onCameraClick(getContext(), this.config, 1);
                        return;
                    }
                }
                onTakePhoto();
                return;
            }
            PermissionChecker.requestPermissions(this, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 1);
        }
    }

    private void setActivitySize() {
        Window window = getWindow();
        window.setGravity(51);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.x = 0;
        attributes.y = 0;
        attributes.height = 1;
        attributes.width = 1;
        window.setAttributes(attributes);
    }

    @Override // com.luck.picture.lib.PictureBaseActivity
    public int getResourceId() {
        return R.layout.picture_empty;
    }

    private void onTakePhoto() {
        if (PermissionChecker.checkSelfPermission(this, "android.permission.CAMERA")) {
            startCamera();
        } else {
            PermissionChecker.requestPermissions(this, new String[]{"android.permission.CAMERA"}, 2);
        }
    }

    private void startCamera() {
        int i = this.config.chooseMode;
        if (i == 0 || i == 1) {
            startOpenCameraImage();
        } else if (i == 2) {
            startOpenCameraVideo();
        } else {
            if (i != 3) {
                return;
            }
            startOpenCameraAudio();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) throws Throwable {
        Throwable th;
        super.onActivityResult(i, i2, intent);
        if (i2 == -1) {
            if (i == 69) {
                singleCropHandleResult(intent);
                return;
            } else {
                if (i != 909) {
                    return;
                }
                dispatchHandleCamera(intent);
                return;
            }
        }
        if (i2 == 0) {
            if (PictureSelectionConfig.listener != null) {
                PictureSelectionConfig.listener.onCancel();
            }
            if (i == 909) {
                MediaUtils.deleteCamera(this, this.config.cameraPath);
            }
            exit();
            return;
        }
        if (i2 != 96 || intent == null || (th = (Throwable) intent.getSerializableExtra(UCrop.EXTRA_ERROR)) == null) {
            return;
        }
        ToastUtils.s(getContext(), th.getMessage());
    }

    protected void singleCropHandleResult(Intent intent) throws IOException {
        if (intent == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Uri output = UCrop.getOutput(intent);
        if (output == null) {
            return;
        }
        String path = output.getPath();
        boolean zIsEmpty = TextUtils.isEmpty(path);
        LocalMedia localMedia = LocalMedia.parseLocalMedia(this.config.cameraPath, this.config.isCamera ? 1 : 0, this.config.chooseMode);
        if (SdkVersionUtils.checkedAndroid_Q()) {
            int iLastIndexOf = this.config.cameraPath.lastIndexOf(InternalZipConstants.ZIP_FILE_SEPARATOR) + 1;
            localMedia.setId(iLastIndexOf > 0 ? ValueOf.toLong(this.config.cameraPath.substring(iLastIndexOf)) : -1L);
            localMedia.setAndroidQToPath(path);
        } else {
            localMedia.setId(System.currentTimeMillis());
        }
        localMedia.setCut(!zIsEmpty);
        localMedia.setCutPath(path);
        localMedia.setMimeType(PictureMimeType.getImageMimeType(path));
        localMedia.setCropImageWidth(intent.getIntExtra(UCrop.EXTRA_OUTPUT_IMAGE_WIDTH, 0));
        localMedia.setCropImageHeight(intent.getIntExtra(UCrop.EXTRA_OUTPUT_IMAGE_HEIGHT, 0));
        localMedia.setCropOffsetX(intent.getIntExtra(UCrop.EXTRA_OUTPUT_OFFSET_X, 0));
        localMedia.setCropOffsetY(intent.getIntExtra(UCrop.EXTRA_OUTPUT_OFFSET_Y, 0));
        localMedia.setCropResultAspectRatio(intent.getFloatExtra(UCrop.EXTRA_OUTPUT_CROP_ASPECT_RATIO, 0.0f));
        localMedia.setEditorImage(intent.getBooleanExtra("com.yalantis.ucrop.EditorImage", false));
        if (PictureMimeType.isContent(localMedia.getPath())) {
            localMedia.setRealPath(PictureFileUtils.getPath(getContext(), Uri.parse(localMedia.getPath())));
            if (PictureMimeType.isHasVideo(localMedia.getMimeType())) {
                MediaExtraInfo videoSize = MediaUtils.getVideoSize(getContext(), localMedia.getPath());
                localMedia.setWidth(videoSize.getWidth());
                localMedia.setHeight(videoSize.getHeight());
            } else if (PictureMimeType.isHasImage(localMedia.getMimeType())) {
                MediaExtraInfo imageSize = MediaUtils.getImageSize(getContext(), localMedia.getPath());
                localMedia.setWidth(imageSize.getWidth());
                localMedia.setHeight(imageSize.getHeight());
            }
        } else {
            localMedia.setRealPath(localMedia.getPath());
            if (PictureMimeType.isHasVideo(localMedia.getMimeType())) {
                MediaExtraInfo videoSize2 = MediaUtils.getVideoSize(getContext(), localMedia.getPath());
                localMedia.setWidth(videoSize2.getWidth());
                localMedia.setHeight(videoSize2.getHeight());
            } else if (PictureMimeType.isHasImage(localMedia.getMimeType())) {
                MediaExtraInfo imageSize2 = MediaUtils.getImageSize(getContext(), localMedia.getPath());
                localMedia.setWidth(imageSize2.getWidth());
                localMedia.setHeight(imageSize2.getHeight());
            }
        }
        File file = new File(localMedia.getRealPath());
        localMedia.setSize(file.length());
        localMedia.setFileName(file.getName());
        arrayList.add(localMedia);
        handlerResult(arrayList);
    }

    protected void dispatchHandleCamera(Intent intent) throws Throwable {
        String imageMimeType;
        int dCIMLastImageId;
        try {
            if (this.config.chooseMode == PictureMimeType.ofAudio()) {
                this.config.cameraMimeType = PictureMimeType.ofAudio();
                this.config.cameraPath = getAudioPath(intent);
                if (TextUtils.isEmpty(this.config.cameraPath)) {
                    return;
                }
                if (SdkVersionUtils.checkedAndroid_R()) {
                    try {
                        Uri uriCreateAudioUri = MediaUtils.createAudioUri(getContext(), TextUtils.isEmpty(this.config.cameraAudioFormat) ? this.config.suffixType : this.config.cameraAudioFormat);
                        if (uriCreateAudioUri != null) {
                            PictureFileUtils.writeFileFromIS(PictureContentResolver.getContentResolverOpenInputStream(this, Uri.parse(this.config.cameraPath)), PictureContentResolver.getContentResolverOpenOutputStream(this, uriCreateAudioUri));
                            this.config.cameraPath = uriCreateAudioUri.toString();
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
            if (TextUtils.isEmpty(this.config.cameraPath)) {
                return;
            }
            LocalMedia localMedia = new LocalMedia();
            if (PictureMimeType.isContent(this.config.cameraPath)) {
                String path = PictureFileUtils.getPath(getContext(), Uri.parse(this.config.cameraPath));
                File file = new File(path);
                imageMimeType = PictureMimeType.getImageMimeType(path, this.config.cameraMimeType);
                localMedia.setSize(file.length());
                localMedia.setFileName(file.getName());
                if (PictureMimeType.isHasImage(imageMimeType)) {
                    MediaExtraInfo imageSize = MediaUtils.getImageSize(getContext(), this.config.cameraPath);
                    localMedia.setWidth(imageSize.getWidth());
                    localMedia.setHeight(imageSize.getHeight());
                } else if (PictureMimeType.isHasVideo(imageMimeType)) {
                    MediaExtraInfo videoSize = MediaUtils.getVideoSize(getContext(), this.config.cameraPath);
                    localMedia.setWidth(videoSize.getWidth());
                    localMedia.setHeight(videoSize.getHeight());
                    localMedia.setDuration(videoSize.getDuration());
                } else if (PictureMimeType.isHasAudio(imageMimeType)) {
                    localMedia.setDuration(MediaUtils.getAudioSize(getContext(), this.config.cameraPath).getDuration());
                }
                int iLastIndexOf = this.config.cameraPath.lastIndexOf(InternalZipConstants.ZIP_FILE_SEPARATOR) + 1;
                localMedia.setId(iLastIndexOf > 0 ? ValueOf.toLong(this.config.cameraPath.substring(iLastIndexOf)) : -1L);
                localMedia.setRealPath(path);
                localMedia.setAndroidQToPath(intent != null ? intent.getStringExtra(PictureConfig.EXTRA_MEDIA_PATH) : null);
            } else {
                File file2 = new File(this.config.cameraPath);
                imageMimeType = PictureMimeType.getImageMimeType(this.config.cameraPath, this.config.cameraMimeType);
                localMedia.setSize(file2.length());
                localMedia.setFileName(file2.getName());
                if (PictureMimeType.isHasImage(imageMimeType)) {
                    BitmapUtils.rotateImage(getContext(), this.config.isCameraRotateImage, this.config.cameraPath);
                    MediaExtraInfo imageSize2 = MediaUtils.getImageSize(getContext(), this.config.cameraPath);
                    localMedia.setWidth(imageSize2.getWidth());
                    localMedia.setHeight(imageSize2.getHeight());
                } else if (PictureMimeType.isHasVideo(imageMimeType)) {
                    MediaExtraInfo videoSize2 = MediaUtils.getVideoSize(getContext(), this.config.cameraPath);
                    localMedia.setWidth(videoSize2.getWidth());
                    localMedia.setHeight(videoSize2.getHeight());
                    localMedia.setDuration(videoSize2.getDuration());
                } else if (PictureMimeType.isHasAudio(imageMimeType)) {
                    localMedia.setDuration(MediaUtils.getAudioSize(getContext(), this.config.cameraPath).getDuration());
                }
                localMedia.setId(System.currentTimeMillis());
                localMedia.setRealPath(this.config.cameraPath);
            }
            localMedia.setPath(this.config.cameraPath);
            localMedia.setMimeType(imageMimeType);
            if (SdkVersionUtils.checkedAndroid_Q() && PictureMimeType.isHasVideo(localMedia.getMimeType())) {
                localMedia.setParentFolderName(Environment.DIRECTORY_MOVIES);
            } else {
                localMedia.setParentFolderName(PictureMimeType.CAMERA);
            }
            localMedia.setChooseModel(this.config.chooseMode);
            localMedia.setBucketId(MediaUtils.getCameraFirstBucketId(getContext()));
            localMedia.setDateAddedTime(DateUtils.getCurrentTimeMillis());
            dispatchCameraHandleResult(localMedia);
            if (SdkVersionUtils.checkedAndroid_Q()) {
                if (PictureMimeType.isHasVideo(localMedia.getMimeType()) && PictureMimeType.isContent(this.config.cameraPath)) {
                    if (this.config.isFallbackVersion3) {
                        new PictureMediaScannerConnection(getContext(), localMedia.getRealPath());
                        return;
                    } else {
                        sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.fromFile(new File(localMedia.getRealPath()))));
                        return;
                    }
                }
                return;
            }
            if (this.config.isFallbackVersion3) {
                new PictureMediaScannerConnection(getContext(), this.config.cameraPath);
            } else {
                sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.fromFile(new File(this.config.cameraPath))));
            }
            if (!PictureMimeType.isHasImage(localMedia.getMimeType()) || (dCIMLastImageId = MediaUtils.getDCIMLastImageId(getContext())) == -1) {
                return;
            }
            MediaUtils.removeMedia(getContext(), dCIMLastImageId);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void dispatchCameraHandleResult(LocalMedia localMedia) {
        boolean zIsHasImage = PictureMimeType.isHasImage(localMedia.getMimeType());
        if (this.config.enableCrop && !this.config.isCheckOriginalImage && zIsHasImage) {
            this.config.originalPath = this.config.cameraPath;
            UCropManager.ofCrop(this, this.config.cameraPath, localMedia.getMimeType());
        } else if (this.config.isCompress && zIsHasImage) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(localMedia);
            compressImage(arrayList);
        } else {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(localMedia);
            onResult(arrayList2);
        }
    }

    @Override // com.luck.picture.lib.PictureBaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 1) {
            if (iArr.length > 0 && iArr[0] == 0) {
                PermissionChecker.requestPermissions(this, new String[]{"android.permission.CAMERA"}, 2);
                return;
            } else {
                ToastUtils.s(getContext(), getString(R.string.picture_jurisdiction));
                exit();
                return;
            }
        }
        if (i != 2) {
            return;
        }
        if (iArr.length > 0 && iArr[0] == 0) {
            onTakePhoto();
        } else {
            exit();
            ToastUtils.s(getContext(), getString(R.string.picture_camera));
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (SdkVersionUtils.checkedAndroid_Q()) {
            finishAfterTransition();
        } else {
            super.onBackPressed();
        }
        exit();
    }
}
