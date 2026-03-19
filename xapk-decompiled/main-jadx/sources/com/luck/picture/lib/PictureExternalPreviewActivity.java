package com.luck.picture.lib;

import android.content.ContentValues;
import android.content.Intent;
import android.graphics.PointF;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.facebook.react.views.textinput.ReactEditTextInputConnectionWrapper;
import com.luck.picture.lib.PictureExternalPreviewActivity;
import com.luck.picture.lib.broadcast.BroadcastAction;
import com.luck.picture.lib.broadcast.BroadcastManager;
import com.luck.picture.lib.config.PictureConfig;
import com.luck.picture.lib.config.PictureMimeType;
import com.luck.picture.lib.config.PictureSelectionConfig;
import com.luck.picture.lib.dialog.PictureCustomDialog;
import com.luck.picture.lib.entity.LocalMedia;
import com.luck.picture.lib.listener.OnImageCompleteCallback;
import com.luck.picture.lib.permissions.PermissionChecker;
import com.luck.picture.lib.photoview.OnViewTapListener;
import com.luck.picture.lib.photoview.PhotoView;
import com.luck.picture.lib.thread.PictureThreadUtils;
import com.luck.picture.lib.tools.AttrsUtils;
import com.luck.picture.lib.tools.DateUtils;
import com.luck.picture.lib.tools.JumpUtils;
import com.luck.picture.lib.tools.MediaUtils;
import com.luck.picture.lib.tools.PictureFileUtils;
import com.luck.picture.lib.tools.ScreenUtils;
import com.luck.picture.lib.tools.SdkVersionUtils;
import com.luck.picture.lib.tools.ToastUtils;
import com.luck.picture.lib.tools.ValueOf;
import com.luck.picture.lib.widget.PreviewViewPager;
import com.luck.picture.lib.widget.longimage.ImageSource;
import com.luck.picture.lib.widget.longimage.ImageViewState;
import com.luck.picture.lib.widget.longimage.SubsamplingScaleImageView;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class PictureExternalPreviewActivity extends PictureBaseActivity implements View.OnClickListener {
    private SimpleFragmentAdapter adapter;
    private String downloadPath;
    private ImageButton ibDelete;
    private ImageButton ibLeftBack;
    private String mMimeType;
    private int mScreenHeight;
    private int mScreenWidth;
    private View mTitleBar;
    private TextView tvTitle;
    private PreviewViewPager viewPager;
    private final List<LocalMedia> images = new ArrayList();
    private int position = 0;

    @Override // com.luck.picture.lib.PictureBaseActivity
    public int getResourceId() {
        return R.layout.picture_activity_external_preview;
    }

    @Override // com.luck.picture.lib.PictureBaseActivity
    protected void initWidgets() {
        super.initWidgets();
        this.mTitleBar = findViewById(R.id.titleBar);
        this.tvTitle = (TextView) findViewById(R.id.picture_title);
        this.ibLeftBack = (ImageButton) findViewById(R.id.left_back);
        this.ibDelete = (ImageButton) findViewById(R.id.ib_delete);
        this.viewPager = (PreviewViewPager) findViewById(R.id.preview_pager);
        this.position = getIntent().getIntExtra("position", 0);
        this.mScreenWidth = ScreenUtils.getScreenWidth(getContext());
        this.mScreenHeight = ScreenUtils.getScreenHeight(getContext());
        ArrayList parcelableArrayListExtra = getIntent().getParcelableArrayListExtra(PictureConfig.EXTRA_PREVIEW_SELECT_LIST);
        if (parcelableArrayListExtra != null && parcelableArrayListExtra.size() > 0) {
            this.images.addAll(parcelableArrayListExtra);
        }
        this.ibLeftBack.setOnClickListener(this);
        this.ibDelete.setOnClickListener(this);
        this.ibDelete.setVisibility((PictureSelectionConfig.style == null || !PictureSelectionConfig.style.pictureExternalPreviewGonePreviewDelete) ? 8 : 0);
        initViewPageAdapterData();
    }

    @Override // com.luck.picture.lib.PictureBaseActivity
    public void initPictureSelectorStyle() {
        if (PictureSelectionConfig.style != null) {
            if (PictureSelectionConfig.style.pictureTitleTextColor != 0) {
                this.tvTitle.setTextColor(PictureSelectionConfig.style.pictureTitleTextColor);
            }
            if (PictureSelectionConfig.style.pictureTitleTextSize != 0) {
                this.tvTitle.setTextSize(PictureSelectionConfig.style.pictureTitleTextSize);
            }
            if (PictureSelectionConfig.style.pictureLeftBackIcon != 0) {
                this.ibLeftBack.setImageResource(PictureSelectionConfig.style.pictureLeftBackIcon);
            }
            if (PictureSelectionConfig.style.pictureExternalPreviewDeleteStyle != 0) {
                this.ibDelete.setImageResource(PictureSelectionConfig.style.pictureExternalPreviewDeleteStyle);
            }
            if (PictureSelectionConfig.style.pictureTitleBarBackgroundColor != 0) {
                this.mTitleBar.setBackgroundColor(this.colorPrimary);
                return;
            }
            return;
        }
        int typeValueColor = AttrsUtils.getTypeValueColor(getContext(), R.attr.picture_ac_preview_title_bg);
        if (typeValueColor != 0) {
            this.mTitleBar.setBackgroundColor(typeValueColor);
        } else {
            this.mTitleBar.setBackgroundColor(this.colorPrimary);
        }
    }

    private void initViewPageAdapterData() {
        this.tvTitle.setText(getString(R.string.picture_preview_image_num, new Object[]{Integer.valueOf(this.position + 1), Integer.valueOf(this.images.size())}));
        SimpleFragmentAdapter simpleFragmentAdapter = new SimpleFragmentAdapter();
        this.adapter = simpleFragmentAdapter;
        this.viewPager.setAdapter(simpleFragmentAdapter);
        this.viewPager.setCurrentItem(this.position);
        this.viewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.luck.picture.lib.PictureExternalPreviewActivity.1
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i, float f, int i2) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
                PictureExternalPreviewActivity.this.tvTitle.setText(PictureExternalPreviewActivity.this.getString(R.string.picture_preview_image_num, new Object[]{Integer.valueOf(i + 1), Integer.valueOf(PictureExternalPreviewActivity.this.images.size())}));
                PictureExternalPreviewActivity.this.position = i;
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.left_back) {
            finish();
            exitAnimation();
            return;
        }
        if (id != R.id.ib_delete || this.images.size() <= 0) {
            return;
        }
        int currentItem = this.viewPager.getCurrentItem();
        this.images.remove(currentItem);
        this.adapter.removeCacheView(currentItem);
        Bundle bundle = new Bundle();
        bundle.putInt("position", currentItem);
        BroadcastManager.getInstance(getContext()).action(BroadcastAction.ACTION_DELETE_PREVIEW_POSITION).extras(bundle).broadcast();
        if (this.images.size() == 0) {
            onBackPressed();
            return;
        }
        this.tvTitle.setText(getString(R.string.picture_preview_image_num, new Object[]{Integer.valueOf(this.position + 1), Integer.valueOf(this.images.size())}));
        this.position = currentItem;
        this.adapter.notifyDataSetChanged();
    }

    public class SimpleFragmentAdapter extends PagerAdapter {
        private static final int MAX_CACHE_SIZE = 20;
        private final SparseArray<View> mCacheView = new SparseArray<>();

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getItemPosition(Object obj) {
            return -2;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(View view, Object obj) {
            return view == obj;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clear() {
            this.mCacheView.clear();
        }

        public void removeCacheView(int i) {
            if (i < this.mCacheView.size()) {
                this.mCacheView.removeAt(i);
            }
        }

        public SimpleFragmentAdapter() {
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return PictureExternalPreviewActivity.this.images.size();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
            viewGroup.removeView((View) obj);
            if (this.mCacheView.size() > 20) {
                this.mCacheView.remove(i);
            }
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(final ViewGroup viewGroup, int i) {
            String compressPath;
            View viewInflate = this.mCacheView.get(i);
            if (viewInflate == null) {
                viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.picture_image_preview, viewGroup, false);
                this.mCacheView.put(i, viewInflate);
            }
            PhotoView photoView = (PhotoView) viewInflate.findViewById(R.id.preview_image);
            SubsamplingScaleImageView subsamplingScaleImageView = (SubsamplingScaleImageView) viewInflate.findViewById(R.id.longImg);
            ImageView imageView = (ImageView) viewInflate.findViewById(R.id.iv_play);
            final LocalMedia localMedia = (LocalMedia) PictureExternalPreviewActivity.this.images.get(i);
            if (PictureExternalPreviewActivity.this.config.isAutoScalePreviewImage) {
                float fMin = Math.min(localMedia.getWidth(), localMedia.getHeight());
                float fMax = Math.max(localMedia.getHeight(), localMedia.getWidth());
                if (fMin > 0.0f && fMax > 0.0f) {
                    int iCeil = (int) Math.ceil((fMax * fMin) / fMin);
                    FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) photoView.getLayoutParams();
                    layoutParams.width = PictureExternalPreviewActivity.this.mScreenWidth;
                    if (iCeil < PictureExternalPreviewActivity.this.mScreenHeight) {
                        iCeil += PictureExternalPreviewActivity.this.mScreenHeight;
                    }
                    layoutParams.height = iCeil;
                    layoutParams.gravity = 17;
                }
            }
            if (localMedia.isCut() && !localMedia.isCompressed()) {
                compressPath = localMedia.getCutPath();
            } else if (localMedia.isCompressed() || (localMedia.isCut() && localMedia.isCompressed())) {
                compressPath = localMedia.getCompressPath();
            } else if (!TextUtils.isEmpty(localMedia.getAndroidQToPath())) {
                compressPath = localMedia.getAndroidQToPath();
            } else {
                compressPath = localMedia.getPath();
            }
            final String str = compressPath;
            boolean zIsHasHttp = PictureMimeType.isHasHttp(str);
            String imageMimeType = (zIsHasHttp && TextUtils.isEmpty(localMedia.getMimeType())) ? PictureMimeType.getImageMimeType(localMedia.getPath()) : localMedia.getMimeType();
            boolean zIsHasVideo = PictureMimeType.isHasVideo(imageMimeType);
            int i2 = 8;
            imageView.setVisibility(zIsHasVideo ? 0 : 8);
            boolean zIsGif = PictureMimeType.isGif(imageMimeType);
            boolean zIsLongImg = MediaUtils.isLongImg(localMedia);
            photoView.setVisibility((!zIsLongImg || zIsGif) ? 0 : 8);
            if (zIsLongImg && !zIsGif) {
                i2 = 0;
            }
            subsamplingScaleImageView.setVisibility(i2);
            if (zIsGif && !localMedia.isCompressed()) {
                if (PictureSelectionConfig.imageEngine != null) {
                    PictureSelectionConfig.imageEngine.loadAsGifImage(PictureExternalPreviewActivity.this.getContext(), str, photoView);
                }
            } else if (PictureSelectionConfig.imageEngine != null) {
                if (zIsHasHttp) {
                    PictureSelectionConfig.imageEngine.loadImage(viewInflate.getContext(), str, photoView, subsamplingScaleImageView, new OnImageCompleteCallback() { // from class: com.luck.picture.lib.PictureExternalPreviewActivity.SimpleFragmentAdapter.1
                        @Override // com.luck.picture.lib.listener.OnImageCompleteCallback
                        public void onShowLoading() {
                            if (TextUtils.equals(str, ((LocalMedia) PictureExternalPreviewActivity.this.images.get(PictureExternalPreviewActivity.this.viewPager.getCurrentItem())).getPath())) {
                                PictureExternalPreviewActivity.this.showPleaseDialog();
                            }
                        }

                        @Override // com.luck.picture.lib.listener.OnImageCompleteCallback
                        public void onHideLoading() {
                            PictureExternalPreviewActivity.this.dismissDialog();
                        }
                    });
                } else if (zIsLongImg) {
                    PictureExternalPreviewActivity.this.displayLongPic(PictureMimeType.isContent(str) ? Uri.parse(str) : Uri.fromFile(new File(str)), subsamplingScaleImageView);
                } else {
                    PictureSelectionConfig.imageEngine.loadImage(viewInflate.getContext(), str, photoView);
                }
            }
            photoView.setOnViewTapListener(new OnViewTapListener() { // from class: com.luck.picture.lib.PictureExternalPreviewActivity$SimpleFragmentAdapter$$ExternalSyntheticLambda0
                @Override // com.luck.picture.lib.photoview.OnViewTapListener
                public final void onViewTap(View view, float f, float f2) {
                    this.f$0.m762x43ca1726(view, f, f2);
                }
            });
            subsamplingScaleImageView.setOnClickListener(new View.OnClickListener() { // from class: com.luck.picture.lib.PictureExternalPreviewActivity$SimpleFragmentAdapter$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m763x777841e7(view);
                }
            });
            if (!zIsHasVideo) {
                subsamplingScaleImageView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.luck.picture.lib.PictureExternalPreviewActivity$SimpleFragmentAdapter$$ExternalSyntheticLambda2
                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view) {
                        return this.f$0.m764xab266ca8(str, localMedia, view);
                    }
                });
            }
            if (!zIsHasVideo) {
                photoView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.luck.picture.lib.PictureExternalPreviewActivity$SimpleFragmentAdapter$$ExternalSyntheticLambda3
                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view) {
                        return this.f$0.m765xded49769(str, localMedia, view);
                    }
                });
            }
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.luck.picture.lib.PictureExternalPreviewActivity$SimpleFragmentAdapter$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PictureExternalPreviewActivity.SimpleFragmentAdapter.lambda$instantiateItem$4(localMedia, str, viewGroup, view);
                }
            });
            viewGroup.addView(viewInflate, 0);
            return viewInflate;
        }

        /* JADX INFO: renamed from: lambda$instantiateItem$0$com-luck-picture-lib-PictureExternalPreviewActivity$SimpleFragmentAdapter, reason: not valid java name */
        /* synthetic */ void m762x43ca1726(View view, float f, float f2) {
            PictureExternalPreviewActivity.this.finish();
            PictureExternalPreviewActivity.this.exitAnimation();
        }

        /* JADX INFO: renamed from: lambda$instantiateItem$1$com-luck-picture-lib-PictureExternalPreviewActivity$SimpleFragmentAdapter, reason: not valid java name */
        /* synthetic */ void m763x777841e7(View view) {
            PictureExternalPreviewActivity.this.finish();
            PictureExternalPreviewActivity.this.exitAnimation();
        }

        /* JADX INFO: renamed from: lambda$instantiateItem$2$com-luck-picture-lib-PictureExternalPreviewActivity$SimpleFragmentAdapter, reason: not valid java name */
        /* synthetic */ boolean m764xab266ca8(String str, LocalMedia localMedia, View view) {
            if (PictureExternalPreviewActivity.this.config.isNotPreviewDownload) {
                if (PermissionChecker.checkSelfPermission(PictureExternalPreviewActivity.this.getContext(), "android.permission.WRITE_EXTERNAL_STORAGE")) {
                    PictureExternalPreviewActivity.this.downloadPath = str;
                    String imageMimeType = (PictureMimeType.isHasHttp(str) && TextUtils.isEmpty(localMedia.getMimeType())) ? PictureMimeType.getImageMimeType(localMedia.getPath()) : localMedia.getMimeType();
                    PictureExternalPreviewActivity pictureExternalPreviewActivity = PictureExternalPreviewActivity.this;
                    if (PictureMimeType.isJPG(imageMimeType)) {
                        imageMimeType = "image/jpeg";
                    }
                    pictureExternalPreviewActivity.mMimeType = imageMimeType;
                    PictureExternalPreviewActivity.this.showDownLoadDialog();
                } else {
                    PermissionChecker.requestPermissions(PictureExternalPreviewActivity.this, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 1);
                }
            }
            return true;
        }

        /* JADX INFO: renamed from: lambda$instantiateItem$3$com-luck-picture-lib-PictureExternalPreviewActivity$SimpleFragmentAdapter, reason: not valid java name */
        /* synthetic */ boolean m765xded49769(String str, LocalMedia localMedia, View view) {
            if (PictureExternalPreviewActivity.this.config.isNotPreviewDownload) {
                if (PermissionChecker.checkSelfPermission(PictureExternalPreviewActivity.this.getContext(), "android.permission.WRITE_EXTERNAL_STORAGE")) {
                    PictureExternalPreviewActivity.this.downloadPath = str;
                    String imageMimeType = (PictureMimeType.isHasHttp(str) && TextUtils.isEmpty(localMedia.getMimeType())) ? PictureMimeType.getImageMimeType(localMedia.getPath()) : localMedia.getMimeType();
                    PictureExternalPreviewActivity pictureExternalPreviewActivity = PictureExternalPreviewActivity.this;
                    if (PictureMimeType.isJPG(imageMimeType)) {
                        imageMimeType = "image/jpeg";
                    }
                    pictureExternalPreviewActivity.mMimeType = imageMimeType;
                    PictureExternalPreviewActivity.this.showDownLoadDialog();
                } else {
                    PermissionChecker.requestPermissions(PictureExternalPreviewActivity.this, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 1);
                }
            }
            return true;
        }

        static /* synthetic */ void lambda$instantiateItem$4(LocalMedia localMedia, String str, ViewGroup viewGroup, View view) {
            if (PictureSelectionConfig.customVideoPlayCallback != null) {
                PictureSelectionConfig.customVideoPlayCallback.startPlayVideo(localMedia);
                return;
            }
            Intent intent = new Intent();
            Bundle bundle = new Bundle();
            bundle.putString(PictureConfig.EXTRA_VIDEO_PATH, str);
            intent.putExtras(bundle);
            JumpUtils.startPictureVideoPlayActivity(viewGroup.getContext(), bundle, PictureConfig.PREVIEW_VIDEO_CODE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void displayLongPic(Uri uri, SubsamplingScaleImageView subsamplingScaleImageView) {
        subsamplingScaleImageView.setQuickScaleEnabled(true);
        subsamplingScaleImageView.setZoomEnabled(true);
        subsamplingScaleImageView.setDoubleTapZoomDuration(100);
        subsamplingScaleImageView.setMinimumScaleType(2);
        subsamplingScaleImageView.setDoubleTapZoomDpi(2);
        subsamplingScaleImageView.setImage(ImageSource.uri(uri), new ImageViewState(0.0f, new PointF(0.0f, 0.0f), 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showDownLoadDialog() {
        if (isFinishing() || TextUtils.isEmpty(this.downloadPath)) {
            return;
        }
        final PictureCustomDialog pictureCustomDialog = new PictureCustomDialog(getContext(), R.layout.picture_wind_base_dialog);
        Button button = (Button) pictureCustomDialog.findViewById(R.id.btn_cancel);
        Button button2 = (Button) pictureCustomDialog.findViewById(R.id.btn_commit);
        TextView textView = (TextView) pictureCustomDialog.findViewById(R.id.tvTitle);
        TextView textView2 = (TextView) pictureCustomDialog.findViewById(R.id.tv_content);
        textView.setText(getString(R.string.picture_prompt));
        textView2.setText(getString(R.string.picture_prompt_content));
        button.setOnClickListener(new View.OnClickListener() { // from class: com.luck.picture.lib.PictureExternalPreviewActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m760xa1700887(pictureCustomDialog, view);
            }
        });
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.luck.picture.lib.PictureExternalPreviewActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws Throwable {
                this.f$0.m761x2eaaba08(pictureCustomDialog, view);
            }
        });
        pictureCustomDialog.show();
    }

    /* JADX INFO: renamed from: lambda$showDownLoadDialog$0$com-luck-picture-lib-PictureExternalPreviewActivity, reason: not valid java name */
    /* synthetic */ void m760xa1700887(PictureCustomDialog pictureCustomDialog, View view) {
        if (isFinishing()) {
            return;
        }
        pictureCustomDialog.dismiss();
    }

    /* JADX INFO: renamed from: lambda$showDownLoadDialog$1$com-luck-picture-lib-PictureExternalPreviewActivity, reason: not valid java name */
    /* synthetic */ void m761x2eaaba08(PictureCustomDialog pictureCustomDialog, View view) throws Throwable {
        if (PictureMimeType.isHasHttp(this.downloadPath)) {
            showPleaseDialog();
            PictureThreadUtils.executeByIo(new PictureThreadUtils.SimpleTask<String>() { // from class: com.luck.picture.lib.PictureExternalPreviewActivity.2
                @Override // com.luck.picture.lib.thread.PictureThreadUtils.Task
                public String doInBackground() {
                    PictureExternalPreviewActivity pictureExternalPreviewActivity = PictureExternalPreviewActivity.this;
                    return pictureExternalPreviewActivity.showLoadingImage(pictureExternalPreviewActivity.downloadPath);
                }

                @Override // com.luck.picture.lib.thread.PictureThreadUtils.Task
                public void onSuccess(String str) {
                    PictureThreadUtils.cancel(PictureThreadUtils.getIoPool());
                    PictureExternalPreviewActivity.this.onSuccessful(str);
                    PictureExternalPreviewActivity.this.dismissDialog();
                }
            });
        } else if (SdkVersionUtils.checkedAndroid_Q()) {
            savePictureAlbumAndroidQ(PictureMimeType.isContent(this.downloadPath) ? Uri.parse(this.downloadPath) : Uri.fromFile(new File(this.downloadPath)));
        } else {
            savePictureAlbum();
        }
        if (isFinishing()) {
            return;
        }
        pictureCustomDialog.dismiss();
    }

    private void savePictureAlbum() throws Throwable {
        File externalFilesDir;
        String lastImgSuffix = PictureMimeType.getLastImgSuffix(this.mMimeType);
        String externalStorageState = Environment.getExternalStorageState();
        if (externalStorageState.equals("mounted")) {
            externalFilesDir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM);
        } else {
            externalFilesDir = getContext().getExternalFilesDir(Environment.DIRECTORY_PICTURES);
        }
        if (externalFilesDir != null && !externalFilesDir.exists()) {
            externalFilesDir.mkdirs();
        }
        File file = new File((SdkVersionUtils.checkedAndroid_Q() || !externalStorageState.equals("mounted")) ? externalFilesDir.getAbsolutePath() : externalFilesDir.getAbsolutePath() + File.separator + PictureMimeType.CAMERA + File.separator);
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file, DateUtils.getCreateFileName("IMG_") + lastImgSuffix);
        PictureFileUtils.copyFile(this.downloadPath, file2.getAbsolutePath());
        onSuccessful(file2.getAbsolutePath());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSuccessful(String str) {
        if (TextUtils.isEmpty(str)) {
            ToastUtils.s(getContext(), getString(R.string.picture_save_error));
        } else {
            new PictureMediaScannerConnection(getContext(), str, null);
            ToastUtils.s(getContext(), getString(R.string.picture_save_success) + ReactEditTextInputConnectionWrapper.NEWLINE_RAW_VALUE + str);
        }
    }

    private void savePictureAlbumAndroidQ(final Uri uri) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("_display_name", DateUtils.getCreateFileName("IMG_"));
        contentValues.put("datetaken", ValueOf.toString(Long.valueOf(System.currentTimeMillis())));
        contentValues.put("mime_type", this.mMimeType);
        contentValues.put("relative_path", PictureMimeType.DCIM);
        final Uri uriInsert = getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
        if (uriInsert == null) {
            ToastUtils.s(getContext(), getString(R.string.picture_save_error));
        } else {
            PictureThreadUtils.executeByIo(new PictureThreadUtils.SimpleTask<String>() { // from class: com.luck.picture.lib.PictureExternalPreviewActivity.3
                @Override // com.luck.picture.lib.thread.PictureThreadUtils.Task
                public String doInBackground() {
                    try {
                        return PictureFileUtils.writeFileFromIS(PictureContentResolver.getContentResolverOpenInputStream(PictureExternalPreviewActivity.this.getContext(), uri), PictureContentResolver.getContentResolverOpenOutputStream(PictureExternalPreviewActivity.this.getContext(), uriInsert)) ? PictureFileUtils.getPath(PictureExternalPreviewActivity.this.getContext(), uriInsert) : "";
                    } catch (Exception e) {
                        e.printStackTrace();
                        return "";
                    }
                }

                @Override // com.luck.picture.lib.thread.PictureThreadUtils.Task
                public void onSuccess(String str) {
                    PictureThreadUtils.cancel(PictureThreadUtils.getIoPool());
                    PictureExternalPreviewActivity.this.onSuccessful(str);
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v3 */
    public String showLoadingImage(String str) throws Throwable {
        InputStream inputStreamOpenStream;
        Uri uriFromFile;
        OutputStream contentResolverOpenOutputStream;
        File externalFilesDir;
        ?? r1 = 0;
        r1 = 0;
        try {
            try {
                try {
                    if (SdkVersionUtils.checkedAndroid_Q()) {
                        uriFromFile = MediaUtils.createImageUri(getContext(), "", this.mMimeType);
                    } else {
                        String lastImgSuffix = PictureMimeType.getLastImgSuffix(this.mMimeType);
                        String externalStorageState = Environment.getExternalStorageState();
                        if (externalStorageState.equals("mounted")) {
                            externalFilesDir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM);
                        } else {
                            externalFilesDir = getContext().getExternalFilesDir(Environment.DIRECTORY_PICTURES);
                        }
                        if (!externalFilesDir.exists()) {
                            externalFilesDir.mkdirs();
                        }
                        File file = new File(!externalStorageState.equals("mounted") ? externalFilesDir.getAbsolutePath() : externalFilesDir.getAbsolutePath() + File.separator + PictureMimeType.CAMERA + File.separator);
                        if (!file.exists()) {
                            file.mkdirs();
                        }
                        uriFromFile = Uri.fromFile(new File(file, DateUtils.getCreateFileName("IMG_") + lastImgSuffix));
                    }
                } catch (Throwable th) {
                    r1 = str;
                    th = th;
                }
            } catch (Throwable th2) {
                th = th2;
                contentResolverOpenOutputStream = null;
            }
            try {
                contentResolverOpenOutputStream = PictureContentResolver.getContentResolverOpenOutputStream(getContext(), uriFromFile);
                try {
                    inputStreamOpenStream = new URL(str).openStream();
                    try {
                        if (PictureFileUtils.writeFileFromIS(inputStreamOpenStream, contentResolverOpenOutputStream)) {
                            String path = PictureFileUtils.getPath(this, uriFromFile);
                            PictureFileUtils.close(inputStreamOpenStream);
                            PictureFileUtils.close(contentResolverOpenOutputStream);
                            return path;
                        }
                    } catch (Exception unused) {
                        if (SdkVersionUtils.checkedAndroid_Q()) {
                            MediaUtils.deleteUri(getContext(), uriFromFile);
                        }
                    }
                } catch (Exception unused2) {
                    inputStreamOpenStream = null;
                } catch (Throwable th3) {
                    th = th3;
                    PictureFileUtils.close(r1);
                    PictureFileUtils.close(contentResolverOpenOutputStream);
                    throw th;
                }
            } catch (Exception unused3) {
                inputStreamOpenStream = null;
                contentResolverOpenOutputStream = null;
            }
        } catch (Exception unused4) {
            inputStreamOpenStream = null;
            uriFromFile = null;
            contentResolverOpenOutputStream = null;
        }
        PictureFileUtils.close(inputStreamOpenStream);
        PictureFileUtils.close(contentResolverOpenOutputStream);
        return null;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (SdkVersionUtils.checkedAndroid_Q()) {
            finishAfterTransition();
        } else {
            super.onBackPressed();
        }
        finish();
        exitAnimation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void exitAnimation() {
        overridePendingTransition(R.anim.picture_anim_fade_in, PictureSelectionConfig.windowAnimationStyle.activityPreviewExitAnimation);
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        SimpleFragmentAdapter simpleFragmentAdapter = this.adapter;
        if (simpleFragmentAdapter != null) {
            simpleFragmentAdapter.clear();
        }
        PictureSelectionConfig.destroy();
    }

    @Override // com.luck.picture.lib.PictureBaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 1) {
            for (int i2 : iArr) {
                if (i2 == 0) {
                    showDownLoadDialog();
                } else {
                    ToastUtils.s(getContext(), getString(R.string.picture_jurisdiction));
                }
            }
        }
    }
}
