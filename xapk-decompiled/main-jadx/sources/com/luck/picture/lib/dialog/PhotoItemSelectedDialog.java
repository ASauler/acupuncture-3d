package com.luck.picture.lib.dialog;

import android.R;
import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.luck.picture.lib.listener.OnItemClickListener;
import com.luck.picture.lib.tools.ScreenUtils;

/* JADX INFO: loaded from: classes2.dex */
public class PhotoItemSelectedDialog extends DialogFragment implements View.OnClickListener {
    public static final int IMAGE_CAMERA = 0;
    public static final int VIDEO_CAMERA = 1;
    private OnItemClickListener onItemClickListener;
    private TextView tvPictureCancel;
    private TextView tvPicturePhoto;
    private TextView tvPictureVideo;

    public static PhotoItemSelectedDialog newInstance() {
        return new PhotoItemSelectedDialog();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (getDialog() != null) {
            getDialog().requestWindowFeature(1);
            if (getDialog().getWindow() != null) {
                getDialog().getWindow().setBackgroundDrawableResource(R.color.transparent);
            }
        }
        return layoutInflater.inflate(com.luck.picture.lib.R.layout.picture_dialog_camera_selected, viewGroup);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.tvPicturePhoto = (TextView) view.findViewById(com.luck.picture.lib.R.id.picture_tv_photo);
        this.tvPictureVideo = (TextView) view.findViewById(com.luck.picture.lib.R.id.picture_tv_video);
        this.tvPictureCancel = (TextView) view.findViewById(com.luck.picture.lib.R.id.picture_tv_cancel);
        this.tvPictureVideo.setOnClickListener(this);
        this.tvPicturePhoto.setOnClickListener(this);
        this.tvPictureCancel.setOnClickListener(this);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        initDialogStyle();
    }

    private void initDialogStyle() {
        Window window;
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.setLayout(ScreenUtils.getScreenWidth(getContext()), -2);
        window.setGravity(80);
        window.setWindowAnimations(com.luck.picture.lib.R.style.PictureThemeDialogFragmentAnim);
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.onItemClickListener = onItemClickListener;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (this.onItemClickListener != null) {
            if (id == com.luck.picture.lib.R.id.picture_tv_photo) {
                this.onItemClickListener.onItemClick(view, 0);
            }
            if (id == com.luck.picture.lib.R.id.picture_tv_video) {
                this.onItemClickListener.onItemClick(view, 1);
            }
        }
        dismissAllowingStateLoss();
    }

    @Override // androidx.fragment.app.DialogFragment
    public void show(FragmentManager fragmentManager, String str) {
        FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
        fragmentTransactionBeginTransaction.add(this, str);
        fragmentTransactionBeginTransaction.commitAllowingStateLoss();
    }
}
