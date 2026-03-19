.class public final enum Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;
.super Ljava/lang/Enum;
.source "SdkBackendRequestEvents.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0011\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;",
        "",
        "type",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getType",
        "()Ljava/lang/String;",
        "PAYMENT_FLOW",
        "ATTRIBUTION",
        "WEB_PAYMENT_URL",
        "TRANSACTION",
        "INAPP_PURCHASE",
        "PURCHASES",
        "PURCHASE",
        "PURCHASE_RESULT_EVENT",
        "CONSUME_PURCHASE",
        "SKU_DETAILS",
        "STORE_DEEPLINK",
        "GUEST_WALLET",
        "NEW_VERSION_AVAILABLE",
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

.field private static final synthetic $VALUES:[Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

.field public static final enum ATTRIBUTION:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

.field public static final enum CONSUME_PURCHASE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

.field public static final enum GUEST_WALLET:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

.field public static final enum INAPP_PURCHASE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

.field public static final enum NEW_VERSION_AVAILABLE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

.field public static final enum PAYMENT_FLOW:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

.field public static final enum PURCHASE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

.field public static final enum PURCHASES:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

.field public static final enum PURCHASE_RESULT_EVENT:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

.field public static final enum SKU_DETAILS:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

.field public static final enum STORE_DEEPLINK:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

.field public static final enum TRANSACTION:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

.field public static final enum WEB_PAYMENT_URL:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;
    .locals 13

    sget-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->PAYMENT_FLOW:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    sget-object v1, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->ATTRIBUTION:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    sget-object v2, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->WEB_PAYMENT_URL:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    sget-object v3, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->TRANSACTION:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    sget-object v4, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->INAPP_PURCHASE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    sget-object v5, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->PURCHASES:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    sget-object v6, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->PURCHASE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    sget-object v7, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->PURCHASE_RESULT_EVENT:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    sget-object v8, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->CONSUME_PURCHASE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    sget-object v9, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->SKU_DETAILS:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    sget-object v10, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->STORE_DEEPLINK:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    sget-object v11, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->GUEST_WALLET:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    sget-object v12, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->NEW_VERSION_AVAILABLE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    filled-new-array/range {v0 .. v12}, [Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 84
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    const/4 v1, 0x0

    const-string v2, "payment_flow"

    const-string v3, "PAYMENT_FLOW"

    invoke-direct {v0, v3, v1, v2}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->PAYMENT_FLOW:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    .line 85
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    const/4 v1, 0x1

    const-string v2, "attribution"

    const-string v3, "ATTRIBUTION"

    invoke-direct {v0, v3, v1, v2}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->ATTRIBUTION:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    .line 86
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    const/4 v1, 0x2

    const-string/jumbo v2, "web_payment_url"

    const-string v3, "WEB_PAYMENT_URL"

    invoke-direct {v0, v3, v1, v2}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->WEB_PAYMENT_URL:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    .line 87
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    const/4 v1, 0x3

    const-string/jumbo v2, "transaction"

    const-string v3, "TRANSACTION"

    invoke-direct {v0, v3, v1, v2}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->TRANSACTION:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    .line 88
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    const/4 v1, 0x4

    const-string v2, "inapp_purchase"

    const-string v3, "INAPP_PURCHASE"

    invoke-direct {v0, v3, v1, v2}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->INAPP_PURCHASE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    .line 89
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    const/4 v1, 0x5

    const-string v2, "purchases"

    const-string v3, "PURCHASES"

    invoke-direct {v0, v3, v1, v2}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->PURCHASES:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    .line 90
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    const/4 v1, 0x6

    const-string v2, "purchase"

    const-string v3, "PURCHASE"

    invoke-direct {v0, v3, v1, v2}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->PURCHASE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    .line 91
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    const/4 v1, 0x7

    const-string v2, "purchase_result_event"

    const-string v3, "PURCHASE_RESULT_EVENT"

    invoke-direct {v0, v3, v1, v2}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->PURCHASE_RESULT_EVENT:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    .line 92
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    const/16 v1, 0x8

    const-string v2, "consume_purchase"

    const-string v3, "CONSUME_PURCHASE"

    invoke-direct {v0, v3, v1, v2}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->CONSUME_PURCHASE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    .line 93
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    const/16 v1, 0x9

    const-string/jumbo v2, "sku_details"

    const-string v3, "SKU_DETAILS"

    invoke-direct {v0, v3, v1, v2}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->SKU_DETAILS:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    .line 94
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    const/16 v1, 0xa

    const-string/jumbo v2, "store_deeplink"

    const-string v3, "STORE_DEEPLINK"

    invoke-direct {v0, v3, v1, v2}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->STORE_DEEPLINK:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    .line 95
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    const/16 v1, 0xb

    const-string v2, "guest_wallet"

    const-string v3, "GUEST_WALLET"

    invoke-direct {v0, v3, v1, v2}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->GUEST_WALLET:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    .line 96
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    const/16 v1, 0xc

    const-string v2, "new_version_available"

    const-string v3, "NEW_VERSION_AVAILABLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->NEW_VERSION_AVAILABLE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    invoke-static {}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->$values()[Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->$VALUES:[Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->type:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;
    .locals 1

    const-class v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    return-object p0
.end method

.method public static values()[Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;
    .locals 1

    sget-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->$VALUES:[Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->type:Ljava/lang/String;

    return-object v0
.end method
