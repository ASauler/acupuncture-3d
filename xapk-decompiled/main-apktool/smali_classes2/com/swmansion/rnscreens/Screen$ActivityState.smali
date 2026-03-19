.class public final enum Lcom/swmansion/rnscreens/Screen$ActivityState;
.super Ljava/lang/Enum;
.source "Screen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/rnscreens/Screen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActivityState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/swmansion/rnscreens/Screen$ActivityState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/swmansion/rnscreens/Screen$ActivityState;

.field public static final enum INACTIVE:Lcom/swmansion/rnscreens/Screen$ActivityState;

.field public static final enum ON_TOP:Lcom/swmansion/rnscreens/Screen$ActivityState;

.field public static final enum TRANSITIONING_OR_BELOW_TOP:Lcom/swmansion/rnscreens/Screen$ActivityState;


# direct methods
.method private static synthetic $values()[Lcom/swmansion/rnscreens/Screen$ActivityState;
    .locals 3

    .line 41
    sget-object v0, Lcom/swmansion/rnscreens/Screen$ActivityState;->INACTIVE:Lcom/swmansion/rnscreens/Screen$ActivityState;

    sget-object v1, Lcom/swmansion/rnscreens/Screen$ActivityState;->TRANSITIONING_OR_BELOW_TOP:Lcom/swmansion/rnscreens/Screen$ActivityState;

    sget-object v2, Lcom/swmansion/rnscreens/Screen$ActivityState;->ON_TOP:Lcom/swmansion/rnscreens/Screen$ActivityState;

    filled-new-array {v0, v1, v2}, [Lcom/swmansion/rnscreens/Screen$ActivityState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 42
    new-instance v0, Lcom/swmansion/rnscreens/Screen$ActivityState;

    const-string v1, "INACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/swmansion/rnscreens/Screen$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/swmansion/rnscreens/Screen$ActivityState;->INACTIVE:Lcom/swmansion/rnscreens/Screen$ActivityState;

    .line 43
    new-instance v0, Lcom/swmansion/rnscreens/Screen$ActivityState;

    const-string v1, "TRANSITIONING_OR_BELOW_TOP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/swmansion/rnscreens/Screen$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/swmansion/rnscreens/Screen$ActivityState;->TRANSITIONING_OR_BELOW_TOP:Lcom/swmansion/rnscreens/Screen$ActivityState;

    .line 44
    new-instance v0, Lcom/swmansion/rnscreens/Screen$ActivityState;

    const-string v1, "ON_TOP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/swmansion/rnscreens/Screen$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/swmansion/rnscreens/Screen$ActivityState;->ON_TOP:Lcom/swmansion/rnscreens/Screen$ActivityState;

    .line 41
    invoke-static {}, Lcom/swmansion/rnscreens/Screen$ActivityState;->$values()[Lcom/swmansion/rnscreens/Screen$ActivityState;

    move-result-object v0

    sput-object v0, Lcom/swmansion/rnscreens/Screen$ActivityState;->$VALUES:[Lcom/swmansion/rnscreens/Screen$ActivityState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/swmansion/rnscreens/Screen$ActivityState;
    .locals 1

    .line 41
    const-class v0, Lcom/swmansion/rnscreens/Screen$ActivityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/swmansion/rnscreens/Screen$ActivityState;

    return-object p0
.end method

.method public static values()[Lcom/swmansion/rnscreens/Screen$ActivityState;
    .locals 1

    .line 41
    sget-object v0, Lcom/swmansion/rnscreens/Screen$ActivityState;->$VALUES:[Lcom/swmansion/rnscreens/Screen$ActivityState;

    invoke-virtual {v0}, [Lcom/swmansion/rnscreens/Screen$ActivityState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/swmansion/rnscreens/Screen$ActivityState;

    return-object v0
.end method
