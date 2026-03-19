.class public final Lcom/aptoide/sdk/core/analytics/events/SdkWalletPaymentFlowEvents;
.super Ljava/lang/Object;
.source "SdkWalletPaymentFlowEvents.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/core/analytics/events/SdkWalletPaymentFlowEvents$SdkWalletPaymentEmptyData;,
        Lcom/aptoide/sdk/core/analytics/events/SdkWalletPaymentFlowEvents$SdkWalletPaymentStart;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u0007\u0008B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/aptoide/sdk/core/analytics/events/SdkWalletPaymentFlowEvents;",
        "",
        "()V",
        "SDK_WALLET_PAYMENT_EMPTY_DATA",
        "",
        "SDK_WALLET_PAYMENT_START",
        "WALLET_PAYMENT_FLOW",
        "SdkWalletPaymentEmptyData",
        "SdkWalletPaymentStart",
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
.field public static final INSTANCE:Lcom/aptoide/sdk/core/analytics/events/SdkWalletPaymentFlowEvents;

.field public static final SDK_WALLET_PAYMENT_EMPTY_DATA:Ljava/lang/String; = "sdk_wallet_payment_empty_data"

.field public static final SDK_WALLET_PAYMENT_START:Ljava/lang/String; = "sdk_wallet_payment_start"

.field public static final WALLET_PAYMENT_FLOW:Ljava/lang/String; = "wallet_payment_flow"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkWalletPaymentFlowEvents;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkWalletPaymentFlowEvents;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkWalletPaymentFlowEvents;->INSTANCE:Lcom/aptoide/sdk/core/analytics/events/SdkWalletPaymentFlowEvents;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
