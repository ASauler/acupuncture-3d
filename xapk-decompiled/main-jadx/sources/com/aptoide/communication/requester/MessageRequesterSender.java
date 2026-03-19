package com.aptoide.communication.requester;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Parcelable;
import com.aptoide.communication.MessageProcessorActivity;

/* JADX INFO: loaded from: classes.dex */
class MessageRequesterSender {
    private final Context context;
    private final String requesterActivityUri;
    private final String targetPackage;
    private final String targetUri;

    MessageRequesterSender(Context context, String str, String str2, String str3) {
        this.context = context;
        this.targetPackage = str;
        this.targetUri = str2;
        this.requesterActivityUri = str3;
    }

    public void sendMessage(long j, int i, Parcelable parcelable) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(this.targetUri));
        intent.putExtra(MessageProcessorActivity.REQUESTER_ACTIVITY_URI, this.requesterActivityUri);
        intent.putExtra(MessageProcessorActivity.MESSAGE_ID, j);
        intent.putExtra(MessageProcessorActivity.REQUESTER_PACKAGE_NAME, this.context.getPackageName());
        intent.putExtra(MessageProcessorActivity.METHOD_ID, i);
        intent.putExtra(MessageProcessorActivity.ARGUMENTS, parcelable);
        intent.setFlags(276824064);
        intent.setPackage(this.targetPackage);
        this.context.startActivity(intent);
    }
}
