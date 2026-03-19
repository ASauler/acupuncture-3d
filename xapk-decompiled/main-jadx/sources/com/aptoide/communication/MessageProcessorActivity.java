package com.aptoide.communication;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public abstract class MessageProcessorActivity extends Activity {
    public static final String ARGUMENTS = "ARGUMENTS";
    public static final String MESSAGE_ID = "MESSAGE_ID";
    public static final String METHOD_ID = "METHOD_ID";
    public static final String REQUESTER_ACTIVITY_URI = "REQUESTER_ACTIVITY_URI";
    public static final String REQUESTER_PACKAGE_NAME = "REQUESTER_PACKAGE_NAME";

    public abstract Parcelable processValue(int i, Parcelable parcelable);

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().addFlags(16);
        final ProcessedValueReturner processedValueReturner = new ProcessedValueReturner(this, getIntent().getStringExtra(REQUESTER_ACTIVITY_URI));
        new Thread(new Runnable() { // from class: com.aptoide.communication.MessageProcessorActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onCreate$0(processedValueReturner);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$0(ProcessedValueReturner processedValueReturner) {
        Intent intent = getIntent();
        processedValueReturner.returnValue(intent.getStringExtra(REQUESTER_PACKAGE_NAME), intent.getLongExtra(MESSAGE_ID, -1L), processValue(intent.getIntExtra(METHOD_ID, -1), intent.getParcelableExtra(ARGUMENTS)));
        finish();
    }
}
