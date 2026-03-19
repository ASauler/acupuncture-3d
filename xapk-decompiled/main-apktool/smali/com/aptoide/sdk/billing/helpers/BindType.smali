.class public final enum Lcom/aptoide/sdk/billing/helpers/BindType;
.super Ljava/lang/Enum;
.source "BindType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aptoide/sdk/billing/helpers/BindType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aptoide/sdk/billing/helpers/BindType;

.field public static final enum AIDL:Lcom/aptoide/sdk/billing/helpers/BindType;

.field public static final enum BILLING_SERVICE_NOT_INSTALLED:Lcom/aptoide/sdk/billing/helpers/BindType;

.field public static final enum UNAVAILABLE_BILLING:Lcom/aptoide/sdk/billing/helpers/BindType;

.field public static final enum URI_CONNECTION:Lcom/aptoide/sdk/billing/helpers/BindType;


# direct methods
.method private static synthetic $values()[Lcom/aptoide/sdk/billing/helpers/BindType;
    .locals 4

    .line 3
    sget-object v0, Lcom/aptoide/sdk/billing/helpers/BindType;->AIDL:Lcom/aptoide/sdk/billing/helpers/BindType;

    sget-object v1, Lcom/aptoide/sdk/billing/helpers/BindType;->URI_CONNECTION:Lcom/aptoide/sdk/billing/helpers/BindType;

    sget-object v2, Lcom/aptoide/sdk/billing/helpers/BindType;->BILLING_SERVICE_NOT_INSTALLED:Lcom/aptoide/sdk/billing/helpers/BindType;

    sget-object v3, Lcom/aptoide/sdk/billing/helpers/BindType;->UNAVAILABLE_BILLING:Lcom/aptoide/sdk/billing/helpers/BindType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/aptoide/sdk/billing/helpers/BindType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/aptoide/sdk/billing/helpers/BindType;

    const-string v1, "AIDL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aptoide/sdk/billing/helpers/BindType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/billing/helpers/BindType;->AIDL:Lcom/aptoide/sdk/billing/helpers/BindType;

    new-instance v0, Lcom/aptoide/sdk/billing/helpers/BindType;

    const-string v1, "URI_CONNECTION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/aptoide/sdk/billing/helpers/BindType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/billing/helpers/BindType;->URI_CONNECTION:Lcom/aptoide/sdk/billing/helpers/BindType;

    new-instance v0, Lcom/aptoide/sdk/billing/helpers/BindType;

    const-string v1, "BILLING_SERVICE_NOT_INSTALLED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/aptoide/sdk/billing/helpers/BindType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/billing/helpers/BindType;->BILLING_SERVICE_NOT_INSTALLED:Lcom/aptoide/sdk/billing/helpers/BindType;

    new-instance v0, Lcom/aptoide/sdk/billing/helpers/BindType;

    const-string v1, "UNAVAILABLE_BILLING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/aptoide/sdk/billing/helpers/BindType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/billing/helpers/BindType;->UNAVAILABLE_BILLING:Lcom/aptoide/sdk/billing/helpers/BindType;

    .line 3
    invoke-static {}, Lcom/aptoide/sdk/billing/helpers/BindType;->$values()[Lcom/aptoide/sdk/billing/helpers/BindType;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/billing/helpers/BindType;->$VALUES:[Lcom/aptoide/sdk/billing/helpers/BindType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aptoide/sdk/billing/helpers/BindType;
    .locals 1

    .line 3
    const-class v0, Lcom/aptoide/sdk/billing/helpers/BindType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aptoide/sdk/billing/helpers/BindType;

    return-object p0
.end method

.method public static values()[Lcom/aptoide/sdk/billing/helpers/BindType;
    .locals 1

    .line 3
    sget-object v0, Lcom/aptoide/sdk/billing/helpers/BindType;->$VALUES:[Lcom/aptoide/sdk/billing/helpers/BindType;

    invoke-virtual {v0}, [Lcom/aptoide/sdk/billing/helpers/BindType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aptoide/sdk/billing/helpers/BindType;

    return-object v0
.end method
