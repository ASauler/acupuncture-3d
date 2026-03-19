package com.luck.picture.lib;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import com.luck.picture.lib.app.PictureAppMaster;
import com.luck.picture.lib.compress.Luban;
import com.luck.picture.lib.compress.OnCompressListener;
import com.luck.picture.lib.config.PictureConfig;
import com.luck.picture.lib.config.PictureMimeType;
import com.luck.picture.lib.config.PictureSelectionConfig;
import com.luck.picture.lib.dialog.PictureCustomDialog;
import com.luck.picture.lib.dialog.PictureLoadingDialog;
import com.luck.picture.lib.engine.PictureSelectorEngine;
import com.luck.picture.lib.entity.LocalMedia;
import com.luck.picture.lib.entity.LocalMediaFolder;
import com.luck.picture.lib.immersive.ImmersiveManage;
import com.luck.picture.lib.immersive.NavBarUtils;
import com.luck.picture.lib.io.ArrayPoolProvide;
import com.luck.picture.lib.language.PictureLanguageUtils;
import com.luck.picture.lib.listener.OnCallbackListener;
import com.luck.picture.lib.model.LocalMediaPageLoader;
import com.luck.picture.lib.permissions.PermissionChecker;
import com.luck.picture.lib.thread.PictureThreadUtils;
import com.luck.picture.lib.tools.AttrsUtils;
import com.luck.picture.lib.tools.MediaUtils;
import com.luck.picture.lib.tools.PictureFileUtils;
import com.luck.picture.lib.tools.SdkVersionUtils;
import com.luck.picture.lib.tools.StringUtils;
import com.luck.picture.lib.tools.ToastUtils;
import com.luck.picture.lib.tools.VoiceUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class PictureBaseActivity extends AppCompatActivity {
    protected int colorPrimary;
    protected int colorPrimaryDark;
    protected PictureSelectionConfig config;
    protected View container;
    protected boolean isOnSaveInstanceState;
    protected PictureLoadingDialog mLoadingDialog;
    protected boolean numComplete;
    protected boolean openWhiteStatusBar;
    protected List<LocalMedia> selectionMedias = new ArrayList();
    protected Handler mHandler = new Handler(Looper.getMainLooper());
    protected boolean isHasMore = true;
    protected int mPage = 1;

    protected Context getContext() {
        return this;
    }

    public abstract int getResourceId();

    protected void initCompleteText(int i) {
    }

    protected void initCompleteText(List<LocalMedia> list) {
    }

    protected void initPictureSelectorStyle() {
    }

    protected void initWidgets() {
    }

    @Override // android.app.Activity
    public boolean isImmersive() {
        return true;
    }

    public boolean isRequestedOrientation() {
        return true;
    }

    protected void showPermissionsDialog(boolean z, String[] strArr, String str) {
    }

    public void immersive() {
        ImmersiveManage.immersiveAboveAPI23(this, this.colorPrimaryDark, this.colorPrimary, this.openWhiteStatusBar);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.config = PictureSelectionConfig.getInstance();
        PictureLanguageUtils.setAppLanguage(getContext(), this.config.language);
        setTheme(this.config.themeStyleId == 0 ? R.style.picture_default_style : this.config.themeStyleId);
        super.onCreate(bundle);
        newCreateEngine();
        newCreateResultCallbackListener();
        if (isRequestedOrientation()) {
            setNewRequestedOrientation();
        }
        initConfig();
        if (isImmersive()) {
            immersive();
        }
        if (PictureSelectionConfig.uiStyle != null) {
            if (PictureSelectionConfig.uiStyle.picture_navBarColor != 0) {
                NavBarUtils.setNavBarColor(this, PictureSelectionConfig.uiStyle.picture_navBarColor);
            }
        } else if (PictureSelectionConfig.style != null && PictureSelectionConfig.style.pictureNavBarColor != 0) {
            NavBarUtils.setNavBarColor(this, PictureSelectionConfig.style.pictureNavBarColor);
        }
        int resourceId = getResourceId();
        if (resourceId != 0) {
            setContentView(resourceId);
        }
        initWidgets();
        initPictureSelectorStyle();
        this.isOnSaveInstanceState = false;
    }

    private void newCreateEngine() {
        PictureSelectorEngine pictureSelectorEngine;
        if (PictureSelectionConfig.imageEngine != null || (pictureSelectorEngine = PictureAppMaster.getInstance().getPictureSelectorEngine()) == null) {
            return;
        }
        PictureSelectionConfig.imageEngine = pictureSelectorEngine.createEngine();
    }

    private void newCreateResultCallbackListener() {
        PictureSelectorEngine pictureSelectorEngine;
        if (this.config.isCallbackMode && PictureSelectionConfig.listener == null && (pictureSelectorEngine = PictureAppMaster.getInstance().getPictureSelectorEngine()) != null) {
            PictureSelectionConfig.listener = pictureSelectorEngine.getResultCallbackListener();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        PictureSelectionConfig pictureSelectionConfig = this.config;
        if (pictureSelectionConfig == null) {
            super.attachBaseContext(context);
        } else {
            super.attachBaseContext(PictureContextWrapper.wrap(context, pictureSelectionConfig.language));
        }
    }

    protected void setNewRequestedOrientation() {
        PictureSelectionConfig pictureSelectionConfig = this.config;
        if (pictureSelectionConfig == null || pictureSelectionConfig.camera) {
            return;
        }
        setRequestedOrientation(this.config.requestedOrientation);
    }

    private void initConfig() {
        if (this.config.selectionMedias != null) {
            this.selectionMedias.clear();
            this.selectionMedias.addAll(this.config.selectionMedias);
        }
        if (PictureSelectionConfig.uiStyle != null) {
            this.openWhiteStatusBar = PictureSelectionConfig.uiStyle.picture_statusBarChangeTextColor;
            if (PictureSelectionConfig.uiStyle.picture_top_titleBarBackgroundColor != 0) {
                this.colorPrimary = PictureSelectionConfig.uiStyle.picture_top_titleBarBackgroundColor;
            }
            if (PictureSelectionConfig.uiStyle.picture_statusBarBackgroundColor != 0) {
                this.colorPrimaryDark = PictureSelectionConfig.uiStyle.picture_statusBarBackgroundColor;
            }
            this.numComplete = PictureSelectionConfig.uiStyle.picture_switchSelectTotalStyle;
            this.config.checkNumMode = PictureSelectionConfig.uiStyle.picture_switchSelectNumberStyle;
        } else if (PictureSelectionConfig.style != null) {
            this.openWhiteStatusBar = PictureSelectionConfig.style.isChangeStatusBarFontColor;
            if (PictureSelectionConfig.style.pictureTitleBarBackgroundColor != 0) {
                this.colorPrimary = PictureSelectionConfig.style.pictureTitleBarBackgroundColor;
            }
            if (PictureSelectionConfig.style.pictureStatusBarColor != 0) {
                this.colorPrimaryDark = PictureSelectionConfig.style.pictureStatusBarColor;
            }
            this.numComplete = PictureSelectionConfig.style.isOpenCompletedNumStyle;
            this.config.checkNumMode = PictureSelectionConfig.style.isOpenCheckNumStyle;
        } else {
            boolean z = this.config.isChangeStatusBarFontColor;
            this.openWhiteStatusBar = z;
            if (!z) {
                this.openWhiteStatusBar = AttrsUtils.getTypeValueBoolean(this, R.attr.picture_statusFontColor);
            }
            boolean z2 = this.config.isOpenStyleNumComplete;
            this.numComplete = z2;
            if (!z2) {
                this.numComplete = AttrsUtils.getTypeValueBoolean(this, R.attr.picture_style_numComplete);
            }
            PictureSelectionConfig pictureSelectionConfig = this.config;
            pictureSelectionConfig.checkNumMode = pictureSelectionConfig.isOpenStyleCheckNumMode;
            if (!this.config.checkNumMode) {
                this.config.checkNumMode = AttrsUtils.getTypeValueBoolean(this, R.attr.picture_style_checkNumMode);
            }
            if (this.config.titleBarBackgroundColor != 0) {
                this.colorPrimary = this.config.titleBarBackgroundColor;
            } else {
                this.colorPrimary = AttrsUtils.getTypeValueColor(this, R.attr.colorPrimary);
            }
            if (this.config.pictureStatusBarColor != 0) {
                this.colorPrimaryDark = this.config.pictureStatusBarColor;
            } else {
                this.colorPrimaryDark = AttrsUtils.getTypeValueColor(this, R.attr.colorPrimaryDark);
            }
        }
        if (this.config.openClickSound) {
            VoiceUtils.getInstance().init(getContext());
        }
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.isOnSaveInstanceState = true;
        bundle.putParcelable(PictureConfig.EXTRA_CONFIG, this.config);
    }

    protected void showPleaseDialog() {
        try {
            if (isFinishing()) {
                return;
            }
            if (this.mLoadingDialog == null) {
                this.mLoadingDialog = new PictureLoadingDialog(getContext());
            }
            if (this.mLoadingDialog.isShowing()) {
                this.mLoadingDialog.dismiss();
            }
            this.mLoadingDialog.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void dismissDialog() {
        if (isFinishing()) {
            return;
        }
        try {
            PictureLoadingDialog pictureLoadingDialog = this.mLoadingDialog;
            if (pictureLoadingDialog == null || !pictureLoadingDialog.isShowing()) {
                return;
            }
            this.mLoadingDialog.dismiss();
        } catch (Exception e) {
            this.mLoadingDialog = null;
            e.printStackTrace();
        }
    }

    protected void compressImage(List<LocalMedia> list) {
        if (PictureSelectionConfig.compressEngine != null) {
            PictureSelectionConfig.compressEngine.onCompress(getContext(), list, new OnCallbackListener<List<LocalMedia>>() { // from class: com.luck.picture.lib.PictureBaseActivity.1
                @Override // com.luck.picture.lib.listener.OnCallbackListener
                public void onCall(List<LocalMedia> list2) {
                    PictureBaseActivity.this.onResult(list2);
                }
            });
        } else {
            showPleaseDialog();
            compressToLuban(list);
        }
    }

    private void compressToLuban(final List<LocalMedia> list) {
        if (this.config.synOrAsy) {
            PictureThreadUtils.executeByIo(new PictureThreadUtils.SimpleTask<List<LocalMedia>>() { // from class: com.luck.picture.lib.PictureBaseActivity.2
                @Override // com.luck.picture.lib.thread.PictureThreadUtils.Task
                public List<LocalMedia> doInBackground() throws Exception {
                    return Luban.with(PictureBaseActivity.this.getContext()).loadMediaData(list).isCamera(PictureBaseActivity.this.config.camera).setTargetDir(PictureBaseActivity.this.config.compressSavePath).setCompressQuality(PictureBaseActivity.this.config.compressQuality).isAutoRotating(PictureBaseActivity.this.config.isAutoRotating).setFocusAlpha(PictureBaseActivity.this.config.focusAlpha).setNewCompressFileName(PictureBaseActivity.this.config.renameCompressFileName).ignoreBy(PictureBaseActivity.this.config.minimumCompressSize).get();
                }

                @Override // com.luck.picture.lib.thread.PictureThreadUtils.Task
                public void onSuccess(List<LocalMedia> list2) {
                    PictureThreadUtils.cancel(PictureThreadUtils.getIoPool());
                    PictureBaseActivity.this.onResult(list2);
                }
            });
        } else {
            Luban.with(this).loadMediaData(list).ignoreBy(this.config.minimumCompressSize).isCamera(this.config.camera).setCompressQuality(this.config.compressQuality).setTargetDir(this.config.compressSavePath).isAutoRotating(this.config.isAutoRotating).setFocusAlpha(this.config.focusAlpha).setNewCompressFileName(this.config.renameCompressFileName).setCompressListener(new OnCompressListener() { // from class: com.luck.picture.lib.PictureBaseActivity.3
                @Override // com.luck.picture.lib.compress.OnCompressListener
                public void onStart() {
                }

                @Override // com.luck.picture.lib.compress.OnCompressListener
                public void onSuccess(List<LocalMedia> list2) {
                    PictureBaseActivity.this.onResult(list2);
                }

                @Override // com.luck.picture.lib.compress.OnCompressListener
                public void onError(Throwable th) {
                    PictureBaseActivity.this.onResult(list);
                }
            }).launch();
        }
    }

    protected void handlerResult(List<LocalMedia> list) {
        if (this.config.isCompress) {
            compressImage(list);
        } else {
            onResult(list);
        }
    }

    protected void createNewFolder(List<LocalMediaFolder> list) {
        if (list.size() == 0) {
            LocalMediaFolder localMediaFolder = new LocalMediaFolder();
            localMediaFolder.setName(getString(this.config.chooseMode == PictureMimeType.ofAudio() ? R.string.picture_all_audio : R.string.picture_camera_roll));
            localMediaFolder.setFirstImagePath("");
            localMediaFolder.setCameraFolder(true);
            localMediaFolder.setBucketId(-1L);
            localMediaFolder.setChecked(true);
            list.add(localMediaFolder);
        }
    }

    protected LocalMediaFolder getImageFolder(String str, String str2, String str3, List<LocalMediaFolder> list) {
        if (!PictureMimeType.isContent(str)) {
            str2 = str;
        }
        File parentFile = new File(str2).getParentFile();
        for (LocalMediaFolder localMediaFolder : list) {
            if (parentFile != null && localMediaFolder.getName().equals(parentFile.getName())) {
                return localMediaFolder;
            }
        }
        LocalMediaFolder localMediaFolder2 = new LocalMediaFolder();
        localMediaFolder2.setName(parentFile != null ? parentFile.getName() : "");
        localMediaFolder2.setFirstImagePath(str);
        localMediaFolder2.setFirstMimeType(str3);
        list.add(localMediaFolder2);
        return localMediaFolder2;
    }

    protected void onResult(List<LocalMedia> list) {
        if (SdkVersionUtils.checkedAndroid_Q() && this.config.isAndroidQTransform) {
            onResultToAndroidAsy(list);
            return;
        }
        dismissDialog();
        if (this.config.camera && this.config.selectionMode == 2) {
            list.addAll(list.size() > 0 ? list.size() - 1 : 0, this.selectionMedias);
        }
        if (this.config.isCheckOriginalImage) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                LocalMedia localMedia = list.get(i);
                localMedia.setOriginal(true);
                localMedia.setOriginalPath(localMedia.getPath());
            }
        }
        if (PictureSelectionConfig.listener != null) {
            PictureSelectionConfig.listener.onResult(list);
        } else {
            setResult(-1, PictureSelector.putIntentResult(list));
        }
        exit();
    }

    private void onResultToAndroidAsy(List<LocalMedia> list) {
        int size = list.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            LocalMedia localMedia = list.get(i);
            if (localMedia != null && !TextUtils.isEmpty(localMedia.getPath()) && (this.config.isCheckOriginalImage || (!localMedia.isCut() && !localMedia.isCompressed() && TextUtils.isEmpty(localMedia.getAndroidQToPath())))) {
                z = true;
                break;
            }
        }
        if (z) {
            startThreadCopySandbox(list);
        } else {
            normalResult(list);
        }
    }

    private void normalResult(List<LocalMedia> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            LocalMedia localMedia = list.get(i);
            if (localMedia != null && !TextUtils.isEmpty(localMedia.getPath())) {
                if (localMedia.isCut() && localMedia.isCompressed()) {
                    localMedia.setAndroidQToPath(localMedia.getCompressPath());
                }
                if (this.config.isCheckOriginalImage) {
                    localMedia.setOriginal(true);
                    localMedia.setOriginalPath(localMedia.getAndroidQToPath());
                }
            }
        }
        if (this.config.camera && this.config.selectionMode == 2) {
            list.addAll(list.size() > 0 ? list.size() - 1 : 0, this.selectionMedias);
        }
        if (PictureSelectionConfig.listener != null) {
            PictureSelectionConfig.listener.onResult(list);
        } else {
            setResult(-1, PictureSelector.putIntentResult(list));
        }
        exit();
    }

    private void startThreadCopySandbox(final List<LocalMedia> list) {
        showPleaseDialog();
        PictureThreadUtils.executeByIo(new PictureThreadUtils.SimpleTask<List<LocalMedia>>() { // from class: com.luck.picture.lib.PictureBaseActivity.4
            /* JADX WARN: Removed duplicated region for block: B:31:0x0095  */
            /* JADX WARN: Removed duplicated region for block: B:41:0x00c9 A[SYNTHETIC] */
            @Override // com.luck.picture.lib.thread.PictureThreadUtils.Task
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.util.List<com.luck.picture.lib.entity.LocalMedia> doInBackground() {
                /*
                    Method dump skipped, instruction units count: 208
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.luck.picture.lib.PictureBaseActivity.AnonymousClass4.doInBackground():java.util.List");
            }

            @Override // com.luck.picture.lib.thread.PictureThreadUtils.Task
            public void onSuccess(List<LocalMedia> list2) {
                PictureThreadUtils.cancel(PictureThreadUtils.getIoPool());
                PictureBaseActivity.this.dismissDialog();
                if (list2 != null) {
                    if (PictureBaseActivity.this.config.camera && PictureBaseActivity.this.config.selectionMode == 2) {
                        list2.addAll(list2.size() > 0 ? list2.size() - 1 : 0, PictureBaseActivity.this.selectionMedias);
                    }
                    if (PictureSelectionConfig.listener != null) {
                        PictureSelectionConfig.listener.onResult(list2);
                    } else {
                        PictureBaseActivity.this.setResult(-1, PictureSelector.putIntentResult(list2));
                    }
                    PictureBaseActivity.this.exit();
                }
            }
        });
    }

    protected void exit() {
        finish();
        if (this.config.camera) {
            overridePendingTransition(0, R.anim.picture_anim_fade_out);
            if ((getContext() instanceof PictureSelectorCameraEmptyActivity) || (getContext() instanceof PictureCustomCameraActivity)) {
                releaseResultListener();
                return;
            }
            return;
        }
        overridePendingTransition(0, PictureSelectionConfig.windowAnimationStyle.activityExitAnimation);
        if (getContext() instanceof PictureSelectorActivity) {
            releaseResultListener();
            if (this.config.openClickSound) {
                VoiceUtils.getInstance().releaseSoundPool();
            }
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        PictureLoadingDialog pictureLoadingDialog = this.mLoadingDialog;
        if (pictureLoadingDialog != null) {
            pictureLoadingDialog.dismiss();
            this.mLoadingDialog = null;
        }
        super.onDestroy();
        this.mHandler.removeCallbacksAndMessages(null);
    }

    protected String getAudioPath(Intent intent) {
        try {
            Uri data = intent.getData();
            if (data == null) {
                return "";
            }
            if (PictureMimeType.isContent(data.toString())) {
                return data.toString();
            }
            return data.getPath();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    protected void startOpenCameraImage() {
        String strRename;
        Uri uriParUri;
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        if (intent.resolveActivity(getPackageManager()) != null) {
            String str = TextUtils.isEmpty(this.config.cameraImageFormat) ? this.config.suffixType : this.config.cameraImageFormat;
            int i = this.config.chooseMode == 0 ? 1 : this.config.chooseMode;
            if (TextUtils.isEmpty(this.config.cameraFileName)) {
                strRename = null;
            } else {
                boolean zIsSuffixOfImage = PictureMimeType.isSuffixOfImage(this.config.cameraFileName);
                PictureSelectionConfig pictureSelectionConfig = this.config;
                pictureSelectionConfig.cameraFileName = !zIsSuffixOfImage ? StringUtils.renameSuffix(pictureSelectionConfig.cameraFileName, PictureMimeType.JPG) : pictureSelectionConfig.cameraFileName;
                strRename = this.config.camera ? this.config.cameraFileName : StringUtils.rename(this.config.cameraFileName);
            }
            if (SdkVersionUtils.checkedAndroid_Q()) {
                if (TextUtils.isEmpty(this.config.outPutCameraPath)) {
                    uriParUri = MediaUtils.createImageUri(this, this.config.cameraFileName, str);
                } else {
                    File fileCreateCameraFile = PictureFileUtils.createCameraFile(this, i, strRename, str, this.config.outPutCameraPath);
                    this.config.cameraPath = fileCreateCameraFile.getAbsolutePath();
                    uriParUri = PictureFileUtils.parUri(this, fileCreateCameraFile);
                }
                if (uriParUri != null) {
                    this.config.cameraPath = uriParUri.toString();
                }
            } else {
                File fileCreateCameraFile2 = PictureFileUtils.createCameraFile(this, i, strRename, str, this.config.outPutCameraPath);
                this.config.cameraPath = fileCreateCameraFile2.getAbsolutePath();
                uriParUri = PictureFileUtils.parUri(this, fileCreateCameraFile2);
            }
            if (uriParUri == null) {
                ToastUtils.s(getContext(), "open is camera error，the uri is empty ");
                if (this.config.camera) {
                    exit();
                    return;
                }
                return;
            }
            this.config.cameraMimeType = PictureMimeType.ofImage();
            if (this.config.isCameraAroundState) {
                intent.putExtra(PictureConfig.CAMERA_FACING, 1);
            }
            intent.putExtra("output", uriParUri);
            startActivityForResult(intent, PictureConfig.REQUEST_CAMERA);
        }
    }

    protected void startOpenCameraVideo() {
        String strRename;
        Uri uriParUri;
        Intent intent = new Intent("android.media.action.VIDEO_CAPTURE");
        if (intent.resolveActivity(getPackageManager()) != null) {
            String str = TextUtils.isEmpty(this.config.cameraVideoFormat) ? this.config.suffixType : this.config.cameraVideoFormat;
            int i = this.config.chooseMode == 0 ? 2 : this.config.chooseMode;
            if (TextUtils.isEmpty(this.config.cameraFileName)) {
                strRename = null;
            } else {
                boolean zIsSuffixOfImage = PictureMimeType.isSuffixOfImage(this.config.cameraFileName);
                PictureSelectionConfig pictureSelectionConfig = this.config;
                pictureSelectionConfig.cameraFileName = zIsSuffixOfImage ? StringUtils.renameSuffix(pictureSelectionConfig.cameraFileName, ".mp4") : pictureSelectionConfig.cameraFileName;
                strRename = this.config.camera ? this.config.cameraFileName : StringUtils.rename(this.config.cameraFileName);
            }
            if (SdkVersionUtils.checkedAndroid_Q()) {
                if (TextUtils.isEmpty(this.config.outPutCameraPath)) {
                    uriParUri = MediaUtils.createVideoUri(this, this.config.cameraFileName, str);
                } else {
                    File fileCreateCameraFile = PictureFileUtils.createCameraFile(this, i, strRename, str, this.config.outPutCameraPath);
                    this.config.cameraPath = fileCreateCameraFile.getAbsolutePath();
                    uriParUri = PictureFileUtils.parUri(this, fileCreateCameraFile);
                }
                if (uriParUri != null) {
                    this.config.cameraPath = uriParUri.toString();
                }
            } else {
                File fileCreateCameraFile2 = PictureFileUtils.createCameraFile(this, i, strRename, str, this.config.outPutCameraPath);
                this.config.cameraPath = fileCreateCameraFile2.getAbsolutePath();
                uriParUri = PictureFileUtils.parUri(this, fileCreateCameraFile2);
            }
            if (uriParUri == null) {
                ToastUtils.s(getContext(), "open is camera error，the uri is empty ");
                if (this.config.camera) {
                    exit();
                    return;
                }
                return;
            }
            this.config.cameraMimeType = PictureMimeType.ofVideo();
            intent.putExtra("output", uriParUri);
            if (this.config.isCameraAroundState) {
                intent.putExtra(PictureConfig.CAMERA_FACING, 1);
            }
            intent.putExtra(PictureConfig.EXTRA_QUICK_CAPTURE, this.config.isQuickCapture);
            intent.putExtra("android.intent.extra.durationLimit", this.config.recordVideoSecond);
            intent.putExtra("android.intent.extra.videoQuality", this.config.videoQuality);
            startActivityForResult(intent, PictureConfig.REQUEST_CAMERA);
        }
    }

    public void startOpenCameraAudio() {
        try {
            if (PermissionChecker.checkSelfPermission(this, "android.permission.RECORD_AUDIO")) {
                Intent intent = new Intent("android.provider.MediaStore.RECORD_SOUND");
                if (intent.resolveActivity(getPackageManager()) != null) {
                    this.config.cameraMimeType = PictureMimeType.ofAudio();
                    String str = TextUtils.isEmpty(this.config.cameraAudioFormat) ? this.config.suffixType : this.config.cameraAudioFormat;
                    if (SdkVersionUtils.checkedAndroid_Q()) {
                        Uri uriCreateAudioUri = MediaUtils.createAudioUri(this, str);
                        if (uriCreateAudioUri == null) {
                            ToastUtils.s(getContext(), "open is audio error，the uri is empty ");
                            if (this.config.camera) {
                                exit();
                                return;
                            }
                            return;
                        }
                        this.config.cameraPath = uriCreateAudioUri.toString();
                        intent.putExtra("output", uriCreateAudioUri);
                    }
                    startActivityForResult(intent, PictureConfig.REQUEST_CAMERA);
                    return;
                }
                ToastUtils.s(getContext(), "System recording is not supported");
                return;
            }
            PermissionChecker.requestPermissions(this, new String[]{"android.permission.RECORD_AUDIO"}, 3);
        } catch (Exception e) {
            e.printStackTrace();
            ToastUtils.s(getContext(), e.getMessage());
        }
    }

    private void releaseResultListener() {
        if (this.config != null) {
            PictureSelectionConfig.destroy();
            LocalMediaPageLoader.setInstanceNull();
            PictureThreadUtils.cancel(PictureThreadUtils.getIoPool());
            ArrayPoolProvide.getInstance().clearMemory();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 3) {
            if (iArr[0] == 0) {
                Intent intent = new Intent("android.provider.MediaStore.RECORD_SOUND");
                if (intent.resolveActivity(getPackageManager()) != null) {
                    startActivityForResult(intent, PictureConfig.REQUEST_CAMERA);
                    return;
                }
                return;
            }
            ToastUtils.s(getContext(), getString(R.string.picture_audio));
        }
    }

    protected void showPromptDialog(String str) {
        if (isFinishing()) {
            return;
        }
        if (PictureSelectionConfig.onChooseLimitCallback != null) {
            PictureSelectionConfig.onChooseLimitCallback.onChooseLimit(getContext(), str);
            return;
        }
        final PictureCustomDialog pictureCustomDialog = new PictureCustomDialog(getContext(), R.layout.picture_prompt_dialog);
        TextView textView = (TextView) pictureCustomDialog.findViewById(R.id.btnOk);
        ((TextView) pictureCustomDialog.findViewById(R.id.tv_content)).setText(str);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.luck.picture.lib.PictureBaseActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (PictureBaseActivity.this.isFinishing()) {
                    return;
                }
                pictureCustomDialog.dismiss();
            }
        });
        pictureCustomDialog.show();
    }

    protected void sortFolder(List<LocalMediaFolder> list) {
        Collections.sort(list, new Comparator() { // from class: com.luck.picture.lib.PictureBaseActivity$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return PictureBaseActivity.lambda$sortFolder$0((LocalMediaFolder) obj, (LocalMediaFolder) obj2);
            }
        });
    }

    static /* synthetic */ int lambda$sortFolder$0(LocalMediaFolder localMediaFolder, LocalMediaFolder localMediaFolder2) {
        if (localMediaFolder.getData() == null || localMediaFolder2.getData() == null) {
            return 0;
        }
        return Integer.compare(localMediaFolder2.getImageNum(), localMediaFolder.getImageNum());
    }
}
