package values;

import java.io.File;

/* JADX INFO: loaded from: classes4.dex */
public class ConvertPPT {
    public static String datadir;
    public static String outputfile;
    public String exp_PPT_format_path;
    public String vslFileName;

    public void initConvert(String str, Common_Value common_Value) {
        this.exp_PPT_format_path = Common_Value.weike_outputdir + "\\" + Common_Value.get_file_name_from_full_path(str);
        File file = new File(this.exp_PPT_format_path);
        if (file.exists()) {
            file.isDirectory();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        outputfile = this.exp_PPT_format_path + "\\ppt_control.xml";
        datadir = this.exp_PPT_format_path + "\\data";
        this.vslFileName = Common_Value.vslFileName;
    }
}
