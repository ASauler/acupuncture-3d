package values;

/* JADX INFO: loaded from: classes4.dex */
public class Constants {
    public static final String Vesal_Anim_Action_Emph = "emph";
    public static final String Vesal_Anim_Action_Entr = "entr";
    public static final String Vesal_Anim_Action_Exit = "exit";
    public static final String Vesal_Anim_Action_MediaCall = "mediacall";
    public static final String Vesal_ELLIPSE_Flag = "ELLIPSE_";
    public static final String Vesal_Element_Flag = "VSAELE:";
    public static final String Vesal_Line_Flag = "LINE_";
    public static final String Vesal_Model_Flag = "VESAL_3D";
    public static final String Vesal_PaintPen_Flag = "VSALPP:";
    public static final String Vesal_QA_Flag = "VSALQA:";
    public static final String Vesal_QA_Select_Flag = "SL_";
    public static final String Vesal_QA_YesNo_Flag = "YN_";

    public static VESAL_CLASS_TYPE get_Vesal_Class_Type(String str) {
        if (str.startsWith(Vesal_Model_Flag)) {
            return VESAL_CLASS_TYPE.MODEL;
        }
        if (str.startsWith(Vesal_Element_Flag)) {
            return VESAL_CLASS_TYPE.ELEMENT;
        }
        if (str.startsWith(Vesal_QA_Flag)) {
            return VESAL_CLASS_TYPE.QA;
        }
        if (str.startsWith(Vesal_PaintPen_Flag)) {
            return VESAL_CLASS_TYPE.PAINTPEN;
        }
        return VESAL_CLASS_TYPE.NONE;
    }

    /* JADX INFO: renamed from: values.Constants$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$values$VESAL_CLASS_TYPE;

        static {
            int[] iArr = new int[VESAL_CLASS_TYPE.values().length];
            $SwitchMap$values$VESAL_CLASS_TYPE = iArr;
            try {
                iArr[VESAL_CLASS_TYPE.MODEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$values$VESAL_CLASS_TYPE[VESAL_CLASS_TYPE.ELEMENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$values$VESAL_CLASS_TYPE[VESAL_CLASS_TYPE.QA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$values$VESAL_CLASS_TYPE[VESAL_CLASS_TYPE.PAINTPEN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static String get_Vesal_Name(String str) {
        int i = AnonymousClass1.$SwitchMap$values$VESAL_CLASS_TYPE[get_Vesal_Class_Type(str).ordinal()];
        if (i == 1) {
            return get_Vesal_Model_Name(str);
        }
        if (i == 2) {
            return get_Vesal_Element_Name(str);
        }
        if (i != 3) {
            return i != 4 ? "" : get_Vesal_PaintPen_Name(str);
        }
        return get_Vesal_QA_Name(str);
    }

    public static String get_Vesal_Model_Name(String str) {
        Common_Value.remove_name_suffix(Common_Value.get_file_name_from_full_path(str));
        return str.startsWith(Vesal_Model_Flag) ? str.substring(8) : "";
    }

    public static String get_Vesal_Element_Name(String str) {
        return str.startsWith(Vesal_Element_Flag) ? str.substring(7) : "";
    }

    public static String get_Vesal_QA_Name(String str) {
        return str.startsWith(Vesal_QA_Flag) ? str.substring(7) : "";
    }

    public static String get_Vesal_PaintPen_Name(String str) {
        return str.startsWith(Vesal_PaintPen_Flag) ? str.substring(7) : "";
    }
}
