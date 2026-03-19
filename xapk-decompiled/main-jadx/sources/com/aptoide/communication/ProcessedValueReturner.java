package com.aptoide.communication;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class ProcessedValueReturner {
    private final Context context;
    private final String senderUri;

    public ProcessedValueReturner(Context context, String str) {
        this.context = context;
        this.senderUri = str;
    }

    public void returnValue(String str, long j, Parcelable parcelable) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(this.senderUri));
        intent.setPackage(str);
        intent.putExtra("REQUEST_CODE", j);
        intent.putExtra("RETURN_VALUE", parcelable);
        this.context.startActivity(intent);
    }
}
