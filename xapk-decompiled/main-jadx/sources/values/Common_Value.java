package values;

import java.io.File;
import net.lingala.zip4j.util.InternalZipConstants;

/* JADX INFO: loaded from: classes4.dex */
public class Common_Value {
    public static String vslFileName;
    public static String weike_outputdir;

    public boolean Init_Common_Value(String str, String str2) {
        weike_outputdir = str2 + "\\vesaltemp";
        File file = new File(weike_outputdir);
        if (file.exists()) {
            file.isDirectory();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        vslFileName = remove_name_suffix(get_file_name_from_full_path(str)) + ".VSL";
        return true;
    }

    public static String get_file_name_from_full_path(String str) {
        int iLastIndexOf = str.lastIndexOf(InternalZipConstants.ZIP_FILE_SEPARATOR);
        if (iLastIndexOf < 0) {
            int iLastIndexOf2 = str.lastIndexOf("\\");
            return iLastIndexOf2 < 0 ? str : str.substring(iLastIndexOf2 + 1);
        }
        return str.substring(iLastIndexOf + 1);
    }

    public static String remove_name_suffix(String str) {
        int iLastIndexOf = str.lastIndexOf(".");
        return iLastIndexOf < 0 ? str : str.substring(0, iLastIndexOf);
    }

    public static void DelFile(String str) {
        File file = new File(str);
        if (file.exists()) {
            file.delete();
        }
    }

    public void deleteFolder(String str) throws Exception {
        File file = new File(str);
        if (!file.exists()) {
            throw new Exception("文件不存在");
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    deleteFolder(file2.getPath());
                } else {
                    file2.delete();
                }
            }
        }
        file.delete();
    }
}
