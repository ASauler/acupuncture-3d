package com.luck.picture.lib.engine;

import android.content.Context;
import com.luck.picture.lib.entity.LocalMedia;
import com.luck.picture.lib.listener.OnCallbackListener;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface CompressEngine {
    void onCompress(Context context, List<LocalMedia> list, OnCallbackListener<List<LocalMedia>> onCallbackListener);
}
