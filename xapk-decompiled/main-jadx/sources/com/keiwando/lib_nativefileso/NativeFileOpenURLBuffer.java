package com.keiwando.lib_nativefileso;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class NativeFileOpenURLBuffer {
    private static final String NATIVE_SO_DIR = "NativeFileSO";
    private static final NativeFileOpenURLBuffer instance = new NativeFileOpenURLBuffer();
    private ArrayList<OpenedFile> openedFiles = new ArrayList<>();

    private NativeFileOpenURLBuffer() {
    }

    public static NativeFileOpenURLBuffer getInstance() {
        return instance;
    }

    public void refreshBufferWithUris(ArrayList<Uri> arrayList, ContentResolver contentResolver) {
        this.openedFiles.clear();
        Iterator<Uri> it = arrayList.iterator();
        while (it.hasNext()) {
            OpenedFile openedFileLoadFileFromUri = loadFileFromUri(it.next(), contentResolver);
            if (openedFileLoadFileFromUri != null) {
                this.openedFiles.add(openedFileLoadFileFromUri);
            }
        }
    }

    public OpenedFile loadFileFromUri(Uri uri, ContentResolver contentResolver) {
        byte[] byteArray;
        Log.d("Plugin DEBUG", "Start loading file");
        try {
            InputStream inputStreamOpenInputStream = contentResolver.openInputStream(uri);
            if (inputStreamOpenInputStream == null) {
                return null;
            }
            int iMin = (int) Math.min(2147483647L, getFileSizeFromUri(uri, contentResolver));
            Log.d("Plugin Debug", "File size: " + iMin);
            if (iMin == -1) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = new byte[1024];
                while (true) {
                    int i = inputStreamOpenInputStream.read(bArr);
                    if (i == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i);
                }
                byteArray = byteArrayOutputStream.toByteArray();
            } else {
                byte[] bArr2 = new byte[iMin];
                inputStreamOpenInputStream.read(bArr2, 0, iMin);
                byteArray = bArr2;
            }
            String filenameFromUri = getFilenameFromUri(uri, contentResolver);
            Log.d("Plugin DEBUG", "A file was loaded in Plugin!");
            inputStreamOpenInputStream.close();
            return new OpenedFile(filenameFromUri, byteArray, uri.getPath());
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return null;
        } catch (IOException e2) {
            e2.printStackTrace();
            Log.d("Plugin DEBUG", "EXCEPTION: File did not finish loading!");
            return null;
        }
    }

    public void saveFileFromUriToFolder(Uri uri, File file, ContentResolver contentResolver) {
        Log.d("Plugin DEBUG", "Start loading file");
        try {
            InputStream inputStreamOpenInputStream = contentResolver.openInputStream(uri);
            if (inputStreamOpenInputStream == null) {
                return;
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            byte[] bArr = new byte[10240];
            while (true) {
                int i = inputStreamOpenInputStream.read(bArr);
                if (i != -1) {
                    fileOutputStream.write(bArr, 0, i);
                } else {
                    inputStreamOpenInputStream.close();
                    return;
                }
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002e A[PHI: r0
      0x002e: PHI (r0v4 java.lang.String) = (r0v1 java.lang.String), (r0v9 java.lang.String) binds: [B:12:0x002c, B:17:0x0038] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String getFilenameFromUri(android.net.Uri r8, android.content.ContentResolver r9) {
        /*
            r7 = this;
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            r0 = r9
            r1 = r8
            android.database.Cursor r9 = r0.query(r1, r2, r3, r4, r5, r6)
            r0 = 0
            if (r9 == 0) goto L38
            boolean r1 = r9.moveToFirst()     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L21
            if (r1 == 0) goto L38
            java.lang.String r1 = "_display_name"
            int r1 = r9.getColumnIndex(r1)     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L21
            java.lang.String r0 = r9.getString(r1)     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L21
            goto L38
        L1f:
            r8 = move-exception
            goto L32
        L21:
            r1 = move-exception
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L1f
            java.lang.String r1 = "Plugin DEBUG"
            java.lang.String r2 = "Could not retrieve filename"
            android.util.Log.d(r1, r2)     // Catch: java.lang.Throwable -> L1f
            if (r9 == 0) goto L3b
        L2e:
            r9.close()
            goto L3b
        L32:
            if (r9 == 0) goto L37
            r9.close()
        L37:
            throw r8
        L38:
            if (r9 == 0) goto L3b
            goto L2e
        L3b:
            if (r0 != 0) goto L50
            java.lang.String r0 = r8.getPath()
            r9 = 47
            int r9 = r0.lastIndexOf(r9)
            r1 = -1
            if (r9 == r1) goto L50
            int r9 = r9 + 1
            java.lang.String r0 = r0.substring(r9)
        L50:
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            java.lang.String r1 = "File Path: "
            r9.<init>(r1)
            java.lang.String r8 = r8.toString()
            java.lang.StringBuilder r8 = r9.append(r8)
            java.lang.String r8 = r8.toString()
            java.lang.String r9 = "Plugin Debug"
            android.util.Log.d(r9, r8)
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            java.lang.String r1 = "Filename: "
            r8.<init>(r1)
            java.lang.StringBuilder r8 = r8.append(r0)
            java.lang.String r8 = r8.toString()
            android.util.Log.d(r9, r8)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.keiwando.lib_nativefileso.NativeFileOpenURLBuffer.getFilenameFromUri(android.net.Uri, android.content.ContentResolver):java.lang.String");
    }

    private long getFileSizeFromUri(Uri uri, ContentResolver contentResolver) {
        Cursor cursorQuery = contentResolver.query(uri, null, null, null, null, null);
        if (cursorQuery == null) {
            return -1L;
        }
        try {
            if (cursorQuery.moveToFirst()) {
                return cursorQuery.getLong(cursorQuery.getColumnIndex("_size"));
            }
            return -1L;
        } catch (Exception e) {
            e.printStackTrace();
            return -1L;
        }
    }

    public void saveFilesInCacheDir(ArrayList<Uri> arrayList, File file, ContentResolver contentResolver) {
        File file2 = new File(file, NATIVE_SO_DIR);
        file2.mkdirs();
        clearDirectory(file2);
        for (Uri uri : arrayList) {
            saveFileFromUriToFolder(uri, new File(file2, getFilenameFromUri(uri, contentResolver)), contentResolver);
            Log.d("Plugin DEBUG", "Saved file in Cache Dir");
        }
    }

    public void loadFromTempDir(File file, ContentResolver contentResolver) {
        byte[] bArr = new byte[0];
        for (File file2 : getNativeSODir(file).listFiles()) {
            String filenameFromUri = getFilenameFromUri(Uri.fromFile(file2), contentResolver);
            getFileSizeFromUri(Uri.fromFile(file2), contentResolver);
            this.openedFiles.add(new OpenedFile(filenameFromUri, bArr, file2.getPath()));
            Log.d("Plugin DEBUG", "Loaded file from Cache Dir");
        }
    }

    public void freeMemory(File file) {
        this.openedFiles.clear();
        clearDirectory(getNativeSODir(file));
        Log.d("Plugin DEBUG", "Freed Memory");
    }

    private File getNativeSODir(File file) {
        File file2 = new File(file, NATIVE_SO_DIR);
        file2.mkdirs();
        return file2;
    }

    private void clearDirectory(File file) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                file2.delete();
            }
        }
    }

    public int getNumberOfLoadedFiles() {
        return this.openedFiles.size();
    }

    public OpenedFile getOpenedFileAtIndex(int i) {
        return this.openedFiles.get(i);
    }
}
