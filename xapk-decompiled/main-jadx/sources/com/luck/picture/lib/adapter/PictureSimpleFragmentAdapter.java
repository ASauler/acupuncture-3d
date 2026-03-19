package com.luck.picture.lib.adapter;

import android.content.Context;
import android.content.Intent;
import android.graphics.PointF;
import android.net.Uri;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.viewpager.widget.PagerAdapter;
import com.luck.picture.lib.R;
import com.luck.picture.lib.config.PictureConfig;
import com.luck.picture.lib.config.PictureMimeType;
import com.luck.picture.lib.config.PictureSelectionConfig;
import com.luck.picture.lib.entity.LocalMedia;
import com.luck.picture.lib.photoview.OnViewTapListener;
import com.luck.picture.lib.photoview.PhotoView;
import com.luck.picture.lib.tools.JumpUtils;
import com.luck.picture.lib.tools.MediaUtils;
import com.luck.picture.lib.tools.ScreenUtils;
import com.luck.picture.lib.widget.longimage.ImageSource;
import com.luck.picture.lib.widget.longimage.ImageViewState;
import com.luck.picture.lib.widget.longimage.SubsamplingScaleImageView;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class PictureSimpleFragmentAdapter extends PagerAdapter {
    private static final int MAX_CACHE_SIZE = 20;
    private final PictureSelectionConfig config;
    private final List<LocalMedia> data = new ArrayList();
    private final SparseArray<View> mCacheView = new SparseArray<>();
    private final int mScreenHeight;
    private final int mScreenWidth;
    private final OnCallBackActivity onBackPressed;

    public interface OnCallBackActivity {
        void onActivityBackPressed();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(Object obj) {
        return -2;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }

    public void clear() {
        this.mCacheView.clear();
    }

    public void removeCacheView(int i) {
        if (i < this.mCacheView.size()) {
            this.mCacheView.removeAt(i);
        }
    }

    public PictureSimpleFragmentAdapter(Context context, PictureSelectionConfig pictureSelectionConfig, OnCallBackActivity onCallBackActivity) {
        this.config = pictureSelectionConfig;
        this.onBackPressed = onCallBackActivity;
        this.mScreenWidth = ScreenUtils.getScreenWidth(context);
        this.mScreenHeight = ScreenUtils.getScreenHeight(context);
    }

    public void bindData(List<LocalMedia> list) {
        if (list != null) {
            this.data.clear();
            this.data.addAll(list);
        }
    }

    public List<LocalMedia> getData() {
        return this.data;
    }

    public int getSize() {
        return this.data.size();
    }

    public void remove(int i) {
        if (getSize() > i) {
            this.data.remove(i);
        }
    }

    public LocalMedia getItem(int i) {
        if (getSize() <= 0 || i >= getSize()) {
            return null;
        }
        return this.data.get(i);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.data.size();
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
        final String compressPath;
        View viewInflate = this.mCacheView.get(i);
        if (viewInflate == null) {
            viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.picture_image_preview, viewGroup, false);
            this.mCacheView.put(i, viewInflate);
        }
        PhotoView photoView = (PhotoView) viewInflate.findViewById(R.id.preview_image);
        SubsamplingScaleImageView subsamplingScaleImageView = (SubsamplingScaleImageView) viewInflate.findViewById(R.id.longImg);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.iv_play);
        final LocalMedia item = getItem(i);
        if (this.config.isAutoScalePreviewImage) {
            float fMin = Math.min(item.getWidth(), item.getHeight());
            float fMax = Math.max(item.getHeight(), item.getWidth());
            if (fMin > 0.0f && fMax > 0.0f) {
                int iCeil = (int) Math.ceil((fMax * fMin) / fMin);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) photoView.getLayoutParams();
                layoutParams.width = this.mScreenWidth;
                int i2 = this.mScreenHeight;
                if (iCeil < i2) {
                    iCeil += i2;
                }
                layoutParams.height = iCeil;
                layoutParams.gravity = 17;
            }
        }
        String mimeType = item.getMimeType();
        if (item.isCut() && !item.isCompressed()) {
            compressPath = item.getCutPath();
        } else if (item.isCompressed() || (item.isCut() && item.isCompressed())) {
            compressPath = item.getCompressPath();
        } else {
            compressPath = item.getPath();
        }
        boolean zIsGif = PictureMimeType.isGif(mimeType);
        int i3 = 8;
        imageView.setVisibility(PictureMimeType.isHasVideo(mimeType) ? 0 : 8);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.luck.picture.lib.adapter.PictureSimpleFragmentAdapter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PictureSimpleFragmentAdapter.lambda$instantiateItem$0(item, compressPath, viewGroup, view);
            }
        });
        boolean zIsLongImg = MediaUtils.isLongImg(item);
        photoView.setVisibility((!zIsLongImg || zIsGif) ? 0 : 8);
        photoView.setOnViewTapListener(new OnViewTapListener() { // from class: com.luck.picture.lib.adapter.PictureSimpleFragmentAdapter$$ExternalSyntheticLambda1
            @Override // com.luck.picture.lib.photoview.OnViewTapListener
            public final void onViewTap(View view, float f, float f2) {
                this.f$0.m786xffde08bd(view, f, f2);
            }
        });
        if (zIsLongImg && !zIsGif) {
            i3 = 0;
        }
        subsamplingScaleImageView.setVisibility(i3);
        subsamplingScaleImageView.setOnClickListener(new View.OnClickListener() { // from class: com.luck.picture.lib.adapter.PictureSimpleFragmentAdapter$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m787x1093d57e(view);
            }
        });
        if (zIsGif && !item.isCompressed()) {
            if (PictureSelectionConfig.imageEngine != null) {
                PictureSelectionConfig.imageEngine.loadAsGifImage(viewInflate.getContext(), compressPath, photoView);
            }
        } else if (PictureSelectionConfig.imageEngine != null) {
            if (zIsLongImg) {
                displayLongPic(PictureMimeType.isContent(compressPath) ? Uri.parse(compressPath) : Uri.fromFile(new File(compressPath)), subsamplingScaleImageView);
            } else {
                PictureSelectionConfig.imageEngine.loadImage(viewInflate.getContext(), compressPath, photoView);
            }
        }
        viewGroup.addView(viewInflate, 0);
        return viewInflate;
    }

    static /* synthetic */ void lambda$instantiateItem$0(LocalMedia localMedia, String str, ViewGroup viewGroup, View view) {
        if (PictureSelectionConfig.customVideoPlayCallback != null) {
            PictureSelectionConfig.customVideoPlayCallback.startPlayVideo(localMedia);
            return;
        }
        Intent intent = new Intent();
        Bundle bundle = new Bundle();
        bundle.putBoolean(PictureConfig.EXTRA_PREVIEW_VIDEO, true);
        bundle.putString(PictureConfig.EXTRA_VIDEO_PATH, str);
        intent.putExtras(bundle);
        JumpUtils.startPictureVideoPlayActivity(viewGroup.getContext(), bundle, PictureConfig.PREVIEW_VIDEO_CODE);
    }

    /* JADX INFO: renamed from: lambda$instantiateItem$1$com-luck-picture-lib-adapter-PictureSimpleFragmentAdapter, reason: not valid java name */
    /* synthetic */ void m786xffde08bd(View view, float f, float f2) {
        OnCallBackActivity onCallBackActivity = this.onBackPressed;
        if (onCallBackActivity != null) {
            onCallBackActivity.onActivityBackPressed();
        }
    }

    /* JADX INFO: renamed from: lambda$instantiateItem$2$com-luck-picture-lib-adapter-PictureSimpleFragmentAdapter, reason: not valid java name */
    /* synthetic */ void m787x1093d57e(View view) {
        OnCallBackActivity onCallBackActivity = this.onBackPressed;
        if (onCallBackActivity != null) {
            onCallBackActivity.onActivityBackPressed();
        }
    }

    private void displayLongPic(Uri uri, SubsamplingScaleImageView subsamplingScaleImageView) {
        subsamplingScaleImageView.setQuickScaleEnabled(true);
        subsamplingScaleImageView.setZoomEnabled(true);
        subsamplingScaleImageView.setDoubleTapZoomDuration(100);
        subsamplingScaleImageView.setMinimumScaleType(2);
        subsamplingScaleImageView.setDoubleTapZoomDpi(2);
        subsamplingScaleImageView.setImage(ImageSource.uri(uri), new ImageViewState(0.0f, new PointF(0.0f, 0.0f), 0));
    }
}
