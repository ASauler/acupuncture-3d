package com.luck.picture.lib.tools;

import android.content.Context;
import android.text.SpannableString;
import android.text.style.RelativeSizeSpan;
import android.widget.TextView;
import com.luck.picture.lib.R;
import com.luck.picture.lib.config.PictureMimeType;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class StringUtils {
    public static void tempTextFont(TextView textView, int i) {
        String string;
        String strTrim = textView.getText().toString().trim();
        if (i == PictureMimeType.ofAudio()) {
            string = textView.getContext().getString(R.string.picture_empty_audio_title);
        } else {
            string = textView.getContext().getString(R.string.picture_empty_title);
        }
        String str = string + strTrim;
        SpannableString spannableString = new SpannableString(str);
        spannableString.setSpan(new RelativeSizeSpan(0.8f), string.length(), str.length(), 33);
        textView.setText(spannableString);
    }

    public static int stringToInt(String str) {
        if (Pattern.compile("^[-\\+]?[\\d]+$").matcher(str).matches()) {
            return ValueOf.toInt(str);
        }
        return 0;
    }

    public static String getMsg(Context context, String str, int i) {
        if (PictureMimeType.isHasVideo(str)) {
            return context.getString(R.string.picture_message_video_max_num, Integer.valueOf(i));
        }
        if (PictureMimeType.isHasAudio(str)) {
            return context.getString(R.string.picture_message_audio_max_num, Integer.valueOf(i));
        }
        return context.getString(R.string.picture_message_max_num, Integer.valueOf(i));
    }

    public static String rename(String str) {
        return str.substring(0, str.lastIndexOf(".")) + "_" + DateUtils.getCreateFileName() + str.substring(str.lastIndexOf("."));
    }

    public static String renameSuffix(String str, String str2) {
        return str.substring(0, str.lastIndexOf(".")) + str2;
    }

    public static String getEncryptionValue(long j, int i, int i2) {
        if (i == 0 && i2 == 0) {
            return j + "_" + System.currentTimeMillis();
        }
        return j + "_" + i + i2;
    }
}
