package com.luck.picture.lib.adapter;

import android.graphics.ColorFilter;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.BlendModeColorFilterCompat;
import androidx.core.graphics.BlendModeCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.luck.picture.lib.R;
import com.luck.picture.lib.config.PictureMimeType;
import com.luck.picture.lib.config.PictureSelectionConfig;
import com.luck.picture.lib.entity.LocalMedia;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class PictureWeChatPreviewGalleryAdapter extends RecyclerView.Adapter<ViewHolder> {
    private final PictureSelectionConfig config;
    private OnItemClickListener listener;
    private List<LocalMedia> mList = new ArrayList();

    public interface OnItemClickListener {
        void onItemClick(int i, LocalMedia localMedia, View view);
    }

    public PictureWeChatPreviewGalleryAdapter(PictureSelectionConfig pictureSelectionConfig) {
        this.config = pictureSelectionConfig;
    }

    public void setNewData(List<LocalMedia> list, boolean z) {
        if (list != null) {
            if (z) {
                this.mList.clear();
                this.mList.addAll(list);
            } else {
                this.mList = list;
            }
            notifyDataSetChanged();
        }
    }

    public void addSingleMediaToData(LocalMedia localMedia) {
        this.mList.clear();
        this.mList.add(localMedia);
        notifyDataSetChanged();
    }

    public void removeMediaToData(LocalMedia localMedia) {
        if (this.mList.size() > 0) {
            this.mList.remove(localMedia);
            notifyDataSetChanged();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.picture_wechat_preview_gallery, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(final ViewHolder viewHolder, final int i) {
        LocalMedia item = getItem(i);
        ColorFilter colorFilterCreateBlendModeColorFilterCompat = BlendModeColorFilterCompat.createBlendModeColorFilterCompat(ContextCompat.getColor(viewHolder.itemView.getContext(), item.isMaxSelectEnabledMask() ? R.color.picture_color_half_white : R.color.picture_color_transparent), BlendModeCompat.SRC_ATOP);
        if (item.isChecked() && item.isMaxSelectEnabledMask()) {
            viewHolder.viewBorder.setVisibility(0);
        } else {
            viewHolder.viewBorder.setVisibility(item.isChecked() ? 0 : 8);
        }
        String path = item.getPath();
        if (item.isEditorImage() && !TextUtils.isEmpty(item.getCutPath())) {
            path = item.getCutPath();
            viewHolder.ivEditor.setVisibility(0);
        } else {
            viewHolder.ivEditor.setVisibility(8);
        }
        viewHolder.ivImage.setColorFilter(colorFilterCreateBlendModeColorFilterCompat);
        if (this.config != null && PictureSelectionConfig.imageEngine != null) {
            PictureSelectionConfig.imageEngine.loadImage(viewHolder.itemView.getContext(), path, viewHolder.ivImage);
        }
        viewHolder.ivPlay.setVisibility(PictureMimeType.isHasVideo(item.getMimeType()) ? 0 : 8);
        viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.luck.picture.lib.adapter.PictureWeChatPreviewGalleryAdapter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m788xba535ed8(viewHolder, i, view);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onBindViewHolder$0$com-luck-picture-lib-adapter-PictureWeChatPreviewGalleryAdapter, reason: not valid java name */
    /* synthetic */ void m788xba535ed8(ViewHolder viewHolder, int i, View view) {
        if (this.listener == null || viewHolder.getAbsoluteAdapterPosition() < 0) {
            return;
        }
        this.listener.onItemClick(viewHolder.getAbsoluteAdapterPosition(), getItem(i), view);
    }

    public LocalMedia getItem(int i) {
        if (this.mList.size() > 0) {
            return this.mList.get(i);
        }
        return null;
    }

    static class ViewHolder extends RecyclerView.ViewHolder {
        ImageView ivEditor;
        ImageView ivImage;
        ImageView ivPlay;
        View viewBorder;

        public ViewHolder(View view) {
            super(view);
            this.ivImage = (ImageView) view.findViewById(R.id.ivImage);
            this.ivPlay = (ImageView) view.findViewById(R.id.ivPlay);
            this.ivEditor = (ImageView) view.findViewById(R.id.ivEditor);
            this.viewBorder = view.findViewById(R.id.viewBorder);
            if (PictureSelectionConfig.uiStyle != null) {
                if (PictureSelectionConfig.uiStyle.picture_bottom_gallery_frameBackground != 0) {
                    this.viewBorder.setBackgroundResource(PictureSelectionConfig.uiStyle.picture_bottom_gallery_frameBackground);
                }
                if (PictureSelectionConfig.uiStyle.picture_adapter_item_editor_tag_icon != 0) {
                    this.ivEditor.setImageResource(PictureSelectionConfig.uiStyle.picture_adapter_item_editor_tag_icon);
                    return;
                }
                return;
            }
            if (PictureSelectionConfig.style == null || PictureSelectionConfig.style.picture_adapter_item_editor_tag_icon == 0) {
                return;
            }
            this.ivEditor.setImageResource(PictureSelectionConfig.style.picture_adapter_item_editor_tag_icon);
        }
    }

    public void setItemClickListener(OnItemClickListener onItemClickListener) {
        this.listener = onItemClickListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mList.size();
    }
}
