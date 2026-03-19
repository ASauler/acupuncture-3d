package com.luck.picture.lib;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SimpleItemAnimator;
import com.luck.picture.lib.adapter.PictureImageGridAdapter;
import com.luck.picture.lib.animators.AlphaInAnimationAdapter;
import com.luck.picture.lib.animators.SlideInBottomAnimationAdapter;
import com.luck.picture.lib.config.PictureConfig;
import com.luck.picture.lib.config.PictureMimeType;
import com.luck.picture.lib.config.PictureSelectionConfig;
import com.luck.picture.lib.decoration.GridSpacingItemDecoration;
import com.luck.picture.lib.dialog.PhotoItemSelectedDialog;
import com.luck.picture.lib.dialog.PictureCustomDialog;
import com.luck.picture.lib.entity.LocalMedia;
import com.luck.picture.lib.entity.LocalMediaFolder;
import com.luck.picture.lib.entity.MediaExtraInfo;
import com.luck.picture.lib.listener.OnAlbumItemClickListener;
import com.luck.picture.lib.listener.OnItemClickListener;
import com.luck.picture.lib.listener.OnPermissionDialogOptionCallback;
import com.luck.picture.lib.listener.OnPhotoSelectChangedListener;
import com.luck.picture.lib.listener.OnQueryDataResultListener;
import com.luck.picture.lib.listener.OnRecyclerViewPreloadMoreListener;
import com.luck.picture.lib.manager.UCropManager;
import com.luck.picture.lib.model.LocalMediaLoader;
import com.luck.picture.lib.model.LocalMediaPageLoader;
import com.luck.picture.lib.observable.ImagesObservable;
import com.luck.picture.lib.permissions.PermissionChecker;
import com.luck.picture.lib.thread.PictureThreadUtils;
import com.luck.picture.lib.tools.AttrsUtils;
import com.luck.picture.lib.tools.BitmapUtils;
import com.luck.picture.lib.tools.DateUtils;
import com.luck.picture.lib.tools.DoubleUtils;
import com.luck.picture.lib.tools.JumpUtils;
import com.luck.picture.lib.tools.MediaUtils;
import com.luck.picture.lib.tools.PictureFileUtils;
import com.luck.picture.lib.tools.ScreenUtils;
import com.luck.picture.lib.tools.SdkVersionUtils;
import com.luck.picture.lib.tools.StringUtils;
import com.luck.picture.lib.tools.ToastUtils;
import com.luck.picture.lib.tools.ValueOf;
import com.luck.picture.lib.widget.FolderPopWindow;
import com.luck.picture.lib.widget.RecyclerPreloadView;
import com.yalantis.ucrop.UCrop;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import net.lingala.zip4j.util.InternalZipConstants;

