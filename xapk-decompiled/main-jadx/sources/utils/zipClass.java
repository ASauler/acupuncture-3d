package utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import net.lingala.zip4j.util.InternalZipConstants;
import org.apache.tools.zip.ZipEntry;
import org.apache.tools.zip.ZipOutputStream;

/* JADX INFO: loaded from: classes4.dex */
public class zipClass {
    private static final int BUFFER_SIZE = 2048;

    public static void toZip(String str, OutputStream outputStream, boolean z) throws Throwable {
        ZipOutputStream zipOutputStream;
        ZipOutputStream zipOutputStream2 = null;
        try {
            try {
                zipOutputStream = new ZipOutputStream(outputStream);
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            File file = new File(str);
            compress(file, zipOutputStream, file.getName(), z);
            try {
                zipOutputStream.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        } catch (Exception e3) {
            e = e3;
            throw new RuntimeException("zip error from ZipUtils", e);
        } catch (Throwable th2) {
            th = th2;
            zipOutputStream2 = zipOutputStream;
            if (zipOutputStream2 != null) {
                try {
                    zipOutputStream2.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
            throw th;
        }
    }

    private static void compress(File file, ZipOutputStream zipOutputStream, String str, boolean z) throws Exception {
        byte[] bArr = new byte[2048];
        if (file.isFile()) {
            zipOutputStream.putNextEntry(new ZipEntry(str));
            FileInputStream fileInputStream = new FileInputStream(file);
            while (true) {
                int i = fileInputStream.read(bArr);
                if (i != -1) {
                    zipOutputStream.write(bArr, 0, i);
                } else {
                    zipOutputStream.closeEntry();
                    fileInputStream.close();
                    return;
                }
            }
        } else {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null || fileArrListFiles.length == 0) {
                if (z) {
                    zipOutputStream.putNextEntry(new ZipEntry(str + InternalZipConstants.ZIP_FILE_SEPARATOR));
                    zipOutputStream.closeEntry();
                    return;
                }
                return;
            }
            for (File file2 : fileArrListFiles) {
                if (z) {
                    compress(file2, zipOutputStream, str + InternalZipConstants.ZIP_FILE_SEPARATOR + file2.getName(), z);
                } else {
                    compress(file2, zipOutputStream, file2.getName(), z);
                }
            }
        }
    }
}
