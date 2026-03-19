package com.luck.picture.lib.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.luck.picture.lib.R;
import com.luck.picture.lib.config.PictureMimeType;
import com.luck.picture.lib.config.PictureSelectionConfig;
import com.luck.picture.lib.entity.LocalMediaFolder;
import com.luck.picture.lib.listener.OnAlbumItemClickListener;
import com.luck.picture.lib.tools.AttrsUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class PictureAlbumDirectoryAdapter extends RecyclerView.Adapter<ViewHolder> {
    private int chooseMode;
    private List<LocalMediaFolder> folders = new ArrayList();
    private OnAlbumItemClickListener onAlbumItemClickListener;

    public PictureAlbumDirectoryAdapter(PictureSelectionConfig pictureSelectionConfig) {
        this.chooseMode = pictureSelectionConfig.chooseMode;
    }

    public void bindFolderData(List<LocalMediaFolder> list) {
        this.folders = list;
        notifyDataSetChanged();
    }

    public void setChooseMode(int i) {
        this.chooseMode = i;
    }

    public List<LocalMediaFolder> getFolderData() {
        return this.folders;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.picture_album_folder_item, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, final int i) {
        final LocalMediaFolder localMediaFolder = this.folders.get(i);
        String name = localMediaFolder.getName();
        int imageNum = localMediaFolder.getImageNum();
        String firstImagePath = localMediaFolder.getFirstImagePath();
        boolean zIsChecked = localMediaFolder.isChecked();
        viewHolder.tvSign.setVisibility(localMediaFolder.getCheckedNum() > 0 ? 0 : 4);
        viewHolder.itemView.setSelected(zIsChecked);
        if (PictureSelectionConfig.uiStyle != null) {
            if (PictureSelectionConfig.uiStyle.picture_album_backgroundStyle != 0) {
                viewHolder.itemView.setBackgroundResource(PictureSelectionConfig.uiStyle.picture_album_backgroundStyle);
            }
        } else if (PictureSelectionConfig.style != null && PictureSelectionConfig.style.pictureAlbumStyle != 0) {
            viewHolder.itemView.setBackgroundResource(PictureSelectionConfig.style.pictureAlbumStyle);
        }
        if (this.chooseMode == PictureMimeType.ofAudio()) {
            viewHolder.ivFirstImage.setImageResource(R.drawable.picture_audio_placeholder);
        } else if (PictureSelectionConfig.imageEngine != null) {
            PictureSelectionConfig.imageEngine.loadFolderImage(viewHolder.itemView.getContext(), firstImagePath, viewHolder.ivFirstImage);
        }
        Context context = viewHolder.itemView.getContext();
        if (localMediaFolder.getOfAllType() != -1) {
            if (localMediaFolder.getOfAllType() == PictureMimeType.ofAudio()) {
                name = context.getString(R.string.picture_all_audio);
            } else {
                name = context.getString(R.string.picture_camera_roll);
            }
        }
        viewHolder.tvFolderName.setText(context.getString(R.string.picture_camera_roll_num, name, Integer.valueOf(imageNum)));
        viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.luck.picture.lib.adapter.PictureAlbumDirectoryAdapter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m782xf1d7dc6a(localMediaFolder, i, view);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onBindViewHolder$0$com-luck-picture-lib-adapter-PictureAlbumDirectoryAdapter, reason: not valid java name */
    /* synthetic */ void m782xf1d7dc6a(LocalMediaFolder localMediaFolder, int i, View view) {
        if (this.onAlbumItemClickListener != null) {
            int size = this.folders.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.folders.get(i2).setChecked(false);
            }
            localMediaFolder.setChecked(true);
            notifyDataSetChanged();
            this.onAlbumItemClickListener.onItemClick(i, localMediaFolder.isCameraFolder(), localMediaFolder.getBucketId(), localMediaFolder.getName(), localMediaFolder.getData());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.folders.size();
    }

    static class ViewHolder extends RecyclerView.ViewHolder {
        ImageView ivFirstImage;
        TextView tvFolderName;
        TextView tvSign;

        public ViewHolder(View view) {
            super(view);
            this.ivFirstImage = (ImageView) view.findViewById(R.id.first_image);
            this.tvFolderName = (TextView) view.findViewById(R.id.tv_folder_name);
            this.tvSign = (TextView) view.findViewById(R.id.tv_sign);
            if (PictureSelectionConfig.uiStyle != null) {
                if (PictureSelectionConfig.uiStyle.picture_album_checkDotStyle != 0) {
                    this.tvSign.setBackgroundResource(PictureSelectionConfig.uiStyle.picture_album_checkDotStyle);
                }
                if (PictureSelectionConfig.uiStyle.picture_album_textColor != 0) {
                    this.tvFolderName.setTextColor(PictureSelectionConfig.uiStyle.picture_album_textColor);
                }
                if (PictureSelectionConfig.uiStyle.picture_album_textSize > 0) {
                    this.tvFolderName.setTextSize(PictureSelectionConfig.uiStyle.picture_album_textSize);
                    return;
                }
                return;
            }
            if (PictureSelectionConfig.style != null) {
                if (PictureSelectionConfig.style.pictureFolderCheckedDotStyle != 0) {
                    this.tvSign.setBackgroundResource(PictureSelectionConfig.style.pictureFolderCheckedDotStyle);
                }
                if (PictureSelectionConfig.style.folderTextColor != 0) {
                    this.tvFolderName.setTextColor(PictureSelectionConfig.style.folderTextColor);
                }
                if (PictureSelectionConfig.style.folderTextSize > 0) {
                    this.tvFolderName.setTextSize(PictureSelectionConfig.style.folderTextSize);
                    return;
                }
                return;
            }
            this.tvSign.setBackground(AttrsUtils.getTypeValueDrawable(view.getContext(), R.attr.picture_folder_checked_dot, R.drawable.picture_orange_oval));
            int typeValueColor = AttrsUtils.getTypeValueColor(view.getContext(), R.attr.picture_folder_textColor);
            if (typeValueColor != 0) {
                this.tvFolderName.setTextColor(typeValueColor);
            }
            float typeValueSize = AttrsUtils.getTypeValueSize(view.getContext(), R.attr.picture_folder_textSize);
            if (typeValueSize > 0.0f) {
                this.tvFolderName.setTextSize(0, typeValueSize);
            }
        }
    }

    public void setOnAlbumItemClickListener(OnAlbumItemClickListener onAlbumItemClickListener) {
        this.onAlbumItemClickListener = onAlbumItemClickListener;
    }
}
