package com.sfb.standalonefilebrowser;

import android.app.Fragment;
import android.content.Intent;
import android.provider.MediaStore;

/* JADX INFO: loaded from: classes2.dex */
public class StandaloneFileBrowserFragment extends Fragment {
    public static final int PICKFILE_RESULT_CODE = 1;
    private StandaloneFileBrowserAndroidListener fileBrowserAndroidListener;
    private IntentType intentType = IntentType.FILE;
    private Boolean multiple;
    private String title;

    public enum IntentType {
        FILE,
        IMAGE
    }

    public void setFileBrowserAndroidListener(StandaloneFileBrowserAndroidListener standaloneFileBrowserAndroidListener) {
        this.fileBrowserAndroidListener = standaloneFileBrowserAndroidListener;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setMultiple(Boolean bool) {
        this.multiple = bool;
    }

    public void setIntentType(IntentType intentType) {
        this.intentType = intentType;
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        Intent intent = new Intent();
        if (this.intentType == IntentType.IMAGE) {
            intent.setAction("android.intent.action.PICK");
            intent.setData(MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
            if (this.multiple.booleanValue()) {
                intent.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
            }
        } else {
            intent.setAction("android.intent.action.GET_CONTENT");
            intent.setType("*/*");
        }
        startActivityForResult(intent, 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String getFileCopyPath(android.net.Uri r9) throws java.lang.Throwable {
        /*
            r8 = this;
            r0 = 0
            if (r9 != 0) goto L4
            return r0
        L4:
            android.app.Activity r1 = r8.getActivity()
            android.content.ContentResolver r1 = r1.getContentResolver()
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r2 = r1
            r3 = r9
            android.database.Cursor r2 = r2.query(r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L73 java.lang.Exception -> L7a
            if (r2 == 0) goto L2c
            boolean r3 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L7b
            if (r3 == 0) goto L2c
            java.lang.String r3 = "_display_name"
            int r3 = r2.getColumnIndex(r3)     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L7b
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L7b
            goto L2d
        L29:
            r9 = move-exception
            r0 = r2
            goto L74
        L2c:
            r3 = r0
        L2d:
            if (r2 == 0) goto L32
            r2.close()
        L32:
            java.io.InputStream r9 = r1.openInputStream(r9)     // Catch: java.lang.Exception -> L72
            if (r9 != 0) goto L39
            return r0
        L39:
            java.io.File r1 = new java.io.File     // Catch: java.lang.Exception -> L72
            android.app.Activity r2 = r8.getActivity()     // Catch: java.lang.Exception -> L72
            java.io.File r2 = r2.getCacheDir()     // Catch: java.lang.Exception -> L72
            r1.<init>(r2, r3)     // Catch: java.lang.Exception -> L72
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L67
            r3 = 0
            r2.<init>(r1, r3)     // Catch: java.lang.Throwable -> L67
            r4 = 4096(0x1000, float:5.74E-42)
            byte[] r4 = new byte[r4]     // Catch: java.lang.Throwable -> L65
        L50:
            int r5 = r9.read(r4)     // Catch: java.lang.Throwable -> L65
            if (r5 <= 0) goto L5a
            r2.write(r4, r3, r5)     // Catch: java.lang.Throwable -> L65
            goto L50
        L5a:
            java.lang.String r1 = r1.getAbsolutePath()     // Catch: java.lang.Throwable -> L65
            r2.close()     // Catch: java.lang.Exception -> L72
            r9.close()     // Catch: java.lang.Exception -> L72
            return r1
        L65:
            r1 = move-exception
            goto L69
        L67:
            r1 = move-exception
            r2 = r0
        L69:
            if (r2 == 0) goto L6e
            r2.close()     // Catch: java.lang.Exception -> L72
        L6e:
            r9.close()     // Catch: java.lang.Exception -> L72
            throw r1     // Catch: java.lang.Exception -> L72
        L72:
            return r0
        L73:
            r9 = move-exception
        L74:
            if (r0 == 0) goto L79
            r0.close()
        L79:
            throw r9
        L7a:
            r2 = r0
        L7b:
            if (r2 == 0) goto L80
            r2.close()
        L80:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sfb.standalonefilebrowser.StandaloneFileBrowserFragment.getFileCopyPath(android.net.Uri):java.lang.String");
    }

    @Override // android.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) throws Throwable {
        super.onActivityResult(i, i2, intent);
        if (this.fileBrowserAndroidListener == null) {
            return;
        }
        if (i == 1) {
            String fileCopyPath = "";
            if (i2 == -1) {
                if (intent.getClipData() != null) {
                    String str = "";
                    for (int i3 = 0; i3 < intent.getClipData().getItemCount(); i3++) {
                        if (str != "") {
                            str = str + "|";
                        }
                        str = str + getFileCopyPath(intent.getClipData().getItemAt(i3).getUri());
                    }
                    fileCopyPath = str;
                } else if (intent.getData() != null) {
                    fileCopyPath = getFileCopyPath(intent.getData());
                }
            }
            this.fileBrowserAndroidListener.onFilesSelected(fileCopyPath);
        }
        getFragmentManager().beginTransaction().remove(this).commit();
    }
}
