.class final enum Lcom/google/ar/core/u;
.super Ljava/lang/Enum;
.source "InstallService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/ar/core/u;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/ar/core/u;

.field public static final enum b:Lcom/google/ar/core/u;

.field public static final enum c:Lcom/google/ar/core/u;

.field private static final synthetic d:[Lcom/google/ar/core/u;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/ar/core/u;

    const-string v1, "ACCEPTED"

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2}, Lcom/google/ar/core/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ar/core/u;->a:Lcom/google/ar/core/u;

    new-instance v1, Lcom/google/ar/core/u;

    const-string v2, "CANCELLED"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3}, Lcom/google/ar/core/u;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/ar/core/u;->b:Lcom/google/ar/core/u;

    new-instance v2, Lcom/google/ar/core/u;

    const-string v3, "COMPLETED"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v2, v3, v4}, Lcom/google/ar/core/u;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/ar/core/u;->c:Lcom/google/ar/core/u;

    filled-new-array {v0, v1, v2}, [Lcom/google/ar/core/u;

    move-result-object v0

    sput-object v0, Lcom/google/ar/core/u;->d:[Lcom/google/ar/core/u;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/ar/core/u;
    .locals 1

    sget-object v0, Lcom/google/ar/core/u;->d:[Lcom/google/ar/core/u;

    .line 1
    invoke-virtual {v0}, [Lcom/google/ar/core/u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ar/core/u;

    return-object v0
.end method
