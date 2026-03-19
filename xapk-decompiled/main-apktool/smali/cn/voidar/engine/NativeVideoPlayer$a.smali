.class public final enum Lcn/voidar/engine/NativeVideoPlayer$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/voidar/engine/NativeVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/voidar/engine/NativeVideoPlayer$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/voidar/engine/NativeVideoPlayer$a;

.field public static final enum b:Lcn/voidar/engine/NativeVideoPlayer$a;

.field public static final enum c:Lcn/voidar/engine/NativeVideoPlayer$a;

.field public static final enum d:Lcn/voidar/engine/NativeVideoPlayer$a;

.field public static final enum e:Lcn/voidar/engine/NativeVideoPlayer$a;

.field public static final enum f:Lcn/voidar/engine/NativeVideoPlayer$a;

.field public static final enum g:Lcn/voidar/engine/NativeVideoPlayer$a;

.field private static final synthetic i:[Lcn/voidar/engine/NativeVideoPlayer$a;


# instance fields
.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcn/voidar/engine/NativeVideoPlayer$a;

    const-string v1, "NOT_READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcn/voidar/engine/NativeVideoPlayer$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/voidar/engine/NativeVideoPlayer$a;->a:Lcn/voidar/engine/NativeVideoPlayer$a;

    new-instance v1, Lcn/voidar/engine/NativeVideoPlayer$a;

    const-string v2, "READY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcn/voidar/engine/NativeVideoPlayer$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/voidar/engine/NativeVideoPlayer$a;->b:Lcn/voidar/engine/NativeVideoPlayer$a;

    new-instance v2, Lcn/voidar/engine/NativeVideoPlayer$a;

    const-string v3, "PLAYING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcn/voidar/engine/NativeVideoPlayer$a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcn/voidar/engine/NativeVideoPlayer$a;->c:Lcn/voidar/engine/NativeVideoPlayer$a;

    new-instance v3, Lcn/voidar/engine/NativeVideoPlayer$a;

    const-string v4, "PAUSED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcn/voidar/engine/NativeVideoPlayer$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcn/voidar/engine/NativeVideoPlayer$a;->d:Lcn/voidar/engine/NativeVideoPlayer$a;

    new-instance v4, Lcn/voidar/engine/NativeVideoPlayer$a;

    const-string v5, "END"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcn/voidar/engine/NativeVideoPlayer$a;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcn/voidar/engine/NativeVideoPlayer$a;->e:Lcn/voidar/engine/NativeVideoPlayer$a;

    new-instance v5, Lcn/voidar/engine/NativeVideoPlayer$a;

    const-string v6, "STOPPED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcn/voidar/engine/NativeVideoPlayer$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcn/voidar/engine/NativeVideoPlayer$a;->f:Lcn/voidar/engine/NativeVideoPlayer$a;

    new-instance v6, Lcn/voidar/engine/NativeVideoPlayer$a;

    const-string v7, "ERROR"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcn/voidar/engine/NativeVideoPlayer$a;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcn/voidar/engine/NativeVideoPlayer$a;->g:Lcn/voidar/engine/NativeVideoPlayer$a;

    filled-new-array/range {v0 .. v6}, [Lcn/voidar/engine/NativeVideoPlayer$a;

    move-result-object v0

    sput-object v0, Lcn/voidar/engine/NativeVideoPlayer$a;->i:[Lcn/voidar/engine/NativeVideoPlayer$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcn/voidar/engine/NativeVideoPlayer$a;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/voidar/engine/NativeVideoPlayer$a;
    .locals 1

    const-class v0, Lcn/voidar/engine/NativeVideoPlayer$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/voidar/engine/NativeVideoPlayer$a;

    return-object p0
.end method

.method public static values()[Lcn/voidar/engine/NativeVideoPlayer$a;
    .locals 1

    sget-object v0, Lcn/voidar/engine/NativeVideoPlayer$a;->i:[Lcn/voidar/engine/NativeVideoPlayer$a;

    invoke-virtual {v0}, [Lcn/voidar/engine/NativeVideoPlayer$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/voidar/engine/NativeVideoPlayer$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcn/voidar/engine/NativeVideoPlayer$a;->h:I

    return v0
.end method
