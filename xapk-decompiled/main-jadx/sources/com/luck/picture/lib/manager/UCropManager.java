package com.luck.picture.lib.manager;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import com.luck.picture.lib.R;
import com.luck.picture.lib.config.PictureMimeType;
import com.luck.picture.lib.config.PictureSelectionConfig;
import com.luck.picture.lib.entity.LocalMedia;
import com.luck.picture.lib.tools.AttrsUtils;
import com.luck.picture.lib.tools.DateUtils;
import com.luck.picture.lib.tools.DoubleUtils;
import com.luck.picture.lib.tools.PictureFileUtils;
import com.luck.picture.lib.tools.StringUtils;
import com.luck.picture.lib.tools.ToastUtils;
import com.yalantis.ucrop.UCrop;
import java.io.File;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class UCropManager {
    public static void ofEditorImage(Activity activity, String str, String str2) {
        if (DoubleUtils.isFastDoubleClick()) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            ToastUtils.s(activity.getApplicationContext(), activity.getString(R.string.picture_not_crop_data));
            return;
        }
        PictureSelectionConfig pictureSelectionConfig = PictureSelectionConfig.getInstance();
        boolean zIsHasHttp = PictureMimeType.isHasHttp(str);
        File file = new File(PictureFileUtils.getDiskCacheDir(activity.getApplicationContext()), TextUtils.isEmpty(pictureSelectionConfig.renameCropFileName) ? DateUtils.getCreateFileName("IMG_CROP_") + str2.replace("image/", ".") : pictureSelectionConfig.renameCropFileName);
        Uri uriFromFile = (zIsHasHttp || PictureMimeType.isContent(str)) ? Uri.parse(str) : Uri.fromFile(new File(str));
        UCrop.Options optionsBasicOptions = basicOptions(activity);
        optionsBasicOptions.setHideBottomControls(false);
        optionsBasicOptions.setEditorImage(true);
        optionsBasicOptions.setToolbarTitle(activity.getString(R.string.picture_editor));
        UCrop.of(uriFromFile, Uri.fromFile(file)).withOptions(optionsBasicOptions).startAnimationActivity(activity, PictureSelectionConfig.windowAnimationStyle.activityCropEnterAnimation);
    }

    public static void ofCrop(Activity activity, String str, String str2) {
        if (DoubleUtils.isFastDoubleClick()) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            ToastUtils.s(activity.getApplicationContext(), activity.getString(R.string.picture_not_crop_data));
            return;
        }
        PictureSelectionConfig pictureSelectionConfig = PictureSelectionConfig.getInstance();
        UCrop.of((PictureMimeType.isHasHttp(str) || PictureMimeType.isContent(str)) ? Uri.parse(str) : Uri.fromFile(new File(str)), Uri.fromFile(new File(PictureFileUtils.getDiskCacheDir(activity.getApplicationContext()), TextUtils.isEmpty(pictureSelectionConfig.renameCropFileName) ? DateUtils.getCreateFileName("IMG_CROP_") + str2.replace("image/", ".") : pictureSelectionConfig.renameCropFileName))).withOptions(basicOptions(activity)).startAnimationActivity(activity, PictureSelectionConfig.windowAnimationStyle.activityCropEnterAnimation);
    }

    public static void ofCrop(Activity activity, ArrayList<LocalMedia> arrayList) {
        String strRename;
        if (DoubleUtils.isFastDoubleClick()) {
            return;
        }
        if (arrayList == null || arrayList.size() == 0) {
            ToastUtils.s(activity.getApplicationContext(), activity.getString(R.string.picture_not_crop_data));
            return;
        }
        PictureSelectionConfig pictureSelectionConfig = PictureSelectionConfig.getInstance();
        UCrop.Options optionsBasicOptions = basicOptions(activity);
        optionsBasicOptions.setCutListData(arrayList);
        int size = arrayList.size();
        int i = 0;
        if (pictureSelectionConfig.chooseMode == PictureMimeType.ofAll() && pictureSelectionConfig.isWithVideoImage) {
            if (PictureMimeType.isHasVideo(size > 0 ? arrayList.get(0).getMimeType() : "")) {
                int i2 = 0;
                while (true) {
                    if (i2 < size) {
                        LocalMedia localMedia = arrayList.get(i2);
                        if (localMedia != null && PictureMimeType.isHasImage(localMedia.getMimeType())) {
                            i = i2;
                            break;
                        }
                        i2++;
                    } else {
                        break;
                    }
                }
            }
        }
        if (i < size) {
            LocalMedia localMedia2 = arrayList.get(i);
            Uri uriFromFile = (PictureMimeType.isHasHttp(localMedia2.getPath()) || PictureMimeType.isContent(localMedia2.getPath())) ? Uri.parse(localMedia2.getPath()) : Uri.fromFile(new File(localMedia2.getPath()));
            String strReplace = localMedia2.getMimeType().replace("image/", ".");
            String diskCacheDir = PictureFileUtils.getDiskCacheDir(activity);
            if (TextUtils.isEmpty(pictureSelectionConfig.renameCropFileName)) {
                strRename = DateUtils.getCreateFileName("IMG_CROP_") + strReplace;
            } else if (pictureSelectionConfig.camera || size == 1) {
                strRename = pictureSelectionConfig.renameCropFileName;
            } else {
                strRename = StringUtils.rename(pictureSelectionConfig.renameCropFileName);
            }
            UCrop.of(uriFromFile, Uri.fromFile(new File(diskCacheDir, strRename))).withOptions(optionsBasicOptions).startAnimationMultipleCropActivity(activity, PictureSelectionConfig.windowAnimationStyle.activityCropEnterAnimation);
        }
    }

    public static UCrop.Options basicOptions(Context context) {
        boolean typeValueBoolean;
        int typeValueColor;
        int typeValueColor2;
        int typeValueColor3;
        int i;
        UCrop.Options options;
        PictureSelectionConfig pictureSelectionConfig = PictureSelectionConfig.getInstance();
        int i2 = 0;
        if (PictureSelectionConfig.uiStyle != null) {
            i = PictureSelectionConfig.uiStyle.picture_navBarColor;
            typeValueBoolean = PictureSelectionConfig.uiStyle.picture_statusBarChangeTextColor;
            typeValueColor = PictureSelectionConfig.uiStyle.picture_top_titleBarBackgroundColor != 0 ? PictureSelectionConfig.uiStyle.picture_top_titleBarBackgroundColor : 0;
            typeValueColor2 = PictureSelectionConfig.uiStyle.picture_statusBarBackgroundColor != 0 ? PictureSelectionConfig.uiStyle.picture_statusBarBackgroundColor : 0;
            if (PictureSelectionConfig.uiStyle.picture_top_titleTextColor != 0) {
                i2 = PictureSelectionConfig.uiStyle.picture_top_titleTextColor;
            }
        } else if (PictureSelectionConfig.cropStyle != null) {
            i = PictureSelectionConfig.cropStyle.cropNavBarColor;
            typeValueBoolean = PictureSelectionConfig.cropStyle.isChangeStatusBarFontColor;
            typeValueColor = PictureSelectionConfig.cropStyle.cropTitleBarBackgroundColor != 0 ? PictureSelectionConfig.cropStyle.cropTitleBarBackgroundColor : 0;
            typeValueColor2 = PictureSelectionConfig.cropStyle.cropStatusBarColorPrimaryDark != 0 ? PictureSelectionConfig.cropStyle.cropStatusBarColorPrimaryDark : 0;
            if (PictureSelectionConfig.cropStyle.cropTitleColor != 0) {
                i2 = PictureSelectionConfig.cropStyle.cropTitleColor;
            }
        } else {
            typeValueBoolean = pictureSelectionConfig.isChangeStatusBarFontColor;
            if (!typeValueBoolean) {
                typeValueBoolean = AttrsUtils.getTypeValueBoolean(context, R.attr.picture_statusFontColor);
            }
            if (pictureSelectionConfig.cropTitleBarBackgroundColor != 0) {
                typeValueColor = pictureSelectionConfig.cropTitleBarBackgroundColor;
            } else {
                typeValueColor = AttrsUtils.getTypeValueColor(context, R.attr.picture_crop_toolbar_bg);
            }
            if (pictureSelectionConfig.cropStatusBarColorPrimaryDark != 0) {
                typeValueColor2 = pictureSelectionConfig.cropStatusBarColorPrimaryDark;
            } else {
                typeValueColor2 = AttrsUtils.getTypeValueColor(context, R.attr.picture_crop_status_color);
            }
            if (pictureSelectionConfig.cropTitleColor != 0) {
                typeValueColor3 = pictureSelectionConfig.cropTitleColor;
            } else {
                typeValueColor3 = AttrsUtils.getTypeValueColor(context, R.attr.picture_crop_title_color);
            }
            i2 = typeValueColor3;
            i = 0;
        }
        if (pictureSelectionConfig.uCropOptions != null) {
            options = pictureSelectionConfig.uCropOptions;
        } else {
            options = new UCrop.Options();
            options.setCircleDimmedLayer(pictureSelectionConfig.circleDimmedLayer);
            options.setDimmedLayerColor(pictureSelectionConfig.circleDimmedColor);
            options.setShowCropFrame(pictureSelectionConfig.showCropFrame);
            options.setShowCropGrid(pictureSelectionConfig.showCropGrid);
            options.setHideBottomControls(pictureSelectionConfig.hideBottomControls);
            options.setCompressionQuality(pictureSelectionConfig.cropCompressQuality);
            options.setFreeStyleCropEnabled(pictureSelectionConfig.freeStyleCropEnabled);
            options.withAspectRatio(pictureSelectionConfig.aspect_ratio_x, pictureSelectionConfig.aspect_ratio_y);
            if (pictureSelectionConfig.cropWidth > 0 && pictureSelectionConfig.cropHeight > 0) {
                options.withMaxResultSize(pictureSelectionConfig.cropWidth, pictureSelectionConfig.cropHeight);
            }
        }
        options.isOpenWhiteStatusBar(typeValueBoolean);
        options.setToolbarColor(typeValueColor);
        options.setStatusBarColor(typeValueColor2);
        options.setToolbarWidgetColor(i2);
        options.setRenameCropFileName(pictureSelectionConfig.renameCropFileName);
        options.setRequestedOrientation(pictureSelectionConfig.requestedOrientation);
        options.isCamera(pictureSelectionConfig.camera);
        options.isWithVideoImage(pictureSelectionConfig.isWithVideoImage);
        options.isMultipleRecyclerAnimation(pictureSelectionConfig.isMultipleRecyclerAnimation);
        options.setNavBarColor(i);
        options.setDimmedLayerBorderColor(pictureSelectionConfig.circleDimmedBorderColor);
        options.setCircleStrokeWidth(pictureSelectionConfig.circleStrokeWidth);
        options.setDragFrameEnabled(pictureSelectionConfig.isDragFrame);
        options.setScaleEnabled(pictureSelectionConfig.scaleEnabled);
        options.setRotateEnabled(pictureSelectionConfig.rotateEnabled);
        options.setFreestyleCropMode(pictureSelectionConfig.freeStyleCropMode);
        options.setCropDragSmoothToCenter(pictureSelectionConfig.isDragCenter);
        options.isMultipleSkipCrop(pictureSelectionConfig.isMultipleSkipCrop);
        options.setCropExitAnimation(PictureSelectionConfig.windowAnimationStyle.activityCropExitAnimation);
        if (!TextUtils.isEmpty(pictureSelectionConfig.cropCompressFormat)) {
            options.setCompressionFormat(Bitmap.CompressFormat.valueOf(pictureSelectionConfig.cropCompressFormat));
        }
        return options;
    }
}
