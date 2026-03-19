package com.syanpicker;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.core.graphics.drawable.RoundedBitmapDrawable;
import androidx.core.graphics.drawable.RoundedBitmapDrawableFactory;
import com.bumptech.glide.Glide;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.target.BitmapImageViewTarget;
import com.bumptech.glide.request.target.ImageViewTarget;
import com.luck.picture.lib.engine.ImageEngine;
import com.luck.picture.lib.listener.OnImageCompleteCallback;
import com.luck.picture.lib.tools.MediaUtils;
import com.luck.picture.lib.widget.longimage.ImageSource;
import com.luck.picture.lib.widget.longimage.ImageViewState;
import com.luck.picture.lib.widget.longimage.SubsamplingScaleImageView;

/* JADX INFO: loaded from: classes2.dex */
public class GlideEngine implements ImageEngine {
    private static GlideEngine instance;

    @Override // com.luck.picture.lib.engine.ImageEngine
    public void loadImage(Context context, String str, ImageView imageView) {
        Glide.with(context).load(str).into(imageView);
    }

    @Override // com.luck.picture.lib.engine.ImageEngine
    public void loadImage(Context context, String str, final ImageView imageView, final SubsamplingScaleImageView subsamplingScaleImageView, final OnImageCompleteCallback onImageCompleteCallback) {
        Glide.with(context).asBitmap().load(str).into(new ImageViewTarget<Bitmap>(imageView) { // from class: com.syanpicker.GlideEngine.1
            @Override // com.bumptech.glide.request.target.ImageViewTarget, com.bumptech.glide.request.target.ViewTarget, com.bumptech.glide.request.target.BaseTarget, com.bumptech.glide.request.target.Target
            public void onLoadStarted(Drawable drawable) {
                super.onLoadStarted(drawable);
                OnImageCompleteCallback onImageCompleteCallback2 = onImageCompleteCallback;
                if (onImageCompleteCallback2 != null) {
                    onImageCompleteCallback2.onShowLoading();
                }
            }

            @Override // com.bumptech.glide.request.target.ImageViewTarget, com.bumptech.glide.request.target.BaseTarget, com.bumptech.glide.request.target.Target
            public void onLoadFailed(Drawable drawable) {
                super.onLoadFailed(drawable);
                OnImageCompleteCallback onImageCompleteCallback2 = onImageCompleteCallback;
                if (onImageCompleteCallback2 != null) {
                    onImageCompleteCallback2.onHideLoading();
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.bumptech.glide.request.target.ImageViewTarget
            public void setResource(Bitmap bitmap) {
                OnImageCompleteCallback onImageCompleteCallback2 = onImageCompleteCallback;
                if (onImageCompleteCallback2 != null) {
                    onImageCompleteCallback2.onHideLoading();
                }
                if (bitmap != null) {
                    boolean zIsLongImg = MediaUtils.isLongImg(bitmap.getWidth(), bitmap.getHeight());
                    subsamplingScaleImageView.setVisibility(zIsLongImg ? 0 : 8);
                    imageView.setVisibility(zIsLongImg ? 8 : 0);
                    if (zIsLongImg) {
                        subsamplingScaleImageView.setQuickScaleEnabled(true);
                        subsamplingScaleImageView.setZoomEnabled(true);
                        subsamplingScaleImageView.setPanEnabled(true);
                        subsamplingScaleImageView.setDoubleTapZoomDuration(100);
                        subsamplingScaleImageView.setMinimumScaleType(2);
                        subsamplingScaleImageView.setDoubleTapZoomDpi(2);
                        subsamplingScaleImageView.setImage(ImageSource.bitmap(bitmap), new ImageViewState(0.0f, new PointF(0.0f, 0.0f), 0));
                        return;
                    }
                    imageView.setImageBitmap(bitmap);
                }
            }
        });
    }

    @Override // com.luck.picture.lib.engine.ImageEngine
    public void loadImage(Context context, String str, final ImageView imageView, final SubsamplingScaleImageView subsamplingScaleImageView) {
        Glide.with(context).asBitmap().load(str).into(new ImageViewTarget<Bitmap>(imageView) { // from class: com.syanpicker.GlideEngine.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.bumptech.glide.request.target.ImageViewTarget
            public void setResource(Bitmap bitmap) {
                if (bitmap != null) {
                    boolean zIsLongImg = MediaUtils.isLongImg(bitmap.getWidth(), bitmap.getHeight());
                    subsamplingScaleImageView.setVisibility(zIsLongImg ? 0 : 8);
                    imageView.setVisibility(zIsLongImg ? 8 : 0);
                    if (zIsLongImg) {
                        subsamplingScaleImageView.setQuickScaleEnabled(true);
                        subsamplingScaleImageView.setZoomEnabled(true);
                        subsamplingScaleImageView.setPanEnabled(true);
                        subsamplingScaleImageView.setDoubleTapZoomDuration(100);
                        subsamplingScaleImageView.setMinimumScaleType(2);
                        subsamplingScaleImageView.setDoubleTapZoomDpi(2);
                        subsamplingScaleImageView.setImage(ImageSource.bitmap(bitmap), new ImageViewState(0.0f, new PointF(0.0f, 0.0f), 0));
                        return;
                    }
                    imageView.setImageBitmap(bitmap);
                }
            }
        });
    }

    @Override // com.luck.picture.lib.engine.ImageEngine
    public void loadFolderImage(final Context context, String str, final ImageView imageView) {
        Glide.with(context).asBitmap().load(str).override(180, 180).centerCrop().sizeMultiplier(0.5f).apply((BaseRequestOptions<?>) new RequestOptions().placeholder(R.drawable.picture_image_placeholder)).into(new BitmapImageViewTarget(imageView) { // from class: com.syanpicker.GlideEngine.3
            /* JADX INFO: Access modifiers changed from: protected */
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.bumptech.glide.request.target.BitmapImageViewTarget, com.bumptech.glide.request.target.ImageViewTarget
            public void setResource(Bitmap bitmap) {
                RoundedBitmapDrawable roundedBitmapDrawableCreate = RoundedBitmapDrawableFactory.create(context.getResources(), bitmap);
                roundedBitmapDrawableCreate.setCornerRadius(8.0f);
                imageView.setImageDrawable(roundedBitmapDrawableCreate);
            }
        });
    }

    @Override // com.luck.picture.lib.engine.ImageEngine
    public void loadAsGifImage(Context context, String str, ImageView imageView) {
        Glide.with(context).asGif().load(str).into(imageView);
    }

    @Override // com.luck.picture.lib.engine.ImageEngine
    public void loadGridImage(Context context, String str, ImageView imageView) {
        Glide.with(context).load(str).override(200, 200).centerCrop().apply((BaseRequestOptions<?>) new RequestOptions().placeholder(R.drawable.picture_image_placeholder)).into(imageView);
    }

    private GlideEngine() {
    }

    public static GlideEngine createGlideEngine() {
        if (instance == null) {
            synchronized (GlideEngine.class) {
                if (instance == null) {
                    instance = new GlideEngine();
                }
            }
        }
        return instance;
    }
}