/* JADX INFO: loaded from: classes2.dex */
public class PictureSelectorActivity extends PictureBaseActivity implements View.OnClickListener, OnAlbumItemClickListener, OnPhotoSelectChangedListener<LocalMedia>, OnItemClickListener, OnRecyclerViewPreloadMoreListener {
    private static final String TAG = "PictureSelectorActivity";
    private int allFolderSize;
    protected PictureCustomDialog audioDialog;
    protected FolderPopWindow folderWindow;
    protected boolean isEnterSetting;
    protected PictureImageGridAdapter mAdapter;
    protected RelativeLayout mBottomLayout;
    protected CheckBox mCbOriginal;
    protected ImageView mIvArrow;
    protected ImageView mIvPictureLeftBack;
    private int mOpenCameraCount;
    protected RecyclerPreloadView mRecyclerView;
    protected View mTitleBar;
    protected TextView mTvEmpty;
    protected TextView mTvMusicStatus;
    protected TextView mTvMusicTime;
    protected TextView mTvMusicTotal;
    protected TextView mTvPictureImgNum;
    protected TextView mTvPictureOk;
    protected TextView mTvPicturePreview;
    protected TextView mTvPictureRight;
    protected TextView mTvPictureTitle;
    protected TextView mTvPlayPause;
    protected TextView mTvQuit;
    protected TextView mTvStop;
    protected MediaPlayer mediaPlayer;
    protected SeekBar musicSeekBar;
    protected int oldCurrentListSize;
    protected View viewClickMask;
    protected Animation animation = null;
    protected boolean isStartAnimation = false;
    protected boolean isPlayAudio = false;
    private long intervalClickTime = 0;
    public Runnable mRunnable = new Runnable() { // from class: com.luck.picture.lib.PictureSelectorActivity.6
        @Override // java.lang.Runnable
        public void run() {
            try {
                if (PictureSelectorActivity.this.mediaPlayer != null) {
                    PictureSelectorActivity.this.mTvMusicTime.setText(DateUtils.formatDurationTime(PictureSelectorActivity.this.mediaPlayer.getCurrentPosition()));
                    PictureSelectorActivity.this.musicSeekBar.setProgress(PictureSelectorActivity.this.mediaPlayer.getCurrentPosition());
                    PictureSelectorActivity.this.musicSeekBar.setMax(PictureSelectorActivity.this.mediaPlayer.getDuration());
                    PictureSelectorActivity.this.mTvMusicTotal.setText(DateUtils.formatDurationTime(PictureSelectorActivity.this.mediaPlayer.getDuration()));
                    PictureSelectorActivity.this.mHandler.postDelayed(PictureSelectorActivity.this.mRunnable, 200L);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    };

    protected void onChangeData(List<LocalMedia> list) {
    }

    @Override // com.luck.picture.lib.PictureBaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.allFolderSize = bundle.getInt(PictureConfig.EXTRA_ALL_FOLDER_SIZE);
            this.oldCurrentListSize = bundle.getInt(PictureConfig.EXTRA_OLD_CURRENT_LIST_SIZE, 0);
            List<LocalMedia> listObtainSelectorList = PictureSelector.obtainSelectorList(bundle);
            if (listObtainSelectorList == null) {
                listObtainSelectorList = this.selectionMedias;
            }
            this.selectionMedias = listObtainSelectorList;
            PictureImageGridAdapter pictureImageGridAdapter = this.mAdapter;
            if (pictureImageGridAdapter != null) {
                this.isStartAnimation = true;
                pictureImageGridAdapter.bindSelectData(this.selectionMedias);
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        CheckBox checkBox;
        super.onResume();
        if (this.isEnterSetting) {
            if (PermissionChecker.checkSelfPermission(this, "android.permission.WRITE_EXTERNAL_STORAGE")) {
                if (this.mAdapter.isDataEmpty()) {
                    readLocalMedia();
                }
            } else {
                showPermissionsDialog(false, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, getString(R.string.picture_jurisdiction));
            }
            this.isEnterSetting = false;
        }
        if (!this.config.isOriginalControl || (checkBox = this.mCbOriginal) == null) {
            return;
        }
        checkBox.setChecked(this.config.isCheckOriginalImage);
    }

    @Override // com.luck.picture.lib.PictureBaseActivity
    public int getResourceId() {
        return R.layout.picture_selector;
    }

    @Override // com.luck.picture.lib.PictureBaseActivity
    protected void initWidgets() {
        String string;
        super.initWidgets();
        this.container = findViewById(R.id.container);
        this.mTitleBar = findViewById(R.id.titleBar);
        this.mIvPictureLeftBack = (ImageView) findViewById(R.id.pictureLeftBack);
        this.mTvPictureTitle = (TextView) findViewById(R.id.picture_title);
        this.mTvPictureRight = (TextView) findViewById(R.id.picture_right);
        this.mTvPictureOk = (TextView) findViewById(R.id.picture_tv_ok);
        this.mCbOriginal = (CheckBox) findViewById(R.id.cb_original);
        this.mIvArrow = (ImageView) findViewById(R.id.ivArrow);
        this.viewClickMask = findViewById(R.id.viewClickMask);
        this.mTvPicturePreview = (TextView) findViewById(R.id.picture_id_preview);
        this.mTvPictureImgNum = (TextView) findViewById(R.id.tv_media_num);
        this.mRecyclerView = (RecyclerPreloadView) findViewById(R.id.picture_recycler);
        this.mBottomLayout = (RelativeLayout) findViewById(R.id.select_bar_layout);
        this.mTvEmpty = (TextView) findViewById(R.id.tv_empty);
        isNumComplete(this.numComplete);
        if (!this.numComplete) {
            this.animation = AnimationUtils.loadAnimation(this, R.anim.picture_anim_modal_in);
        }
        this.mTvPicturePreview.setOnClickListener(this);
        if (this.config.isAutomaticTitleRecyclerTop) {
            this.mTitleBar.setOnClickListener(this);
        }
        this.mTvPicturePreview.setVisibility((this.config.chooseMode == PictureMimeType.ofAudio() || !this.config.enablePreview) ? 8 : 0);
        this.mBottomLayout.setVisibility((this.config.selectionMode == 1 && this.config.isSingleDirectReturn) ? 8 : 0);
        this.mIvPictureLeftBack.setOnClickListener(this);
        this.mTvPictureRight.setOnClickListener(this);
        this.mTvPictureOk.setOnClickListener(this);
        this.viewClickMask.setOnClickListener(this);
        this.mTvPictureImgNum.setOnClickListener(this);
        this.mTvPictureTitle.setOnClickListener(this);
        this.mIvArrow.setOnClickListener(this);
        this.mTvPictureTitle.setText(getString(this.config.chooseMode == PictureMimeType.ofAudio() ? R.string.picture_all_audio : R.string.picture_camera_roll));
        this.mTvPictureTitle.setTag(R.id.view_tag, -1);
        FolderPopWindow folderPopWindow = new FolderPopWindow(this);
        this.folderWindow = folderPopWindow;
        folderPopWindow.setArrowImageView(this.mIvArrow);
        this.folderWindow.setOnAlbumItemClickListener(this);
        this.mRecyclerView.addItemDecoration(new GridSpacingItemDecoration(this.config.imageSpanCount <= 0 ? 4 : this.config.imageSpanCount, ScreenUtils.dip2px(this, 2.0f), false));
        this.mRecyclerView.setLayoutManager(new GridLayoutManager(getContext(), this.config.imageSpanCount > 0 ? this.config.imageSpanCount : 4));
        if (!this.config.isPageStrategy) {
            this.mRecyclerView.setHasFixedSize(true);
        } else {
            this.mRecyclerView.setReachBottomRow(2);
            this.mRecyclerView.setOnRecyclerViewPreloadListener(this);
        }
        RecyclerView.ItemAnimator itemAnimator = this.mRecyclerView.getItemAnimator();
        if (itemAnimator != null) {
            ((SimpleItemAnimator) itemAnimator).setSupportsChangeAnimations(false);
            this.mRecyclerView.setItemAnimator(null);
        }
        loadAllMediaData();
        TextView textView = this.mTvEmpty;
        if (this.config.chooseMode == PictureMimeType.ofAudio()) {
            string = getString(R.string.picture_audio_empty);
        } else {
            string = getString(R.string.picture_empty);
        }
        textView.setText(string);
        StringUtils.tempTextFont(this.mTvEmpty, this.config.chooseMode);
        PictureImageGridAdapter pictureImageGridAdapter = new PictureImageGridAdapter(getContext(), this.config);
        this.mAdapter = pictureImageGridAdapter;
        pictureImageGridAdapter.setOnPhotoSelectChangedListener(this);
        int i = this.config.animationMode;
        if (i == 1) {
            this.mRecyclerView.setAdapter(new AlphaInAnimationAdapter(this.mAdapter));
        } else if (i == 2) {
            this.mRecyclerView.setAdapter(new SlideInBottomAnimationAdapter(this.mAdapter));
        } else {
            this.mRecyclerView.setAdapter(this.mAdapter);
        }
        if (this.config.isOriginalControl) {
            this.mCbOriginal.setVisibility(0);
            this.mCbOriginal.setChecked(this.config.isCheckOriginalImage);
            this.mCbOriginal.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.luck.picture.lib.PictureSelectorActivity$$ExternalSyntheticLambda4
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    this.f$0.m772xa81162db(compoundButton, z);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$initWidgets$0$com-luck-picture-lib-PictureSelectorActivity, reason: not valid java name */
    /* synthetic */ void m772xa81162db(CompoundButton compoundButton, boolean z) {
        this.config.isCheckOriginalImage = z;
    }

    @Override // com.luck.picture.lib.listener.OnRecyclerViewPreloadMoreListener
    public void onRecyclerViewPreloadMore() {
        loadMoreData();
    }

    private int getPageLimit() {
        if (ValueOf.toInt(this.mTvPictureTitle.getTag(R.id.view_tag)) == -1) {
            int i = this.mOpenCameraCount > 0 ? this.config.pageSize - this.mOpenCameraCount : this.config.pageSize;
            this.mOpenCameraCount = 0;
            return i;
        }
        return this.config.pageSize;
    }

    private void loadMoreData() {
        if (this.mAdapter == null || !this.isHasMore) {
            return;
        }
        this.mPage++;
        final long j = ValueOf.toLong(this.mTvPictureTitle.getTag(R.id.view_tag));
        LocalMediaPageLoader.getInstance(getContext()).loadPageMediaData(j, this.mPage, getPageLimit(), new OnQueryDataResultListener() { // from class: com.luck.picture.lib.PictureSelectorActivity$$ExternalSyntheticLambda6
            @Override // com.luck.picture.lib.listener.OnQueryDataResultListener
            public final void onComplete(List list, int i, boolean z) {
                this.f$0.m773x20c6f93a(j, list, i, z);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$loadMoreData$1$com-luck-picture-lib-PictureSelectorActivity, reason: not valid java name */
    /* synthetic */ void m773x20c6f93a(long j, List list, int i, boolean z) {
        if (isFinishing()) {
            return;
        }
        this.isHasMore = z;
        if (z) {
            hideDataNull();
            int size = list.size();
            if (size > 0) {
                int size2 = this.mAdapter.getSize();
                this.mAdapter.getData().addAll(list);
                this.mAdapter.notifyItemRangeChanged(size2, this.mAdapter.getItemCount());
            } else {
                onRecyclerViewPreloadMore();
            }
            if (size < 10) {
                RecyclerPreloadView recyclerPreloadView = this.mRecyclerView;
                recyclerPreloadView.onScrolled(recyclerPreloadView.getScrollX(), this.mRecyclerView.getScrollY());
                return;
            }
            return;
        }
        if (this.mAdapter.isDataEmpty()) {
            showDataNull(getString(j == -1 ? R.string.picture_empty : R.string.picture_data_null), R.drawable.picture_icon_no_data);
        }
    }

    private void loadAllMediaData() {
        if (PermissionChecker.checkSelfPermission(this, "android.permission.READ_EXTERNAL_STORAGE")) {
            readLocalMedia();
        } else {
            PermissionChecker.requestPermissions(this, new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 1);
        }
    }

    @Override // com.luck.picture.lib.PictureBaseActivity
    public void initPictureSelectorStyle() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        if (PictureSelectionConfig.uiStyle != null) {
            if (PictureSelectionConfig.uiStyle.picture_top_titleArrowDownDrawable != 0) {
                this.mIvArrow.setImageDrawable(ContextCompat.getDrawable(this, PictureSelectionConfig.uiStyle.picture_top_titleArrowDownDrawable));
            }
            if (PictureSelectionConfig.uiStyle.picture_top_titleTextColor != 0) {
                this.mTvPictureTitle.setTextColor(PictureSelectionConfig.uiStyle.picture_top_titleTextColor);
            }
            if (PictureSelectionConfig.uiStyle.picture_top_titleTextSize != 0) {
                this.mTvPictureTitle.setTextSize(PictureSelectionConfig.uiStyle.picture_top_titleTextSize);
            }
            if (PictureSelectionConfig.uiStyle.picture_top_titleRightTextColor.length > 0 && (colorStateList3 = AttrsUtils.getColorStateList(PictureSelectionConfig.uiStyle.picture_top_titleRightTextColor)) != null) {
                this.mTvPictureRight.setTextColor(colorStateList3);
            }
            if (PictureSelectionConfig.uiStyle.picture_top_titleRightTextSize != 0) {
                this.mTvPictureRight.setTextSize(PictureSelectionConfig.uiStyle.picture_top_titleRightTextSize);
            }
            if (PictureSelectionConfig.uiStyle.picture_top_leftBack != 0) {
                this.mIvPictureLeftBack.setImageResource(PictureSelectionConfig.uiStyle.picture_top_leftBack);
            }
            if (PictureSelectionConfig.uiStyle.picture_bottom_previewTextColor.length > 0 && (colorStateList2 = AttrsUtils.getColorStateList(PictureSelectionConfig.uiStyle.picture_bottom_previewTextColor)) != null) {
                this.mTvPicturePreview.setTextColor(colorStateList2);
            }
            if (PictureSelectionConfig.uiStyle.picture_bottom_previewTextSize != 0) {
                this.mTvPicturePreview.setTextSize(PictureSelectionConfig.uiStyle.picture_bottom_previewTextSize);
            }
            if (PictureSelectionConfig.uiStyle.picture_bottom_completeRedDotBackground != 0) {
                this.mTvPictureImgNum.setBackgroundResource(PictureSelectionConfig.uiStyle.picture_bottom_completeRedDotBackground);
            }
            if (PictureSelectionConfig.uiStyle.picture_bottom_completeRedDotTextSize != 0) {
                this.mTvPictureImgNum.setTextSize(PictureSelectionConfig.uiStyle.picture_bottom_completeRedDotTextSize);
            }
            if (PictureSelectionConfig.uiStyle.picture_bottom_completeRedDotTextColor != 0) {
                this.mTvPictureImgNum.setTextColor(PictureSelectionConfig.uiStyle.picture_bottom_completeRedDotTextColor);
            }
            if (PictureSelectionConfig.uiStyle.picture_bottom_completeTextColor.length > 0 && (colorStateList = AttrsUtils.getColorStateList(PictureSelectionConfig.uiStyle.picture_bottom_completeTextColor)) != null) {
                this.mTvPictureOk.setTextColor(colorStateList);
            }
            if (PictureSelectionConfig.uiStyle.picture_bottom_completeTextSize != 0) {
                this.mTvPictureOk.setTextSize(PictureSelectionConfig.uiStyle.picture_bottom_completeTextSize);
            }
            if (PictureSelectionConfig.uiStyle.picture_bottom_barBackgroundColor != 0) {
                this.mBottomLayout.setBackgroundColor(PictureSelectionConfig.uiStyle.picture_bottom_barBackgroundColor);
            }
            if (PictureSelectionConfig.uiStyle.picture_container_backgroundColor != 0) {
                this.container.setBackgroundColor(PictureSelectionConfig.uiStyle.picture_container_backgroundColor);
            }
            if (PictureSelectionConfig.uiStyle.picture_top_titleRightDefaultText != 0) {
                this.mTvPictureRight.setText(PictureSelectionConfig.uiStyle.picture_top_titleRightDefaultText);
            }
            if (PictureSelectionConfig.uiStyle.picture_bottom_completeDefaultText != 0) {
                this.mTvPictureOk.setText(PictureSelectionConfig.uiStyle.picture_bottom_completeDefaultText);
            }
            if (PictureSelectionConfig.uiStyle.picture_bottom_previewNormalText != 0) {
                this.mTvPicturePreview.setText(PictureSelectionConfig.uiStyle.picture_bottom_previewNormalText);
            }
            if (PictureSelectionConfig.uiStyle.picture_top_titleArrowLeftPadding != 0) {
                ((RelativeLayout.LayoutParams) this.mIvArrow.getLayoutParams()).leftMargin = PictureSelectionConfig.uiStyle.picture_top_titleArrowLeftPadding;
            }
            if (PictureSelectionConfig.uiStyle.picture_top_titleBarHeight > 0) {
                this.mTitleBar.getLayoutParams().height = PictureSelectionConfig.uiStyle.picture_top_titleBarHeight;
            }
            if (PictureSelectionConfig.uiStyle.picture_bottom_barHeight > 0) {
                this.mBottomLayout.getLayoutParams().height = PictureSelectionConfig.uiStyle.picture_bottom_barHeight;
            }
            if (this.config.isOriginalControl) {
                if (PictureSelectionConfig.uiStyle.picture_bottom_originalPictureCheckStyle != 0) {
                    this.mCbOriginal.setButtonDrawable(PictureSelectionConfig.uiStyle.picture_bottom_originalPictureCheckStyle);
                } else {
                    this.mCbOriginal.setButtonDrawable(ContextCompat.getDrawable(this, R.drawable.picture_original_checkbox));
                }
                if (PictureSelectionConfig.uiStyle.picture_bottom_originalPictureTextColor != 0) {
                    this.mCbOriginal.setTextColor(PictureSelectionConfig.uiStyle.picture_bottom_originalPictureTextColor);
                } else {
                    this.mCbOriginal.setTextColor(ContextCompat.getColor(this, R.color.picture_color_white));
                }
                if (PictureSelectionConfig.uiStyle.picture_bottom_originalPictureTextSize != 0) {
                    this.mCbOriginal.setTextSize(PictureSelectionConfig.uiStyle.picture_bottom_originalPictureTextSize);
                }
                if (PictureSelectionConfig.uiStyle.picture_bottom_originalPictureText != 0) {
                    this.mCbOriginal.setText(PictureSelectionConfig.uiStyle.picture_bottom_originalPictureText);
                }
            } else {
                this.mCbOriginal.setButtonDrawable(ContextCompat.getDrawable(this, R.drawable.picture_original_checkbox));
                this.mCbOriginal.setTextColor(ContextCompat.getColor(this, R.color.picture_color_white));
            }
        } else if (PictureSelectionConfig.style != null) {
            if (PictureSelectionConfig.style.pictureTitleDownResId != 0) {
                this.mIvArrow.setImageDrawable(ContextCompat.getDrawable(this, PictureSelectionConfig.style.pictureTitleDownResId));
            }
            if (PictureSelectionConfig.style.pictureTitleTextColor != 0) {
                this.mTvPictureTitle.setTextColor(PictureSelectionConfig.style.pictureTitleTextColor);
            }
            if (PictureSelectionConfig.style.pictureTitleTextSize != 0) {
                this.mTvPictureTitle.setTextSize(PictureSelectionConfig.style.pictureTitleTextSize);
            }
            if (PictureSelectionConfig.style.pictureRightDefaultTextColor != 0) {
                this.mTvPictureRight.setTextColor(PictureSelectionConfig.style.pictureRightDefaultTextColor);
            } else if (PictureSelectionConfig.style.pictureCancelTextColor != 0) {
                this.mTvPictureRight.setTextColor(PictureSelectionConfig.style.pictureCancelTextColor);
            }
            if (PictureSelectionConfig.style.pictureRightTextSize != 0) {
                this.mTvPictureRight.setTextSize(PictureSelectionConfig.style.pictureRightTextSize);
            }
            if (PictureSelectionConfig.style.pictureLeftBackIcon != 0) {
                this.mIvPictureLeftBack.setImageResource(PictureSelectionConfig.style.pictureLeftBackIcon);
            }
            if (PictureSelectionConfig.style.pictureUnPreviewTextColor != 0) {
                this.mTvPicturePreview.setTextColor(PictureSelectionConfig.style.pictureUnPreviewTextColor);
            }
            if (PictureSelectionConfig.style.picturePreviewTextSize != 0) {
                this.mTvPicturePreview.setTextSize(PictureSelectionConfig.style.picturePreviewTextSize);
            }
            if (PictureSelectionConfig.style.pictureCheckNumBgStyle != 0) {
                this.mTvPictureImgNum.setBackgroundResource(PictureSelectionConfig.style.pictureCheckNumBgStyle);
            }
            if (PictureSelectionConfig.style.pictureUnCompleteTextColor != 0) {
                this.mTvPictureOk.setTextColor(PictureSelectionConfig.style.pictureUnCompleteTextColor);
            }
            if (PictureSelectionConfig.style.pictureCompleteTextSize != 0) {
                this.mTvPictureOk.setTextSize(PictureSelectionConfig.style.pictureCompleteTextSize);
            }
            if (PictureSelectionConfig.style.pictureBottomBgColor != 0) {
                this.mBottomLayout.setBackgroundColor(PictureSelectionConfig.style.pictureBottomBgColor);
            }
            if (PictureSelectionConfig.style.pictureContainerBackgroundColor != 0) {
                this.container.setBackgroundColor(PictureSelectionConfig.style.pictureContainerBackgroundColor);
            }
            if (!TextUtils.isEmpty(PictureSelectionConfig.style.pictureRightDefaultText)) {
                this.mTvPictureRight.setText(PictureSelectionConfig.style.pictureRightDefaultText);
            }
            if (!TextUtils.isEmpty(PictureSelectionConfig.style.pictureUnCompleteText)) {
                this.mTvPictureOk.setText(PictureSelectionConfig.style.pictureUnCompleteText);
            }
            if (!TextUtils.isEmpty(PictureSelectionConfig.style.pictureUnPreviewText)) {
                this.mTvPicturePreview.setText(PictureSelectionConfig.style.pictureUnPreviewText);
            }
            if (PictureSelectionConfig.style.pictureTitleRightArrowLeftPadding != 0) {
                ((RelativeLayout.LayoutParams) this.mIvArrow.getLayoutParams()).leftMargin = PictureSelectionConfig.style.pictureTitleRightArrowLeftPadding;
            }
            if (PictureSelectionConfig.style.pictureTitleBarHeight > 0) {
                this.mTitleBar.getLayoutParams().height = PictureSelectionConfig.style.pictureTitleBarHeight;
            }
            if (this.config.isOriginalControl) {
                if (PictureSelectionConfig.style.pictureOriginalControlStyle != 0) {
                    this.mCbOriginal.setButtonDrawable(PictureSelectionConfig.style.pictureOriginalControlStyle);
                } else {
                    this.mCbOriginal.setButtonDrawable(ContextCompat.getDrawable(this, R.drawable.picture_original_checkbox));
                }
                if (PictureSelectionConfig.style.pictureOriginalFontColor != 0) {
                    this.mCbOriginal.setTextColor(PictureSelectionConfig.style.pictureOriginalFontColor);
                } else {
                    this.mCbOriginal.setTextColor(ContextCompat.getColor(this, R.color.picture_color_white));
                }
                if (PictureSelectionConfig.style.pictureOriginalTextSize != 0) {
                    this.mCbOriginal.setTextSize(PictureSelectionConfig.style.pictureOriginalTextSize);
                }
            } else {
                this.mCbOriginal.setButtonDrawable(ContextCompat.getDrawable(this, R.drawable.picture_original_checkbox));
                this.mCbOriginal.setTextColor(ContextCompat.getColor(this, R.color.picture_color_white));
            }
        } else {
            int typeValueColor = AttrsUtils.getTypeValueColor(getContext(), R.attr.picture_title_textColor);
            if (typeValueColor != 0) {
                this.mTvPictureTitle.setTextColor(typeValueColor);
            }
            int typeValueColor2 = AttrsUtils.getTypeValueColor(getContext(), R.attr.picture_right_textColor);
            if (typeValueColor2 != 0) {
                this.mTvPictureRight.setTextColor(typeValueColor2);
            }
            int typeValueColor3 = AttrsUtils.getTypeValueColor(getContext(), R.attr.picture_container_backgroundColor);
            if (typeValueColor3 != 0) {
                this.container.setBackgroundColor(typeValueColor3);
            }
            this.mIvPictureLeftBack.setImageDrawable(AttrsUtils.getTypeValueDrawable(getContext(), R.attr.picture_leftBack_icon, R.drawable.picture_icon_back));
            if (this.config.downResId != 0) {
                this.mIvArrow.setImageDrawable(ContextCompat.getDrawable(this, this.config.downResId));
            } else {
                this.mIvArrow.setImageDrawable(AttrsUtils.getTypeValueDrawable(getContext(), R.attr.picture_arrow_down_icon, R.drawable.picture_icon_arrow_down));
            }
            int typeValueColor4 = AttrsUtils.getTypeValueColor(getContext(), R.attr.picture_bottom_bg);
            if (typeValueColor4 != 0) {
                this.mBottomLayout.setBackgroundColor(typeValueColor4);
            }
            ColorStateList typeValueColorStateList = AttrsUtils.getTypeValueColorStateList(getContext(), R.attr.picture_complete_textColor);
            if (typeValueColorStateList != null) {
                this.mTvPictureOk.setTextColor(typeValueColorStateList);
            }
            ColorStateList typeValueColorStateList2 = AttrsUtils.getTypeValueColorStateList(getContext(), R.attr.picture_preview_textColor);
            if (typeValueColorStateList2 != null) {
                this.mTvPicturePreview.setTextColor(typeValueColorStateList2);
            }
            int typeValueSizeForInt = AttrsUtils.getTypeValueSizeForInt(getContext(), R.attr.picture_titleRightArrow_LeftPadding);
            if (typeValueSizeForInt != 0) {
                ((RelativeLayout.LayoutParams) this.mIvArrow.getLayoutParams()).leftMargin = typeValueSizeForInt;
            }
            this.mTvPictureImgNum.setBackground(AttrsUtils.getTypeValueDrawable(getContext(), R.attr.picture_num_style, R.drawable.picture_num_oval));
            int typeValueSizeForInt2 = AttrsUtils.getTypeValueSizeForInt(getContext(), R.attr.picture_titleBar_height);
            if (typeValueSizeForInt2 > 0) {
                this.mTitleBar.getLayoutParams().height = typeValueSizeForInt2;
            }
            if (this.config.isOriginalControl) {
                this.mCbOriginal.setButtonDrawable(AttrsUtils.getTypeValueDrawable(getContext(), R.attr.picture_original_check_style, R.drawable.picture_original_wechat_checkbox));
                int typeValueColor5 = AttrsUtils.getTypeValueColor(getContext(), R.attr.picture_original_text_color);
                if (typeValueColor5 != 0) {
                    this.mCbOriginal.setTextColor(typeValueColor5);
                }
            }
        }
        this.mTitleBar.setBackgroundColor(this.colorPrimary);
        this.mAdapter.bindSelectData(this.selectionMedias);
    }

    @Override // com.luck.picture.lib.PictureBaseActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        PictureImageGridAdapter pictureImageGridAdapter = this.mAdapter;
        if (pictureImageGridAdapter != null) {
            bundle.putInt(PictureConfig.EXTRA_OLD_CURRENT_LIST_SIZE, pictureImageGridAdapter.getSize());
            if (this.folderWindow.getFolderData().size() > 0) {
                bundle.putInt(PictureConfig.EXTRA_ALL_FOLDER_SIZE, this.folderWindow.getFolder(0).getImageNum());
            }
            if (this.mAdapter.getSelectedData() != null) {
                PictureSelector.saveSelectorList(bundle, this.mAdapter.getSelectedData());
            }
        }
    }

    private void isNumComplete(boolean z) {
        if (z) {
            initCompleteText(0);
        }
    }

    @Override // com.luck.picture.lib.PictureBaseActivity
    protected void initCompleteText(int i) {
        String string;
        String string2;
        String string3;
        if (this.config.selectionMode == 1) {
            if (i <= 0) {
                if (PictureSelectionConfig.uiStyle != null) {
                    if (PictureSelectionConfig.uiStyle.isCompleteReplaceNum) {
                        this.mTvPictureOk.setText(PictureSelectionConfig.uiStyle.picture_bottom_completeDefaultText != 0 ? String.format(getString(PictureSelectionConfig.uiStyle.picture_bottom_completeDefaultText), Integer.valueOf(i), 1) : getString(R.string.picture_please_select));
                        return;
                    } else {
                        this.mTvPictureOk.setText(getString(PictureSelectionConfig.uiStyle.picture_bottom_completeDefaultText != 0 ? PictureSelectionConfig.uiStyle.picture_bottom_completeDefaultText : R.string.picture_please_select));
                        return;
                    }
                }
                if (PictureSelectionConfig.style != null) {
                    if (!PictureSelectionConfig.style.isCompleteReplaceNum || TextUtils.isEmpty(PictureSelectionConfig.style.pictureUnCompleteText)) {
                        this.mTvPictureOk.setText(!TextUtils.isEmpty(PictureSelectionConfig.style.pictureUnCompleteText) ? PictureSelectionConfig.style.pictureUnCompleteText : getString(R.string.picture_done));
                        return;
                    } else {
                        this.mTvPictureOk.setText(String.format(PictureSelectionConfig.style.pictureUnCompleteText, Integer.valueOf(i), 1));
                        return;
                    }
                }
                return;
            }
            if (PictureSelectionConfig.uiStyle != null) {
                if (PictureSelectionConfig.uiStyle.isCompleteReplaceNum) {
                    this.mTvPictureOk.setText(PictureSelectionConfig.uiStyle.picture_bottom_completeNormalText != 0 ? String.format(getString(PictureSelectionConfig.uiStyle.picture_bottom_completeNormalText), Integer.valueOf(i), 1) : getString(R.string.picture_done));
                    return;
                } else {
                    this.mTvPictureOk.setText(getString(PictureSelectionConfig.uiStyle.picture_bottom_completeNormalText != 0 ? PictureSelectionConfig.uiStyle.picture_bottom_completeNormalText : R.string.picture_done));
                    return;
                }
            }
            if (PictureSelectionConfig.style != null) {
                if (PictureSelectionConfig.style.isCompleteReplaceNum && !TextUtils.isEmpty(PictureSelectionConfig.style.pictureCompleteText)) {
                    this.mTvPictureOk.setText(String.format(PictureSelectionConfig.style.pictureCompleteText, Integer.valueOf(i), 1));
                    return;
                } else {
                    this.mTvPictureOk.setText(!TextUtils.isEmpty(PictureSelectionConfig.style.pictureCompleteText) ? PictureSelectionConfig.style.pictureCompleteText : getString(R.string.picture_done));
                    return;
                }
            }
            return;
        }
        if (i <= 0) {
            if (PictureSelectionConfig.uiStyle != null) {
                if (PictureSelectionConfig.uiStyle.isCompleteReplaceNum) {
                    TextView textView = this.mTvPictureOk;
                    if (PictureSelectionConfig.uiStyle.picture_bottom_completeDefaultText != 0) {
                        string3 = String.format(getString(PictureSelectionConfig.uiStyle.picture_bottom_completeDefaultText), Integer.valueOf(i), Integer.valueOf(this.config.maxSelectNum));
                    } else {
                        string3 = getString(R.string.picture_done_front_num, new Object[]{Integer.valueOf(i), Integer.valueOf(this.config.maxSelectNum)});
                    }
                    textView.setText(string3);
                    return;
                }
                TextView textView2 = this.mTvPictureOk;
                if (PictureSelectionConfig.uiStyle.picture_bottom_completeDefaultText != 0) {
                    string2 = getString(PictureSelectionConfig.uiStyle.picture_bottom_completeDefaultText);
                } else {
                    string2 = getString(R.string.picture_done_front_num, new Object[]{Integer.valueOf(i), Integer.valueOf(this.config.maxSelectNum)});
                }
                textView2.setText(string2);
                return;
            }
            if (PictureSelectionConfig.style != null) {
                if (PictureSelectionConfig.style.isCompleteReplaceNum) {
                    TextView textView3 = this.mTvPictureOk;
                    if (!TextUtils.isEmpty(PictureSelectionConfig.style.pictureUnCompleteText)) {
                        string = String.format(PictureSelectionConfig.style.pictureUnCompleteText, Integer.valueOf(i), Integer.valueOf(this.config.maxSelectNum));
                    } else {
                        string = getString(R.string.picture_done_front_num, new Object[]{Integer.valueOf(i), Integer.valueOf(this.config.maxSelectNum)});
                    }
                    textView3.setText(string);
                    return;
                }
                this.mTvPictureOk.setText(!TextUtils.isEmpty(PictureSelectionConfig.style.pictureUnCompleteText) ? PictureSelectionConfig.style.pictureUnCompleteText : getString(R.string.picture_done_front_num, new Object[]{Integer.valueOf(i), Integer.valueOf(this.config.maxSelectNum)}));
                return;
            }
            return;
        }
        if (PictureSelectionConfig.uiStyle != null) {
            if (PictureSelectionConfig.uiStyle.isCompleteReplaceNum) {
                if (PictureSelectionConfig.uiStyle.picture_bottom_completeNormalText != 0) {
                    this.mTvPictureOk.setText(String.format(getString(PictureSelectionConfig.uiStyle.picture_bottom_completeNormalText), Integer.valueOf(i), Integer.valueOf(this.config.maxSelectNum)));
                    return;
                } else {
                    this.mTvPictureOk.setText(getString(R.string.picture_done_front_num, new Object[]{Integer.valueOf(i), Integer.valueOf(this.config.maxSelectNum)}));
                    return;
                }
            }
            if (PictureSelectionConfig.uiStyle.picture_bottom_completeNormalText != 0) {
                this.mTvPictureOk.setText(getString(PictureSelectionConfig.uiStyle.picture_bottom_completeNormalText));
                return;
            } else {
                this.mTvPictureOk.setText(getString(R.string.picture_done_front_num, new Object[]{Integer.valueOf(i), Integer.valueOf(this.config.maxSelectNum)}));
                return;
            }
        }
        if (PictureSelectionConfig.style != null) {
            if (PictureSelectionConfig.style.isCompleteReplaceNum) {
                if (!TextUtils.isEmpty(PictureSelectionConfig.style.pictureCompleteText)) {
                    this.mTvPictureOk.setText(String.format(PictureSelectionConfig.style.pictureCompleteText, Integer.valueOf(i), Integer.valueOf(this.config.maxSelectNum)));
                    return;
                } else {
                    this.mTvPictureOk.setText(getString(R.string.picture_done_front_num, new Object[]{Integer.valueOf(i), Integer.valueOf(this.config.maxSelectNum)}));
                    return;
                }
            }
            if (!TextUtils.isEmpty(PictureSelectionConfig.style.pictureCompleteText)) {
                this.mTvPictureOk.setText(PictureSelectionConfig.style.pictureCompleteText);
            } else {
                this.mTvPictureOk.setText(getString(R.string.picture_done_front_num, new Object[]{Integer.valueOf(i), Integer.valueOf(this.config.maxSelectNum)}));
            }
        }
    }

    protected void readLocalMedia() {
        showPleaseDialog();
        if (this.config.isPageStrategy) {
            LocalMediaPageLoader.getInstance(getContext()).loadAllMedia(new OnQueryDataResultListener() { // from class: com.luck.picture.lib.PictureSelectorActivity$$ExternalSyntheticLambda5
                @Override // com.luck.picture.lib.listener.OnQueryDataResultListener
                public final void onComplete(List list, int i, boolean z) {
                    this.f$0.m775x8e58970f(list, i, z);
                }
            });
        } else {
            PictureThreadUtils.executeByIo(new PictureThreadUtils.SimpleTask<List<LocalMediaFolder>>() { // from class: com.luck.picture.lib.PictureSelectorActivity.1
                @Override // com.luck.picture.lib.thread.PictureThreadUtils.Task
                public List<LocalMediaFolder> doInBackground() {
                    return new LocalMediaLoader(PictureSelectorActivity.this.getContext()).loadAllMedia();
                }

                @Override // com.luck.picture.lib.thread.PictureThreadUtils.Task
                public void onSuccess(List<LocalMediaFolder> list) {
                    PictureThreadUtils.cancel(PictureThreadUtils.getIoPool());
                    PictureSelectorActivity.this.initStandardModel(list);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$readLocalMedia$2$com-luck-picture-lib-PictureSelectorActivity, reason: not valid java name */
    /* synthetic */ void m775x8e58970f(List list, int i, boolean z) {
        if (isFinishing()) {
            return;
        }
        this.isHasMore = true;
        initPageModel(list);
        if (this.config.isSyncCover) {
            synchronousCover();
        }
    }

    private void initPageModel(List<LocalMediaFolder> list) {
        this.folderWindow.bindFolder(list);
        this.mPage = 1;
        LocalMediaFolder folder = this.folderWindow.getFolder(0);
        this.mTvPictureTitle.setTag(R.id.view_count_tag, Integer.valueOf(folder != null ? folder.getImageNum() : 0));
        this.mTvPictureTitle.setTag(R.id.view_index_tag, 0);
        long bucketId = folder != null ? folder.getBucketId() : -1L;
        this.mRecyclerView.setEnabledLoadMore(true);
        LocalMediaPageLoader.getInstance(getContext()).loadPageMediaData(bucketId, this.mPage, new OnQueryDataResultListener() { // from class: com.luck.picture.lib.PictureSelectorActivity$$ExternalSyntheticLambda3
            @Override // com.luck.picture.lib.listener.OnQueryDataResultListener
            public final void onComplete(List list2, int i, boolean z) {
                this.f$0.m771x728889ed(list2, i, z);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$initPageModel$3$com-luck-picture-lib-PictureSelectorActivity, reason: not valid java name */
    /* synthetic */ void m771x728889ed(List list, int i, boolean z) {
        if (isFinishing()) {
            return;
        }
        dismissDialog();
        if (this.mAdapter != null) {
            this.isHasMore = true;
            if (z && list.size() == 0) {
                onRecyclerViewPreloadMore();
                return;
            }
            int size = this.mAdapter.getSize();
            int size2 = list.size();
            int i2 = this.oldCurrentListSize + size;
            this.oldCurrentListSize = i2;
            if (size2 >= size) {
                if (size <= 0 || size >= size2 || i2 == size2 || isLocalMediaSame((LocalMedia) list.get(0))) {
                    this.mAdapter.bindData(list);
                } else {
                    this.mAdapter.getData().addAll(list);
                }
            }
            if (this.mAdapter.isDataEmpty()) {
                showDataNull(getString(R.string.picture_empty), R.drawable.picture_icon_no_data);
            } else {
                hideDataNull();
            }
        }
    }

    private void synchronousCover() {
        if (this.config.chooseMode == PictureMimeType.ofAll()) {
            PictureThreadUtils.executeByIo(new PictureThreadUtils.SimpleTask<Boolean>() { // from class: com.luck.picture.lib.PictureSelectorActivity.2
                @Override // com.luck.picture.lib.thread.PictureThreadUtils.Task
                public Boolean doInBackground() throws Throwable {
                    List<LocalMediaFolder> folderData = PictureSelectorActivity.this.folderWindow.getFolderData();
                    for (int i = 0; i < folderData.size(); i++) {
                        LocalMediaFolder localMediaFolder = folderData.get(i);
                        if (localMediaFolder != null) {
                            String firstCover = LocalMediaPageLoader.getInstance(PictureSelectorActivity.this.getContext()).getFirstCover(localMediaFolder.getBucketId());
                            if (!TextUtils.isEmpty(firstCover)) {
                                localMediaFolder.setFirstImagePath(firstCover);
                            }
                        }
                    }
                    return true;
                }

                @Override // com.luck.picture.lib.thread.PictureThreadUtils.Task
                public void onSuccess(Boolean bool) {
                    PictureThreadUtils.cancel(PictureThreadUtils.getIoPool());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initStandardModel(List<LocalMediaFolder> list) {
        if (list != null) {
            if (list.size() > 0) {
                this.folderWindow.bindFolder(list);
                LocalMediaFolder localMediaFolder = list.get(0);
                localMediaFolder.setChecked(true);
                this.mTvPictureTitle.setTag(R.id.view_count_tag, Integer.valueOf(localMediaFolder.getImageNum()));
                List<LocalMedia> data = localMediaFolder.getData();
                PictureImageGridAdapter pictureImageGridAdapter = this.mAdapter;
                if (pictureImageGridAdapter != null) {
                    int size = pictureImageGridAdapter.getSize();
                    int size2 = data.size();
                    int i = this.oldCurrentListSize + size;
                    this.oldCurrentListSize = i;
                    if (size2 >= size) {
                        if (size > 0 && size < size2 && i != size2) {
                            this.mAdapter.getData().addAll(data);
                            LocalMedia localMedia = this.mAdapter.getData().get(0);
                            localMediaFolder.setFirstImagePath(localMedia.getPath());
                            localMediaFolder.getData().add(0, localMedia);
                            localMediaFolder.setCheckedNum(1);
                            localMediaFolder.setImageNum(localMediaFolder.getImageNum() + 1);
                            updateMediaFolder(this.folderWindow.getFolderData(), localMedia);
                        } else {
                            this.mAdapter.bindData(data);
                        }
                    }
                    if (this.mAdapter.isDataEmpty()) {
                        showDataNull(getString(R.string.picture_empty), R.drawable.picture_icon_no_data);
                    } else {
                        hideDataNull();
                    }
                }
            } else {
                showDataNull(getString(R.string.picture_empty), R.drawable.picture_icon_no_data);
            }
        } else {
            showDataNull(getString(R.string.picture_data_exception), R.drawable.picture_icon_data_error);
        }
        dismissDialog();
    }

    private boolean isLocalMediaSame(LocalMedia localMedia) {
        LocalMedia item = this.mAdapter.getItem(0);
        if (item != null && localMedia != null) {
            if (item.getPath().equals(localMedia.getPath())) {
                return true;
            }
            if (PictureMimeType.isContent(localMedia.getPath()) && PictureMimeType.isContent(item.getPath()) && !TextUtils.isEmpty(localMedia.getPath()) && !TextUtils.isEmpty(item.getPath())) {
                return localMedia.getPath().substring(localMedia.getPath().lastIndexOf(InternalZipConstants.ZIP_FILE_SEPARATOR) + 1).equals(item.getPath().substring(item.getPath().lastIndexOf(InternalZipConstants.ZIP_FILE_SEPARATOR) + 1));
            }
        }
        return false;
    }

    public void startCamera() {
        if (DoubleUtils.isFastDoubleClick()) {
            return;
        }
        if (PictureSelectionConfig.onCustomCameraInterfaceListener != null) {
            if (this.config.chooseMode == 0) {
                PhotoItemSelectedDialog photoItemSelectedDialogNewInstance = PhotoItemSelectedDialog.newInstance();
                photoItemSelectedDialogNewInstance.setOnItemClickListener(this);
                photoItemSelectedDialogNewInstance.show(getSupportFragmentManager(), "PhotoItemSelectedDialog");
                return;
            } else {
                PictureSelectionConfig.onCustomCameraInterfaceListener.onCameraClick(getContext(), this.config, this.config.chooseMode);
                this.config.cameraMimeType = this.config.chooseMode;
                return;
            }
        }
        if (this.config.chooseMode != PictureMimeType.ofAudio() && this.config.isUseCustomCamera) {
            startCustomCamera();
            return;
        }
        int i = this.config.chooseMode;
        if (i == 0) {
            PhotoItemSelectedDialog photoItemSelectedDialogNewInstance2 = PhotoItemSelectedDialog.newInstance();
            photoItemSelectedDialogNewInstance2.setOnItemClickListener(this);
            photoItemSelectedDialogNewInstance2.show(getSupportFragmentManager(), "PhotoItemSelectedDialog");
        } else if (i == 1) {
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

    private void startCustomCamera() {
        startActivityForResult(new Intent(this, (Class<?>) PictureCustomCameraActivity.class), PictureConfig.REQUEST_CAMERA);
        overridePendingTransition(PictureSelectionConfig.windowAnimationStyle.activityEnterAnimation, R.anim.picture_anim_fade_in);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.pictureLeftBack || id == R.id.picture_right) {
            FolderPopWindow folderPopWindow = this.folderWindow;
            if (folderPopWindow != null && folderPopWindow.isShowing()) {
                this.folderWindow.dismiss();
                return;
            } else {
                onBackPressed();
                return;
            }
        }
        if (id == R.id.picture_title || id == R.id.ivArrow || id == R.id.viewClickMask) {
            if (this.folderWindow.isShowing()) {
                this.folderWindow.dismiss();
                return;
            }
            if (this.folderWindow.isEmpty()) {
                return;
            }
            this.folderWindow.showAsDropDown(this.mTitleBar);
            if (this.config.isSingleDirectReturn) {
                return;
            }
            this.folderWindow.updateFolderCheckStatus(this.mAdapter.getSelectedData());
            return;
        }
        if (id == R.id.picture_id_preview) {
            onPreview();
            return;
        }
        if (id == R.id.picture_tv_ok || id == R.id.tv_media_num) {
            onComplete();
            return;
        }
        if (id == R.id.titleBar && this.config.isAutomaticTitleRecyclerTop) {
            if (SystemClock.uptimeMillis() - this.intervalClickTime < 500) {
                if (this.mAdapter.getItemCount() > 0) {
                    this.mRecyclerView.scrollToPosition(0);
                    return;
                }
                return;
            }
            this.intervalClickTime = SystemClock.uptimeMillis();
        }
    }

    private void onPreview() {
        List<LocalMedia> selectedData = this.mAdapter.getSelectedData();
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        int size = selectedData.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(selectedData.get(i));
        }
        if (PictureSelectionConfig.onCustomImagePreviewCallback != null) {
            PictureSelectionConfig.onCustomImagePreviewCallback.onCustomPreviewCallback(getContext(), selectedData, 0);
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(PictureConfig.EXTRA_PREVIEW_SELECT_LIST, arrayList);
        bundle.putParcelableArrayList(PictureConfig.EXTRA_SELECT_LIST, (ArrayList) selectedData);
        bundle.putBoolean(PictureConfig.EXTRA_BOTTOM_PREVIEW, true);
        bundle.putBoolean(PictureConfig.EXTRA_CHANGE_ORIGINAL, this.config.isCheckOriginalImage);
        bundle.putBoolean(PictureConfig.EXTRA_SHOW_CAMERA, this.mAdapter.isShowCamera());
        bundle.putString(PictureConfig.EXTRA_IS_CURRENT_DIRECTORY, this.mTvPictureTitle.getText().toString());
        JumpUtils.startPicturePreviewActivity(getContext(), this.config.isWeChatStyle, bundle, this.config.selectionMode == 1 ? 69 : 609);
        overridePendingTransition(PictureSelectionConfig.windowAnimationStyle.activityPreviewEnterAnimation, R.anim.picture_anim_fade_in);
    }

    private void onComplete() {
        List<LocalMedia> selectedData = this.mAdapter.getSelectedData();
        int size = selectedData.size();
        LocalMedia localMedia = selectedData.size() > 0 ? selectedData.get(0) : null;
        String mimeType = localMedia != null ? localMedia.getMimeType() : "";
        boolean zIsHasImage = PictureMimeType.isHasImage(mimeType);
        if (this.config.isWithVideoImage) {
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                if (PictureMimeType.isHasVideo(selectedData.get(i3).getMimeType())) {
                    i2++;
                } else {
                    i++;
                }
            }
            if (this.config.selectionMode == 2) {
                if (this.config.minSelectNum > 0 && i < this.config.minSelectNum) {
                    showPromptDialog(getString(R.string.picture_min_img_num, new Object[]{Integer.valueOf(this.config.minSelectNum)}));
                    return;
                } else if (this.config.minVideoSelectNum > 0 && i2 < this.config.minVideoSelectNum) {
                    showPromptDialog(getString(R.string.picture_min_video_num, new Object[]{Integer.valueOf(this.config.minVideoSelectNum)}));
                    return;
                }
            }
        } else if (this.config.selectionMode == 2) {
            if (PictureMimeType.isHasImage(mimeType) && this.config.minSelectNum > 0 && size < this.config.minSelectNum) {
                showPromptDialog(getString(R.string.picture_min_img_num, new Object[]{Integer.valueOf(this.config.minSelectNum)}));
                return;
            } else if (PictureMimeType.isHasVideo(mimeType) && this.config.minVideoSelectNum > 0 && size < this.config.minVideoSelectNum) {
                showPromptDialog(getString(R.string.picture_min_video_num, new Object[]{Integer.valueOf(this.config.minVideoSelectNum)}));
                return;
            }
        }
        if (this.config.returnEmpty && size == 0) {
            if (this.config.selectionMode == 2) {
                if (this.config.minSelectNum > 0 && size < this.config.minSelectNum) {
                    showPromptDialog(getString(R.string.picture_min_img_num, new Object[]{Integer.valueOf(this.config.minSelectNum)}));
                    return;
                } else if (this.config.minVideoSelectNum > 0 && size < this.config.minVideoSelectNum) {
                    showPromptDialog(getString(R.string.picture_min_video_num, new Object[]{Integer.valueOf(this.config.minVideoSelectNum)}));
                    return;
                }
            }
            if (PictureSelectionConfig.listener != null) {
                PictureSelectionConfig.listener.onResult(selectedData);
            } else {
                setResult(-1, PictureSelector.putIntentResult(selectedData));
            }
            exit();
            return;
        }
        if (this.config.chooseMode == PictureMimeType.ofAll() && this.config.isWithVideoImage) {
            bothMimeTypeWith(zIsHasImage, selectedData);
        } else {
            separateMimeTypeWith(zIsHasImage, selectedData);
        }
    }

    private void bothMimeTypeWith(boolean z, List<LocalMedia> list) {
        int i = 0;
        LocalMedia localMedia = list.size() > 0 ? list.get(0) : null;
        if (localMedia == null) {
            return;
        }
        if (this.config.enableCrop && !this.config.isCheckOriginalImage) {
            if (this.config.selectionMode == 1 && z) {
                this.config.originalPath = localMedia.getPath();
                UCropManager.ofCrop(this, this.config.originalPath, localMedia.getMimeType());
                return;
            }
            int size = list.size();
            int i2 = 0;
            while (i < size) {
                LocalMedia localMedia2 = list.get(i);
                if (localMedia2 != null && !TextUtils.isEmpty(localMedia2.getPath()) && PictureMimeType.isHasImage(localMedia2.getMimeType())) {
                    i2++;
                }
                i++;
            }
            if (i2 <= 0) {
                onResult(list);
                return;
            } else {
                UCropManager.ofCrop(this, (ArrayList) list);
                return;
            }
        }
        if (this.config.isCompress) {
            int size2 = list.size();
            int i3 = 0;
            while (true) {
                if (i3 >= size2) {
                    break;
                }
                if (PictureMimeType.isHasImage(list.get(i3).getMimeType())) {
                    i = 1;
                    break;
                }
                i3++;
            }
            if (i <= 0) {
                onResult(list);
                return;
            } else {
                compressImage(list);
                return;
            }
        }
        onResult(list);
    }

    private void separateMimeTypeWith(boolean z, List<LocalMedia> list) {
        LocalMedia localMedia = list.size() > 0 ? list.get(0) : null;
        if (localMedia == null) {
            return;
        }
        if (this.config.enableCrop && !this.config.isCheckOriginalImage && z) {
            if (this.config.selectionMode == 1) {
                this.config.originalPath = localMedia.getPath();
                UCropManager.ofCrop(this, this.config.originalPath, localMedia.getMimeType());
                return;
            } else {
                UCropManager.ofCrop(this, (ArrayList) list);
                return;
            }
        }
        if (this.config.isCompress && z) {
            compressImage(list);
        } else {
            onResult(list);
        }
    }

    private void startPlayAudioDialog(final String str) {
        if (isFinishing()) {
            return;
        }
        PictureCustomDialog pictureCustomDialog = new PictureCustomDialog(getContext(), R.layout.picture_audio_dialog);
        this.audioDialog = pictureCustomDialog;
        pictureCustomDialog.getWindow().setWindowAnimations(R.style.Picture_Theme_Dialog_AudioStyle);
        this.mTvMusicStatus = (TextView) this.audioDialog.findViewById(R.id.tv_musicStatus);
        this.mTvMusicTime = (TextView) this.audioDialog.findViewById(R.id.tv_musicTime);
        this.musicSeekBar = (SeekBar) this.audioDialog.findViewById(R.id.musicSeekBar);
        this.mTvMusicTotal = (TextView) this.audioDialog.findViewById(R.id.tv_musicTotal);
        this.mTvPlayPause = (TextView) this.audioDialog.findViewById(R.id.tv_PlayPause);
        this.mTvStop = (TextView) this.audioDialog.findViewById(R.id.tv_Stop);
        this.mTvQuit = (TextView) this.audioDialog.findViewById(R.id.tv_Quit);
        this.mHandler.postDelayed(new Runnable() { // from class: com.luck.picture.lib.PictureSelectorActivity.3
            @Override // java.lang.Runnable
            public void run() {
                PictureSelectorActivity.this.initPlayer(str);
            }
        }, 30L);
        this.mTvPlayPause.setOnClickListener(new onAudioOnClick(str));
        this.mTvStop.setOnClickListener(new onAudioOnClick(str));
        this.mTvQuit.setOnClickListener(new onAudioOnClick(str));
        this.musicSeekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.luck.picture.lib.PictureSelectorActivity.4
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                if (z) {
                    PictureSelectorActivity.this.mediaPlayer.seekTo(i);
                }
            }
        });
        this.audioDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.luck.picture.lib.PictureSelectorActivity$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.m778x2ebd7034(str, dialogInterface);
            }
        });
        this.mHandler.post(this.mRunnable);
        this.audioDialog.show();
    }

    /* JADX INFO: renamed from: lambda$startPlayAudioDialog$4$com-luck-picture-lib-PictureSelectorActivity, reason: not valid java name */
    /* synthetic */ void m778x2ebd7034(final String str, DialogInterface dialogInterface) {
        this.mHandler.removeCallbacks(this.mRunnable);
        this.mHandler.postDelayed(new Runnable() { // from class: com.luck.picture.lib.PictureSelectorActivity.5
            @Override // java.lang.Runnable
            public void run() {
                PictureSelectorActivity.this.stop(str);
            }
        }, 30L);
        try {
            PictureCustomDialog pictureCustomDialog = this.audioDialog;
            if (pictureCustomDialog == null || !pictureCustomDialog.isShowing()) {
                return;
            }
            this.audioDialog.dismiss();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initPlayer(String str) {
        this.mediaPlayer = new MediaPlayer();
        try {
            if (PictureMimeType.isContent(str)) {
                this.mediaPlayer.setDataSource(getContext(), Uri.parse(str));
            } else {
                this.mediaPlayer.setDataSource(str);
            }
            this.mediaPlayer.prepare();
            this.mediaPlayer.setLooping(true);
            playAudio();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public class onAudioOnClick implements View.OnClickListener {
        private String path;

        public onAudioOnClick(String str) {
            this.path = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int id = view.getId();
            if (id == R.id.tv_PlayPause) {
                PictureSelectorActivity.this.playAudio();
            }
            if (id == R.id.tv_Stop) {
                PictureSelectorActivity.this.mTvMusicStatus.setText(PictureSelectorActivity.this.getString(R.string.picture_stop_audio));
                PictureSelectorActivity.this.mTvPlayPause.setText(PictureSelectorActivity.this.getString(R.string.picture_play_audio));
                PictureSelectorActivity.this.stop(this.path);
            }
            if (id == R.id.tv_Quit) {
                PictureSelectorActivity.this.mHandler.postDelayed(new Runnable() { // from class: com.luck.picture.lib.PictureSelectorActivity$onAudioOnClick$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m779xd3c85a05();
                    }
                }, 30L);
                try {
                    if (PictureSelectorActivity.this.audioDialog != null && PictureSelectorActivity.this.audioDialog.isShowing()) {
                        PictureSelectorActivity.this.audioDialog.dismiss();
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                PictureSelectorActivity.this.mHandler.removeCallbacks(PictureSelectorActivity.this.mRunnable);
            }
        }

        /* JADX INFO: renamed from: lambda$onClick$0$com-luck-picture-lib-PictureSelectorActivity$onAudioOnClick, reason: not valid java name */
        /* synthetic */ void m779xd3c85a05() {
            PictureSelectorActivity.this.stop(this.path);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void playAudio() {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            this.musicSeekBar.setProgress(mediaPlayer.getCurrentPosition());
            this.musicSeekBar.setMax(this.mediaPlayer.getDuration());
        }
        if (this.mTvPlayPause.getText().toString().equals(getString(R.string.picture_play_audio))) {
            this.mTvPlayPause.setText(getString(R.string.picture_pause_audio));
            this.mTvMusicStatus.setText(getString(R.string.picture_play_audio));
        } else {
            this.mTvPlayPause.setText(getString(R.string.picture_play_audio));
            this.mTvMusicStatus.setText(getString(R.string.picture_pause_audio));
        }
        playOrPause();
        if (this.isPlayAudio) {
            return;
        }
        this.mHandler.post(this.mRunnable);
        this.isPlayAudio = true;
    }

    public void stop(String str) {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            try {
                mediaPlayer.stop();
                this.mediaPlayer.reset();
                if (PictureMimeType.isContent(str)) {
                    this.mediaPlayer.setDataSource(getContext(), Uri.parse(str));
                } else {
                    this.mediaPlayer.setDataSource(str);
                }
                this.mediaPlayer.prepare();
                this.mediaPlayer.seekTo(0);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void playOrPause() {
        try {
            MediaPlayer mediaPlayer = this.mediaPlayer;
            if (mediaPlayer != null) {
                if (mediaPlayer.isPlaying()) {
                    this.mediaPlayer.pause();
                } else {
                    this.mediaPlayer.start();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.luck.picture.lib.listener.OnAlbumItemClickListener
    public void onItemClick(int i, boolean z, long j, String str, List<LocalMedia> list) {
        this.mAdapter.setShowCamera(this.config.isCamera && z);
        this.mTvPictureTitle.setText(str);
        long j2 = ValueOf.toLong(this.mTvPictureTitle.getTag(R.id.view_tag));
        this.mTvPictureTitle.setTag(R.id.view_count_tag, Integer.valueOf(this.folderWindow.getFolder(i) != null ? this.folderWindow.getFolder(i).getImageNum() : 0));
        if (!this.config.isPageStrategy) {
            this.mAdapter.bindData(list);
            this.mRecyclerView.smoothScrollToPosition(0);
        } else if (j2 != j) {
            setLastCacheFolderData();
            if (!isCurrentCacheFolderData(i)) {
                this.mPage = 1;
                showPleaseDialog();
                LocalMediaPageLoader.getInstance(getContext()).loadPageMediaData(j, this.mPage, new OnQueryDataResultListener() { // from class: com.luck.picture.lib.PictureSelectorActivity$$ExternalSyntheticLambda7
                    @Override // com.luck.picture.lib.listener.OnQueryDataResultListener
                    public final void onComplete(List list2, int i2, boolean z2) {
                        this.f$0.m774x7991067f(list2, i2, z2);
                    }
                });
            }
        }
        this.mTvPictureTitle.setTag(R.id.view_tag, Long.valueOf(j));
        this.folderWindow.dismiss();
    }

    /* JADX INFO: renamed from: lambda$onItemClick$5$com-luck-picture-lib-PictureSelectorActivity, reason: not valid java name */
    /* synthetic */ void m774x7991067f(List list, int i, boolean z) {
        this.isHasMore = z;
        if (isFinishing()) {
            return;
        }
        if (list.size() == 0) {
            this.mAdapter.clear();
        }
        this.mAdapter.bindData(list);
        this.mRecyclerView.onScrolled(0, 0);
        this.mRecyclerView.smoothScrollToPosition(0);
        dismissDialog();
    }

    private void setLastCacheFolderData() {
        LocalMediaFolder folder = this.folderWindow.getFolder(ValueOf.toInt(this.mTvPictureTitle.getTag(R.id.view_index_tag)));
        folder.setData(this.mAdapter.getData());
        folder.setCurrentDataPage(this.mPage);
        folder.setHasMore(this.isHasMore);
    }

    private boolean isCurrentCacheFolderData(int i) {
        this.mTvPictureTitle.setTag(R.id.view_index_tag, Integer.valueOf(i));
        LocalMediaFolder folder = this.folderWindow.getFolder(i);
        if (folder == null || folder.getData() == null || folder.getData().size() <= 0) {
            return false;
        }
        this.mAdapter.bindData(folder.getData());
        this.mPage = folder.getCurrentDataPage();
        this.isHasMore = folder.isHasMore();
        this.mRecyclerView.smoothScrollToPosition(0);
        return true;
    }

    @Override // com.luck.picture.lib.listener.OnPhotoSelectChangedListener
    public void onTakePhoto() {
        if (PermissionChecker.checkSelfPermission(this, "android.permission.CAMERA")) {
            startCamera();
        } else {
            PermissionChecker.requestPermissions(this, new String[]{"android.permission.CAMERA"}, 2);
        }
    }

    @Override // com.luck.picture.lib.listener.OnPhotoSelectChangedListener
    public void onChange(List<LocalMedia> list) {
        changeImageNumber(list);
        calculateFileTotalSize(list);
    }

    protected void calculateFileTotalSize(List<LocalMedia> list) {
        if (this.config.isOriginalControl) {
            if (this.config.isDisplayOriginalSize) {
                long size = 0;
                for (int i = 0; i < list.size(); i++) {
                    size += list.get(i).getSize();
                }
                if (size > 0) {
                    this.mCbOriginal.setText(getString(R.string.picture_original_image, new Object[]{PictureFileUtils.formatFileSize(size, 2)}));
                    return;
                } else {
                    this.mCbOriginal.setText(getString(R.string.picture_default_original_image));
                    return;
                }
            }
            this.mCbOriginal.setText(getString(R.string.picture_default_original_image));
        }
    }

    @Override // com.luck.picture.lib.listener.OnPhotoSelectChangedListener
    public void onPictureClick(LocalMedia localMedia, int i) {
        if (this.config.selectionMode == 1 && this.config.isSingleDirectReturn) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(localMedia);
            if (this.config.enableCrop && PictureMimeType.isHasImage(localMedia.getMimeType()) && !this.config.isCheckOriginalImage) {
                this.mAdapter.bindSelectData(arrayList);
                UCropManager.ofCrop(this, localMedia.getPath(), localMedia.getMimeType());
                return;
            } else {
                handlerResult(arrayList);
                return;
            }
        }
        startPreview(this.mAdapter.getData(), i);
    }

    public void startPreview(List<LocalMedia> list, int i) {
        LocalMedia localMedia = list.get(i);
        String mimeType = localMedia.getMimeType();
        Bundle bundle = new Bundle();
        ArrayList arrayList = new ArrayList();
        if (PictureMimeType.isHasVideo(mimeType)) {
            if (this.config.selectionMode == 1 && !this.config.enPreviewVideo) {
                arrayList.add(localMedia);
                onResult(arrayList);
                return;
            } else if (PictureSelectionConfig.customVideoPlayCallback != null) {
                PictureSelectionConfig.customVideoPlayCallback.startPlayVideo(localMedia);
                return;
            } else {
                bundle.putParcelable(PictureConfig.EXTRA_MEDIA_KEY, localMedia);
                JumpUtils.startPictureVideoPlayActivity(getContext(), bundle, PictureConfig.PREVIEW_VIDEO_CODE);
                return;
            }
        }
        if (PictureMimeType.isHasAudio(mimeType)) {
            if (this.config.selectionMode == 1) {
                arrayList.add(localMedia);
                onResult(arrayList);
                return;
            } else {
                startPlayAudioDialog(localMedia.getPath());
                return;
            }
        }
        if (PictureSelectionConfig.onCustomImagePreviewCallback != null) {
            PictureSelectionConfig.onCustomImagePreviewCallback.onCustomPreviewCallback(getContext(), list, i);
            return;
        }
        List<LocalMedia> selectedData = this.mAdapter.getSelectedData();
        ImagesObservable.getInstance().saveData(new ArrayList(list));
        bundle.putParcelableArrayList(PictureConfig.EXTRA_SELECT_LIST, (ArrayList) selectedData);
        bundle.putInt("position", i);
        bundle.putBoolean(PictureConfig.EXTRA_CHANGE_ORIGINAL, this.config.isCheckOriginalImage);
        bundle.putBoolean(PictureConfig.EXTRA_SHOW_CAMERA, this.mAdapter.isShowCamera());
        bundle.putLong(PictureConfig.EXTRA_BUCKET_ID, ValueOf.toLong(this.mTvPictureTitle.getTag(R.id.view_tag)));
        bundle.putInt("page", this.mPage);
        bundle.putParcelable(PictureConfig.EXTRA_CONFIG, this.config);
        bundle.putInt(PictureConfig.EXTRA_DATA_COUNT, ValueOf.toInt(this.mTvPictureTitle.getTag(R.id.view_count_tag)));
        bundle.putString(PictureConfig.EXTRA_IS_CURRENT_DIRECTORY, this.mTvPictureTitle.getText().toString());
        JumpUtils.startPicturePreviewActivity(getContext(), this.config.isWeChatStyle, bundle, this.config.selectionMode == 1 ? 69 : 609);
        overridePendingTransition(PictureSelectionConfig.windowAnimationStyle.activityPreviewEnterAnimation, R.anim.picture_anim_fade_in);
    }

    protected void changeImageNumber(List<LocalMedia> list) {
        if (list.size() != 0) {
            this.mTvPictureOk.setEnabled(true);
            this.mTvPictureOk.setSelected(true);
            this.mTvPicturePreview.setEnabled(true);
            this.mTvPicturePreview.setSelected(true);
            if (PictureSelectionConfig.uiStyle != null) {
                if (PictureSelectionConfig.uiStyle.picture_bottom_previewNormalText != 0) {
                    if (PictureSelectionConfig.uiStyle.isCompleteReplaceNum) {
                        this.mTvPicturePreview.setText(String.format(getString(PictureSelectionConfig.uiStyle.picture_bottom_previewNormalText), Integer.valueOf(list.size())));
                    } else {
                        this.mTvPicturePreview.setText(PictureSelectionConfig.uiStyle.picture_bottom_previewNormalText);
                    }
                } else {
                    this.mTvPicturePreview.setText(getString(R.string.picture_preview_num, new Object[]{Integer.valueOf(list.size())}));
                }
            } else if (PictureSelectionConfig.style != null) {
                if (PictureSelectionConfig.style.pictureCompleteTextColor != 0) {
                    this.mTvPictureOk.setTextColor(PictureSelectionConfig.style.pictureCompleteTextColor);
                }
                if (PictureSelectionConfig.style.picturePreviewTextColor != 0) {
                    this.mTvPicturePreview.setTextColor(PictureSelectionConfig.style.picturePreviewTextColor);
                }
                if (!TextUtils.isEmpty(PictureSelectionConfig.style.picturePreviewText)) {
                    this.mTvPicturePreview.setText(PictureSelectionConfig.style.picturePreviewText);
                } else {
                    this.mTvPicturePreview.setText(getString(R.string.picture_preview_num, new Object[]{Integer.valueOf(list.size())}));
                }
            }
            if (this.numComplete) {
                initCompleteText(list.size());
                return;
            }
            if (!this.isStartAnimation) {
                this.mTvPictureImgNum.startAnimation(this.animation);
            }
            this.mTvPictureImgNum.setVisibility(0);
            this.mTvPictureImgNum.setText(ValueOf.toString(Integer.valueOf(list.size())));
            if (PictureSelectionConfig.uiStyle != null) {
                if (PictureSelectionConfig.uiStyle.picture_bottom_completeNormalText != 0) {
                    this.mTvPictureOk.setText(getString(PictureSelectionConfig.uiStyle.picture_bottom_completeNormalText));
                }
            } else if (PictureSelectionConfig.style != null) {
                if (!TextUtils.isEmpty(PictureSelectionConfig.style.pictureCompleteText)) {
                    this.mTvPictureOk.setText(PictureSelectionConfig.style.pictureCompleteText);
                }
            } else {
                this.mTvPictureOk.setText(getString(R.string.picture_completed));
            }
            this.isStartAnimation = false;
            return;
        }
        this.mTvPictureOk.setEnabled(this.config.returnEmpty);
        this.mTvPictureOk.setSelected(false);
        this.mTvPicturePreview.setEnabled(false);
        this.mTvPicturePreview.setSelected(false);
        if (PictureSelectionConfig.uiStyle != null) {
            if (PictureSelectionConfig.uiStyle.picture_bottom_previewDefaultText != 0) {
                this.mTvPicturePreview.setText(getString(PictureSelectionConfig.uiStyle.picture_bottom_previewDefaultText));
            } else {
                this.mTvPicturePreview.setText(getString(R.string.picture_preview));
            }
        } else if (PictureSelectionConfig.style != null) {
            if (PictureSelectionConfig.style.pictureUnCompleteTextColor != 0) {
                this.mTvPictureOk.setTextColor(PictureSelectionConfig.style.pictureUnCompleteTextColor);
            }
            if (PictureSelectionConfig.style.pictureUnPreviewTextColor != 0) {
                this.mTvPicturePreview.setTextColor(PictureSelectionConfig.style.pictureUnPreviewTextColor);
            }
            if (!TextUtils.isEmpty(PictureSelectionConfig.style.pictureUnPreviewText)) {
                this.mTvPicturePreview.setText(PictureSelectionConfig.style.pictureUnPreviewText);
            } else {
                this.mTvPicturePreview.setText(getString(R.string.picture_preview));
            }
        }
        if (this.numComplete) {
            initCompleteText(list.size());
            return;
        }
        this.mTvPictureImgNum.setVisibility(4);
        if (PictureSelectionConfig.uiStyle != null) {
            if (PictureSelectionConfig.uiStyle.picture_bottom_completeDefaultText != 0) {
                this.mTvPictureOk.setText(getString(PictureSelectionConfig.uiStyle.picture_bottom_completeDefaultText));
            }
        } else {
            if (PictureSelectionConfig.style != null) {
                if (TextUtils.isEmpty(PictureSelectionConfig.style.pictureUnCompleteText)) {
                    return;
                }
                this.mTvPictureOk.setText(PictureSelectionConfig.style.pictureUnCompleteText);
                return;
            }
            this.mTvPictureOk.setText(getString(R.string.picture_please_select));
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) throws Throwable {
        Throwable th;
        ArrayList parcelableArrayListExtra;
        super.onActivityResult(i, i2, intent);
        if (i2 != -1) {
            if (i2 == 0) {
                previewCallback(intent);
                if (i == 909) {
                    MediaUtils.deleteCamera(this, this.config.cameraPath);
                    return;
                }
                return;
            }
            if (i2 != 96 || intent == null || (th = (Throwable) intent.getSerializableExtra(UCrop.EXTRA_ERROR)) == null) {
                return;
            }
            ToastUtils.s(getContext(), th.getMessage());
            return;
        }
        if (i == 69) {
            singleCropHandleResult(intent);
            return;
        }
        if (i == 166) {
            if (intent == null || (parcelableArrayListExtra = intent.getParcelableArrayListExtra(PictureConfig.EXTRA_SELECT_LIST)) == null || parcelableArrayListExtra.size() <= 0) {
                return;
            }
            onResult(parcelableArrayListExtra);
            return;
        }
        if (i == 609) {
            multiCropHandleResult(intent);
        } else {
            if (i != 909) {
                return;
            }
            dispatchHandleCamera(intent);
        }
    }

    private void previewCallback(Intent intent) {
        if (intent == null) {
            return;
        }
        if (this.config.isOriginalControl) {
            this.config.isCheckOriginalImage = intent.getBooleanExtra(PictureConfig.EXTRA_CHANGE_ORIGINAL, this.config.isCheckOriginalImage);
            this.mCbOriginal.setChecked(this.config.isCheckOriginalImage);
        }
        ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra(PictureConfig.EXTRA_SELECT_LIST);
        if (this.mAdapter == null || parcelableArrayListExtra == null) {
            return;
        }
        char c = 0;
        if (intent.getBooleanExtra(PictureConfig.EXTRA_COMPLETE_SELECTED, false)) {
            onChangeData(parcelableArrayListExtra);
            if (this.config.isWithVideoImage) {
                int size = parcelableArrayListExtra.size();
                int i = 0;
                while (true) {
                    if (i >= size) {
                        break;
                    }
                    if (PictureMimeType.isHasImage(parcelableArrayListExtra.get(i).getMimeType())) {
                        c = 1;
                        break;
                    }
                    i++;
                }
                if (c <= 0 || !this.config.isCompress) {
                    onResult(parcelableArrayListExtra);
                } else {
                    compressImage(parcelableArrayListExtra);
                }
            } else {
                String mimeType = parcelableArrayListExtra.size() > 0 ? parcelableArrayListExtra.get(0).getMimeType() : "";
                if (this.config.isCompress && PictureMimeType.isHasImage(mimeType)) {
                    compressImage(parcelableArrayListExtra);
                } else {
                    onResult(parcelableArrayListExtra);
                }
            }
        } else {
            this.isStartAnimation = true;
        }
        this.mAdapter.bindSelectData(parcelableArrayListExtra);
        this.mAdapter.notifyDataSetChanged();
    }

    private void singleDirectReturnCameraHandleResult(String str) {
        boolean zIsHasImage = PictureMimeType.isHasImage(str);
        if (this.config.enableCrop && !this.config.isCheckOriginalImage && zIsHasImage) {
            this.config.originalPath = this.config.cameraPath;
            UCropManager.ofCrop(this, this.config.originalPath, str);
        } else if (this.config.isCompress && zIsHasImage) {
            compressImage(this.mAdapter.getSelectedData());
        } else {
            onResult(this.mAdapter.getSelectedData());
        }
    }

    private void dispatchHandleCamera(Intent intent) throws Throwable {
        PictureSelectionConfig pictureSelectionConfig;
        String imageMimeType;
        int dCIMLastImageId;
        if (intent != null) {
            try {
                pictureSelectionConfig = (PictureSelectionConfig) intent.getParcelableExtra(PictureConfig.EXTRA_CONFIG);
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        } else {
            pictureSelectionConfig = null;
        }
        if (pictureSelectionConfig != null) {
            this.config = pictureSelectionConfig;
        }
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
                } catch (Exception e2) {
                    e2.printStackTrace();
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
        notifyAdapterData(localMedia);
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
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void notifyAdapterData(LocalMedia localMedia) {
        if (this.mAdapter != null) {
            if (!isAddSameImp(this.folderWindow.getFolder(0) != null ? this.folderWindow.getFolder(0).getImageNum() : 0)) {
                this.mAdapter.getData().add(0, localMedia);
                this.mOpenCameraCount++;
            }
            if (checkVideoLegitimacy(localMedia)) {
                if (this.config.selectionMode == 1) {
                    dispatchHandleSingle(localMedia);
                } else {
                    dispatchHandleMultiple(localMedia);
                }
            }
            this.mAdapter.notifyItemInserted(this.config.isCamera ? 1 : 0);
            this.mAdapter.notifyItemRangeChanged(this.config.isCamera ? 1 : 0, this.mAdapter.getSize());
            if (this.config.isPageStrategy) {
                manualSaveFolderForPageModel(localMedia);
            } else {
                manualSaveFolder(localMedia);
            }
            this.mTvEmpty.setVisibility((this.mAdapter.getSize() > 0 || this.config.isSingleDirectReturn) ? 8 : 0);
            if (this.folderWindow.getFolder(0) != null) {
                this.mTvPictureTitle.setTag(R.id.view_count_tag, Integer.valueOf(this.folderWindow.getFolder(0).getImageNum()));
            }
            this.allFolderSize = 0;
        }
    }

    private void dispatchHandleMultiple(LocalMedia localMedia) {
        List<LocalMedia> selectedData = this.mAdapter.getSelectedData();
        int size = selectedData.size();
        String mimeType = size > 0 ? selectedData.get(0).getMimeType() : "";
        boolean zIsMimeTypeSame = PictureMimeType.isMimeTypeSame(mimeType, localMedia.getMimeType());
        if (this.config.isWithVideoImage) {
            int i = 0;
            for (int i2 = 0; i2 < size; i2++) {
                if (PictureMimeType.isHasVideo(selectedData.get(i2).getMimeType())) {
                    i++;
                }
            }
            if (PictureMimeType.isHasVideo(localMedia.getMimeType())) {
                if (this.config.maxVideoSelectNum <= 0) {
                    showPromptDialog(getString(R.string.picture_rule));
                    return;
                } else if (i >= this.config.maxVideoSelectNum) {
                    showPromptDialog(getString(R.string.picture_message_max_num, new Object[]{Integer.valueOf(this.config.maxVideoSelectNum)}));
                    return;
                } else {
                    selectedData.add(localMedia);
                    this.mAdapter.bindSelectData(selectedData);
                    return;
                }
            }
            if (selectedData.size() < this.config.maxSelectNum) {
                selectedData.add(localMedia);
                this.mAdapter.bindSelectData(selectedData);
                return;
            } else {
                showPromptDialog(StringUtils.getMsg(getContext(), localMedia.getMimeType(), this.config.maxSelectNum));
                return;
            }
        }
        if (PictureMimeType.isHasVideo(mimeType) && this.config.maxVideoSelectNum > 0) {
            if (size < this.config.maxVideoSelectNum) {
                if ((zIsMimeTypeSame || size == 0) && selectedData.size() < this.config.maxVideoSelectNum) {
                    selectedData.add(localMedia);
                    this.mAdapter.bindSelectData(selectedData);
                    return;
                }
                return;
            }
            showPromptDialog(StringUtils.getMsg(getContext(), mimeType, this.config.maxVideoSelectNum));
            return;
        }
        if (size >= this.config.maxSelectNum) {
            showPromptDialog(StringUtils.getMsg(getContext(), mimeType, this.config.maxSelectNum));
        } else if (zIsMimeTypeSame || size == 0) {
            selectedData.add(localMedia);
            this.mAdapter.bindSelectData(selectedData);
        }
    }

    private void dispatchHandleSingle(LocalMedia localMedia) {
        List<LocalMedia> selectedData = this.mAdapter.getSelectedData();
        if (this.config.isSingleDirectReturn) {
            selectedData.add(localMedia);
            this.mAdapter.bindSelectData(selectedData);
            singleDirectReturnCameraHandleResult(localMedia.getMimeType());
        } else {
            if (PictureMimeType.isMimeTypeSame(selectedData.size() > 0 ? selectedData.get(0).getMimeType() : "", localMedia.getMimeType()) || selectedData.size() == 0) {
                singleRadioMediaImage();
                selectedData.add(localMedia);
                this.mAdapter.bindSelectData(selectedData);
            }
        }
    }

    private boolean checkVideoLegitimacy(LocalMedia localMedia) {
        if (PictureMimeType.isHasVideo(localMedia.getMimeType())) {
            if (this.config.videoMinSecond <= 0 || this.config.videoMaxSecond <= 0) {
                if (this.config.videoMinSecond > 0) {
                    if (localMedia.getDuration() < this.config.videoMinSecond) {
                        showPromptDialog(getString(R.string.picture_choose_min_seconds, new Object[]{Integer.valueOf(this.config.videoMinSecond / 1000)}));
                        return false;
                    }
                } else if (this.config.videoMaxSecond > 0 && localMedia.getDuration() > this.config.videoMaxSecond) {
                    showPromptDialog(getString(R.string.picture_choose_max_seconds, new Object[]{Integer.valueOf(this.config.videoMaxSecond / 1000)}));
                    return false;
                }
            } else if (localMedia.getDuration() < this.config.videoMinSecond || localMedia.getDuration() > this.config.videoMaxSecond) {
                showPromptDialog(getString(R.string.picture_choose_limit_seconds, new Object[]{Integer.valueOf(this.config.videoMinSecond / 1000), Integer.valueOf(this.config.videoMaxSecond / 1000)}));
                return false;
            }
        }
        return true;
    }

    private void singleCropHandleResult(Intent intent) {
        Uri output;
        if (intent == null || (output = UCrop.getOutput(intent)) == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        String path = output.getPath();
        if (this.mAdapter != null) {
            ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra(PictureConfig.EXTRA_SELECT_LIST);
            if (parcelableArrayListExtra != null) {
                this.mAdapter.bindSelectData(parcelableArrayListExtra);
                this.mAdapter.notifyDataSetChanged();
            }
            List<LocalMedia> selectedData = this.mAdapter.getSelectedData();
            LocalMedia localMedia = null;
            LocalMedia localMedia2 = (selectedData == null || selectedData.size() <= 0) ? null : selectedData.get(0);
            if (localMedia2 != null) {
                this.config.originalPath = localMedia2.getPath();
                localMedia2.setCutPath(path);
                localMedia2.setChooseModel(this.config.chooseMode);
                boolean z = !TextUtils.isEmpty(path);
                if (SdkVersionUtils.checkedAndroid_Q() && PictureMimeType.isContent(localMedia2.getPath())) {
                    localMedia2.setAndroidQToPath(path);
                }
                localMedia2.setCropImageWidth(intent.getIntExtra(UCrop.EXTRA_OUTPUT_IMAGE_WIDTH, 0));
                localMedia2.setCropImageHeight(intent.getIntExtra(UCrop.EXTRA_OUTPUT_IMAGE_HEIGHT, 0));
                localMedia2.setCropOffsetX(intent.getIntExtra(UCrop.EXTRA_OUTPUT_OFFSET_X, 0));
                localMedia2.setCropOffsetY(intent.getIntExtra(UCrop.EXTRA_OUTPUT_OFFSET_Y, 0));
                localMedia2.setCropResultAspectRatio(intent.getFloatExtra(UCrop.EXTRA_OUTPUT_CROP_ASPECT_RATIO, 0.0f));
                localMedia2.setEditorImage(intent.getBooleanExtra("com.yalantis.ucrop.EditorImage", false));
                localMedia2.setCut(z);
                arrayList.add(localMedia2);
                handlerResult(arrayList);
                return;
            }
            if (parcelableArrayListExtra != null && parcelableArrayListExtra.size() > 0) {
                localMedia = (LocalMedia) parcelableArrayListExtra.get(0);
            }
            if (localMedia != null) {
                this.config.originalPath = localMedia.getPath();
                localMedia.setCutPath(path);
                localMedia.setChooseModel(this.config.chooseMode);
                boolean z2 = !TextUtils.isEmpty(path);
                if (SdkVersionUtils.checkedAndroid_Q() && PictureMimeType.isContent(localMedia.getPath())) {
                    localMedia.setAndroidQToPath(path);
                }
                localMedia.setCropImageWidth(intent.getIntExtra(UCrop.EXTRA_OUTPUT_IMAGE_WIDTH, 0));
                localMedia.setCropImageHeight(intent.getIntExtra(UCrop.EXTRA_OUTPUT_IMAGE_HEIGHT, 0));
                localMedia.setCropOffsetX(intent.getIntExtra(UCrop.EXTRA_OUTPUT_OFFSET_X, 0));
                localMedia.setCropOffsetY(intent.getIntExtra(UCrop.EXTRA_OUTPUT_OFFSET_Y, 0));
                localMedia.setCropResultAspectRatio(intent.getFloatExtra(UCrop.EXTRA_OUTPUT_CROP_ASPECT_RATIO, 0.0f));
                localMedia.setEditorImage(intent.getBooleanExtra("com.yalantis.ucrop.EditorImage", false));
                localMedia.setCut(z2);
                arrayList.add(localMedia);
                handlerResult(arrayList);
            }
        }
    }

    protected void multiCropHandleResult(Intent intent) {
        ArrayList<LocalMedia> multipleOutput;
        if (intent == null || (multipleOutput = UCrop.getMultipleOutput(intent)) == null || multipleOutput.size() <= 0) {
            return;
        }
        this.mAdapter.bindSelectData(multipleOutput);
        this.mAdapter.notifyDataSetChanged();
        handlerResult(multipleOutput);
    }

    private void singleRadioMediaImage() {
        List<LocalMedia> selectedData = this.mAdapter.getSelectedData();
        if (selectedData == null || selectedData.size() <= 0) {
            return;
        }
        int position = selectedData.get(0).getPosition();
        selectedData.clear();
        this.mAdapter.notifyItemChanged(position);
    }

    private void manualSaveFolderForPageModel(LocalMedia localMedia) {
        if (localMedia == null) {
            return;
        }
        int size = this.folderWindow.getFolderData().size();
        boolean z = false;
        LocalMediaFolder localMediaFolder = size > 0 ? this.folderWindow.getFolderData().get(0) : new LocalMediaFolder();
        if (localMediaFolder != null) {
            int imageNum = localMediaFolder.getImageNum();
            localMediaFolder.setFirstImagePath(localMedia.getPath());
            localMediaFolder.setFirstMimeType(localMedia.getMimeType());
            localMediaFolder.setImageNum(isAddSameImp(imageNum) ? localMediaFolder.getImageNum() : localMediaFolder.getImageNum() + 1);
            if (size == 0) {
                localMediaFolder.setName(getString(this.config.chooseMode == PictureMimeType.ofAudio() ? R.string.picture_all_audio : R.string.picture_camera_roll));
                localMediaFolder.setOfAllType(this.config.chooseMode);
                localMediaFolder.setCameraFolder(true);
                localMediaFolder.setChecked(true);
                localMediaFolder.setBucketId(-1L);
                this.folderWindow.getFolderData().add(0, localMediaFolder);
                LocalMediaFolder localMediaFolder2 = new LocalMediaFolder();
                localMediaFolder2.setName(localMedia.getParentFolderName());
                localMediaFolder2.setImageNum(isAddSameImp(imageNum) ? localMediaFolder2.getImageNum() : localMediaFolder2.getImageNum() + 1);
                localMediaFolder2.setFirstImagePath(localMedia.getPath());
                localMediaFolder2.setFirstMimeType(localMedia.getMimeType());
                localMediaFolder2.setBucketId(localMedia.getBucketId());
                this.folderWindow.getFolderData().add(this.folderWindow.getFolderData().size(), localMediaFolder2);
            } else {
                String str = (SdkVersionUtils.checkedAndroid_Q() && PictureMimeType.isHasVideo(localMedia.getMimeType())) ? Environment.DIRECTORY_MOVIES : PictureMimeType.CAMERA;
                int i = 0;
                while (true) {
                    if (i >= size) {
                        break;
                    }
                    LocalMediaFolder localMediaFolder3 = this.folderWindow.getFolderData().get(i);
                    if (TextUtils.isEmpty(localMediaFolder3.getName()) || !localMediaFolder3.getName().startsWith(str)) {
                        i++;
                    } else {
                        localMedia.setBucketId(localMediaFolder3.getBucketId());
                        localMediaFolder3.setFirstImagePath(this.config.cameraPath);
                        localMediaFolder3.setFirstMimeType(localMedia.getMimeType());
                        localMediaFolder3.setImageNum(isAddSameImp(imageNum) ? localMediaFolder3.getImageNum() : localMediaFolder3.getImageNum() + 1);
                        if (localMediaFolder3.getData() != null && localMediaFolder3.getData().size() > 0) {
                            localMediaFolder3.getData().add(0, localMedia);
                        }
                        z = true;
                    }
                }
                if (!z) {
                    LocalMediaFolder localMediaFolder4 = new LocalMediaFolder();
                    localMediaFolder4.setName(localMedia.getParentFolderName());
                    localMediaFolder4.setImageNum(isAddSameImp(imageNum) ? localMediaFolder4.getImageNum() : localMediaFolder4.getImageNum() + 1);
                    localMediaFolder4.setFirstImagePath(localMedia.getPath());
                    localMediaFolder4.setFirstMimeType(localMedia.getMimeType());
                    localMediaFolder4.setBucketId(localMedia.getBucketId());
                    this.folderWindow.getFolderData().add(localMediaFolder4);
                    sortFolder(this.folderWindow.getFolderData());
                }
            }
            FolderPopWindow folderPopWindow = this.folderWindow;
            folderPopWindow.bindFolder(folderPopWindow.getFolderData());
        }
    }

    private void manualSaveFolder(LocalMedia localMedia) {
        LocalMediaFolder localMediaFolder;
        try {
            boolean zIsEmpty = this.folderWindow.isEmpty();
            int imageNum = this.folderWindow.getFolder(0) != null ? this.folderWindow.getFolder(0).getImageNum() : 0;
            if (zIsEmpty) {
                createNewFolder(this.folderWindow.getFolderData());
                localMediaFolder = this.folderWindow.getFolderData().size() > 0 ? this.folderWindow.getFolderData().get(0) : null;
                if (localMediaFolder == null) {
                    localMediaFolder = new LocalMediaFolder();
                    this.folderWindow.getFolderData().add(0, localMediaFolder);
                }
            } else {
                localMediaFolder = this.folderWindow.getFolderData().get(0);
            }
            localMediaFolder.setFirstImagePath(localMedia.getPath());
            localMediaFolder.setFirstMimeType(localMedia.getMimeType());
            localMediaFolder.setData(this.mAdapter.getData());
            localMediaFolder.setBucketId(-1L);
            localMediaFolder.setImageNum(isAddSameImp(imageNum) ? localMediaFolder.getImageNum() : localMediaFolder.getImageNum() + 1);
            LocalMediaFolder imageFolder = getImageFolder(localMedia.getPath(), localMedia.getRealPath(), localMedia.getMimeType(), this.folderWindow.getFolderData());
            if (imageFolder != null) {
                imageFolder.setImageNum(isAddSameImp(imageNum) ? imageFolder.getImageNum() : imageFolder.getImageNum() + 1);
                if (!isAddSameImp(imageNum)) {
                    imageFolder.getData().add(0, localMedia);
                }
                imageFolder.setBucketId(localMedia.getBucketId());
                imageFolder.setFirstImagePath(this.config.cameraPath);
                imageFolder.setFirstMimeType(localMedia.getMimeType());
            }
            FolderPopWindow folderPopWindow = this.folderWindow;
            folderPopWindow.bindFolder(folderPopWindow.getFolderData());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private boolean isAddSameImp(int i) {
        int i2;
        return i != 0 && (i2 = this.allFolderSize) > 0 && i2 < i;
    }

    private void updateMediaFolder(List<LocalMediaFolder> list, LocalMedia localMedia) {
        File parentFile = new File(localMedia.getRealPath()).getParentFile();
        if (parentFile == null) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            LocalMediaFolder localMediaFolder = list.get(i);
            String name = localMediaFolder.getName();
            if (!TextUtils.isEmpty(name) && name.equals(parentFile.getName())) {
                localMediaFolder.setFirstImagePath(this.config.cameraPath);
                localMediaFolder.setImageNum(localMediaFolder.getImageNum() + 1);
                localMediaFolder.setCheckedNum(1);
                localMediaFolder.getData().add(0, localMedia);
                return;
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (SdkVersionUtils.checkedAndroid_Q()) {
            finishAfterTransition();
        } else {
            super.onBackPressed();
        }
        if (PictureSelectionConfig.listener != null) {
            PictureSelectionConfig.listener.onCancel();
        }
        exit();
    }

    @Override // com.luck.picture.lib.PictureBaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        Animation animation = this.animation;
        if (animation != null) {
            animation.cancel();
            this.animation = null;
        }
        if (this.mediaPlayer != null) {
            this.mHandler.removeCallbacks(this.mRunnable);
            this.mediaPlayer.release();
            this.mediaPlayer = null;
        }
    }

    @Override // com.luck.picture.lib.listener.OnItemClickListener
    public void onItemClick(View view, int i) {
        if (i == 0) {
            if (PictureSelectionConfig.onCustomCameraInterfaceListener != null) {
                PictureSelectionConfig.onCustomCameraInterfaceListener.onCameraClick(getContext(), this.config, 1);
                this.config.cameraMimeType = PictureMimeType.ofImage();
                return;
            }
            startOpenCameraImage();
            return;
        }
        if (i != 1) {
            return;
        }
        if (PictureSelectionConfig.onCustomCameraInterfaceListener != null) {
            PictureSelectionConfig.onCustomCameraInterfaceListener.onCameraClick(getContext(), this.config, 1);
            this.config.cameraMimeType = PictureMimeType.ofVideo();
            return;
        }
        startOpenCameraVideo();
    }

    @Override // com.luck.picture.lib.PictureBaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 1) {
            if (iArr.length > 0 && iArr[0] == 0) {
                readLocalMedia();
                return;
            } else {
                showPermissionsDialog(false, new String[]{"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"}, getString(R.string.picture_jurisdiction));
                return;
            }
        }
        if (i == 2) {
            if (iArr.length > 0 && iArr[0] == 0) {
                onTakePhoto();
                return;
            } else {
                showPermissionsDialog(true, new String[]{"android.permission.CAMERA"}, getString(R.string.picture_camera));
                return;
            }
        }
        if (i != 5) {
            return;
        }
        if (iArr.length > 0 && iArr[0] == 0) {
            startCamera();
        } else {
            showPermissionsDialog(false, new String[]{"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"}, getString(R.string.picture_jurisdiction));
        }
    }

    @Override // com.luck.picture.lib.PictureBaseActivity
    protected void showPermissionsDialog(final boolean z, String[] strArr, String str) {
        if (isFinishing()) {
            return;
        }
        if (PictureSelectionConfig.onPermissionsObtainCallback != null) {
            PictureSelectionConfig.onPermissionsObtainCallback.onPermissionsIntercept(getContext(), z, strArr, str, new OnPermissionDialogOptionCallback() { // from class: com.luck.picture.lib.PictureSelectorActivity.7
                @Override // com.luck.picture.lib.listener.OnPermissionDialogOptionCallback
                public void onCancel() {
                    if (PictureSelectionConfig.listener != null) {
                        PictureSelectionConfig.listener.onCancel();
                    }
                    PictureSelectorActivity.this.exit();
                }

                @Override // com.luck.picture.lib.listener.OnPermissionDialogOptionCallback
                public void onSetting() {
                    PictureSelectorActivity.this.isEnterSetting = true;
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
        button.setOnClickListener(new View.OnClickListener() { // from class: com.luck.picture.lib.PictureSelectorActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m776x432b4465(pictureCustomDialog, z, view);
            }
        });
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.luck.picture.lib.PictureSelectorActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m777xfca2d204(pictureCustomDialog, view);
            }
        });
        pictureCustomDialog.show();
    }

    /* JADX INFO: renamed from: lambda$showPermissionsDialog$6$com-luck-picture-lib-PictureSelectorActivity, reason: not valid java name */
    /* synthetic */ void m776x432b4465(PictureCustomDialog pictureCustomDialog, boolean z, View view) {
        if (!isFinishing()) {
            pictureCustomDialog.dismiss();
        }
        if (z) {
            return;
        }
        if (PictureSelectionConfig.listener != null) {
            PictureSelectionConfig.listener.onCancel();
        }
        exit();
    }

    /* JADX INFO: renamed from: lambda$showPermissionsDialog$7$com-luck-picture-lib-PictureSelectorActivity, reason: not valid java name */
    /* synthetic */ void m777xfca2d204(PictureCustomDialog pictureCustomDialog, View view) {
        if (!isFinishing()) {
            pictureCustomDialog.dismiss();
        }
        PermissionChecker.launchAppDetailsSettings(getContext());
        this.isEnterSetting = true;
    }

    private void showDataNull(String str, int i) {
        if (this.mTvEmpty.getVisibility() == 8 || this.mTvEmpty.getVisibility() == 4) {
            this.mTvEmpty.setCompoundDrawablesRelativeWithIntrinsicBounds(0, i, 0, 0);
            this.mTvEmpty.setText(str);
            this.mTvEmpty.setVisibility(0);
        }
    }

    private void hideDataNull() {
        if (this.mTvEmpty.getVisibility() == 0) {
            this.mTvEmpty.setVisibility(8);
        }
    }
}
