.class public final Lcom/unity3d/player/m;
.super Ljava/lang/Object;


# static fields
.field static final a:Z

.field static final b:Z

.field static final c:Z

.field static final d:Lcom/unity3d/player/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/player/m;->a:Z

    sput-boolean v0, Lcom/unity3d/player/m;->b:Z

    sput-boolean v0, Lcom/unity3d/player/m;->c:Z

    new-instance v0, Lcom/unity3d/player/j;

    invoke-direct {v0}, Lcom/unity3d/player/j;-><init>()V

    sput-object v0, Lcom/unity3d/player/m;->d:Lcom/unity3d/player/g;

    return-void
.end method
