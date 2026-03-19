package com.luck.picture.lib.camera;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.ImageAnalysis;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.Preview;
import androidx.camera.core.VideoCapture;
import androidx.camera.lifecycle.ProcessCameraProvider;
import androidx.camera.view.PreviewView;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.lifecycle.LifecycleOwner;
import com.google.common.util.concurrent.ListenableFuture;
import com.luck.picture.lib.PictureMediaScannerConnection;
import com.luck.picture.lib.R;
import com.luck.picture.lib.camera.listener.CameraListener;
import com.luck.picture.lib.camera.listener.CaptureListener;
import com.luck.picture.lib.camera.listener.ClickListener;
import com.luck.picture.lib.camera.listener.ImageCallbackListener;
import com.luck.picture.lib.camera.listener.TypeListener;
import com.luck.picture.lib.camera.view.CaptureLayout;
import com.luck.picture.lib.config.PictureMimeType;
import com.luck.picture.lib.config.PictureSelectionConfig;
import com.luck.picture.lib.thread.PictureThreadUtils;
import com.luck.picture.lib.tools.AndroidQTransformUtils;
import com.luck.picture.lib.tools.DateUtils;
import com.luck.picture.lib.tools.MediaUtils;
import com.luck.picture.lib.tools.PictureFileUtils;
import com.luck.picture.lib.tools.ScreenUtils;
import com.luck.picture.lib.tools.SdkVersionUtils;
import com.luck.picture.lib.tools.StringUtils;
import java.io.File;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public class CustomCameraView extends RelativeLayout {
    public static final int BUTTON_STATE_BOTH = 259;
    public static final int BUTTON_STATE_ONLY_CAPTURE = 257;
    public static final int BUTTON_STATE_ONLY_RECORDER = 258;
    public static final int DEFAULT_MIN_RECORD_VIDEO = 1500;
    private static final int TYPE_FLASH_AUTO = 33;
    private static final int TYPE_FLASH_OFF = 35;
    private static final int TYPE_FLASH_ON = 34;
    private int lensFacing;
    private CameraListener mCameraListener;
    private PreviewView mCameraPreviewView;
    private ProcessCameraProvider mCameraProvider;
    private CaptureLayout mCaptureLayout;
    private PictureSelectionConfig mConfig;
    private ImageView mFlashLamp;
    private ImageCallbackListener mImageCallbackListener;
    private ImageCapture mImageCapture;
    private ImageView mImagePreview;
    private MediaPlayer mMediaPlayer;
    private ClickListener mOnClickListener;
    private File mOutMediaFile;
    private ImageView mSwitchCamera;
    private TextureView mTextureView;
    private VideoCapture mVideoCapture;
    private long recordTime;
    private final TextureView.SurfaceTextureListener surfaceTextureListener;
    private int type_flash;
    private int useCameraCases;

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isImageCaptureEnabled() {
        return this.useCameraCases == 1;
    }

    public CustomCameraView(Context context) {
        super(context);
        this.type_flash = 35;
        this.useCameraCases = 1;
        this.lensFacing = 1;
        this.recordTime = 0L;
        this.surfaceTextureListener = new TextureView.SurfaceTextureListener() { // from class: com.luck.picture.lib.camera.CustomCameraView.6
            @Override // android.view.TextureView.SurfaceTextureListener
            public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
                return false;
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
                CustomCameraView customCameraView = CustomCameraView.this;
                customCameraView.startVideoPlay(customCameraView.mOutMediaFile);
            }
        };
        initView();
    }

    public CustomCameraView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.type_flash = 35;
        this.useCameraCases = 1;
        this.lensFacing = 1;
        this.recordTime = 0L;
        this.surfaceTextureListener = new TextureView.SurfaceTextureListener() { // from class: com.luck.picture.lib.camera.CustomCameraView.6
            @Override // android.view.TextureView.SurfaceTextureListener
            public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
                return false;
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
                CustomCameraView customCameraView = CustomCameraView.this;
                customCameraView.startVideoPlay(customCameraView.mOutMediaFile);
            }
        };
        initView();
    }

    public CustomCameraView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.type_flash = 35;
        this.useCameraCases = 1;
        this.lensFacing = 1;
        this.recordTime = 0L;
        this.surfaceTextureListener = new TextureView.SurfaceTextureListener() { // from class: com.luck.picture.lib.camera.CustomCameraView.6
            @Override // android.view.TextureView.SurfaceTextureListener
            public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
                return false;
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i22) {
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i22) {
                CustomCameraView customCameraView = CustomCameraView.this;
                customCameraView.startVideoPlay(customCameraView.mOutMediaFile);
            }
        };
        initView();
    }

    private void initView() {
        inflate(getContext(), R.layout.picture_camera_view, this);
        setBackgroundColor(ContextCompat.getColor(getContext(), R.color.picture_color_black));
        this.mCameraPreviewView = (PreviewView) findViewById(R.id.cameraPreviewView);
        this.mTextureView = (TextureView) findViewById(R.id.video_play_preview);
        this.mImagePreview = (ImageView) findViewById(R.id.image_preview);
        this.mSwitchCamera = (ImageView) findViewById(R.id.image_switch);
        this.mFlashLamp = (ImageView) findViewById(R.id.image_flash);
        this.mCaptureLayout = (CaptureLayout) findViewById(R.id.capture_layout);
        this.mSwitchCamera.setImageResource(R.drawable.picture_ic_camera);
        this.mFlashLamp.setOnClickListener(new View.OnClickListener() { // from class: com.luck.picture.lib.camera.CustomCameraView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m789lambda$initView$0$comluckpicturelibcameraCustomCameraView(view);
            }
        });
        this.mCaptureLayout.setDuration(15000);
        this.mSwitchCamera.setOnClickListener(new View.OnClickListener() { // from class: com.luck.picture.lib.camera.CustomCameraView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CustomCameraView.this.toggleCamera();
            }
        });
        this.mCaptureLayout.setCaptureListener(new CaptureListener() { // from class: com.luck.picture.lib.camera.CustomCameraView.2
            @Override // com.luck.picture.lib.camera.listener.CaptureListener
            public void recordZoom(float f) {
            }

            @Override // com.luck.picture.lib.camera.listener.CaptureListener
            public void takePictures() {
                if (!CustomCameraView.this.mCameraProvider.isBound(CustomCameraView.this.mImageCapture)) {
                    CustomCameraView.this.bindCameraImageUseCases();
                }
                CustomCameraView.this.useCameraCases = 1;
                CustomCameraView customCameraView = CustomCameraView.this;
                customCameraView.mOutMediaFile = customCameraView.createImageFile();
                CustomCameraView.this.mCaptureLayout.setButtonCaptureEnabled(false);
                CustomCameraView.this.mSwitchCamera.setVisibility(4);
                CustomCameraView.this.mFlashLamp.setVisibility(4);
                CustomCameraView.this.mImageCapture.m28lambda$takePicture$5$androidxcameracoreImageCapture(new ImageCapture.OutputFileOptions.Builder(CustomCameraView.this.mOutMediaFile).build(), ContextCompat.getMainExecutor(CustomCameraView.this.getContext()), new MyImageResultCallback(CustomCameraView.this.mOutMediaFile, CustomCameraView.this.mImagePreview, CustomCameraView.this.mCaptureLayout, CustomCameraView.this.mImageCallbackListener, CustomCameraView.this.mCameraListener));
            }

            @Override // com.luck.picture.lib.camera.listener.CaptureListener
            public void recordStart() {
                if (!CustomCameraView.this.mCameraProvider.isBound(CustomCameraView.this.mVideoCapture)) {
                    CustomCameraView.this.bindCameraVideoUseCases();
                }
                CustomCameraView.this.useCameraCases = 4;
                CustomCameraView customCameraView = CustomCameraView.this;
                customCameraView.mOutMediaFile = customCameraView.createVideoFile();
                CustomCameraView.this.mSwitchCamera.setVisibility(4);
                CustomCameraView.this.mFlashLamp.setVisibility(4);
                CustomCameraView.this.mVideoCapture.m47lambda$startRecording$0$androidxcameracoreVideoCapture(new VideoCapture.OutputFileOptions.Builder(CustomCameraView.this.mOutMediaFile).build(), ContextCompat.getMainExecutor(CustomCameraView.this.getContext()), new VideoCapture.OnVideoSavedCallback() { // from class: com.luck.picture.lib.camera.CustomCameraView.2.1
                    @Override // androidx.camera.core.VideoCapture.OnVideoSavedCallback
                    public void onVideoSaved(VideoCapture.OutputFileResults outputFileResults) {
                        if (CustomCameraView.this.recordTime < (CustomCameraView.this.mConfig.recordVideoMinSecond <= 0 ? 1500L : CustomCameraView.this.mConfig.recordVideoMinSecond * 1000) && CustomCameraView.this.mOutMediaFile.exists() && CustomCameraView.this.mOutMediaFile.delete()) {
                            return;
                        }
                        CustomCameraView.this.mTextureView.setVisibility(0);
                        CustomCameraView.this.mCameraPreviewView.setVisibility(4);
                        if (CustomCameraView.this.mTextureView.isAvailable()) {
                            CustomCameraView.this.startVideoPlay(CustomCameraView.this.mOutMediaFile);
                        } else {
                            CustomCameraView.this.mTextureView.setSurfaceTextureListener(CustomCameraView.this.surfaceTextureListener);
                        }
                    }

                    @Override // androidx.camera.core.VideoCapture.OnVideoSavedCallback
                    public void onError(int i, String str, Throwable th) {
                        if (CustomCameraView.this.mCameraListener != null) {
                            CustomCameraView.this.mCameraListener.onError(i, str, th);
                        }
                    }
                });
            }

            @Override // com.luck.picture.lib.camera.listener.CaptureListener
            public void recordShort(long j) {
                CustomCameraView.this.recordTime = j;
                CustomCameraView.this.mSwitchCamera.setVisibility(0);
                CustomCameraView.this.mFlashLamp.setVisibility(0);
                CustomCameraView.this.mCaptureLayout.resetCaptureLayout();
                CustomCameraView.this.mCaptureLayout.setTextWithAnimation(CustomCameraView.this.getContext().getString(R.string.picture_recording_time_is_short));
                CustomCameraView.this.mVideoCapture.m51lambda$stopRecording$5$androidxcameracoreVideoCapture();
            }

            @Override // com.luck.picture.lib.camera.listener.CaptureListener
            public void recordEnd(long j) {
                CustomCameraView.this.recordTime = j;
                CustomCameraView.this.mVideoCapture.m51lambda$stopRecording$5$androidxcameracoreVideoCapture();
            }

            @Override // com.luck.picture.lib.camera.listener.CaptureListener
            public void recordError() {
                if (CustomCameraView.this.mCameraListener != null) {
                    CustomCameraView.this.mCameraListener.onError(0, "An unknown error", null);
                }
            }
        });
        this.mCaptureLayout.setTypeListener(new TypeListener() { // from class: com.luck.picture.lib.camera.CustomCameraView.3
            @Override // com.luck.picture.lib.camera.listener.TypeListener
            public void cancel() {
                CustomCameraView.this.onCancelMedia();
            }

            @Override // com.luck.picture.lib.camera.listener.TypeListener
            public void confirm() {
                if (CustomCameraView.this.mOutMediaFile == null || !CustomCameraView.this.mOutMediaFile.exists()) {
                    return;
                }
                if (!SdkVersionUtils.checkedAndroid_Q() || !PictureMimeType.isContent(CustomCameraView.this.mConfig.cameraPath)) {
                    if (CustomCameraView.this.isImageCaptureEnabled()) {
                        CustomCameraView.this.mImagePreview.setVisibility(4);
                        if (CustomCameraView.this.mCameraListener != null) {
                            CustomCameraView.this.mCameraListener.onPictureSuccess(CustomCameraView.this.mOutMediaFile);
                            return;
                        }
                        return;
                    }
                    CustomCameraView.this.stopVideoPlay();
                    if (CustomCameraView.this.mCameraListener == null && CustomCameraView.this.mOutMediaFile.exists()) {
                        return;
                    }
                    CustomCameraView.this.mCameraListener.onRecordSuccess(CustomCameraView.this.mOutMediaFile);
                    return;
                }
                if (!CustomCameraView.this.mConfig.isCameraCopyExternalFile) {
                    CustomCameraView.this.mConfig.cameraPath = CustomCameraView.this.mOutMediaFile.getAbsolutePath();
                    if (CustomCameraView.this.isImageCaptureEnabled()) {
                        CustomCameraView.this.mImagePreview.setVisibility(4);
                        if (CustomCameraView.this.mCameraListener != null) {
                            CustomCameraView.this.mCameraListener.onPictureSuccess(CustomCameraView.this.mOutMediaFile);
                            return;
                        }
                        return;
                    }
                    CustomCameraView.this.stopVideoPlay();
                    if (CustomCameraView.this.mCameraListener == null && CustomCameraView.this.mOutMediaFile.exists()) {
                        return;
                    }
                    CustomCameraView.this.mCameraListener.onRecordSuccess(CustomCameraView.this.mOutMediaFile);
                    return;
                }
                PictureThreadUtils.executeByIo(new PictureThreadUtils.SimpleTask<Boolean>() { // from class: com.luck.picture.lib.camera.CustomCameraView.3.1
                    @Override // com.luck.picture.lib.thread.PictureThreadUtils.Task
                    public Boolean doInBackground() {
                        return Boolean.valueOf(AndroidQTransformUtils.copyPathToDCIM(CustomCameraView.this.getContext(), CustomCameraView.this.mOutMediaFile, Uri.parse(CustomCameraView.this.mConfig.cameraPath)));
                    }

                    @Override // com.luck.picture.lib.thread.PictureThreadUtils.Task
                    public void onSuccess(Boolean bool) {
                        PictureThreadUtils.cancel(PictureThreadUtils.getIoPool());
                        if (CustomCameraView.this.isImageCaptureEnabled()) {
                            CustomCameraView.this.mImagePreview.setVisibility(4);
                            if (CustomCameraView.this.mCameraListener != null) {
                                CustomCameraView.this.mCameraListener.onPictureSuccess(CustomCameraView.this.mOutMediaFile);
                                return;
                            }
                            return;
                        }
                        CustomCameraView.this.stopVideoPlay();
                        if (CustomCameraView.this.mCameraListener == null && CustomCameraView.this.mOutMediaFile.exists()) {
                            return;
                        }
                        CustomCameraView.this.mCameraListener.onRecordSuccess(CustomCameraView.this.mOutMediaFile);
                    }
                });
            }
        });
        this.mCaptureLayout.setLeftClickListener(new ClickListener() { // from class: com.luck.picture.lib.camera.CustomCameraView.4
            @Override // com.luck.picture.lib.camera.listener.ClickListener
            public void onClick() {
                if (CustomCameraView.this.mOnClickListener != null) {
                    CustomCameraView.this.mOnClickListener.onClick();
                }
            }
        });
    }

    /* JADX INFO: renamed from: lambda$initView$0$com-luck-picture-lib-camera-CustomCameraView, reason: not valid java name */
    /* synthetic */ void m789lambda$initView$0$comluckpicturelibcameraCustomCameraView(View view) {
        int i = this.type_flash + 1;
        this.type_flash = i;
        if (i > 35) {
            this.type_flash = 33;
        }
        setFlashMode();
    }

    public void initCamera() {
        PictureSelectionConfig pictureSelectionConfig = PictureSelectionConfig.getInstance();
        this.mConfig = pictureSelectionConfig;
        this.lensFacing = !pictureSelectionConfig.isCameraAroundState ? 1 : 0;
        if (ActivityCompat.checkSelfPermission(getContext(), "android.permission.CAMERA") == 0) {
            final ListenableFuture<ProcessCameraProvider> processCameraProvider = ProcessCameraProvider.getInstance(getContext());
            processCameraProvider.addListener(new Runnable() { // from class: com.luck.picture.lib.camera.CustomCameraView.5
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        CustomCameraView.this.mCameraProvider = (ProcessCameraProvider) processCameraProvider.get();
                        CustomCameraView.this.bindCameraUseCases();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }, ContextCompat.getMainExecutor(getContext()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bindCameraUseCases() {
        if (this.mConfig.buttonFeatures == 259 || this.mConfig.buttonFeatures == 257) {
            bindCameraImageUseCases();
        } else {
            bindCameraVideoUseCases();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bindCameraImageUseCases() {
        try {
            int iAspectRatio = aspectRatio(ScreenUtils.getScreenWidth(getContext()), ScreenUtils.getScreenHeight(getContext()));
            CameraSelector cameraSelectorBuild = new CameraSelector.Builder().requireLensFacing(this.lensFacing).build();
            Preview previewBuild = new Preview.Builder().setTargetAspectRatio(iAspectRatio).build();
            this.mImageCapture = new ImageCapture.Builder().setCaptureMode(1).setTargetAspectRatio(iAspectRatio).build();
            ImageAnalysis imageAnalysisBuild = new ImageAnalysis.Builder().setTargetAspectRatio(iAspectRatio).build();
            this.mCameraProvider.unbindAll();
            this.mCameraProvider.bindToLifecycle((LifecycleOwner) getContext(), cameraSelectorBuild, previewBuild, this.mImageCapture, imageAnalysisBuild);
            previewBuild.setSurfaceProvider(this.mCameraPreviewView.getSurfaceProvider());
            setFlashMode();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bindCameraVideoUseCases() {
        try {
            CameraSelector cameraSelectorBuild = new CameraSelector.Builder().requireLensFacing(this.lensFacing).build();
            Preview previewBuild = new Preview.Builder().build();
            this.mVideoCapture = new VideoCapture.Builder().build();
            this.mCameraProvider.unbindAll();
            this.mCameraProvider.bindToLifecycle((LifecycleOwner) getContext(), cameraSelectorBuild, previewBuild, this.mVideoCapture);
            previewBuild.setSurfaceProvider(this.mCameraPreviewView.getSurfaceProvider());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private int aspectRatio(int i, int i2) {
        double dMax = Math.max(i, i2) / Math.min(i, i2);
        return Math.abs(dMax - 1.3333333333333333d) <= Math.abs(dMax - 1.7777777777777777d) ? 0 : 1;
    }

    private static class MyImageResultCallback implements ImageCapture.OnImageSavedCallback {
        private final WeakReference<CameraListener> mCameraListenerReference;
        private final WeakReference<CaptureLayout> mCaptureLayoutReference;
        private final WeakReference<File> mFileReference;
        private final WeakReference<ImageCallbackListener> mImageCallbackListenerReference;
        private final WeakReference<ImageView> mImagePreviewReference;

        public MyImageResultCallback(File file, ImageView imageView, CaptureLayout captureLayout, ImageCallbackListener imageCallbackListener, CameraListener cameraListener) {
            this.mFileReference = new WeakReference<>(file);
            this.mImagePreviewReference = new WeakReference<>(imageView);
            this.mCaptureLayoutReference = new WeakReference<>(captureLayout);
            this.mImageCallbackListenerReference = new WeakReference<>(imageCallbackListener);
            this.mCameraListenerReference = new WeakReference<>(cameraListener);
        }

        @Override // androidx.camera.core.ImageCapture.OnImageSavedCallback
        public void onImageSaved(ImageCapture.OutputFileResults outputFileResults) {
            if (this.mCaptureLayoutReference.get() != null) {
                this.mCaptureLayoutReference.get().setButtonCaptureEnabled(true);
            }
            if (this.mImageCallbackListenerReference.get() != null && this.mFileReference.get() != null && this.mImagePreviewReference.get() != null) {
                this.mImageCallbackListenerReference.get().onLoadImage(this.mFileReference.get(), this.mImagePreviewReference.get());
            }
            if (this.mImagePreviewReference.get() != null) {
                this.mImagePreviewReference.get().setVisibility(0);
            }
            if (this.mCaptureLayoutReference.get() != null) {
                this.mCaptureLayoutReference.get().startTypeBtnAnimator();
            }
        }

        @Override // androidx.camera.core.ImageCapture.OnImageSavedCallback
        public void onError(ImageCaptureException imageCaptureException) {
            if (this.mCaptureLayoutReference.get() != null) {
                this.mCaptureLayoutReference.get().setButtonCaptureEnabled(true);
            }
            if (this.mCameraListenerReference.get() != null) {
                this.mCameraListenerReference.get().onError(imageCaptureException.getImageCaptureError(), imageCaptureException.getMessage(), imageCaptureException.getCause());
            }
        }
    }

    public File createImageFile() {
        String strRename;
        boolean zCheckedAndroid_Q = SdkVersionUtils.checkedAndroid_Q();
        String strReplaceAll = PictureMimeType.JPG;
        if (zCheckedAndroid_Q) {
            File file = new File(PictureFileUtils.getDiskCacheDir(getContext()));
            if (!file.exists()) {
                file.mkdirs();
            }
            boolean zIsEmpty = TextUtils.isEmpty(this.mConfig.cameraFileName);
            if (TextUtils.isEmpty(this.mConfig.cameraImageFormat)) {
                if (this.mConfig.suffixType.startsWith("image/")) {
                    strReplaceAll = this.mConfig.suffixType.replaceAll("image/", ".");
                }
            } else if (this.mConfig.cameraImageFormat.startsWith("image/")) {
                strReplaceAll = this.mConfig.cameraImageFormat.replaceAll("image/", ".");
            } else {
                strReplaceAll = this.mConfig.cameraImageFormat;
            }
            File file2 = new File(file, zIsEmpty ? DateUtils.getCreateFileName("IMG_") + strReplaceAll : this.mConfig.cameraFileName);
            Uri outUri = getOutUri(PictureMimeType.ofImage());
            if (outUri != null) {
                this.mConfig.cameraPath = outUri.toString();
            }
            return file2;
        }
        if (TextUtils.isEmpty(this.mConfig.cameraFileName)) {
            strRename = "";
        } else {
            boolean zIsSuffixOfImage = PictureMimeType.isSuffixOfImage(this.mConfig.cameraFileName);
            PictureSelectionConfig pictureSelectionConfig = this.mConfig;
            pictureSelectionConfig.cameraFileName = !zIsSuffixOfImage ? StringUtils.renameSuffix(pictureSelectionConfig.cameraFileName, PictureMimeType.JPG) : pictureSelectionConfig.cameraFileName;
            strRename = this.mConfig.camera ? this.mConfig.cameraFileName : StringUtils.rename(this.mConfig.cameraFileName);
        }
        File fileCreateCameraFile = PictureFileUtils.createCameraFile(getContext(), PictureMimeType.ofImage(), strRename, TextUtils.isEmpty(this.mConfig.cameraImageFormat) ? this.mConfig.suffixType : this.mConfig.cameraImageFormat, this.mConfig.outPutCameraPath);
        this.mConfig.cameraPath = fileCreateCameraFile.getAbsolutePath();
        return fileCreateCameraFile;
    }

    public File createVideoFile() {
        String strRename;
        String strReplaceAll = ".mp4";
        if (SdkVersionUtils.checkedAndroid_Q()) {
            File file = new File(PictureFileUtils.getVideoDiskCacheDir(getContext()));
            if (!file.exists()) {
                file.mkdirs();
            }
            boolean zIsEmpty = TextUtils.isEmpty(this.mConfig.cameraFileName);
            if (TextUtils.isEmpty(this.mConfig.cameraVideoFormat)) {
                if (this.mConfig.suffixType.startsWith("video/")) {
                    strReplaceAll = this.mConfig.suffixType.replaceAll("video/", ".");
                }
            } else if (this.mConfig.cameraVideoFormat.startsWith("video/")) {
                strReplaceAll = this.mConfig.cameraVideoFormat.replaceAll("video/", ".");
            } else {
                strReplaceAll = this.mConfig.cameraVideoFormat;
            }
            File file2 = new File(file, zIsEmpty ? DateUtils.getCreateFileName("VID_") + strReplaceAll : this.mConfig.cameraFileName);
            Uri outUri = getOutUri(PictureMimeType.ofVideo());
            if (outUri != null) {
                this.mConfig.cameraPath = outUri.toString();
            }
            return file2;
        }
        if (TextUtils.isEmpty(this.mConfig.cameraFileName)) {
            strRename = "";
        } else {
            boolean zIsSuffixOfImage = PictureMimeType.isSuffixOfImage(this.mConfig.cameraFileName);
            PictureSelectionConfig pictureSelectionConfig = this.mConfig;
            pictureSelectionConfig.cameraFileName = !zIsSuffixOfImage ? StringUtils.renameSuffix(pictureSelectionConfig.cameraFileName, ".mp4") : pictureSelectionConfig.cameraFileName;
            strRename = this.mConfig.camera ? this.mConfig.cameraFileName : StringUtils.rename(this.mConfig.cameraFileName);
        }
        File fileCreateCameraFile = PictureFileUtils.createCameraFile(getContext(), PictureMimeType.ofVideo(), strRename, TextUtils.isEmpty(this.mConfig.cameraVideoFormat) ? this.mConfig.suffixType : this.mConfig.cameraVideoFormat, this.mConfig.outPutCameraPath);
        this.mConfig.cameraPath = fileCreateCameraFile.getAbsolutePath();
        return fileCreateCameraFile;
    }

    private Uri getOutUri(int i) {
        if (i == PictureMimeType.ofVideo()) {
            return MediaUtils.createVideoUri(getContext(), this.mConfig.cameraFileName, TextUtils.isEmpty(this.mConfig.cameraVideoFormat) ? this.mConfig.suffixType : this.mConfig.cameraVideoFormat);
        }
        return MediaUtils.createImageUri(getContext(), this.mConfig.cameraFileName, TextUtils.isEmpty(this.mConfig.cameraImageFormat) ? this.mConfig.suffixType : this.mConfig.cameraImageFormat);
    }

    public void setCameraListener(CameraListener cameraListener) {
        this.mCameraListener = cameraListener;
    }

    public void setRecordVideoMaxTime(int i) {
        this.mCaptureLayout.setDuration(i * 1000);
    }

    public void setRecordVideoMinTime(int i) {
        this.mCaptureLayout.setMinDuration(i * 1000);
    }

    public void setCaptureLoadingColor(int i) {
        this.mCaptureLayout.setCaptureLoadingColor(i);
    }

    public void toggleCamera() {
        this.lensFacing = this.lensFacing == 0 ? 1 : 0;
        bindCameraUseCases();
    }

    private void setFlashMode() {
        if (this.mImageCapture == null) {
        }
        switch (this.type_flash) {
            case 33:
                this.mFlashLamp.setImageResource(R.drawable.picture_ic_flash_auto);
                this.mImageCapture.setFlashMode(0);
                break;
            case 34:
                this.mFlashLamp.setImageResource(R.drawable.picture_ic_flash_on);
                this.mImageCapture.setFlashMode(1);
                break;
            case 35:
                this.mFlashLamp.setImageResource(R.drawable.picture_ic_flash_off);
                this.mImageCapture.setFlashMode(2);
                break;
        }
    }

    public void setOnClickListener(ClickListener clickListener) {
        this.mOnClickListener = clickListener;
    }

    public void setImageCallbackListener(ImageCallbackListener imageCallbackListener) {
        this.mImageCallbackListener = imageCallbackListener;
    }

    public CaptureLayout getCaptureLayout() {
        return this.mCaptureLayout;
    }

    private void resetState() {
        if (isImageCaptureEnabled()) {
            this.mImagePreview.setVisibility(4);
        } else {
            this.mVideoCapture.m51lambda$stopRecording$5$androidxcameracoreVideoCapture();
        }
        File file = this.mOutMediaFile;
        if (file != null && file.exists()) {
            this.mOutMediaFile.delete();
            if (SdkVersionUtils.checkedAndroid_Q()) {
                MediaUtils.deleteCamera(getContext(), this.mConfig.cameraPath);
            } else {
                new PictureMediaScannerConnection(getContext(), this.mOutMediaFile.getAbsolutePath());
            }
        }
        this.mSwitchCamera.setVisibility(0);
        this.mFlashLamp.setVisibility(0);
        this.mCameraPreviewView.setVisibility(0);
        this.mCaptureLayout.resetCaptureLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startVideoPlay(File file) {
        try {
            MediaPlayer mediaPlayer = this.mMediaPlayer;
            if (mediaPlayer == null) {
                this.mMediaPlayer = new MediaPlayer();
            } else {
                mediaPlayer.reset();
            }
            this.mMediaPlayer.setDataSource(file.getAbsolutePath());
            this.mMediaPlayer.setSurface(new Surface(this.mTextureView.getSurfaceTexture()));
            this.mMediaPlayer.setVideoScalingMode(1);
            this.mMediaPlayer.setAudioStreamType(3);
            this.mMediaPlayer.setOnVideoSizeChangedListener(new MediaPlayer.OnVideoSizeChangedListener() { // from class: com.luck.picture.lib.camera.CustomCameraView.7
                @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
                public void onVideoSizeChanged(MediaPlayer mediaPlayer2, int i, int i2) {
                    CustomCameraView.this.updateVideoViewSize(r1.mMediaPlayer.getVideoWidth(), CustomCameraView.this.mMediaPlayer.getVideoHeight());
                }
            });
            this.mMediaPlayer.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.luck.picture.lib.camera.CustomCameraView.8
                @Override // android.media.MediaPlayer.OnPreparedListener
                public void onPrepared(MediaPlayer mediaPlayer2) {
                    if (CustomCameraView.this.mMediaPlayer != null) {
                        CustomCameraView.this.mMediaPlayer.start();
                    }
                }
            });
            this.mMediaPlayer.setLooping(true);
            this.mMediaPlayer.prepareAsync();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateVideoViewSize(float f, float f2) {
        if (f > f2) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, (int) ((f2 / f) * getWidth()));
            layoutParams.gravity = 17;
            this.mTextureView.setLayoutParams(layoutParams);
        }
    }

    public void onCancelMedia() {
        stopVideoPlay();
        resetState();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopVideoPlay() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null && mediaPlayer.isPlaying()) {
            this.mMediaPlayer.stop();
            this.mMediaPlayer.release();
            this.mMediaPlayer = null;
        }
        this.mTextureView.setVisibility(8);
    }
}
