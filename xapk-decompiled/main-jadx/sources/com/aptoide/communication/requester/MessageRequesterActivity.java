package com.aptoide.communication.requester;

import android.app.Activity;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public abstract class MessageRequesterActivity extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().addFlags(16);
        StaticMessageResponseSynchronizer.getMessageListener().onMessageReceived(getIntent().getLongExtra("REQUEST_CODE", -1L), getIntent().getParcelableExtra("RETURN_VALUE"));
        finish();
    }
}
