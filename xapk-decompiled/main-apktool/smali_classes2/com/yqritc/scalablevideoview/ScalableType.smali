.class public final enum Lcom/yqritc/scalablevideoview/ScalableType;
.super Ljava/lang/Enum;
.source "ScalableType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yqritc/scalablevideoview/ScalableType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yqritc/scalablevideoview/ScalableType;

.field public static final enum CENTER:Lcom/yqritc/scalablevideoview/ScalableType;

.field public static final enum CENTER_BOTTOM:Lcom/yqritc/scalablevideoview/ScalableType;

.field public static final enum CENTER_BOTTOM_CROP:Lcom/yqritc/scalablevideoview/ScalableType;

.field public static final enum CENTER_CROP:Lcom/yqritc/scalablevideoview/ScalableType;

.field public static final enum CENTER_INSIDE:Lcom/yqritc/scalablevideoview/ScalableType;

.field public static final enum CENTER_TOP:Lcom/yqritc/scalablevideoview/ScalableType;

.field public static final enum CENTER_TOP_CROP:Lcom/yqritc/scalablevideoview/ScalableType;

.field public static final enum END_INSIDE:Lcom/yqritc/scalablevideoview/ScalableType;

.field public static final enum FIT_CENTER:Lcom/yqritc/scalablevideoview/ScalableType;

.field public static final enum FIT_END:Lcom/yqritc/scalablevideoview/ScalableType;

.field public static final enum FIT_START:Lcom/yqritc/scalablevideoview/ScalableType;

.field public static final enum FIT_XY:Lcom/yqritc/scalablevideoview/ScalableType;

.field public static final enum LEFT_BOTTOM:Lcom/yqritc/scalablevideoview/ScalableType;

.field public static final enum LEFT_BOTTOM_CROP:Lcom/yqritc/scalablevideoview/ScalableType;

.field public static final enum LEFT_CENTER:Lcom/yqritc/scalablevideoview/ScalableType;

.field public static final enum LEFT_CENTER_CROP:Lcom/yqritc/scalablevideoview/ScalableType;

.field public static final enum LEFT_TOP:Lcom/yqritc/scalablevideoview/ScalableType;

.field public static final enum LEFT_TOP_CROP:Lcom/yqritc/scalablevideoview/ScalableType;

.field public static final enum NONE:Lcom/yqritc/scalablevideoview/ScalableType;

.field public static final enum RIGHT_BOTTOM:Lcom/yqritc/scalablevideoview/ScalableType;

.field public static final enum RIGHT_BOTTOM_CROP:Lcom/yqritc/scalablevideoview/ScalableType;

.field public static final enum RIGHT_CENTER:Lcom/yqritc/scalablevideoview/ScalableType;

.field public static final enum RIGHT_CENTER_CROP:Lcom/yqritc/scalablevideoview/ScalableType;

.field public static final enum RIGHT_TOP:Lcom/yqritc/scalablevideoview/ScalableType;

.field public static final enum RIGHT_TOP_CROP:Lcom/yqritc/scalablevideoview/ScalableType;

