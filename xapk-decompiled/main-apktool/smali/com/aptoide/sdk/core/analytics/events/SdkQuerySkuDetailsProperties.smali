.class public final enum Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;
.super Ljava/lang/Enum;
.source "SdkQuerySkuDetailsEvents.kt"

# interfaces
.implements Lcom/aptoide/sdk/core/analytics/matomo/Property;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;",
        ">;",
        "Lcom/aptoide/sdk/core/analytics/matomo/Property;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u001f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008R\u0014\u0010\u0005\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\nj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;",
        "",
        "Lcom/aptoide/sdk/core/analytics/matomo/Property;",
        "key",
        "",
        "eventName",
        "id",
        "",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V",
        "getEventName",
        "()Ljava/lang/String;",
        "getId",
        "()I",
        "getKey",
        "SKUS_FROM_SKU_DETAILS_REQUEST",
        "SKUS_FROM_SKU_DETAILS_RESULT",
        "SKUS_FROM_SKU_DETAILS_FAILURE_PARSING_SKUS",
        "SKU_TYPE_FROM_SKU_DETAILS_REQUEST",
        "SKU_TYPE_FROM_SKU_DETAILS_FAILURE_PARSING_SKUS",
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

.field private static final synthetic $VALUES:[Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;

.field public static final enum SKUS_FROM_SKU_DETAILS_FAILURE_PARSING_SKUS:Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;

.field public static final enum SKUS_FROM_SKU_DETAILS_REQUEST:Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;

.field public static final enum SKUS_FROM_SKU_DETAILS_RESULT:Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;

.field public static final enum SKU_TYPE_FROM_SKU_DETAILS_FAILURE_PARSING_SKUS:Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;

.field public static final enum SKU_TYPE_FROM_SKU_DETAILS_REQUEST:Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;


# instance fields
.field private final eventName:Ljava/lang/String;

.field private final id:I

.field private final key:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;
    .locals 5

    sget-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;->SKUS_FROM_SKU_DETAILS_REQUEST:Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;

    sget-object v1, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;->SKUS_FROM_SKU_DETAILS_RESULT:Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;

    sget-object v2, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;->SKUS_FROM_SKU_DETAILS_FAILURE_PARSING_SKUS:Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;

    sget-object v3, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;->SKU_TYPE_FROM_SKU_DETAILS_REQUEST:Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;

    sget-object v4, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;->SKU_TYPE_FROM_SKU_DETAILS_FAILURE_PARSING_SKUS:Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 58
    new-instance v6, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;

    const-string v1, "SKUS_FROM_SKU_DETAILS_REQUEST"

    const/4 v2, 0x0

    const-string/jumbo v3, "skus"

    const-string/jumbo v4, "sdk_query_sku_details_request"

    const/16 v5, 0x5dc

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;->SKUS_FROM_SKU_DETAILS_REQUEST:Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;

    .line 59
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;

    const-string v8, "SKUS_FROM_SKU_DETAILS_RESULT"

    const/4 v9, 0x1

    const-string/jumbo v10, "skus"

    const-string/jumbo v11, "sdk_query_sku_details_result"

    const/16 v12, 0x5dd

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;->SKUS_FROM_SKU_DETAILS_RESULT:Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;

    .line 60
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;

    const-string v2, "SKUS_FROM_SKU_DETAILS_FAILURE_PARSING_SKUS"

    const/4 v3, 0x2

    const-string/jumbo v4, "skus"

    const-string/jumbo v5, "sdk_query_sku_details_failure_on_parsing_skus"

    const/16 v6, 0x5de

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;->SKUS_FROM_SKU_DETAILS_FAILURE_PARSING_SKUS:Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;

    .line 62
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;

    const-string v8, "SKU_TYPE_FROM_SKU_DETAILS_REQUEST"

    const/4 v9, 0x3

    const-string/jumbo v10, "sku_type"

    const-string/jumbo v11, "sdk_query_sku_details_request"

    const/16 v12, 0x5e6

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;->SKU_TYPE_FROM_SKU_DETAILS_REQUEST:Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;

    .line 63
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;

    const-string v2, "SKU_TYPE_FROM_SKU_DETAILS_FAILURE_PARSING_SKUS"

    const/4 v3, 0x4

    const-string/jumbo v4, "sku_type"

    const-string/jumbo v5, "sdk_query_sku_details_failure_on_parsing_skus"

    const/16 v6, 0x5e7

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;->SKU_TYPE_FROM_SKU_DETAILS_FAILURE_PARSING_SKUS:Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;

    invoke-static {}, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;->$values()[Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;->$VALUES:[Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput-object p3, p0, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;->key:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;->eventName:Ljava/lang/String;

    .line 56
    iput p5, p0, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;->id:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;
    .locals 1

    const-class v0, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;

    return-object p0
.end method

.method public static values()[Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;
    .locals 1

    sget-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;->$VALUES:[Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;

    return-object v0
.end method


# virtual methods
.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;->id:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;->key:Ljava/lang/String;

    return-object v0
.end method
