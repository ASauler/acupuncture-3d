.class public final enum Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;
.super Ljava/lang/Enum;
.source "AnalyticsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

.field public static final enum AUTO:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

.field public static final enum CLICK:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

.field public static final enum DISMISS:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

.field public static final enum ENDLESS_SCROLL:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

.field public static final enum ERROR:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

.field public static final enum IMPRESSION:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

.field public static final enum INPUT:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

.field public static final enum INSTALL:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

.field public static final enum OPEN:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

.field public static final enum PULL_REFRESH:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

.field public static final enum ROOT:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

.field public static final enum SCROLL:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

.field public static final enum VIEW:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;


# direct methods
.method private static synthetic $values()[Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;
    .locals 13

    .line 79
    sget-object v0, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;->CLICK:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    sget-object v1, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;->SCROLL:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    sget-object v2, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;->INPUT:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    sget-object v3, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;->AUTO:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    sget-object v4, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;->ROOT:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    sget-object v5, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;->VIEW:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    sget-object v6, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;->INSTALL:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    sget-object v7, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;->OPEN:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    sget-object v8, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;->IMPRESSION:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    sget-object v9, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;->PULL_REFRESH:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    sget-object v10, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;->DISMISS:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    sget-object v11, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;->ENDLESS_SCROLL:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    sget-object v12, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;->ERROR:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    filled-new-array/range {v0 .. v12}, [Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 80
    new-instance v0, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    const-string v1, "CLICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;->CLICK:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    new-instance v0, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    const-string v1, "SCROLL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;->SCROLL:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    new-instance v0, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    const-string v1, "INPUT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;->INPUT:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    new-instance v0, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    const-string v1, "AUTO"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;->AUTO:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    new-instance v0, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    const-string v1, "ROOT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;->ROOT:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    new-instance v0, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    const-string v1, "VIEW"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;->VIEW:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    new-instance v0, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    const-string v1, "INSTALL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;->INSTALL:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    new-instance v0, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    const-string v1, "OPEN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;->OPEN:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    new-instance v0, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    const-string v1, "IMPRESSION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;->IMPRESSION:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    new-instance v0, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    const-string v1, "PULL_REFRESH"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;->PULL_REFRESH:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    new-instance v0, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    const-string v1, "DISMISS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;->DISMISS:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    new-instance v0, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    const-string v1, "ENDLESS_SCROLL"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;->ENDLESS_SCROLL:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    new-instance v0, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    const-string v1, "ERROR"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;->ERROR:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    .line 79
    invoke-static {}, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;->$values()[Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;->$VALUES:[Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;
    .locals 1

    .line 79
    const-class v0, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    return-object p0
.end method

.method public static values()[Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;
    .locals 1

    .line 79
    sget-object v0, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;->$VALUES:[Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    invoke-virtual {v0}, [Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    return-object v0
.end method
