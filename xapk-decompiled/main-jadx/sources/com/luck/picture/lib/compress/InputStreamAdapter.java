package com.luck.picture.lib.compress;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public abstract class InputStreamAdapter implements InputStreamProvider {
    private InputStream inputStream;

    public abstract InputStream openInternal() throws IOException;

    @Override // com.luck.picture.lib.compress.InputStreamProvider
    public InputStream open() throws IOException {
        InputStream inputStreamOpenInternal = openInternal();
        this.inputStream = inputStreamOpenInternal;
        return inputStreamOpenInternal;
    }

    @Override // com.luck.picture.lib.compress.InputStreamProvider
    public void close() {
        InputStream inputStream = this.inputStream;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            } catch (Throwable th) {
                this.inputStream = null;
                throw th;
            }
            this.inputStream = null;
        }
    }
}
