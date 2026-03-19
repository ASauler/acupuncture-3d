.class public Lvalues/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final Vesal_Anim_Action_Emph:Ljava/lang/String; = "emph"

.field public static final Vesal_Anim_Action_Entr:Ljava/lang/String; = "entr"

.field public static final Vesal_Anim_Action_Exit:Ljava/lang/String; = "exit"

.field public static final Vesal_Anim_Action_MediaCall:Ljava/lang/String; = "mediacall"

.field public static final Vesal_ELLIPSE_Flag:Ljava/lang/String; = "ELLIPSE_"

.field public static final Vesal_Element_Flag:Ljava/lang/String; = "VSAELE:"

.field public static final Vesal_Line_Flag:Ljava/lang/String; = "LINE_"

.field public static final Vesal_Model_Flag:Ljava/lang/String; = "VESAL_3D"

.field public static final Vesal_PaintPen_Flag:Ljava/lang/String; = "VSALPP:"

.field public static final Vesal_QA_Flag:Ljava/lang/String; = "VSALQA:"

.field public static final Vesal_QA_Select_Flag:Ljava/lang/String; = "SL_"

.field public static final Vesal_QA_YesNo_Flag:Ljava/lang/String; = "YN_"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get_Vesal_Class_Type(Ljava/lang/String;)Lvalues/VESAL_CLASS_TYPE;
    .locals 1

    const-string v0, "VESAL_3D"

    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    sget-object p0, Lvalues/VESAL_CLASS_TYPE;->MODEL:Lvalues/VESAL_CLASS_TYPE;

    return-object p0

    :cond_0
    const-string v0, "VSAELE:"

    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    sget-object p0, Lvalues/VESAL_CLASS_TYPE;->ELEMENT:Lvalues/VESAL_CLASS_TYPE;

    return-object p0

    :cond_1
    const-string v0, "VSALQA:"

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    sget-object p0, Lvalues/VESAL_CLASS_TYPE;->QA:Lvalues/VESAL_CLASS_TYPE;

    return-object p0

    :cond_2
    const-string v0, "VSALPP:"

    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 38
    sget-object p0, Lvalues/VESAL_CLASS_TYPE;->PAINTPEN:Lvalues/VESAL_CLASS_TYPE;

    return-object p0

    .line 40
    :cond_3
    sget-object p0, Lvalues/VESAL_CLASS_TYPE;->NONE:Lvalues/VESAL_CLASS_TYPE;

    return-object p0
.end method

.method public static get_Vesal_Element_Name(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "VSAELE:"

    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    .line 77
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static get_Vesal_Model_Name(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 62
    invoke-static {p0}, Lvalues/Common_Value;->get_file_name_from_full_path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Lvalues/Common_Value;->remove_name_suffix(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "VESAL_3D"

    .line 65
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static get_Vesal_Name(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 45
    sget-object v0, Lvalues/Constants$1;->$SwitchMap$values$VESAL_CLASS_TYPE:[I

    invoke-static {p0}, Lvalues/Constants;->get_Vesal_Class_Type(Ljava/lang/String;)Lvalues/VESAL_CLASS_TYPE;

    move-result-object v1

    invoke-virtual {v1}, Lvalues/VESAL_CLASS_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string p0, ""

    return-object p0

    .line 54
    :cond_0
    invoke-static {p0}, Lvalues/Constants;->get_Vesal_PaintPen_Name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 52
    :cond_1
    invoke-static {p0}, Lvalues/Constants;->get_Vesal_QA_Name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 50
    :cond_2
    invoke-static {p0}, Lvalues/Constants;->get_Vesal_Element_Name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 48
    :cond_3
    invoke-static {p0}, Lvalues/Constants;->get_Vesal_Model_Name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get_Vesal_PaintPen_Name(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "VSALPP:"

    .line 95
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    .line 97
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static get_Vesal_QA_Name(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "VSALQA:"

    .line 85
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    .line 87
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method
