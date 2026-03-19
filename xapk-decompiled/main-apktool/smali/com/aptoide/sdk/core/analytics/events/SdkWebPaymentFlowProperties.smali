.class public final enum Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;
.super Ljava/lang/Enum;
.source "SdkWebPaymentFlowEvents.kt"

# interfaces
.implements Lcom/aptoide/sdk/core/analytics/matomo/Property;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;",
        ">;",
        "Lcom/aptoide/sdk/core/analytics/matomo/Property;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000f\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u001f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008R\u0014\u0010\u0005\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\nj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;",
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
        "URL_FROM_START",
        "URL_FROM_LAUNCH_EXTERNAL_PAYMENT",
        "DEEPLINK_FROM_OPEN_DEEPLINK",
        "DEEPLINK_FROM_FAILURE_TO_OPEN_DEEPLINK",
        "DEEPLINK_FROM_EXECUTE_EXTERNAL_DEEPLINK",
        "EXCEPTION_FROM_FAILURE_TO_OPEN_DEEPLINK",
        "RESULT_FROM_ERROR_PROCESSING_PURCHASE_RESULT",
        "ALLOW_FROM_ALLOW_EXTERNAL_APPS",
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

.field private static final synthetic $VALUES:[Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

.field public static final enum ALLOW_FROM_ALLOW_EXTERNAL_APPS:Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

.field public static final enum DEEPLINK_FROM_EXECUTE_EXTERNAL_DEEPLINK:Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

.field public static final enum DEEPLINK_FROM_FAILURE_TO_OPEN_DEEPLINK:Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

.field public static final enum DEEPLINK_FROM_OPEN_DEEPLINK:Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

.field public static final enum EXCEPTION_FROM_FAILURE_TO_OPEN_DEEPLINK:Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

.field public static final enum RESULT_FROM_ERROR_PROCESSING_PURCHASE_RESULT:Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

.field public static final enum URL_FROM_LAUNCH_EXTERNAL_PAYMENT:Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

.field public static final enum URL_FROM_START:Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;


# instance fields
.field private final eventName:Ljava/lang/String;

.field private final id:I

.field private final key:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;
    .locals 8

    sget-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;->URL_FROM_START:Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

    sget-object v1, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;->URL_FROM_LAUNCH_EXTERNAL_PAYMENT:Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

    sget-object v2, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;->DEEPLINK_FROM_OPEN_DEEPLINK:Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

    sget-object v3, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;->DEEPLINK_FROM_FAILURE_TO_OPEN_DEEPLINK:Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

    sget-object v4, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;->DEEPLINK_FROM_EXECUTE_EXTERNAL_DEEPLINK:Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

    sget-object v5, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;->EXCEPTION_FROM_FAILURE_TO_OPEN_DEEPLINK:Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

    sget-object v6, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;->RESULT_FROM_ERROR_PROCESSING_PURCHASE_RESULT:Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

    sget-object v7, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;->ALLOW_FROM_ALLOW_EXTERNAL_APPS:Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

    filled-new-array/range {v0 .. v7}, [Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 148
    new-instance v6, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

    const-string v1, "URL_FROM_START"

    const/4 v2, 0x0

    const-string/jumbo v3, "url"

    const-string/jumbo v4, "sdk_web_payment_start"

    const/16 v5, 0x640

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;->URL_FROM_START:Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

    .line 149
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

    const-string v8, "URL_FROM_LAUNCH_EXTERNAL_PAYMENT"

    const/4 v9, 0x1

    const-string/jumbo v10, "url"

    const-string/jumbo v11, "sdk_web_payment_launch_external_payment"

    const/16 v12, 0x641

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;->URL_FROM_LAUNCH_EXTERNAL_PAYMENT:Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

    .line 151
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

    const-string v2, "DEEPLINK_FROM_OPEN_DEEPLINK"

    const/4 v3, 0x2

    const-string v4, "deeplink"

    const-string/jumbo v5, "sdk_web_payment_open_deeplink"

    const/16 v6, 0x64a

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;->DEEPLINK_FROM_OPEN_DEEPLINK:Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

    .line 152
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

    const-string v8, "DEEPLINK_FROM_FAILURE_TO_OPEN_DEEPLINK"

    const/4 v9, 0x3

    const-string v10, "deeplink"

    const-string/jumbo v11, "sdk_web_payment_failure_to_open_deeplink"

    const/16 v12, 0x64b

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;->DEEPLINK_FROM_FAILURE_TO_OPEN_DEEPLINK:Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

    .line 153
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

    const-string v2, "DEEPLINK_FROM_EXECUTE_EXTERNAL_DEEPLINK"

    const/4 v3, 0x4

    const-string v4, "deeplink"

    const-string/jumbo v5, "sdk_web_payment_execute_external_deeplink"

    const/16 v6, 0x64c

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;->DEEPLINK_FROM_EXECUTE_EXTERNAL_DEEPLINK:Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

    .line 155
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

    const-string v8, "EXCEPTION_FROM_FAILURE_TO_OPEN_DEEPLINK"

    const/4 v9, 0x5

    const-string v10, "exception"

    const-string/jumbo v11, "sdk_web_payment_failure_to_open_deeplink"

    const/16 v12, 0x654

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;->EXCEPTION_FROM_FAILURE_TO_OPEN_DEEPLINK:Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

    .line 157
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

    const-string v2, "RESULT_FROM_ERROR_PROCESSING_PURCHASE_RESULT"

    const/4 v3, 0x6

    const-string/jumbo v4, "result"

    const-string/jumbo v5, "sdk_web_payment_error_processing_purchase_result"

    const/16 v6, 0x65e

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;->RESULT_FROM_ERROR_PROCESSING_PURCHASE_RESULT:Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

    .line 159
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

    const-string v8, "ALLOW_FROM_ALLOW_EXTERNAL_APPS"

    const/4 v9, 0x7

    const-string v10, "allow"

    const-string/jumbo v11, "sdk_web_payment_allow_external_apps"

    const/16 v12, 0x668

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;->ALLOW_FROM_ALLOW_EXTERNAL_APPS:Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

    invoke-static {}, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;->$values()[Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;->$VALUES:[Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 144
    iput-object p3, p0, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;->key:Ljava/lang/String;

    .line 145
    iput-object p4, p0, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;->eventName:Ljava/lang/String;

    .line 146
    iput p5, p0, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;->id:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;
    .locals 1

    const-class v0, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

    return-object p0
.end method

.method public static values()[Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;
    .locals 1

    sget-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;->$VALUES:[Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;

    return-object v0
.end method


# virtual methods
.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;->id:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;->key:Ljava/lang/String;

    return-object v0
.end method
