.class public final enum Lcom/aptoide/sdk/billing/ResponseCode;
.super Ljava/lang/Enum;
.source "ResponseCode.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aptoide/sdk/billing/ResponseCode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
    message = "Use BillingResponseCode Annotation in AptoideBillingClient instead."
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0008\u0087\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/ResponseCode;",
        "",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "OK",
        "USER_CANCELED",
        "SERVICE_UNAVAILABLE",
        "BILLING_UNAVAILABLE",
        "ITEM_UNAVAILABLE",
        "DEVELOPER_ERROR",
        "ERROR",
        "ITEM_ALREADY_OWNED",
        "ITEM_NOT_OWNED",
        "FEATURE_NOT_SUPPORTED",
        "aptoide-billing_release"
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

.field private static final synthetic $VALUES:[Lcom/aptoide/sdk/billing/ResponseCode;

.field public static final enum BILLING_UNAVAILABLE:Lcom/aptoide/sdk/billing/ResponseCode;

.field public static final enum DEVELOPER_ERROR:Lcom/aptoide/sdk/billing/ResponseCode;

.field public static final enum ERROR:Lcom/aptoide/sdk/billing/ResponseCode;

.field public static final enum FEATURE_NOT_SUPPORTED:Lcom/aptoide/sdk/billing/ResponseCode;

.field public static final enum ITEM_ALREADY_OWNED:Lcom/aptoide/sdk/billing/ResponseCode;

.field public static final enum ITEM_NOT_OWNED:Lcom/aptoide/sdk/billing/ResponseCode;

.field public static final enum ITEM_UNAVAILABLE:Lcom/aptoide/sdk/billing/ResponseCode;

.field public static final enum OK:Lcom/aptoide/sdk/billing/ResponseCode;

.field public static final enum SERVICE_UNAVAILABLE:Lcom/aptoide/sdk/billing/ResponseCode;

.field public static final enum USER_CANCELED:Lcom/aptoide/sdk/billing/ResponseCode;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/aptoide/sdk/billing/ResponseCode;
    .locals 10

    sget-object v0, Lcom/aptoide/sdk/billing/ResponseCode;->OK:Lcom/aptoide/sdk/billing/ResponseCode;

    sget-object v1, Lcom/aptoide/sdk/billing/ResponseCode;->USER_CANCELED:Lcom/aptoide/sdk/billing/ResponseCode;

    sget-object v2, Lcom/aptoide/sdk/billing/ResponseCode;->SERVICE_UNAVAILABLE:Lcom/aptoide/sdk/billing/ResponseCode;

    sget-object v3, Lcom/aptoide/sdk/billing/ResponseCode;->BILLING_UNAVAILABLE:Lcom/aptoide/sdk/billing/ResponseCode;

    sget-object v4, Lcom/aptoide/sdk/billing/ResponseCode;->ITEM_UNAVAILABLE:Lcom/aptoide/sdk/billing/ResponseCode;

    sget-object v5, Lcom/aptoide/sdk/billing/ResponseCode;->DEVELOPER_ERROR:Lcom/aptoide/sdk/billing/ResponseCode;

    sget-object v6, Lcom/aptoide/sdk/billing/ResponseCode;->ERROR:Lcom/aptoide/sdk/billing/ResponseCode;

    sget-object v7, Lcom/aptoide/sdk/billing/ResponseCode;->ITEM_ALREADY_OWNED:Lcom/aptoide/sdk/billing/ResponseCode;

    sget-object v8, Lcom/aptoide/sdk/billing/ResponseCode;->ITEM_NOT_OWNED:Lcom/aptoide/sdk/billing/ResponseCode;

    sget-object v9, Lcom/aptoide/sdk/billing/ResponseCode;->FEATURE_NOT_SUPPORTED:Lcom/aptoide/sdk/billing/ResponseCode;

    filled-new-array/range {v0 .. v9}, [Lcom/aptoide/sdk/billing/ResponseCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 9
    new-instance v0, Lcom/aptoide/sdk/billing/ResponseCode;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/aptoide/sdk/billing/ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aptoide/sdk/billing/ResponseCode;->OK:Lcom/aptoide/sdk/billing/ResponseCode;

    .line 14
    new-instance v0, Lcom/aptoide/sdk/billing/ResponseCode;

    const-string v1, "USER_CANCELED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/aptoide/sdk/billing/ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aptoide/sdk/billing/ResponseCode;->USER_CANCELED:Lcom/aptoide/sdk/billing/ResponseCode;

    .line 19
    new-instance v0, Lcom/aptoide/sdk/billing/ResponseCode;

    const-string v1, "SERVICE_UNAVAILABLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/aptoide/sdk/billing/ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aptoide/sdk/billing/ResponseCode;->SERVICE_UNAVAILABLE:Lcom/aptoide/sdk/billing/ResponseCode;

    .line 24
    new-instance v0, Lcom/aptoide/sdk/billing/ResponseCode;

    const-string v1, "BILLING_UNAVAILABLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/aptoide/sdk/billing/ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aptoide/sdk/billing/ResponseCode;->BILLING_UNAVAILABLE:Lcom/aptoide/sdk/billing/ResponseCode;

    .line 29
    new-instance v0, Lcom/aptoide/sdk/billing/ResponseCode;

    const-string v1, "ITEM_UNAVAILABLE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/aptoide/sdk/billing/ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aptoide/sdk/billing/ResponseCode;->ITEM_UNAVAILABLE:Lcom/aptoide/sdk/billing/ResponseCode;

    .line 34
    new-instance v0, Lcom/aptoide/sdk/billing/ResponseCode;

    const-string v1, "DEVELOPER_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/aptoide/sdk/billing/ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aptoide/sdk/billing/ResponseCode;->DEVELOPER_ERROR:Lcom/aptoide/sdk/billing/ResponseCode;

    .line 39
    new-instance v0, Lcom/aptoide/sdk/billing/ResponseCode;

    const-string v1, "ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/aptoide/sdk/billing/ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aptoide/sdk/billing/ResponseCode;->ERROR:Lcom/aptoide/sdk/billing/ResponseCode;

    .line 44
    new-instance v0, Lcom/aptoide/sdk/billing/ResponseCode;

    const-string v1, "ITEM_ALREADY_OWNED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/aptoide/sdk/billing/ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aptoide/sdk/billing/ResponseCode;->ITEM_ALREADY_OWNED:Lcom/aptoide/sdk/billing/ResponseCode;

    .line 49
    new-instance v0, Lcom/aptoide/sdk/billing/ResponseCode;

    const-string v1, "ITEM_NOT_OWNED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lcom/aptoide/sdk/billing/ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aptoide/sdk/billing/ResponseCode;->ITEM_NOT_OWNED:Lcom/aptoide/sdk/billing/ResponseCode;

    .line 54
    new-instance v0, Lcom/aptoide/sdk/billing/ResponseCode;

    const/16 v1, 0x9

    const/4 v2, -0x2

    const-string v3, "FEATURE_NOT_SUPPORTED"

    invoke-direct {v0, v3, v1, v2}, Lcom/aptoide/sdk/billing/ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aptoide/sdk/billing/ResponseCode;->FEATURE_NOT_SUPPORTED:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-static {}, Lcom/aptoide/sdk/billing/ResponseCode;->$values()[Lcom/aptoide/sdk/billing/ResponseCode;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/billing/ResponseCode;->$VALUES:[Lcom/aptoide/sdk/billing/ResponseCode;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/billing/ResponseCode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    iput p3, p0, Lcom/aptoide/sdk/billing/ResponseCode;->value:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/aptoide/sdk/billing/ResponseCode;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/aptoide/sdk/billing/ResponseCode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aptoide/sdk/billing/ResponseCode;
    .locals 1

    const-class v0, Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aptoide/sdk/billing/ResponseCode;

    return-object p0
.end method

.method public static values()[Lcom/aptoide/sdk/billing/ResponseCode;
    .locals 1

    sget-object v0, Lcom/aptoide/sdk/billing/ResponseCode;->$VALUES:[Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aptoide/sdk/billing/ResponseCode;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/aptoide/sdk/billing/ResponseCode;->value:I

    return v0
.end method
