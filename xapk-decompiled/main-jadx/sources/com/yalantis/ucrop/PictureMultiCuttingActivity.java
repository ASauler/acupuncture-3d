package com.yalantis.ucrop;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SimpleItemAnimator;
import com.luck.picture.lib.R;
import com.luck.picture.lib.config.PictureMimeType;
import com.luck.picture.lib.entity.LocalMedia;
import com.luck.picture.lib.tools.DateUtils;
import com.luck.picture.lib.tools.PictureFileUtils;
import com.luck.picture.lib.tools.ScreenUtils;
import com.luck.picture.lib.tools.SdkVersionUtils;
import com.yalantis.ucrop.PicturePhotoGalleryAdapter;
import com.yalantis.ucrop.UCrop;
import java.io.File;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class PictureMultiCuttingActivity extends UCropActivity {
    private static final int MIN_NUM = 1;
    private int cutIndex;
    private boolean isAnimation;
    private boolean isCamera;
    private boolean isWithVideoImage;
    private final ArrayList<LocalMedia> list = new ArrayList<>();
    private PicturePhotoGalleryAdapter mAdapter;
    private RecyclerView mRecyclerView;
    private int oldCutIndex;
    private String renameCropFilename;

    @Override // com.yalantis.ucrop.UCropActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        this.renameCropFilename = intent.getStringExtra(UCrop.Options.EXTRA_RENAME_CROP_FILENAME);
        this.isCamera = intent.getBooleanExtra(UCrop.Options.EXTRA_CAMERA, false);
        this.isWithVideoImage = intent.getBooleanExtra(UCrop.Options.EXTRA_WITH_VIDEO_IMAGE, false);
        ArrayList parcelableArrayListExtra = getIntent().getParcelableArrayListExtra(UCrop.Options.EXTRA_CUT_CROP);
        this.isAnimation = getIntent().getBooleanExtra(UCrop.Options.EXTRA_MULTIPLE_RECYCLERANIMATION, true);
        if (parcelableArrayListExtra == null || parcelableArrayListExtra.size() == 0) {
            onBackPressed();
            return;
        }
        this.list.addAll(parcelableArrayListExtra);
        if (this.list.size() > 1) {
            initLoadCutData();
            addPhotoRecyclerView();
        }
    }

    private void addPhotoRecyclerView() {
        boolean booleanExtra = getIntent().getBooleanExtra(UCrop.Options.EXTRA_SKIP_MULTIPLE_CROP, true);
        RecyclerView recyclerView = new RecyclerView(this);
        this.mRecyclerView = recyclerView;
        recyclerView.setId(R.id.id_recycler);
        this.mRecyclerView.setBackgroundColor(ContextCompat.getColor(this, R.color.ucrop_color_widget_background));
        this.mRecyclerView.setLayoutParams(new RelativeLayout.LayoutParams(-1, ScreenUtils.dip2px(this, 80.0f)));
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        linearLayoutManager.setOrientation(0);
        if (this.isAnimation) {
            this.mRecyclerView.setLayoutAnimation(AnimationUtils.loadLayoutAnimation(getApplicationContext(), R.anim.ucrop_layout_animation_fall_down));
        }
        this.mRecyclerView.setLayoutManager(linearLayoutManager);
        ((SimpleItemAnimator) Objects.requireNonNull(this.mRecyclerView.getItemAnimator())).setSupportsChangeAnimations(false);
        resetCutDataStatus();
        this.list.get(this.cutIndex).setCut(true);
        PicturePhotoGalleryAdapter picturePhotoGalleryAdapter = new PicturePhotoGalleryAdapter(this.list);
        this.mAdapter = picturePhotoGalleryAdapter;
        this.mRecyclerView.setAdapter(picturePhotoGalleryAdapter);
        if (booleanExtra) {
            this.mAdapter.setOnItemClickListener(new PicturePhotoGalleryAdapter.OnItemClickListener() { // from class: com.yalantis.ucrop.PictureMultiCuttingActivity.1
                @Override // com.yalantis.ucrop.PicturePhotoGalleryAdapter.OnItemClickListener
                public void onItemClick(int i, View view) {
                    if (PictureMimeType.isHasVideo(((LocalMedia) PictureMultiCuttingActivity.this.list.get(i)).getMimeType()) || PictureMultiCuttingActivity.this.cutIndex == i) {
                        return;
                    }
                    PictureMultiCuttingActivity.this.resetLastCropStatus();
                    PictureMultiCuttingActivity.this.cutIndex = i;
                    PictureMultiCuttingActivity pictureMultiCuttingActivity = PictureMultiCuttingActivity.this;
                    pictureMultiCuttingActivity.oldCutIndex = pictureMultiCuttingActivity.cutIndex;
                    PictureMultiCuttingActivity.this.resetCutData();
                }
            });
        }
        this.uCropPhotoBox.addView(this.mRecyclerView);
        changeLayoutParams(this.mShowBottomControls);
        ((RelativeLayout.LayoutParams) ((FrameLayout) findViewById(R.id.ucrop_frame)).getLayoutParams()).addRule(2, R.id.id_recycler);
        ((RelativeLayout.LayoutParams) this.mRecyclerView.getLayoutParams()).addRule(2, R.id.controls_wrapper);
    }

    protected void resetCutData() {
        Uri uriFromFile;
        this.uCropPhotoBox.removeView(this.mRecyclerView);
        if (this.mBlockingView != null) {
            this.uCropPhotoBox.removeView(this.mBlockingView);
        }
        setContentView(R.layout.ucrop_activity_photobox);
        this.uCropPhotoBox = (RelativeLayout) findViewById(R.id.ucrop_photobox);
        addBlockingView();
        Intent intent = getIntent();
        Bundle extras = intent.getExtras();
        if (extras == null) {
            extras = new Bundle();
        }
        LocalMedia localMedia = this.list.get(this.cutIndex);
        String path = localMedia.getPath();
        boolean zIsHasHttp = PictureMimeType.isHasHttp(path);
        String lastImgType = PictureMimeType.getLastImgType(PictureMimeType.isContent(path) ? PictureFileUtils.getPath(this, Uri.parse(path)) : path);
        if (TextUtils.isEmpty(localMedia.getAndroidQToPath())) {
            uriFromFile = (zIsHasHttp || PictureMimeType.isContent(path)) ? Uri.parse(path) : Uri.fromFile(new File(path));
        } else {
            uriFromFile = Uri.fromFile(new File(localMedia.getAndroidQToPath()));
        }
        extras.putParcelable(UCrop.EXTRA_INPUT_URI, uriFromFile);
        extras.putParcelable(UCrop.EXTRA_OUTPUT_URI, Uri.fromFile(new File(Environment.getExternalStorageState().equals("mounted") ? getExternalFilesDir(Environment.DIRECTORY_PICTURES) : getCacheDir(), TextUtils.isEmpty(this.renameCropFilename) ? DateUtils.getCreateFileName("IMG_CROP_") + lastImgType : this.isCamera ? this.renameCropFilename : PictureFileUtils.rename(this.renameCropFilename))));
        intent.putExtras(extras);
        setupViews(intent);
        refreshPhotoRecyclerData();
        setImageData(intent);
        setInitialState();
        double dDip2px = this.cutIndex * ScreenUtils.dip2px(this, 60.0f);
        if (dDip2px > ((double) this.mScreenWidth) * 0.8d) {
            this.mRecyclerView.scrollBy(ScreenUtils.dip2px(this, 60.0f), 0);
        } else if (dDip2px < ((double) this.mScreenWidth) * 0.4d) {
            this.mRecyclerView.scrollBy(ScreenUtils.dip2px(this, -60.0f), 0);
        }
    }

    private void refreshPhotoRecyclerData() {
        resetCutDataStatus();
        this.list.get(this.cutIndex).setCut(true);
        this.mAdapter.notifyItemChanged(this.cutIndex);
        this.uCropPhotoBox.addView(this.mRecyclerView);
        changeLayoutParams(this.mShowBottomControls);
        ((RelativeLayout.LayoutParams) ((FrameLayout) findViewById(R.id.ucrop_frame)).getLayoutParams()).addRule(2, R.id.id_recycler);
        ((RelativeLayout.LayoutParams) this.mRecyclerView.getLayoutParams()).addRule(2, R.id.controls_wrapper);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetLastCropStatus() {
        int i;
        int size = this.list.size();
        if (size <= 1 || size <= (i = this.oldCutIndex)) {
            return;
        }
        this.list.get(i).setCut(false);
        this.mAdapter.notifyItemChanged(this.cutIndex);
    }

    private void resetCutDataStatus() {
        int size = this.list.size();
        for (int i = 0; i < size; i++) {
            this.list.get(i).setCut(false);
        }
    }

    private void initLoadCutData() {
        ArrayList<LocalMedia> arrayList = this.list;
        if (arrayList == null || arrayList.size() == 0) {
            onBackPressed();
            return;
        }
        int size = this.list.size();
        if (this.isWithVideoImage) {
            getIndex(size);
        }
    }

    private void getIndex(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            LocalMedia localMedia = this.list.get(i2);
            if (localMedia != null && PictureMimeType.isHasImage(localMedia.getMimeType())) {
                this.cutIndex = i2;
                return;
            }
        }
    }

    private void changeLayoutParams(boolean z) {
        if (this.mRecyclerView.getLayoutParams() == null) {
            return;
        }
        if (z) {
            ((RelativeLayout.LayoutParams) this.mRecyclerView.getLayoutParams()).addRule(12, 0);
            ((RelativeLayout.LayoutParams) this.mRecyclerView.getLayoutParams()).addRule(2, R.id.wrapper_controls);
        } else {
            ((RelativeLayout.LayoutParams) this.mRecyclerView.getLayoutParams()).addRule(12);
            ((RelativeLayout.LayoutParams) this.mRecyclerView.getLayoutParams()).addRule(2, 0);
        }
    }

    @Override // com.yalantis.ucrop.UCropActivity
    protected void setResultUri(Uri uri, float f, int i, int i2, int i3, int i4) {
        try {
            int size = this.list.size();
            int i5 = this.cutIndex;
            if (size < i5) {
                onBackPressed();
                return;
            }
            LocalMedia localMedia = this.list.get(i5);
            localMedia.setCutPath(uri.getPath());
            localMedia.setCut(true);
            localMedia.setCropResultAspectRatio(f);
            localMedia.setCropOffsetX(i);
            localMedia.setCropOffsetY(i2);
            localMedia.setCropImageWidth(i3);
            localMedia.setCropImageHeight(i4);
            localMedia.setAndroidQToPath(SdkVersionUtils.checkedAndroid_Q() ? localMedia.getCutPath() : localMedia.getAndroidQToPath());
            resetLastCropStatus();
            int i6 = this.cutIndex + 1;
            this.cutIndex = i6;
            if (this.isWithVideoImage && i6 < this.list.size() && PictureMimeType.isHasVideo(this.list.get(this.cutIndex).getMimeType())) {
                while (this.cutIndex < this.list.size() && !PictureMimeType.isHasImage(this.list.get(this.cutIndex).getMimeType())) {
                    this.cutIndex++;
                }
            }
            int i7 = this.cutIndex;
            this.oldCutIndex = i7;
            if (i7 >= this.list.size()) {
                for (int i8 = 0; i8 < this.list.size(); i8++) {
                    LocalMedia localMedia2 = this.list.get(i8);
                    localMedia2.setCut(!TextUtils.isEmpty(localMedia2.getCutPath()));
                }
                setResult(-1, new Intent().putExtra(UCrop.Options.EXTRA_OUTPUT_URI_LIST, this.list));
                onBackPressed();
                return;
            }
            resetCutData();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        PicturePhotoGalleryAdapter picturePhotoGalleryAdapter = this.mAdapter;
        if (picturePhotoGalleryAdapter != null) {
            picturePhotoGalleryAdapter.setOnItemClickListener(null);
        }
        super.onDestroy();
    }
}
