.class public final Lcom/aptoide/sdk/core/analytics/events/SdkPurchaseFlowLabels;
.super Ljava/lang/Object;
.source "SdkPurchaseFlowEvents.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/aptoide/sdk/core/analytics/events/SdkPurchaseFlowLabels;",
        "",
        "()V",
        "DEVELOPER_PAYLOAD",
        "",
        "FAILURE_MESSAGE",
        "FREE_TRIAL",
        "OBFUSCATED_ACCOUNT_ID",
        "ORDER_REFERENCE",
        "ORIGIN",
        "PURCHASE_TOKEN",
        "RESPONSE_CODE",
        "SKU",
        "SKU_TYPE",
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
.field public static final DEVELOPER_PAYLOAD:Ljava/lang/String; = "developer_payload"

.field public static final FAILURE_MESSAGE:Ljava/lang/String; = "failure_message"

.field public static final FREE_TRIAL:Ljava/lang/String; = "free_trial"

.field public static final INSTANCE:Lcom/aptoide/sdk/core/analytics/events/SdkPurchaseFlowLabels;

.field public static final OBFUSCATED_ACCOUNT_ID:Ljava/lang/String; = "obfuscated_account_id"

.field public static final ORDER_REFERENCE:Ljava/lang/String; = "order_reference"

.field public static final ORIGIN:Ljava/lang/String; = "origin"

.field public static final PURCHASE_TOKEN:Ljava/lang/String; = "purchase_token"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "response_code"

.field public static final SKU:Ljava/lang/String; = "sku"

.field public static final SKU_TYPE:Ljava/lang/String; = "sku_type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkPurchaseFlowLabels;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkPurchaseFlowLabels;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkPurchaseFlowLabels;->INSTANCE:Lcom/aptoide/sdk/core/analytics/events/SdkPurchaseFlowLabels;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