.field public static final enum START_INSIDE:Lcom/yqritc/scalablevideoview/ScalableType;


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 7
    new-instance v1, Lcom/yqritc/scalablevideoview/ScalableType;

    move-object v0, v1

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/yqritc/scalablevideoview/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/yqritc/scalablevideoview/ScalableType;->NONE:Lcom/yqritc/scalablevideoview/ScalableType;

    .line 9
    new-instance v2, Lcom/yqritc/scalablevideoview/ScalableType;

    move-object v1, v2

    const-string v3, "FIT_XY"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/yqritc/scalablevideoview/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/yqritc/scalablevideoview/ScalableType;->FIT_XY:Lcom/yqritc/scalablevideoview/ScalableType;

    .line 10
    new-instance v3, Lcom/yqritc/scalablevideoview/ScalableType;

    move-object v2, v3

    const-string v4, "FIT_START"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/yqritc/scalablevideoview/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/yqritc/scalablevideoview/ScalableType;->FIT_START:Lcom/yqritc/scalablevideoview/ScalableType;

    .line 11
    new-instance v4, Lcom/yqritc/scalablevideoview/ScalableType;

    move-object v3, v4

    const-string v5, "FIT_CENTER"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lcom/yqritc/scalablevideoview/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/yqritc/scalablevideoview/ScalableType;->FIT_CENTER:Lcom/yqritc/scalablevideoview/ScalableType;

    .line 12
    new-instance v5, Lcom/yqritc/scalablevideoview/ScalableType;

    move-object v4, v5

    const-string v6, "FIT_END"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lcom/yqritc/scalablevideoview/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/yqritc/scalablevideoview/ScalableType;->FIT_END:Lcom/yqritc/scalablevideoview/ScalableType;

    .line 14
    new-instance v6, Lcom/yqritc/scalablevideoview/ScalableType;

    move-object v5, v6

    const-string v7, "LEFT_TOP"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lcom/yqritc/scalablevideoview/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/yqritc/scalablevideoview/ScalableType;->LEFT_TOP:Lcom/yqritc/scalablevideoview/ScalableType;

    .line 15
    new-instance v7, Lcom/yqritc/scalablevideoview/ScalableType;

    move-object v6, v7

    const-string v8, "LEFT_CENTER"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lcom/yqritc/scalablevideoview/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/yqritc/scalablevideoview/ScalableType;->LEFT_CENTER:Lcom/yqritc/scalablevideoview/ScalableType;

    .line 16
    new-instance v8, Lcom/yqritc/scalablevideoview/ScalableType;

    move-object v7, v8

    const-string v9, "LEFT_BOTTOM"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lcom/yqritc/scalablevideoview/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/yqritc/scalablevideoview/ScalableType;->LEFT_BOTTOM:Lcom/yqritc/scalablevideoview/ScalableType;

    .line 17
    new-instance v9, Lcom/yqritc/scalablevideoview/ScalableType;

    move-object v8, v9

    const-string v10, "CENTER_TOP"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lcom/yqritc/scalablevideoview/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/yqritc/scalablevideoview/ScalableType;->CENTER_TOP:Lcom/yqritc/scalablevideoview/ScalableType;

    .line 18
    new-instance v10, Lcom/yqritc/scalablevideoview/ScalableType;

    move-object v9, v10

    const-string v11, "CENTER"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lcom/yqritc/scalablevideoview/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/yqritc/scalablevideoview/ScalableType;->CENTER:Lcom/yqritc/scalablevideoview/ScalableType;

    .line 19
    new-instance v11, Lcom/yqritc/scalablevideoview/ScalableType;

    move-object v10, v11

    const-string v12, "CENTER_BOTTOM"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lcom/yqritc/scalablevideoview/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/yqritc/scalablevideoview/ScalableType;->CENTER_BOTTOM:Lcom/yqritc/scalablevideoview/ScalableType;

    .line 20
    new-instance v12, Lcom/yqritc/scalablevideoview/ScalableType;

    move-object v11, v12

    const-string v13, "RIGHT_TOP"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lcom/yqritc/scalablevideoview/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/yqritc/scalablevideoview/ScalableType;->RIGHT_TOP:Lcom/yqritc/scalablevideoview/ScalableType;

    .line 21
    new-instance v13, Lcom/yqritc/scalablevideoview/ScalableType;

    move-object v12, v13

    const-string v14, "RIGHT_CENTER"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lcom/yqritc/scalablevideoview/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/yqritc/scalablevideoview/ScalableType;->RIGHT_CENTER:Lcom/yqritc/scalablevideoview/ScalableType;

    .line 22
    new-instance v14, Lcom/yqritc/scalablevideoview/ScalableType;

    move-object v13, v14

    const-string v15, "RIGHT_BOTTOM"

    move-object/from16 v26, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lcom/yqritc/scalablevideoview/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/yqritc/scalablevideoview/ScalableType;->RIGHT_BOTTOM:Lcom/yqritc/scalablevideoview/ScalableType;

    .line 24
    new-instance v0, Lcom/yqritc/scalablevideoview/ScalableType;

    move-object v14, v0

    const-string v15, "LEFT_TOP_CROP"

    move-object/from16 v27, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lcom/yqritc/scalablevideoview/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yqritc/scalablevideoview/ScalableType;->LEFT_TOP_CROP:Lcom/yqritc/scalablevideoview/ScalableType;

    .line 25
    new-instance v0, Lcom/yqritc/scalablevideoview/ScalableType;

    move-object v15, v0

    const-string v1, "LEFT_CENTER_CROP"

    move-object/from16 v28, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/yqritc/scalablevideoview/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yqritc/scalablevideoview/ScalableType;->LEFT_CENTER_CROP:Lcom/yqritc/scalablevideoview/ScalableType;

    .line 26
    new-instance v0, Lcom/yqritc/scalablevideoview/ScalableType;

    move-object/from16 v16, v0

    const-string v1, "LEFT_BOTTOM_CROP"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/yqritc/scalablevideoview/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yqritc/scalablevideoview/ScalableType;->LEFT_BOTTOM_CROP:Lcom/yqritc/scalablevideoview/ScalableType;

    .line 27
    new-instance v0, Lcom/yqritc/scalablevideoview/ScalableType;

    move-object/from16 v17, v0

    const-string v1, "CENTER_TOP_CROP"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/yqritc/scalablevideoview/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yqritc/scalablevideoview/ScalableType;->CENTER_TOP_CROP:Lcom/yqritc/scalablevideoview/ScalableType;

    .line 28
    new-instance v0, Lcom/yqritc/scalablevideoview/ScalableType;

    move-object/from16 v18, v0

    const-string v1, "CENTER_CROP"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/yqritc/scalablevideoview/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yqritc/scalablevideoview/ScalableType;->CENTER_CROP:Lcom/yqritc/scalablevideoview/ScalableType;

    .line 29
    new-instance v0, Lcom/yqritc/scalablevideoview/ScalableType;

    move-object/from16 v19, v0

    const-string v1, "CENTER_BOTTOM_CROP"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/yqritc/scalablevideoview/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yqritc/scalablevideoview/ScalableType;->CENTER_BOTTOM_CROP:Lcom/yqritc/scalablevideoview/ScalableType;

    .line 30
    new-instance v0, Lcom/yqritc/scalablevideoview/ScalableType;

    move-object/from16 v20, v0

    const-string v1, "RIGHT_TOP_CROP"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/yqritc/scalablevideoview/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yqritc/scalablevideoview/ScalableType;->RIGHT_TOP_CROP:Lcom/yqritc/scalablevideoview/ScalableType;

    .line 31
    new-instance v0, Lcom/yqritc/scalablevideoview/ScalableType;

    move-object/from16 v21, v0

    const-string v1, "RIGHT_CENTER_CROP"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/yqritc/scalablevideoview/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yqritc/scalablevideoview/ScalableType;->RIGHT_CENTER_CROP:Lcom/yqritc/scalablevideoview/ScalableType;

    .line 32
    new-instance v0, Lcom/yqritc/scalablevideoview/ScalableType;

    move-object/from16 v22, v0

    const-string v1, "RIGHT_BOTTOM_CROP"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/yqritc/scalablevideoview/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yqritc/scalablevideoview/ScalableType;->RIGHT_BOTTOM_CROP:Lcom/yqritc/scalablevideoview/ScalableType;

    .line 34
    new-instance v0, Lcom/yqritc/scalablevideoview/ScalableType;

    move-object/from16 v23, v0

    const-string v1, "START_INSIDE"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/yqritc/scalablevideoview/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yqritc/scalablevideoview/ScalableType;->START_INSIDE:Lcom/yqritc/scalablevideoview/ScalableType;

    .line 35
    new-instance v0, Lcom/yqritc/scalablevideoview/ScalableType;

    move-object/from16 v24, v0

    const-string v1, "CENTER_INSIDE"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/yqritc/scalablevideoview/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yqritc/scalablevideoview/ScalableType;->CENTER_INSIDE:Lcom/yqritc/scalablevideoview/ScalableType;

    .line 36
    new-instance v0, Lcom/yqritc/scalablevideoview/ScalableType;

    move-object/from16 v25, v0

    const-string v1, "END_INSIDE"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/yqritc/scalablevideoview/ScalableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yqritc/scalablevideoview/ScalableType;->END_INSIDE:Lcom/yqritc/scalablevideoview/ScalableType;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    .line 6
    filled-new-array/range {v0 .. v25}, [Lcom/yqritc/scalablevideoview/ScalableType;

    move-result-object v0

    sput-object v0, Lcom/yqritc/scalablevideoview/ScalableType;->$VALUES:[Lcom/yqritc/scalablevideoview/ScalableType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yqritc/scalablevideoview/ScalableType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 6
    const-class v0, Lcom/yqritc/scalablevideoview/ScalableType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yqritc/scalablevideoview/ScalableType;

    return-object p0
.end method

.method public static values()[Lcom/yqritc/scalablevideoview/ScalableType;
    .locals 1

    .line 6
    sget-object v0, Lcom/yqritc/scalablevideoview/ScalableType;->$VALUES:[Lcom/yqritc/scalablevideoview/ScalableType;

    invoke-virtual {v0}, [Lcom/yqritc/scalablevideoview/ScalableType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yqritc/scalablevideoview/ScalableType;

    return-object v0
.end method
