.class public final enum Lcom/wikitude/common/rendering/RenderSettings$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wikitude/common/rendering/RenderSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/wikitude/common/rendering/RenderSettings$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum OPENGL_ES_2:Lcom/wikitude/common/rendering/RenderSettings$b;

.field public static final enum OPENGL_ES_3:Lcom/wikitude/common/rendering/RenderSettings$b;

.field private static final synthetic a:[Lcom/wikitude/common/rendering/RenderSettings$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/wikitude/common/rendering/RenderSettings$b;

    const-string v1, "OPENGL_ES_2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/wikitude/common/rendering/RenderSettings$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wikitude/common/rendering/RenderSettings$b;->OPENGL_ES_2:Lcom/wikitude/common/rendering/RenderSettings$b;

    new-instance v1, Lcom/wikitude/common/rendering/RenderSettings$b;

    const-string v2, "OPENGL_ES_3"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/wikitude/common/rendering/RenderSettings$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/wikitude/common/rendering/RenderSettings$b;->OPENGL_ES_3:Lcom/wikitude/common/rendering/RenderSettings$b;

    filled-new-array {v0, v1}, [Lcom/wikitude/common/rendering/RenderSettings$b;

    move-result-object v0

    sput-object v0, Lcom/wikitude/common/rendering/RenderSettings$b;->a:[Lcom/wikitude/common/rendering/RenderSettings$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wikitude/common/rendering/RenderSettings$b;
    .locals 1

    const-class v0, Lcom/wikitude/common/rendering/RenderSettings$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/wikitude/common/rendering/RenderSettings$b;

    return-object p0
.end method

.method public static values()[Lcom/wikitude/common/rendering/RenderSettings$b;
    .locals 1

    sget-object v0, Lcom/wikitude/common/rendering/RenderSettings$b;->a:[Lcom/wikitude/common/rendering/RenderSettings$b;

    invoke-virtual {v0}, [Lcom/wikitude/common/rendering/RenderSettings$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wikitude/common/rendering/RenderSettings$b;

    return-object v0
.end method
