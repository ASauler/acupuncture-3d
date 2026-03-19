.class public final enum Lcom/wikitude/common/rendering/RenderSettings$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wikitude/common/rendering/RenderSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/wikitude/common/rendering/RenderSettings$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum SCREEN:Lcom/wikitude/common/rendering/RenderSettings$a;

.field public static final enum TEXTURE:Lcom/wikitude/common/rendering/RenderSettings$a;

.field private static final synthetic a:[Lcom/wikitude/common/rendering/RenderSettings$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/wikitude/common/rendering/RenderSettings$a;

    const-string v1, "SCREEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/wikitude/common/rendering/RenderSettings$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wikitude/common/rendering/RenderSettings$a;->SCREEN:Lcom/wikitude/common/rendering/RenderSettings$a;

    new-instance v1, Lcom/wikitude/common/rendering/RenderSettings$a;

    const-string v2, "TEXTURE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/wikitude/common/rendering/RenderSettings$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/wikitude/common/rendering/RenderSettings$a;->TEXTURE:Lcom/wikitude/common/rendering/RenderSettings$a;

    filled-new-array {v0, v1}, [Lcom/wikitude/common/rendering/RenderSettings$a;

    move-result-object v0

    sput-object v0, Lcom/wikitude/common/rendering/RenderSettings$a;->a:[Lcom/wikitude/common/rendering/RenderSettings$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wikitude/common/rendering/RenderSettings$a;
    .locals 1

    const-class v0, Lcom/wikitude/common/rendering/RenderSettings$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/wikitude/common/rendering/RenderSettings$a;

    return-object p0
.end method

.method public static values()[Lcom/wikitude/common/rendering/RenderSettings$a;
    .locals 1

    sget-object v0, Lcom/wikitude/common/rendering/RenderSettings$a;->a:[Lcom/wikitude/common/rendering/RenderSettings$a;

    invoke-virtual {v0}, [Lcom/wikitude/common/rendering/RenderSettings$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wikitude/common/rendering/RenderSettings$a;

    return-object v0
.end method
