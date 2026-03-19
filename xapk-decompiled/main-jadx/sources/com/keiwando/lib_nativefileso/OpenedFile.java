package com.keiwando.lib_nativefileso;

/* JADX INFO: loaded from: classes2.dex */
public class OpenedFile {
    private byte[] data;
    private String filename;
    private String path;

    public OpenedFile(String str, byte[] bArr) {
        this.path = "";
        this.filename = str;
        this.data = bArr;
    }

    public OpenedFile(String str, byte[] bArr, String str2) {
        this(str, bArr);
        this.path = str2;
    }

    public byte[] getData() {
        return this.data;
    }

    public String getFilename() {
        return this.filename;
    }

    public String getPath() {
        return this.path;
    }
}
