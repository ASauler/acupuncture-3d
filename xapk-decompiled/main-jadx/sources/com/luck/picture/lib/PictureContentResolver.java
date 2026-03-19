package com.luck.picture.lib;

import android.content.Context;
import android.net.Uri;
import com.luck.picture.lib.io.ArrayPoolProvide;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class PictureContentResolver {
    public static InputStream getContentResolverOpenInputStream(Context context, Uri uri) {
        return ArrayPoolProvide.getInstance().openInputStream(context.getContentResolver(), uri);
    }

    public static OutputStream getContentResolverOpenOutputStream(Context context, Uri uri) {
        try {
            return context.getContentResolver().openOutputStream(uri);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
