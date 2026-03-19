package com.luck.picture.lib.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.PopupWindow;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.luck.picture.lib.R;
import com.luck.picture.lib.adapter.PictureAlbumDirectoryAdapter;
import com.luck.picture.lib.config.PictureSelectionConfig;
import com.luck.picture.lib.entity.LocalMedia;
import com.luck.picture.lib.entity.LocalMediaFolder;
import com.luck.picture.lib.listener.OnAlbumItemClickListener;
import com.luck.picture.lib.tools.AnimUtils;
import com.luck.picture.lib.tools.AttrsUtils;
import com.luck.picture.lib.tools.ScreenUtils;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class FolderPopWindow extends PopupWindow {
    private static final int FOLDER_MAX_COUNT = 8;
    private PictureAlbumDirectoryAdapter adapter;
    private final int chooseMode;
    private final PictureSelectionConfig config;
    private final Context context;
    private Drawable drawableDown;
    private Drawable drawableUp;
    private boolean isDismiss = false;
    private ImageView ivArrowView;
    private RecyclerView mRecyclerView;
    private final int maxHeight;
    private View rootViewBg;
    private final View window;

    public FolderPopWindow(Context context) {
        this.context = context;
        PictureSelectionConfig pictureSelectionConfig = PictureSelectionConfig.getInstance();
        this.config = pictureSelectionConfig;
        this.chooseMode = pictureSelectionConfig.chooseMode;
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.picture_window_folder, (ViewGroup) null);
        this.window = viewInflate;
        setContentView(viewInflate);
        setWidth(-1);
        setHeight(-2);
        setAnimationStyle(R.style.PictureThemeWindowStyle);
        setFocusable(true);
        setOutsideTouchable(true);
        update();
        if (PictureSelectionConfig.uiStyle != null) {
            if (PictureSelectionConfig.uiStyle.picture_top_titleArrowUpDrawable != 0) {
                this.drawableUp = ContextCompat.getDrawable(context, PictureSelectionConfig.uiStyle.picture_top_titleArrowUpDrawable);
            }
            if (PictureSelectionConfig.uiStyle.picture_top_titleArrowDownDrawable != 0) {
                this.drawableDown = ContextCompat.getDrawable(context, PictureSelectionConfig.uiStyle.picture_top_titleArrowDownDrawable);
            }
        } else if (PictureSelectionConfig.style != null) {
            if (PictureSelectionConfig.style.pictureTitleUpResId != 0) {
                this.drawableUp = ContextCompat.getDrawable(context, PictureSelectionConfig.style.pictureTitleUpResId);
            }
            if (PictureSelectionConfig.style.pictureTitleDownResId != 0) {
                this.drawableDown = ContextCompat.getDrawable(context, PictureSelectionConfig.style.pictureTitleDownResId);
            }
        } else if (pictureSelectionConfig.isWeChatStyle) {
            this.drawableUp = ContextCompat.getDrawable(context, R.drawable.picture_icon_wechat_up);
            this.drawableDown = ContextCompat.getDrawable(context, R.drawable.picture_icon_wechat_down);
        } else {
            if (pictureSelectionConfig.upResId != 0) {
                this.drawableUp = ContextCompat.getDrawable(context, pictureSelectionConfig.upResId);
            } else {
                this.drawableUp = AttrsUtils.getTypeValueDrawable(context, R.attr.picture_arrow_up_icon, R.drawable.picture_icon_arrow_up);
            }
            if (pictureSelectionConfig.downResId != 0) {
                this.drawableDown = ContextCompat.getDrawable(context, pictureSelectionConfig.downResId);
            } else {
                this.drawableDown = AttrsUtils.getTypeValueDrawable(context, R.attr.picture_arrow_down_icon, R.drawable.picture_icon_arrow_down);
            }
        }
        this.maxHeight = (int) (((double) ScreenUtils.getScreenHeight(context)) * 0.6d);
        initView();
    }

    public void initView() {
        this.rootViewBg = this.window.findViewById(R.id.rootViewBg);
        this.adapter = new PictureAlbumDirectoryAdapter(this.config);
        RecyclerView recyclerView = (RecyclerView) this.window.findViewById(R.id.folder_list);
        this.mRecyclerView = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(this.context));
        this.mRecyclerView.setAdapter(this.adapter);
        this.window.findViewById(R.id.rootView);
        this.rootViewBg.setOnClickListener(new View.OnClickListener() { // from class: com.luck.picture.lib.widget.FolderPopWindow$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m798lambda$initView$0$comluckpicturelibwidgetFolderPopWindow(view);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$initView$0$com-luck-picture-lib-widget-FolderPopWindow, reason: not valid java name */
    /* synthetic */ void m798lambda$initView$0$comluckpicturelibwidgetFolderPopWindow(View view) {
        dismiss();
    }

    /* JADX INFO: renamed from: lambda$initView$1$com-luck-picture-lib-widget-FolderPopWindow, reason: not valid java name */
    /* synthetic */ void m799lambda$initView$1$comluckpicturelibwidgetFolderPopWindow(View view) {
        dismiss();
    }

    public void bindFolder(List<LocalMediaFolder> list) {
        this.adapter.setChooseMode(this.chooseMode);
        this.adapter.bindFolderData(list);
        this.mRecyclerView.getLayoutParams().height = list.size() > 8 ? this.maxHeight : -2;
    }

    public List<LocalMediaFolder> getFolderData() {
        return this.adapter.getFolderData();
    }

    public boolean isEmpty() {
        return this.adapter.getFolderData().size() == 0;
    }

    public LocalMediaFolder getFolder(int i) {
        if (this.adapter.getFolderData().size() <= 0 || i >= this.adapter.getFolderData().size()) {
            return null;
        }
        return this.adapter.getFolderData().get(i);
    }

    public void setArrowImageView(ImageView imageView) {
        this.ivArrowView = imageView;
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view) {
        try {
            if (Build.VERSION.SDK_INT == 24) {
                int[] iArr = new int[2];
                view.getLocationInWindow(iArr);
                showAtLocation(view, 0, 0, iArr[1] + view.getHeight());
            } else {
                super.showAsDropDown(view);
            }
            this.isDismiss = false;
            this.ivArrowView.setImageDrawable(this.drawableUp);
            AnimUtils.rotateArrow(this.ivArrowView, true);
            this.rootViewBg.animate().alpha(1.0f).setDuration(250L).setStartDelay(250L).start();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setOnAlbumItemClickListener(OnAlbumItemClickListener onAlbumItemClickListener) {
        this.adapter.setOnAlbumItemClickListener(onAlbumItemClickListener);
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        if (this.isDismiss) {
            return;
        }
        this.rootViewBg.animate().alpha(0.0f).setDuration(50L).start();
        this.ivArrowView.setImageDrawable(this.drawableDown);
        AnimUtils.rotateArrow(this.ivArrowView, false);
        this.isDismiss = true;
        super.dismiss();
        this.isDismiss = false;
    }

    public void updateFolderCheckStatus(List<LocalMedia> list) {
        int i;
        try {
            List<LocalMediaFolder> folderData = this.adapter.getFolderData();
            int size = folderData.size();
            int size2 = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                LocalMediaFolder localMediaFolder = folderData.get(i2);
                localMediaFolder.setCheckedNum(0);
                for (0; i < size2; i + 1) {
                    i = (localMediaFolder.getName().equals(list.get(i).getParentFolderName()) || localMediaFolder.getBucketId() == -1) ? 0 : i + 1;
                    localMediaFolder.setCheckedNum(1);
                    break;
                }
            }
            this.adapter.bindFolderData(folderData);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
