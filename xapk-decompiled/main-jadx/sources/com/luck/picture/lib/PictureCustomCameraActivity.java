package com.luck.picture.lib;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.luck.picture.lib.camera.CustomCameraView;
import com.luck.picture.lib.camera.listener.CameraListener;
import com.luck.picture.lib.camera.listener.ClickListener;
import com.luck.picture.lib.camera.listener.ImageCallbackListener;
import com.luck.picture.lib.camera.view.CaptureLayout;
import com.luck.picture.lib.config.PictureConfig;
import com.luck.picture.lib.config.PictureMimeType;
import com.luck.picture.lib.config.PictureSelectionConfig;
import com.luck.picture.lib.dialog.PictureCustomDialog;
import com.luck.picture.lib.listener.OnPermissionDialogOptionCallback;
import com.luck.picture.lib.permissions.PermissionChecker;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class PictureCustomCameraActivity extends PictureSelectorCameraEmptyActivity {
    private static final String TAG = "PictureCustomCameraActivity";
    protected boolean isEnterSetting;
    private CustomCameraView mCameraView;

    @Override // com.luck.picture.lib.PictureBaseActivity, android.app.Activity
    public boolean isImmersive() {
        return false;
    }

    @Override // com.luck.picture.lib.PictureSelectorCameraEmptyActivity, com.luck.picture.lib.PictureBaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        getWindow().setFlags(1024, 1024);
        getWindow().setFlags(67108864, 67108864);
        getWindow().setFlags(134217728, 134217728);
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            getWindow().setAttributes(attributes);
        }
        getWindow().addFlags(128);
        super.onCreate(bundle);
        setContentView(R.layout.picture_custom_camera);
        this.mCameraView = (CustomCameraView) findViewById(R.id.cameraView);
        initView();
        requestCamera();
    }

    private void requestCamera() {
        if (PermissionChecker.checkSelfPermission(this, "android.permission.WRITE_EXTERNAL_STORAGE")) {
            if (PermissionChecker.checkSelfPermission(this, "android.permission.CAMERA")) {
                if (this.config.buttonFeatures == 257) {
                    this.mCameraView.initCamera();
                    return;
                } else if (PermissionChecker.checkSelfPermission(this, "android.permission.RECORD_AUDIO")) {
                    this.mCameraView.initCamera();
                    return;
                } else {
                    PermissionChecker.requestPermissions(this, new String[]{"android.permission.RECORD_AUDIO"}, 4);
                    return;
                }
            }
            PermissionChecker.requestPermissions(this, new String[]{"android.permission.CAMERA"}, 2);
            return;
        }
        PermissionChecker.requestPermissions(this, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 1);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.isEnterSetting) {
            if (PermissionChecker.checkSelfPermission(this, "android.permission.WRITE_EXTERNAL_STORAGE")) {
                if (PermissionChecker.checkSelfPermission(this, "android.permission.CAMERA")) {
                    if (this.config.buttonFeatures == 257 || PermissionChecker.checkSelfPermission(this, "android.permission.RECORD_AUDIO")) {
                        this.mCameraView.initCamera();
                    } else {
                        PermissionChecker.requestPermissions(this, new String[]{"android.permission.RECORD_AUDIO"}, 4);
                    }
                } else {
                    showPermissionsDialog(false, new String[]{"android.permission.CAMERA"}, getString(R.string.picture_camera));
                }
            } else {
                showPermissionsDialog(false, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, getString(R.string.picture_jurisdiction));
            }
            this.isEnterSetting = false;
        }
    }

    protected void initView() {
        if (this.config.recordVideoSecond > 0) {
            this.mCameraView.setRecordVideoMaxTime(this.config.recordVideoSecond);
        }
        if (this.config.recordVideoMinSecond > 0) {
            this.mCameraView.setRecordVideoMinTime(this.config.recordVideoMinSecond);
        }
        if (this.config.captureLoadingColor != 0) {
            this.mCameraView.setCaptureLoadingColor(this.config.captureLoadingColor);
        }
        CaptureLayout captureLayout = this.mCameraView.getCaptureLayout();
        if (captureLayout != null) {
            captureLayout.setButtonFeatures(this.config.buttonFeatures);
        }
        this.mCameraView.setImageCallbackListener(new ImageCallbackListener() { // from class: com.luck.picture.lib.PictureCustomCameraActivity$$ExternalSyntheticLambda0
            @Override // com.luck.picture.lib.camera.listener.ImageCallbackListener
            public final void onLoadImage(File file, ImageView imageView) {
                this.f$0.m757x6df04382(file, imageView);
            }
        });
        this.mCameraView.setCameraListener(new CameraListener() { // from class: com.luck.picture.lib.PictureCustomCameraActivity.1
            @Override // com.luck.picture.lib.camera.listener.CameraListener
            public void onPictureSuccess(File file) {
                PictureCustomCameraActivity.this.config.cameraMimeType = PictureMimeType.ofImage();
                Intent intent = new Intent();
                intent.putExtra(PictureConfig.EXTRA_MEDIA_PATH, file.getAbsolutePath());
                intent.putExtra(PictureConfig.EXTRA_CONFIG, PictureCustomCameraActivity.this.config);
                if (PictureCustomCameraActivity.this.config.camera) {
                    PictureCustomCameraActivity.this.dispatchHandleCamera(intent);
                } else {
                    PictureCustomCameraActivity.this.setResult(-1, intent);
                    PictureCustomCameraActivity.this.onBackPressed();
                }
            }

            @Override // com.luck.picture.lib.camera.listener.CameraListener
            public void onRecordSuccess(File file) {
                PictureCustomCameraActivity.this.config.cameraMimeType = PictureMimeType.ofVideo();
                Intent intent = new Intent();
                intent.putExtra(PictureConfig.EXTRA_MEDIA_PATH, file.getAbsolutePath());
                intent.putExtra(PictureConfig.EXTRA_CONFIG, PictureCustomCameraActivity.this.config);
                if (PictureCustomCameraActivity.this.config.camera) {
                    PictureCustomCameraActivity.this.dispatchHandleCamera(intent);
                } else {
                    PictureCustomCameraActivity.this.setResult(-1, intent);
                    PictureCustomCameraActivity.this.onBackPressed();
                }
            }

            @Override // com.luck.picture.lib.camera.listener.CameraListener
            public void onError(int i, String str, Throwable th) {
                Log.i(PictureCustomCameraActivity.TAG, "onError: " + str);
            }
        });
        this.mCameraView.setOnClickListener(new ClickListener() { // from class: com.luck.picture.lib.PictureCustomCameraActivity.2
            @Override // com.luck.picture.lib.camera.listener.ClickListener
            public void onClick() {
                PictureCustomCameraActivity.this.onBackPressed();
            }
        });
    }

    /* JADX INFO: renamed from: lambda$initView$0$com-luck-picture-lib-PictureCustomCameraActivity, reason: not valid java name */
    /* synthetic */ void m757x6df04382(File file, ImageView imageView) {
        if (this.config == null || PictureSelectionConfig.imageEngine == null || file == null) {
            return;
        }
        PictureSelectionConfig.imageEngine.loadImage(getContext(), file.getAbsolutePath(), imageView);
    }

    @Override // com.luck.picture.lib.PictureSelectorCameraEmptyActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.config != null && this.config.camera && PictureSelectionConfig.listener != null) {
            PictureSelectionConfig.listener.onCancel();
        }
        exit();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            this.mCameraView.onCancelMedia();
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // com.luck.picture.lib.PictureSelectorCameraEmptyActivity, com.luck.picture.lib.PictureBaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i == 1) {
            if (iArr.length > 0 && iArr[0] == 0) {
                PermissionChecker.requestPermissions(this, new String[]{"android.permission.CAMERA"}, 2);
                return;
            } else {
                showPermissionsDialog(true, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, getString(R.string.picture_jurisdiction));
                return;
            }
        }
        if (i != 2) {
            if (i != 4) {
                return;
            }
            if (iArr.length > 0 && iArr[0] == 0) {
                this.mCameraView.initCamera();
                return;
            } else {
                showPermissionsDialog(false, new String[]{"android.permission.RECORD_AUDIO"}, getString(R.string.picture_audio));
                return;
            }
        }
        if (iArr.length > 0 && iArr[0] == 0) {
            if (PermissionChecker.checkSelfPermission(this, "android.permission.RECORD_AUDIO")) {
                this.mCameraView.initCamera();
                return;
            } else {
                PermissionChecker.requestPermissions(this, new String[]{"android.permission.RECORD_AUDIO"}, 4);
                return;
            }
        }
        showPermissionsDialog(true, new String[]{"android.permission.CAMERA"}, getString(R.string.picture_camera));
    }

    @Override // com.luck.picture.lib.PictureBaseActivity
    protected void showPermissionsDialog(boolean z, String[] strArr, String str) {
        if (isFinishing()) {
            return;
        }
        if (PictureSelectionConfig.onPermissionsObtainCallback != null) {
            PictureSelectionConfig.onPermissionsObtainCallback.onPermissionsIntercept(getContext(), z, strArr, str, new OnPermissionDialogOptionCallback() { // from class: com.luck.picture.lib.PictureCustomCameraActivity.3
                @Override // com.luck.picture.lib.listener.OnPermissionDialogOptionCallback
                public void onCancel() {
                    if (PictureSelectionConfig.listener != null) {
                        PictureSelectionConfig.listener.onCancel();
                    }
                    PictureCustomCameraActivity.this.exit();
                }

                @Override // com.luck.picture.lib.listener.OnPermissionDialogOptionCallback
                public void onSetting() {
                    PictureCustomCameraActivity.this.isEnterSetting = true;
                }
            });
            return;
        }
        final PictureCustomDialog pictureCustomDialog = new PictureCustomDialog(getContext(), R.layout.picture_wind_base_dialog);
        pictureCustomDialog.setCancelable(false);
        pictureCustomDialog.setCanceledOnTouchOutside(false);
        Button button = (Button) pictureCustomDialog.findViewById(R.id.btn_cancel);
        Button button2 = (Button) pictureCustomDialog.findViewById(R.id.btn_commit);
        button2.setText(getString(R.string.picture_go_setting));
        TextView textView = (TextView) pictureCustomDialog.findViewById(R.id.tvTitle);
        TextView textView2 = (TextView) pictureCustomDialog.findViewById(R.id.tv_content);
        textView.setText(getString(R.string.picture_prompt));
        textView2.setText(str);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.luck.picture.lib.PictureCustomCameraActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m758xe2942961(pictureCustomDialog, view);
            }
        });
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.luck.picture.lib.PictureCustomCameraActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m759xd43dcf80(pictureCustomDialog, view);
            }
        });
        pictureCustomDialog.show();
    }

    /* JADX INFO: renamed from: lambda$showPermissionsDialog$1$com-luck-picture-lib-PictureCustomCameraActivity, reason: not valid java name */
    /* synthetic */ void m758xe2942961(PictureCustomDialog pictureCustomDialog, View view) {
        if (!isFinishing()) {
            pictureCustomDialog.dismiss();
        }
        if (PictureSelectionConfig.listener != null) {
            PictureSelectionConfig.listener.onCancel();
        }
        exit();
    }

    /* JADX INFO: renamed from: lambda$showPermissionsDialog$2$com-luck-picture-lib-PictureCustomCameraActivity, reason: not valid java name */
    /* synthetic */ void m759xd43dcf80(PictureCustomDialog pictureCustomDialog, View view) {
        if (!isFinishing()) {
            pictureCustomDialog.dismiss();
        }
        PermissionChecker.launchAppDetailsSettings(getContext());
        this.isEnterSetting = true;
    }
}
