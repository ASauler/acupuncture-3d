package com.luck.picture.lib.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.BlendModeColorFilterCompat;
import androidx.core.graphics.BlendModeCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.luck.picture.lib.R;
import com.luck.picture.lib.config.PictureMimeType;
import com.luck.picture.lib.config.PictureSelectionConfig;
import com.luck.picture.lib.dialog.PictureCustomDialog;
import com.luck.picture.lib.entity.LocalMedia;
import com.luck.picture.lib.listener.OnPhotoSelectChangedListener;
import com.luck.picture.lib.tools.AttrsUtils;
import com.luck.picture.lib.tools.DateUtils;
import com.luck.picture.lib.tools.MediaUtils;
import com.luck.picture.lib.tools.StringUtils;
import com.luck.picture.lib.tools.ToastUtils;
import com.luck.picture.lib.tools.ValueOf;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class PictureImageGridAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    private final PictureSelectionConfig config;
    private final Context context;
    private OnPhotoSelectChangedListener<LocalMedia> imageSelectChangedListener;
    private boolean showCamera;
    private List<LocalMedia> data = new ArrayList();
    private List<LocalMedia> selectData = new ArrayList();

    public PictureImageGridAdapter(Context context, PictureSelectionConfig pictureSelectionConfig) {
        this.context = context;
        this.config = pictureSelectionConfig;
        this.showCamera = pictureSelectionConfig.isCamera;
    }

    public void setShowCamera(boolean z) {
        this.showCamera = z;
    }

    public boolean isShowCamera() {
        return this.showCamera;
    }

    public void bindData(List<LocalMedia> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        this.data = list;
        notifyDataSetChanged();
    }

    public void bindSelectData(List<LocalMedia> list) {
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(list.get(i));
        }
        this.selectData = arrayList;
        if (this.config.isSingleDirectReturn) {
            return;
        }
        subSelectPosition();
        OnPhotoSelectChangedListener<LocalMedia> onPhotoSelectChangedListener = this.imageSelectChangedListener;
        if (onPhotoSelectChangedListener != null) {
            onPhotoSelectChangedListener.onChange(this.selectData);
        }
    }

    public List<LocalMedia> getSelectedData() {
        List<LocalMedia> list = this.selectData;
        return list == null ? new ArrayList() : list;
    }

    public int getSelectedSize() {
        List<LocalMedia> list = this.selectData;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public List<LocalMedia> getData() {
        List<LocalMedia> list = this.data;
        return list == null ? new ArrayList() : list;
    }

    public boolean isDataEmpty() {
        List<LocalMedia> list = this.data;
        return list == null || list.size() == 0;
    }

    public void clear() {
        if (getSize() > 0) {
            this.data.clear();
        }
    }

    public int getSize() {
        List<LocalMedia> list = this.data;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public LocalMedia getItem(int i) {
        if (getSize() > 0) {
            return this.data.get(i);
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return (this.showCamera && i == 0) ? 1 : 2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 1) {
            return new CameraViewHolder(LayoutInflater.from(this.context).inflate(R.layout.picture_item_camera, viewGroup, false));
        }
        return new ViewHolder(LayoutInflater.from(this.context).inflate(R.layout.picture_image_grid_item, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, final int i) {
        Context context;
        int i2;
        if (getItemViewType(i) == 1) {
            ((CameraViewHolder) viewHolder).itemView.setOnClickListener(new View.OnClickListener() { // from class: com.luck.picture.lib.adapter.PictureImageGridAdapter$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m783x23ddad75(view);
                }
            });
            return;
        }
        final ViewHolder viewHolder2 = (ViewHolder) viewHolder;
        final LocalMedia localMedia = this.data.get(this.showCamera ? i - 1 : i);
        localMedia.position = viewHolder2.getAbsoluteAdapterPosition();
        final String mimeType = localMedia.getMimeType();
        if (this.config.checkNumMode) {
            notifyCheckChanged(viewHolder2, localMedia);
        }
        if (this.config.isSingleDirectReturn) {
            viewHolder2.tvCheck.setVisibility(8);
            viewHolder2.btnCheck.setVisibility(8);
        } else {
            selectImage(viewHolder2, isSelected(localMedia));
            viewHolder2.tvCheck.setVisibility(0);
            viewHolder2.btnCheck.setVisibility(0);
            if (this.config.isMaxSelectEnabledMask) {
                dispatchHandleMask(viewHolder2, localMedia);
            }
        }
        String path = localMedia.getPath();
        if (localMedia.isEditorImage() && !TextUtils.isEmpty(localMedia.getCutPath())) {
            viewHolder2.ivEditor.setVisibility(0);
            path = localMedia.getCutPath();
        } else {
            viewHolder2.ivEditor.setVisibility(8);
        }
        boolean zIsGif = PictureMimeType.isGif(mimeType);
        boolean zIsWebp = PictureMimeType.isWebp(mimeType);
        boolean zIsLongImg = MediaUtils.isLongImg(localMedia);
        if ((zIsGif || zIsWebp) && !zIsLongImg) {
            viewHolder2.tvImageMimeType.setVisibility(0);
            TextView textView = viewHolder2.tvImageMimeType;
            if (zIsGif) {
                context = this.context;
                i2 = R.string.picture_gif_tag;
            } else {
                context = this.context;
                i2 = R.string.picture_webp_tag;
            }
            textView.setText(context.getString(i2));
        } else {
            viewHolder2.tvImageMimeType.setVisibility(8);
        }
        if (PictureMimeType.isHasImage(localMedia.getMimeType())) {
            if (localMedia.loadLongImageStatus == -1) {
                localMedia.isLongImage = zIsLongImg;
                localMedia.loadLongImageStatus = 0;
            }
            viewHolder2.tvLongChart.setVisibility(localMedia.isLongImage ? 0 : 8);
        } else {
            localMedia.loadLongImageStatus = -1;
            viewHolder2.tvLongChart.setVisibility(8);
        }
        boolean zIsHasVideo = PictureMimeType.isHasVideo(mimeType);
        if (zIsHasVideo || PictureMimeType.isHasAudio(mimeType)) {
            viewHolder2.tvDuration.setVisibility(0);
            viewHolder2.tvDuration.setText(DateUtils.formatDurationTime(localMedia.getDuration()));
            if (PictureSelectionConfig.uiStyle == null) {
                viewHolder2.tvDuration.setCompoundDrawablesRelativeWithIntrinsicBounds(zIsHasVideo ? R.drawable.picture_icon_video : R.drawable.picture_icon_audio, 0, 0, 0);
            } else if (zIsHasVideo) {
                if (PictureSelectionConfig.uiStyle.picture_adapter_item_video_textLeftDrawable != 0) {
                    viewHolder2.tvDuration.setCompoundDrawablesRelativeWithIntrinsicBounds(PictureSelectionConfig.uiStyle.picture_adapter_item_video_textLeftDrawable, 0, 0, 0);
                } else {
                    viewHolder2.tvDuration.setCompoundDrawablesRelativeWithIntrinsicBounds(R.drawable.picture_icon_video, 0, 0, 0);
                }
            } else if (PictureSelectionConfig.uiStyle.picture_adapter_item_audio_textLeftDrawable != 0) {
                viewHolder2.tvDuration.setCompoundDrawablesRelativeWithIntrinsicBounds(PictureSelectionConfig.uiStyle.picture_adapter_item_audio_textLeftDrawable, 0, 0, 0);
            } else {
                viewHolder2.tvDuration.setCompoundDrawablesRelativeWithIntrinsicBounds(R.drawable.picture_icon_audio, 0, 0, 0);
            }
        } else {
            viewHolder2.tvDuration.setVisibility(8);
        }
        if (this.config.chooseMode == PictureMimeType.ofAudio()) {
            viewHolder2.ivPicture.setImageResource(R.drawable.picture_audio_placeholder);
        } else if (PictureSelectionConfig.imageEngine != null) {
            PictureSelectionConfig.imageEngine.loadGridImage(this.context, path, viewHolder2.ivPicture);
        }
        if (this.config.enablePreview || this.config.enPreviewVideo || this.config.enablePreviewAudio) {
            viewHolder2.btnCheck.setOnClickListener(new View.OnClickListener() { // from class: com.luck.picture.lib.adapter.PictureImageGridAdapter$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m784x3df92c14(localMedia, viewHolder2, mimeType, view);
                }
            });
        }
        viewHolder2.contentView.setOnClickListener(new View.OnClickListener() { // from class: com.luck.picture.lib.adapter.PictureImageGridAdapter$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m785x5814aab3(localMedia, mimeType, i, viewHolder2, view);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onBindViewHolder$0$com-luck-picture-lib-adapter-PictureImageGridAdapter, reason: not valid java name */
    /* synthetic */ void m783x23ddad75(View view) {
        OnPhotoSelectChangedListener<LocalMedia> onPhotoSelectChangedListener = this.imageSelectChangedListener;
        if (onPhotoSelectChangedListener != null) {
            onPhotoSelectChangedListener.onTakePhoto();
        }
    }

    /* JADX INFO: renamed from: lambda$onBindViewHolder$1$com-luck-picture-lib-adapter-PictureImageGridAdapter, reason: not valid java name */
    /* synthetic */ void m784x3df92c14(LocalMedia localMedia, ViewHolder viewHolder, String str, View view) {
        String msg;
        if (this.config.isMaxSelectEnabledMask) {
            if (this.config.isWithVideoImage) {
                int selectedSize = getSelectedSize();
                boolean z = false;
                int i = 0;
                for (int i2 = 0; i2 < selectedSize; i2++) {
                    if (PictureMimeType.isHasVideo(this.selectData.get(i2).getMimeType())) {
                        i++;
                    }
                }
                if (PictureMimeType.isHasVideo(localMedia.getMimeType())) {
                    if (!viewHolder.tvCheck.isSelected() && i >= this.config.maxVideoSelectNum) {
                        z = true;
                    }
                    msg = StringUtils.getMsg(this.context, localMedia.getMimeType(), this.config.maxVideoSelectNum);
                } else {
                    if (!viewHolder.tvCheck.isSelected() && selectedSize >= this.config.maxSelectNum) {
                        z = true;
                    }
                    msg = StringUtils.getMsg(this.context, localMedia.getMimeType(), this.config.maxSelectNum);
                }
                if (z) {
                    showPromptDialog(msg);
                    return;
                }
            } else if (!viewHolder.tvCheck.isSelected() && getSelectedSize() >= this.config.maxSelectNum) {
                showPromptDialog(StringUtils.getMsg(this.context, localMedia.getMimeType(), this.config.maxSelectNum));
                return;
            }
        }
        String realPath = localMedia.getRealPath();
        if (!TextUtils.isEmpty(realPath) && !new File(realPath).exists()) {
            Context context = this.context;
            ToastUtils.s(context, PictureMimeType.s(context, str));
        } else {
            changeCheckboxState(viewHolder, localMedia);
        }
    }

    /* JADX INFO: renamed from: lambda$onBindViewHolder$2$com-luck-picture-lib-adapter-PictureImageGridAdapter, reason: not valid java name */
    /* synthetic */ void m785x5814aab3(LocalMedia localMedia, String str, int i, ViewHolder viewHolder, View view) {
        if (this.config.isMaxSelectEnabledMask && localMedia.isMaxSelectEnabledMask()) {
            return;
        }
        String realPath = localMedia.getRealPath();
        if (!TextUtils.isEmpty(realPath) && !new File(realPath).exists()) {
            Context context = this.context;
            ToastUtils.s(context, PictureMimeType.s(context, str));
            return;
        }
        if (this.showCamera) {
            i--;
        }
        if (i == -1) {
            return;
        }
        boolean z = true;
        if ((!PictureMimeType.isHasImage(str) || !this.config.enablePreview) && !this.config.isSingleDirectReturn && ((!PictureMimeType.isHasVideo(str) || (!this.config.enPreviewVideo && this.config.selectionMode != 1)) && (!PictureMimeType.isHasAudio(str) || (!this.config.enablePreviewAudio && this.config.selectionMode != 1)))) {
            z = false;
        }
        if (z) {
            if (PictureMimeType.isHasVideo(localMedia.getMimeType())) {
                if (this.config.videoMinSecond > 0 && localMedia.getDuration() < this.config.videoMinSecond) {
                    showPromptDialog(this.context.getString(R.string.picture_choose_min_seconds, Integer.valueOf(this.config.videoMinSecond / 1000)));
                    return;
                } else if (this.config.videoMaxSecond > 0 && localMedia.getDuration() > this.config.videoMaxSecond) {
                    showPromptDialog(this.context.getString(R.string.picture_choose_max_seconds, Integer.valueOf(this.config.videoMaxSecond / 1000)));
                    return;
                }
            }
            this.imageSelectChangedListener.onPictureClick(localMedia, i);
            return;
        }
        changeCheckboxState(viewHolder, localMedia);
    }

    private void dispatchHandleMask(ViewHolder viewHolder, LocalMedia localMedia) {
        int color;
        if (this.config.isWithVideoImage && this.config.maxVideoSelectNum > 0) {
            if (getSelectedSize() >= this.config.maxSelectNum) {
                boolean zIsSelected = viewHolder.tvCheck.isSelected();
                if (zIsSelected) {
                    color = ContextCompat.getColor(this.context, R.color.picture_color_80);
                } else {
                    color = ContextCompat.getColor(this.context, R.color.picture_color_half_white);
                }
                viewHolder.ivPicture.setColorFilter(BlendModeColorFilterCompat.createBlendModeColorFilterCompat(color, BlendModeCompat.SRC_ATOP));
                localMedia.setMaxSelectEnabledMask(!zIsSelected);
                return;
            }
            localMedia.setMaxSelectEnabledMask(false);
            return;
        }
        LocalMedia localMedia2 = this.selectData.size() > 0 ? this.selectData.get(0) : null;
        if (localMedia2 != null) {
            boolean zIsSelected2 = viewHolder.tvCheck.isSelected();
            if (this.config.chooseMode == PictureMimeType.ofAll()) {
                if (PictureMimeType.isHasImage(localMedia2.getMimeType())) {
                    if (!zIsSelected2 && !PictureMimeType.isHasImage(localMedia.getMimeType())) {
                        viewHolder.ivPicture.setColorFilter(BlendModeColorFilterCompat.createBlendModeColorFilterCompat(ContextCompat.getColor(this.context, PictureMimeType.isHasVideo(localMedia.getMimeType()) ? R.color.picture_color_half_white : R.color.picture_color_20), BlendModeCompat.SRC_ATOP));
                    }
                    localMedia.setMaxSelectEnabledMask(PictureMimeType.isHasVideo(localMedia.getMimeType()));
                    return;
                }
                if (PictureMimeType.isHasVideo(localMedia2.getMimeType())) {
                    if (!zIsSelected2 && !PictureMimeType.isHasVideo(localMedia.getMimeType())) {
                        viewHolder.ivPicture.setColorFilter(BlendModeColorFilterCompat.createBlendModeColorFilterCompat(ContextCompat.getColor(this.context, PictureMimeType.isHasImage(localMedia.getMimeType()) ? R.color.picture_color_half_white : R.color.picture_color_20), BlendModeCompat.SRC_ATOP));
                    }
                    localMedia.setMaxSelectEnabledMask(PictureMimeType.isHasImage(localMedia.getMimeType()));
                    return;
                }
                return;
            }
            if (this.config.chooseMode == PictureMimeType.ofVideo() && this.config.maxVideoSelectNum > 0) {
                if (!zIsSelected2 && getSelectedSize() == this.config.maxVideoSelectNum) {
                    viewHolder.ivPicture.setColorFilter(BlendModeColorFilterCompat.createBlendModeColorFilterCompat(ContextCompat.getColor(this.context, R.color.picture_color_half_white), BlendModeCompat.SRC_ATOP));
                }
                localMedia.setMaxSelectEnabledMask(!zIsSelected2 && getSelectedSize() == this.config.maxVideoSelectNum);
                return;
            }
            if (!zIsSelected2 && getSelectedSize() == this.config.maxSelectNum) {
                viewHolder.ivPicture.setColorFilter(BlendModeColorFilterCompat.createBlendModeColorFilterCompat(ContextCompat.getColor(this.context, R.color.picture_color_half_white), BlendModeCompat.SRC_ATOP));
            }
            localMedia.setMaxSelectEnabledMask(!zIsSelected2 && getSelectedSize() == this.config.maxSelectNum);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.showCamera ? this.data.size() + 1 : this.data.size();
    }

    public class CameraViewHolder extends RecyclerView.ViewHolder {
        TextView tvCamera;

        public CameraViewHolder(View view) {
            super(view);
            this.tvCamera = (TextView) view.findViewById(R.id.tvCamera);
            if (PictureSelectionConfig.uiStyle != null) {
                if (PictureSelectionConfig.uiStyle.picture_adapter_item_camera_backgroundColor != 0) {
                    view.setBackgroundColor(PictureSelectionConfig.uiStyle.picture_adapter_item_camera_backgroundColor);
                }
                if (PictureSelectionConfig.uiStyle.picture_adapter_item_camera_textSize != 0) {
                    this.tvCamera.setTextSize(PictureSelectionConfig.uiStyle.picture_adapter_item_camera_textSize);
                }
                if (PictureSelectionConfig.uiStyle.picture_adapter_item_camera_textColor != 0) {
                    this.tvCamera.setTextColor(PictureSelectionConfig.uiStyle.picture_adapter_item_camera_textColor);
                }
                if (PictureSelectionConfig.uiStyle.picture_adapter_item_camera_text != 0) {
                    this.tvCamera.setText(view.getContext().getString(PictureSelectionConfig.uiStyle.picture_adapter_item_camera_text));
                } else {
                    this.tvCamera.setText(PictureImageGridAdapter.this.config.chooseMode == PictureMimeType.ofAudio() ? PictureImageGridAdapter.this.context.getString(R.string.picture_tape) : PictureImageGridAdapter.this.context.getString(R.string.picture_take_picture));
                }
                if (PictureSelectionConfig.uiStyle.picture_adapter_item_camera_textTopDrawable != 0) {
                    this.tvCamera.setCompoundDrawablesWithIntrinsicBounds(0, PictureSelectionConfig.uiStyle.picture_adapter_item_camera_textTopDrawable, 0, 0);
                    return;
                }
                return;
            }
            this.tvCamera.setText(PictureImageGridAdapter.this.config.chooseMode == PictureMimeType.ofAudio() ? PictureImageGridAdapter.this.context.getString(R.string.picture_tape) : PictureImageGridAdapter.this.context.getString(R.string.picture_take_picture));
        }
    }

    public static class ViewHolder extends RecyclerView.ViewHolder {
        View btnCheck;
        View contentView;
        ImageView ivEditor;
        ImageView ivPicture;
        TextView tvCheck;
        TextView tvDuration;
        TextView tvImageMimeType;
        TextView tvLongChart;

        public ViewHolder(View view) {
            super(view);
            this.contentView = view;
            this.ivPicture = (ImageView) view.findViewById(R.id.ivPicture);
            this.tvCheck = (TextView) view.findViewById(R.id.tvCheck);
            this.btnCheck = view.findViewById(R.id.btnCheck);
            this.tvDuration = (TextView) view.findViewById(R.id.tv_duration);
            this.tvImageMimeType = (TextView) view.findViewById(R.id.tv_image_mime_type);
            this.tvLongChart = (TextView) view.findViewById(R.id.tv_long_chart);
            this.ivEditor = (ImageView) view.findViewById(R.id.ivEditor);
            if (PictureSelectionConfig.uiStyle != null) {
                if (PictureSelectionConfig.uiStyle.picture_check_style != 0) {
                    this.tvCheck.setBackgroundResource(PictureSelectionConfig.uiStyle.picture_check_style);
                }
                if (PictureSelectionConfig.uiStyle.picture_check_textSize != 0) {
                    this.tvCheck.setTextSize(PictureSelectionConfig.uiStyle.picture_check_textSize);
                }
                if (PictureSelectionConfig.uiStyle.picture_check_textColor != 0) {
                    this.tvCheck.setTextColor(PictureSelectionConfig.uiStyle.picture_check_textColor);
                }
                if (PictureSelectionConfig.uiStyle.picture_adapter_item_textSize > 0) {
                    this.tvDuration.setTextSize(PictureSelectionConfig.uiStyle.picture_adapter_item_textSize);
                }
                if (PictureSelectionConfig.uiStyle.picture_adapter_item_textColor != 0) {
                    this.tvDuration.setTextColor(PictureSelectionConfig.uiStyle.picture_adapter_item_textColor);
                }
                if (PictureSelectionConfig.uiStyle.picture_adapter_item_tag_text != 0) {
                    this.tvImageMimeType.setText(view.getContext().getString(PictureSelectionConfig.uiStyle.picture_adapter_item_tag_text));
                }
                if (PictureSelectionConfig.uiStyle.picture_adapter_item_gif_tag_show) {
                    this.tvImageMimeType.setVisibility(0);
                } else {
                    this.tvImageMimeType.setVisibility(8);
                }
                if (PictureSelectionConfig.uiStyle.picture_adapter_item_gif_tag_background != 0) {
                    this.tvImageMimeType.setBackgroundResource(PictureSelectionConfig.uiStyle.picture_adapter_item_gif_tag_background);
                }
                if (PictureSelectionConfig.uiStyle.picture_adapter_item_editor_tag_icon != 0) {
                    this.ivEditor.setImageResource(PictureSelectionConfig.uiStyle.picture_adapter_item_editor_tag_icon);
                }
                if (PictureSelectionConfig.uiStyle.picture_adapter_item_gif_tag_textColor != 0) {
                    this.tvImageMimeType.setTextColor(PictureSelectionConfig.uiStyle.picture_adapter_item_gif_tag_textColor);
                }
                if (PictureSelectionConfig.uiStyle.picture_adapter_item_gif_tag_textSize != 0) {
                    this.tvImageMimeType.setTextSize(PictureSelectionConfig.uiStyle.picture_adapter_item_gif_tag_textSize);
                    return;
                }
                return;
            }
            if (PictureSelectionConfig.style != null) {
                if (PictureSelectionConfig.style.pictureCheckedStyle != 0) {
                    this.tvCheck.setBackgroundResource(PictureSelectionConfig.style.pictureCheckedStyle);
                }
                if (PictureSelectionConfig.style.picture_adapter_item_editor_tag_icon != 0) {
                    this.ivEditor.setImageResource(PictureSelectionConfig.style.picture_adapter_item_editor_tag_icon);
                    return;
                }
                return;
            }
            this.tvCheck.setBackground(AttrsUtils.getTypeValueDrawable(view.getContext(), R.attr.picture_checked_style, R.drawable.picture_checkbox_selector));
        }
    }

    public boolean isSelected(LocalMedia localMedia) {
        int size = this.selectData.size();
        for (int i = 0; i < size; i++) {
            LocalMedia localMedia2 = this.selectData.get(i);
            if (localMedia2 != null && !TextUtils.isEmpty(localMedia2.getPath()) && (TextUtils.equals(localMedia2.getPath(), localMedia.getPath()) || localMedia2.getId() == localMedia.getId())) {
                setLocalMediaCropInfo(localMedia2, localMedia);
                return true;
            }
        }
        return false;
    }

    private void setLocalMediaCropInfo(LocalMedia localMedia, LocalMedia localMedia2) {
        if (!localMedia.isEditorImage() || localMedia2.isEditorImage()) {
            return;
        }
        localMedia2.setCut(localMedia.isCut());
        localMedia2.setCutPath(localMedia.getCutPath());
        localMedia2.setCropImageWidth(localMedia.getCropImageWidth());
        localMedia2.setCropImageHeight(localMedia.getCropImageHeight());
        localMedia2.setCropOffsetX(localMedia.getCropOffsetX());
        localMedia2.setCropOffsetY(localMedia.getCropOffsetY());
        localMedia2.setCropResultAspectRatio(localMedia.getCropResultAspectRatio());
        localMedia2.setAndroidQToPath(localMedia.getAndroidQToPath());
        localMedia2.setEditorImage(localMedia.isEditorImage());
    }

    private void notifyCheckChanged(ViewHolder viewHolder, LocalMedia localMedia) {
        viewHolder.tvCheck.setText("");
        int size = this.selectData.size();
        for (int i = 0; i < size; i++) {
            LocalMedia localMedia2 = this.selectData.get(i);
            if (localMedia2.getPath().equals(localMedia.getPath()) || localMedia2.getId() == localMedia.getId()) {
                localMedia.setNum(localMedia2.getNum());
                localMedia2.setPosition(localMedia.getPosition());
                viewHolder.tvCheck.setText(ValueOf.toString(Integer.valueOf(localMedia.getNum())));
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:160:0x0337  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void changeCheckboxState(com.luck.picture.lib.adapter.PictureImageGridAdapter.ViewHolder r11, com.luck.picture.lib.entity.LocalMedia r12) {
        /*
            Method dump skipped, instruction units count: 852
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.luck.picture.lib.adapter.PictureImageGridAdapter.changeCheckboxState(com.luck.picture.lib.adapter.PictureImageGridAdapter$ViewHolder, com.luck.picture.lib.entity.LocalMedia):void");
    }

    private void singleRadioMediaImage() {
        List<LocalMedia> list = this.selectData;
        if (list == null || list.size() <= 0) {
            return;
        }
        notifyItemChanged(this.selectData.get(0).position);
        this.selectData.clear();
    }

    private void subSelectPosition() {
        if (this.config.checkNumMode) {
            int size = this.selectData.size();
            int i = 0;
            while (i < size) {
                LocalMedia localMedia = this.selectData.get(i);
                i++;
                localMedia.setNum(i);
                notifyItemChanged(localMedia.position);
            }
        }
    }

    public void selectImage(ViewHolder viewHolder, boolean z) {
        int color;
        viewHolder.tvCheck.setSelected(z);
        if (z) {
            color = ContextCompat.getColor(this.context, R.color.picture_color_80);
        } else {
            color = ContextCompat.getColor(this.context, R.color.picture_color_20);
        }
        viewHolder.ivPicture.setColorFilter(BlendModeColorFilterCompat.createBlendModeColorFilterCompat(color, BlendModeCompat.SRC_ATOP));
    }

    private void showPromptDialog(String str) {
        if (PictureSelectionConfig.onChooseLimitCallback != null) {
            PictureSelectionConfig.onChooseLimitCallback.onChooseLimit(this.context, str);
            return;
        }
        final PictureCustomDialog pictureCustomDialog = new PictureCustomDialog(this.context, R.layout.picture_prompt_dialog);
        TextView textView = (TextView) pictureCustomDialog.findViewById(R.id.btnOk);
        ((TextView) pictureCustomDialog.findViewById(R.id.tv_content)).setText(str);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.luck.picture.lib.adapter.PictureImageGridAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                pictureCustomDialog.dismiss();
            }
        });
        pictureCustomDialog.show();
    }

    public void setOnPhotoSelectChangedListener(OnPhotoSelectChangedListener<LocalMedia> onPhotoSelectChangedListener) {
        this.imageSelectChangedListener = onPhotoSelectChangedListener;
    }
}
