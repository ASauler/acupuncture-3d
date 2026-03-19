.class public final enum Lcom/aptoide/sdk/billing/types/SkuType;
.super Ljava/lang/Enum;
.source "SkuType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aptoide/sdk/billing/types/SkuType;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aptoide/sdk/billing/types/SkuType;

.field public static final enum inapp:Lcom/aptoide/sdk/billing/types/SkuType;

.field public static final enum subs:Lcom/aptoide/sdk/billing/types/SkuType;


# direct methods
.method private static synthetic $values()[Lcom/aptoide/sdk/billing/types/SkuType;
    .locals 2

    .line 6
    sget-object v0, Lcom/aptoide/sdk/billing/types/SkuType;->inapp:Lcom/aptoide/sdk/billing/types/SkuType;

    sget-object v1, Lcom/aptoide/sdk/billing/types/SkuType;->subs:Lcom/aptoide/sdk/billing/types/SkuType;

    filled-new-array {v0, v1}, [Lcom/aptoide/sdk/billing/types/SkuType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lcom/aptoide/sdk/billing/types/SkuType;

    const-string v1, "inapp"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aptoide/sdk/billing/types/SkuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/billing/types/SkuType;->inapp:Lcom/aptoide/sdk/billing/types/SkuType;

    new-instance v0, Lcom/aptoide/sdk/billing/types/SkuType;

    const-string/jumbo v1, "subs"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/aptoide/sdk/billing/types/SkuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/billing/types/SkuType;->subs:Lcom/aptoide/sdk/billing/types/SkuType;

    .line 6
    invoke-static {}, Lcom/aptoide/sdk/billing/types/SkuType;->$values()[Lcom/aptoide/sdk/billing/types/SkuType;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/billing/types/SkuType;->$VALUES:[Lcom/aptoide/sdk/billing/types/SkuType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aptoide/sdk/billing/types/SkuType;
    .locals 1

    .line 6
    const-class v0, Lcom/aptoide/sdk/billing/types/SkuType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aptoide/sdk/billing/types/SkuType;

    return-object p0
.end method

.method public static values()[Lcom/aptoide/sdk/billing/types/SkuType;
    .locals 1

    .line 6
    sget-object v0, Lcom/aptoide/sdk/billing/types/SkuType;->$VALUES:[Lcom/aptoide/sdk/billing/types/SkuType;

    invoke-virtual {v0}, [Lcom/aptoide/sdk/billing/types/SkuType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aptoide/sdk/billing/types/SkuType;

    return-object v0
.end method
