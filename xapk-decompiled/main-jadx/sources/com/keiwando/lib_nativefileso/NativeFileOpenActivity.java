package com.keiwando.lib_nativefileso;

import android.app.Activity;
import android.content.ClipData;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class NativeFileOpenActivity extends Activity {
    private final int REQUEST_CODE = 1;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent.getBooleanExtra("openedFromNativeFileSO", false)) {
            Intent intent2 = new Intent("android.intent.action.GET_CONTENT");
            String stringExtra = intent.getStringExtra("mimetypes");
            intent2.setType("*/*");
            intent2.putExtra("android.intent.extra.LOCAL_ONLY", true);
            if (intent.getBooleanExtra("canOpenMultiple", false)) {
                intent2.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
            }
            if (stringExtra != null && !stringExtra.equals("")) {
                String[] strArrSplit = stringExtra.split(" ");
                if (strArrSplit.length == 1) {
                    intent2.setType(strArrSplit[0]);
                } else {
                    intent2.putExtra("android.intent.extra.MIME_TYPES", strArrSplit);
                }
            }
            intent2.addCategory("android.intent.category.OPENABLE");
            Log.d("Plugin DEBUG", "Showing Chooser");
            startActivityForResult(Intent.createChooser(intent2, "Select a file"), 1);
            return;
        }
        Log.d("Plugin DEBUG", "Opened externally");
        ArrayList<Uri> arrayList = new ArrayList<>();
        String action = intent.getAction();
        if (action == "android.intent.action.SEND") {
            arrayList.add((Uri) intent.getExtras().get("android.intent.extra.STREAM"));
        } else if (action == "android.intent.action.SEND_MULTIPLE") {
            arrayList = (ArrayList) intent.getExtras().get("android.intent.extra.STREAM");
        } else if (action == "android.intent.action.VIEW" || action == "android.intent.action.EDIT") {
            arrayList.add(intent.getData());
        } else {
            Log.d("Plugin DEBUG", "Intent action not known.");
        }
        if (arrayList != null) {
            NativeFileOpenURLBuffer.getInstance().saveFilesInCacheDir(arrayList, getCacheDir(), getContentResolver());
            Intent launchIntentForPackage = getPackageManager().getLaunchIntentForPackage(getPackageName());
            launchIntentForPackage.addFlags(268468224);
            startActivity(launchIntentForPackage);
        } else {
            Log.d("Plugin DEBUG", "No Uris");
        }
        finish();
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        Log.d("Plugin DEBUG", "OnActivity result " + (intent == null));
        if (i == 1 && i2 == -1 && intent != null) {
            ArrayList<Uri> arrayList = new ArrayList<>();
            ClipData clipData = intent.getClipData();
            if (clipData == null) {
                arrayList.add(intent.getData());
            } else {
                for (int i3 = 0; i3 < clipData.getItemCount(); i3++) {
                    arrayList.add(clipData.getItemAt(i3).getUri());
                }
            }
            NativeFileOpenURLBuffer.getInstance().saveFilesInCacheDir(arrayList, getCacheDir(), getContentResolver());
        }
        finish();
    }
}
