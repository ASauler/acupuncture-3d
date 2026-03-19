.class public final enum Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;
.super Ljava/lang/Enum;
.source "SdkGeneralFailureEvents.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;",
        "",
        "type",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getType",
        "()Ljava/lang/String;",
        "GET_PURCHASES",
        "QUERY_SKU_DETAILS",
        "CONSUME",
        "START_PURCHASE",
        "IS_FEATURE_SUPPORTED",
        "aptoide-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;

.field public static final enum CONSUME:Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;

.field public static final enum GET_PURCHASES:Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;

.field public static final enum IS_FEATURE_SUPPORTED:Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;

.field public static final enum QUERY_SKU_DETAILS:Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;

.field public static final enum START_PURCHASE:Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;
    .locals 5

    sget-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;->GET_PURCHASES:Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;

    sget-object v1, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;->QUERY_SKU_DETAILS:Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;

    sget-object v2, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;->CONSUME:Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;

    sget-object v3, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;->START_PURCHASE:Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;

    sget-object v4, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;->IS_FEATURE_SUPPORTED:Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 59
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;

    const/4 v1, 0x0

    const-string v2, "get_purchases"

    const-string v3, "GET_PURCHASES"

    invoke-direct {v0, v3, v1, v2}, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;->GET_PURCHASES:Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;

    .line 60
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;

    const/4 v1, 0x1

    const-string v2, "query_sku_details"

    const-string v3, "QUERY_SKU_DETAILS"

    invoke-direct {v0, v3, v1, v2}, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;->QUERY_SKU_DETAILS:Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;

    .line 61
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;

    const/4 v1, 0x2

    const-string v2, "consume"

    const-string v3, "CONSUME"

    invoke-direct {v0, v3, v1, v2}, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;->CONSUME:Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;

    .line 62
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;

    const/4 v1, 0x3

    const-string/jumbo v2, "start_purchase"

    const-string v3, "START_PURCHASE"

    invoke-direct {v0, v3, v1, v2}, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;->START_PURCHASE:Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;

    .line 63
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;

    const/4 v1, 0x4

    const-string v2, "is_feature_supported"

    const-string v3, "IS_FEATURE_SUPPORTED"

    invoke-direct {v0, v3, v1, v2}, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;->IS_FEATURE_SUPPORTED:Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;

    invoke-static {}, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;->$values()[Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;->$VALUES:[Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;->type:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;
    .locals 1

    const-class v0, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;

    return-object p0
.end method

.method public static values()[Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;
    .locals 1

    sget-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;->$VALUES:[Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;

    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;->type:Ljava/lang/String;

    return-object v0
.end method
