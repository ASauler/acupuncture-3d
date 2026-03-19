.class public final enum Lcom/swmansion/rnscreens/Screen$StackPresentation;
.super Ljava/lang/Enum;
.source "Screen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/rnscreens/Screen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StackPresentation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/swmansion/rnscreens/Screen$StackPresentation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/swmansion/rnscreens/Screen$StackPresentation;

.field public static final enum MODAL:Lcom/swmansion/rnscreens/Screen$StackPresentation;

.field public static final enum PUSH:Lcom/swmansion/rnscreens/Screen$StackPresentation;

.field public static final enum TRANSPARENT_MODAL:Lcom/swmansion/rnscreens/Screen$StackPresentation;


# direct methods
.method private static synthetic $values()[Lcom/swmansion/rnscreens/Screen$StackPresentation;
    .locals 3

    .line 22
    sget-object v0, Lcom/swmansion/rnscreens/Screen$StackPresentation;->PUSH:Lcom/swmansion/rnscreens/Screen$StackPresentation;

    sget-object v1, Lcom/swmansion/rnscreens/Screen$StackPresentation;->MODAL:Lcom/swmansion/rnscreens/Screen$StackPresentation;

    sget-object v2, Lcom/swmansion/rnscreens/Screen$StackPresentation;->TRANSPARENT_MODAL:Lcom/swmansion/rnscreens/Screen$StackPresentation;

    filled-new-array {v0, v1, v2}, [Lcom/swmansion/rnscreens/Screen$StackPresentation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Lcom/swmansion/rnscreens/Screen$StackPresentation;

    const-string v1, "PUSH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/swmansion/rnscreens/Screen$StackPresentation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/swmansion/rnscreens/Screen$StackPresentation;->PUSH:Lcom/swmansion/rnscreens/Screen$StackPresentation;

    .line 24
    new-instance v0, Lcom/swmansion/rnscreens/Screen$StackPresentation;

    const-string v1, "MODAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/swmansion/rnscreens/Screen$StackPresentation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/swmansion/rnscreens/Screen$StackPresentation;->MODAL:Lcom/swmansion/rnscreens/Screen$StackPresentation;

    .line 25
    new-instance v0, Lcom/swmansion/rnscreens/Screen$StackPresentation;

    const-string v1, "TRANSPARENT_MODAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/swmansion/rnscreens/Screen$StackPresentation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/swmansion/rnscreens/Screen$StackPresentation;->TRANSPARENT_MODAL:Lcom/swmansion/rnscreens/Screen$StackPresentation;

    .line 22
    invoke-static {}, Lcom/swmansion/rnscreens/Screen$StackPresentation;->$values()[Lcom/swmansion/rnscreens/Screen$StackPresentation;

    move-result-object v0

    sput-object v0, Lcom/swmansion/rnscreens/Screen$StackPresentation;->$VALUES:[Lcom/swmansion/rnscreens/Screen$StackPresentation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/swmansion/rnscreens/Screen$StackPresentation;
    .locals 1

    .line 22
    const-class v0, Lcom/swmansion/rnscreens/Screen$StackPresentation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/swmansion/rnscreens/Screen$StackPresentation;

    return-object p0
.end method

.method public static values()[Lcom/swmansion/rnscreens/Screen$StackPresentation;
    .locals 1

    .line 22
    sget-object v0, Lcom/swmansion/rnscreens/Screen$StackPresentation;->$VALUES:[Lcom/swmansion/rnscreens/Screen$StackPresentation;

    invoke-virtual {v0}, [Lcom/swmansion/rnscreens/Screen$StackPresentation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/swmansion/rnscreens/Screen$StackPresentation;

    return-object v0
.end method
