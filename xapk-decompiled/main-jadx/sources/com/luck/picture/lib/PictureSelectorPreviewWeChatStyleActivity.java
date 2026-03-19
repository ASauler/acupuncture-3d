package com.luck.picture.lib;

import android.graphics.Color;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.luck.picture.lib.adapter.PictureWeChatPreviewGalleryAdapter;
import com.luck.picture.lib.config.PictureMimeType;
import com.luck.picture.lib.config.PictureSelectionConfig;
import com.luck.picture.lib.entity.LocalMedia;

/* JADX INFO: loaded from: classes2.dex */
public class PictureSelectorPreviewWeChatStyleActivity extends PicturePreviewActivity {
    private static final int ALPHA_DURATION = 300;
    private static final int GALLERY_MAX_COUNT = 5;
    private View bottomLine;
    private PictureWeChatPreviewGalleryAdapter mGalleryAdapter;
    private RecyclerView mRvGallery;
    private TextView mTvSelected;

    @Override // com.luck.picture.lib.PicturePreviewActivity, com.luck.picture.lib.PictureBaseActivity
    public int getResourceId() {
        return R.layout.picture_wechat_style_preview;
    }

    private void goneParent() {
        if (this.tvMediaNum.getVisibility() == 0) {
            this.tvMediaNum.setVisibility(8);
        }
        if (this.mTvPictureOk.getVisibility() == 0) {
            this.mTvPictureOk.setVisibility(8);
        }
        if (TextUtils.isEmpty(this.check.getText())) {
            return;
        }
        this.check.setText("");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00e0, code lost:
    
        r5 = true;
     */
    @Override // com.luck.picture.lib.PicturePreviewActivity, com.luck.picture.lib.PictureBaseActivity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void initWidgets() {
        /*
            Method dump skipped, instruction units count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.luck.picture.lib.PictureSelectorPreviewWeChatStyleActivity.initWidgets():void");
    }

    /* JADX INFO: renamed from: lambda$initWidgets$0$com-luck-picture-lib-PictureSelectorPreviewWeChatStyleActivity, reason: not valid java name */
    /* synthetic */ void m780x9c2efa1e(int i, LocalMedia localMedia, View view) {
        if (this.viewPager == null || localMedia == null || !isEqualsDirectory(localMedia.getParentFolderName(), this.currentDirectory)) {
            return;
        }
        if (!this.isBottomPreview) {
            i = this.isShowCamera ? localMedia.position - 1 : localMedia.position;
        }
        this.viewPager.setCurrentItem(i);
    }

    private boolean isEqualsDirectory(String str, String str2) {
        return this.isBottomPreview || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || str2.equals(getString(R.string.picture_camera_roll)) || str.equals(str2);
    }

    @Override // com.luck.picture.lib.PicturePreviewActivity, com.luck.picture.lib.PictureBaseActivity
    public void initPictureSelectorStyle() {
        super.initPictureSelectorStyle();
        if (PictureSelectionConfig.uiStyle != null) {
            if (PictureSelectionConfig.uiStyle.picture_top_titleRightDefaultText != 0) {
                this.mTvPictureRight.setText(getString(PictureSelectionConfig.uiStyle.picture_top_titleRightDefaultText));
            }
            if (PictureSelectionConfig.uiStyle.picture_top_titleRightTextNormalBackground != 0) {
                this.mTvPictureRight.setBackgroundResource(PictureSelectionConfig.uiStyle.picture_top_titleRightTextNormalBackground);
            } else {
                this.mTvPictureRight.setBackgroundResource(R.drawable.picture_send_button_bg);
            }
            if (PictureSelectionConfig.uiStyle.picture_top_titleRightTextSize != 0) {
                this.mTvPictureRight.setTextSize(PictureSelectionConfig.uiStyle.picture_top_titleRightTextSize);
            }
            if (PictureSelectionConfig.uiStyle.picture_bottom_selectedText != 0) {
                this.mTvSelected.setText(getString(PictureSelectionConfig.uiStyle.picture_bottom_selectedText));
            }
            if (PictureSelectionConfig.uiStyle.picture_bottom_selectedTextSize != 0) {
                this.mTvSelected.setTextSize(PictureSelectionConfig.uiStyle.picture_bottom_selectedTextSize);
            }
            if (PictureSelectionConfig.uiStyle.picture_bottom_selectedTextColor != 0) {
                this.mTvSelected.setTextColor(PictureSelectionConfig.uiStyle.picture_bottom_selectedTextColor);
            }
            if (PictureSelectionConfig.uiStyle.picture_bottom_barBackgroundColor != 0) {
                this.selectBarLayout.setBackgroundColor(PictureSelectionConfig.uiStyle.picture_bottom_barBackgroundColor);
            } else {
                this.selectBarLayout.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.picture_color_half_grey));
            }
            this.mTvPictureRight.setTextColor(ContextCompat.getColor(getContext(), R.color.picture_color_white));
            if (PictureSelectionConfig.uiStyle.picture_bottom_selectedCheckStyle != 0) {
                this.check.setBackgroundResource(PictureSelectionConfig.uiStyle.picture_bottom_selectedCheckStyle);
            } else {
                this.check.setBackgroundResource(R.drawable.picture_wechat_select_cb);
            }
            if (PictureSelectionConfig.uiStyle.picture_top_leftBack != 0) {
                this.pictureLeftBack.setImageResource(PictureSelectionConfig.uiStyle.picture_top_leftBack);
            } else {
                this.pictureLeftBack.setImageResource(R.drawable.picture_icon_back);
            }
            if (PictureSelectionConfig.uiStyle.picture_bottom_gallery_dividerColor != 0) {
                this.bottomLine.setBackgroundColor(PictureSelectionConfig.uiStyle.picture_bottom_gallery_dividerColor);
            }
            if (PictureSelectionConfig.uiStyle.picture_bottom_gallery_backgroundColor != 0) {
                this.mRvGallery.setBackgroundColor(PictureSelectionConfig.uiStyle.picture_bottom_gallery_backgroundColor);
            }
            if (PictureSelectionConfig.uiStyle.picture_bottom_gallery_height > 0) {
                this.mRvGallery.getLayoutParams().height = PictureSelectionConfig.uiStyle.picture_bottom_gallery_height;
            }
            if (this.config.isEditorImage) {
                if (PictureSelectionConfig.uiStyle.picture_bottom_preview_editorTextSize != 0) {
                    this.mPictureEditor.setTextSize(PictureSelectionConfig.uiStyle.picture_bottom_preview_editorTextSize);
                }
                if (PictureSelectionConfig.uiStyle.picture_bottom_preview_editorTextColor != 0) {
                    this.mPictureEditor.setTextColor(PictureSelectionConfig.uiStyle.picture_bottom_preview_editorTextColor);
                }
            }
            if (this.config.isOriginalControl) {
                if (PictureSelectionConfig.uiStyle.picture_bottom_originalPictureTextSize != 0) {
                    this.mCbOriginal.setTextSize(PictureSelectionConfig.uiStyle.picture_bottom_originalPictureTextSize);
                }
                if (PictureSelectionConfig.uiStyle.picture_bottom_originalPictureTextColor != 0) {
                    this.mCbOriginal.setTextColor(PictureSelectionConfig.uiStyle.picture_bottom_originalPictureTextColor);
                } else {
                    this.mCbOriginal.setTextColor(Color.parseColor("#FFFFFF"));
                }
                if (PictureSelectionConfig.uiStyle.picture_bottom_originalPictureCheckStyle != 0) {
                    this.mCbOriginal.setButtonDrawable(PictureSelectionConfig.uiStyle.picture_bottom_originalPictureCheckStyle);
                } else {
                    this.mCbOriginal.setButtonDrawable(R.drawable.picture_original_wechat_checkbox);
                }
            }
        } else if (PictureSelectionConfig.style != null) {
            if (PictureSelectionConfig.style.pictureCompleteBackgroundStyle != 0) {
                this.mTvPictureRight.setBackgroundResource(PictureSelectionConfig.style.pictureCompleteBackgroundStyle);
            } else {
                this.mTvPictureRight.setBackgroundResource(R.drawable.picture_send_button_bg);
            }
            if (PictureSelectionConfig.style.pictureRightTextSize != 0) {
                this.mTvPictureRight.setTextSize(PictureSelectionConfig.style.pictureRightTextSize);
            }
            if (!TextUtils.isEmpty(PictureSelectionConfig.style.pictureWeChatPreviewSelectedText)) {
                this.mTvSelected.setText(PictureSelectionConfig.style.pictureWeChatPreviewSelectedText);
            }
            if (PictureSelectionConfig.style.pictureWeChatPreviewSelectedTextSize != 0) {
                this.mTvSelected.setTextSize(PictureSelectionConfig.style.pictureWeChatPreviewSelectedTextSize);
            }
            if (PictureSelectionConfig.style.picturePreviewBottomBgColor != 0) {
                this.selectBarLayout.setBackgroundColor(PictureSelectionConfig.style.picturePreviewBottomBgColor);
            } else {
                this.selectBarLayout.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.picture_color_half_grey));
            }
            if (PictureSelectionConfig.style.pictureCompleteTextColor != 0) {
                this.mTvPictureRight.setTextColor(PictureSelectionConfig.style.pictureCompleteTextColor);
            } else if (PictureSelectionConfig.style.pictureCancelTextColor != 0) {
                this.mTvPictureRight.setTextColor(PictureSelectionConfig.style.pictureCancelTextColor);
            } else {
                this.mTvPictureRight.setTextColor(ContextCompat.getColor(getContext(), R.color.picture_color_white));
            }
            if (PictureSelectionConfig.style.pictureOriginalFontColor == 0) {
                this.mCbOriginal.setTextColor(ContextCompat.getColor(this, R.color.picture_color_white));
            }
            if (PictureSelectionConfig.style.pictureWeChatChooseStyle != 0) {
                this.check.setBackgroundResource(PictureSelectionConfig.style.pictureWeChatChooseStyle);
            } else {
                this.check.setBackgroundResource(R.drawable.picture_wechat_select_cb);
            }
            if (this.config.isOriginalControl && PictureSelectionConfig.style.pictureOriginalControlStyle == 0) {
                this.mCbOriginal.setButtonDrawable(ContextCompat.getDrawable(this, R.drawable.picture_original_wechat_checkbox));
            }
            if (this.config.isEditorImage) {
                if (PictureSelectionConfig.style.picturePreviewEditorTextSize != 0) {
                    this.mPictureEditor.setTextSize(PictureSelectionConfig.style.picturePreviewEditorTextSize);
                }
                if (PictureSelectionConfig.style.picturePreviewEditorTextColor != 0) {
                    this.mPictureEditor.setTextColor(PictureSelectionConfig.style.picturePreviewEditorTextColor);
                }
            }
            if (PictureSelectionConfig.style.pictureWeChatLeftBackStyle != 0) {
                this.pictureLeftBack.setImageResource(PictureSelectionConfig.style.pictureWeChatLeftBackStyle);
            } else {
                this.pictureLeftBack.setImageResource(R.drawable.picture_icon_back);
            }
            if (!TextUtils.isEmpty(PictureSelectionConfig.style.pictureUnCompleteText)) {
                this.mTvPictureRight.setText(PictureSelectionConfig.style.pictureUnCompleteText);
            }
        } else {
            this.mTvPictureRight.setBackgroundResource(R.drawable.picture_send_button_bg);
            this.mTvPictureRight.setTextColor(ContextCompat.getColor(getContext(), R.color.picture_color_white));
            this.selectBarLayout.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.picture_color_half_grey));
            this.check.setBackgroundResource(R.drawable.picture_wechat_select_cb);
            this.pictureLeftBack.setImageResource(R.drawable.picture_icon_back);
            this.mCbOriginal.setTextColor(ContextCompat.getColor(this, R.color.picture_color_white));
            if (this.config.isOriginalControl) {
                this.mCbOriginal.setButtonDrawable(ContextCompat.getDrawable(this, R.drawable.picture_original_wechat_checkbox));
            }
        }
        onSelectNumChange(false);
    }

    @Override // com.luck.picture.lib.PicturePreviewActivity, android.view.View.OnClickListener
    public void onClick(View view) {
        super.onClick(view);
        if (view.getId() == R.id.picture_right) {
            if (this.selectData.size() != 0) {
                this.mTvPictureOk.performClick();
                return;
            }
            this.btnCheck.performClick();
            if (this.selectData.size() != 0) {
                this.mTvPictureOk.performClick();
            }
        }
    }

    @Override // com.luck.picture.lib.PicturePreviewActivity
    protected void onUpdateSelectedChange(LocalMedia localMedia) {
        onChangeMediaStatus(localMedia);
    }

    @Override // com.luck.picture.lib.PicturePreviewActivity
    protected void onUpdateGalleryChange(LocalMedia localMedia) {
        this.mGalleryAdapter.notifyDataSetChanged();
    }

    @Override // com.luck.picture.lib.PicturePreviewActivity
    protected void onSelectedChange(boolean z, LocalMedia localMedia) {
        if (z) {
            localMedia.setChecked(true);
            if (this.isBottomPreview) {
                this.mGalleryAdapter.getItem(this.position).setMaxSelectEnabledMask(false);
                this.mGalleryAdapter.notifyDataSetChanged();
            } else if (this.config.selectionMode == 1) {
                this.mGalleryAdapter.addSingleMediaToData(localMedia);
            }
        } else {
            localMedia.setChecked(false);
            if (this.isBottomPreview) {
                this.check.setSelected(false);
                this.mGalleryAdapter.getItem(this.position).setMaxSelectEnabledMask(true);
                this.mGalleryAdapter.notifyDataSetChanged();
            } else {
                this.mGalleryAdapter.removeMediaToData(localMedia);
            }
        }
        int itemCount = this.mGalleryAdapter.getItemCount();
        if (itemCount > 5) {
            this.mRvGallery.smoothScrollToPosition(itemCount - 1);
        }
    }

    @Override // com.luck.picture.lib.PicturePreviewActivity
    protected void onPageSelectedChange(LocalMedia localMedia) {
        super.onPageSelectedChange(localMedia);
        goneParent();
        if (this.config.previewEggs) {
            return;
        }
        onChangeMediaStatus(localMedia);
    }

    private void onChangeMediaStatus(LocalMedia localMedia) {
        int itemCount;
        PictureWeChatPreviewGalleryAdapter pictureWeChatPreviewGalleryAdapter = this.mGalleryAdapter;
        if (pictureWeChatPreviewGalleryAdapter == null || (itemCount = pictureWeChatPreviewGalleryAdapter.getItemCount()) <= 0) {
            return;
        }
        boolean z = false;
        for (int i = 0; i < itemCount; i++) {
            LocalMedia item = this.mGalleryAdapter.getItem(i);
            if (item != null && !TextUtils.isEmpty(item.getPath())) {
                boolean zIsChecked = item.isChecked();
                boolean z2 = true;
                boolean z3 = item.getPath().equals(localMedia.getPath()) || item.getId() == localMedia.getId();
                if (!z) {
                    if ((!zIsChecked || z3) && (zIsChecked || !z3)) {
                        z2 = false;
                    }
                    z = z2;
                }
                item.setChecked(z3);
            }
        }
        if (z) {
            this.mGalleryAdapter.notifyDataSetChanged();
        }
    }

    @Override // com.luck.picture.lib.PicturePreviewActivity
    protected void onSelectNumChange(boolean z) {
        goneParent();
        if (this.selectData.size() != 0) {
            initCompleteText(this.selectData.size());
            if (this.mRvGallery.getVisibility() == 8) {
                this.mRvGallery.animate().alpha(1.0f).setDuration(300L).setInterpolator(new AccelerateInterpolator());
                this.mRvGallery.setVisibility(0);
                this.bottomLine.animate().alpha(1.0f).setDuration(300L).setInterpolator(new AccelerateInterpolator());
                this.bottomLine.setVisibility(0);
                if (this.isBottomPreview && this.mGalleryAdapter.getItemCount() > 0) {
                    Log.i(TAG, "gallery adapter ignore...");
                } else {
                    this.mGalleryAdapter.setNewData(this.selectData, this.isBottomPreview);
                }
            }
            if (PictureSelectionConfig.style != null) {
                if (PictureSelectionConfig.style.pictureCompleteTextColor != 0) {
                    this.mTvPictureRight.setTextColor(PictureSelectionConfig.style.pictureCompleteTextColor);
                }
                if (PictureSelectionConfig.style.pictureCompleteBackgroundStyle != 0) {
                    this.mTvPictureRight.setBackgroundResource(PictureSelectionConfig.style.pictureCompleteBackgroundStyle);
                    return;
                }
                return;
            }
            this.mTvPictureRight.setTextColor(ContextCompat.getColor(getContext(), R.color.picture_color_white));
            this.mTvPictureRight.setBackgroundResource(R.drawable.picture_send_button_bg);
            return;
        }
        if (PictureSelectionConfig.style != null && !TextUtils.isEmpty(PictureSelectionConfig.style.pictureUnCompleteText)) {
            this.mTvPictureRight.setText(PictureSelectionConfig.style.pictureUnCompleteText);
        } else {
            this.mTvPictureRight.setText(getString(R.string.picture_send));
        }
        this.mRvGallery.animate().alpha(0.0f).setDuration(300L).setInterpolator(new AccelerateInterpolator());
        this.mRvGallery.setVisibility(8);
        this.bottomLine.animate().alpha(0.0f).setDuration(300L).setInterpolator(new AccelerateInterpolator());
        this.bottomLine.setVisibility(8);
    }

    @Override // com.luck.picture.lib.PicturePreviewActivity, com.luck.picture.lib.PictureBaseActivity
    protected void initCompleteText(int i) {
        boolean z = false;
        boolean z2 = PictureSelectionConfig.style != null;
        if (this.config.isWithVideoImage) {
            if (this.config.selectionMode != 1) {
                if (z2 && PictureSelectionConfig.style.isCompleteReplaceNum) {
                    z = true;
                }
                if (z && !TextUtils.isEmpty(PictureSelectionConfig.style.pictureCompleteText)) {
                    this.mTvPictureRight.setText(String.format(PictureSelectionConfig.style.pictureCompleteText, Integer.valueOf(this.selectData.size()), Integer.valueOf(this.config.maxSelectNum)));
                    return;
                } else {
                    this.mTvPictureRight.setText((!z2 || TextUtils.isEmpty(PictureSelectionConfig.style.pictureUnCompleteText)) ? getString(R.string.picture_send_num, new Object[]{Integer.valueOf(this.selectData.size()), Integer.valueOf(this.config.maxSelectNum)}) : PictureSelectionConfig.style.pictureUnCompleteText);
                    return;
                }
            }
            if (i <= 0) {
                this.mTvPictureRight.setText((!z2 || TextUtils.isEmpty(PictureSelectionConfig.style.pictureUnCompleteText)) ? getString(R.string.picture_send) : PictureSelectionConfig.style.pictureUnCompleteText);
                return;
            }
            if (z2 && PictureSelectionConfig.style.isCompleteReplaceNum) {
                z = true;
            }
            if (z && !TextUtils.isEmpty(PictureSelectionConfig.style.pictureCompleteText)) {
                this.mTvPictureRight.setText(String.format(PictureSelectionConfig.style.pictureCompleteText, Integer.valueOf(this.selectData.size()), 1));
                return;
            } else {
                this.mTvPictureRight.setText((!z2 || TextUtils.isEmpty(PictureSelectionConfig.style.pictureCompleteText)) ? getString(R.string.picture_send) : PictureSelectionConfig.style.pictureCompleteText);
                return;
            }
        }
        int i2 = (!PictureMimeType.isHasVideo(this.selectData.size() > 0 ? this.selectData.get(0).getMimeType() : "") || this.config.maxVideoSelectNum <= 0) ? this.config.maxSelectNum : this.config.maxVideoSelectNum;
        if (this.config.selectionMode != 1) {
            if (z2 && PictureSelectionConfig.style.isCompleteReplaceNum) {
                z = true;
            }
            if (z && !TextUtils.isEmpty(PictureSelectionConfig.style.pictureCompleteText)) {
                this.mTvPictureRight.setText(String.format(PictureSelectionConfig.style.pictureCompleteText, Integer.valueOf(this.selectData.size()), Integer.valueOf(i2)));
                return;
            } else {
                this.mTvPictureRight.setText((!z2 || TextUtils.isEmpty(PictureSelectionConfig.style.pictureUnCompleteText)) ? getString(R.string.picture_send_num, new Object[]{Integer.valueOf(this.selectData.size()), Integer.valueOf(i2)}) : PictureSelectionConfig.style.pictureUnCompleteText);
                return;
            }
        }
        if (i <= 0) {
            this.mTvPictureRight.setText((!z2 || TextUtils.isEmpty(PictureSelectionConfig.style.pictureUnCompleteText)) ? getString(R.string.picture_send) : PictureSelectionConfig.style.pictureUnCompleteText);
            return;
        }
        if (z2 && PictureSelectionConfig.style.isCompleteReplaceNum) {
            z = true;
        }
        if (z && !TextUtils.isEmpty(PictureSelectionConfig.style.pictureCompleteText)) {
            this.mTvPictureRight.setText(String.format(PictureSelectionConfig.style.pictureCompleteText, Integer.valueOf(this.selectData.size()), 1));
        } else {
            this.mTvPictureRight.setText((!z2 || TextUtils.isEmpty(PictureSelectionConfig.style.pictureCompleteText)) ? getString(R.string.picture_send) : PictureSelectionConfig.style.pictureCompleteText);
        }
    }
}
