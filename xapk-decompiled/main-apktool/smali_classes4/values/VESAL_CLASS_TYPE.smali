.class public final enum Lvalues/VESAL_CLASS_TYPE;
.super Ljava/lang/Enum;
.source "VESAL_CLASS_TYPE.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lvalues/VESAL_CLASS_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lvalues/VESAL_CLASS_TYPE;

.field public static final enum ELEMENT:Lvalues/VESAL_CLASS_TYPE;

.field public static final enum MODEL:Lvalues/VESAL_CLASS_TYPE;

.field public static final enum NONE:Lvalues/VESAL_CLASS_TYPE;

.field public static final enum PAINTPEN:Lvalues/VESAL_CLASS_TYPE;

.field public static final enum QA:Lvalues/VESAL_CLASS_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4
    new-instance v0, Lvalues/VESAL_CLASS_TYPE;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lvalues/VESAL_CLASS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvalues/VESAL_CLASS_TYPE;->NONE:Lvalues/VESAL_CLASS_TYPE;

    .line 5
    new-instance v1, Lvalues/VESAL_CLASS_TYPE;

    const-string v2, "MODEL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lvalues/VESAL_CLASS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lvalues/VESAL_CLASS_TYPE;->MODEL:Lvalues/VESAL_CLASS_TYPE;

    .line 6
    new-instance v2, Lvalues/VESAL_CLASS_TYPE;

    const-string v3, "ELEMENT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lvalues/VESAL_CLASS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lvalues/VESAL_CLASS_TYPE;->ELEMENT:Lvalues/VESAL_CLASS_TYPE;

    .line 7
    new-instance v3, Lvalues/VESAL_CLASS_TYPE;

    const-string v4, "QA"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lvalues/VESAL_CLASS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lvalues/VESAL_CLASS_TYPE;->QA:Lvalues/VESAL_CLASS_TYPE;

    .line 8
    new-instance v4, Lvalues/VESAL_CLASS_TYPE;

    const-string v5, "PAINTPEN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lvalues/VESAL_CLASS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lvalues/VESAL_CLASS_TYPE;->PAINTPEN:Lvalues/VESAL_CLASS_TYPE;

    .line 3
    filled-new-array {v0, v1, v2, v3, v4}, [Lvalues/VESAL_CLASS_TYPE;

    move-result-object v0

    sput-object v0, Lvalues/VESAL_CLASS_TYPE;->$VALUES:[Lvalues/VESAL_CLASS_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lvalues/VESAL_CLASS_TYPE;
    .locals 1

    .line 3
    const-class v0, Lvalues/VESAL_CLASS_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lvalues/VESAL_CLASS_TYPE;

    return-object p0
.end method

.method public static values()[Lvalues/VESAL_CLASS_TYPE;
    .locals 1

    .line 3
    sget-object v0, Lvalues/VESAL_CLASS_TYPE;->$VALUES:[Lvalues/VESAL_CLASS_TYPE;

    invoke-virtual {v0}, [Lvalues/VESAL_CLASS_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lvalues/VESAL_CLASS_TYPE;

    return-object v0
.end method
