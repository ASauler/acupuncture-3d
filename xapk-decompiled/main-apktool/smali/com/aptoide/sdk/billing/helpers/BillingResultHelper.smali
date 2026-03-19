.class public final Lcom/aptoide/sdk/billing/helpers/BillingResultHelper;
.super Ljava/lang/Object;
.source "BillingResultHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0019\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0004H\u0007\u00a2\u0006\u0002\u0010\u000cR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/helpers/BillingResultHelper;",
        "",
        "()V",
        "ERROR_TYPE_INVALID_PRODUCT_TYPE",
        "",
        "ERROR_TYPE_INVALID_PUBLIC_KEY",
        "ERROR_TYPE_MAIN_THREAD",
        "ERROR_TYPE_PURCHASE_TOKEN_CANNOT_BE_NULL",
        "ERROR_TYPE_SERVICE_NOT_AVAILABLE",
        "getMessageFromErrorType",
        "",
        "errorType",
        "(Ljava/lang/Integer;)Ljava/lang/String;",
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
.field public static final ERROR_TYPE_INVALID_PRODUCT_TYPE:I = 0x4

.field public static final ERROR_TYPE_INVALID_PUBLIC_KEY:I = 0x0

.field public static final ERROR_TYPE_MAIN_THREAD:I = 0x1

.field public static final ERROR_TYPE_PURCHASE_TOKEN_CANNOT_BE_NULL:I = 0x3

.field public static final ERROR_TYPE_SERVICE_NOT_AVAILABLE:I = 0x2

.field public static final INSTANCE:Lcom/aptoide/sdk/billing/helpers/BillingResultHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/billing/helpers/BillingResultHelper;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/helpers/BillingResultHelper;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/billing/helpers/BillingResultHelper;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/BillingResultHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMessageFromErrorType(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_5

    .line 7
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 8
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "Unknown error"

    goto :goto_0

    :cond_0
    const-string p0, "Invalid product type."

    goto :goto_0

    :cond_1
    const-string p0, "Purchase token cannot be null or empty."

    goto :goto_0

    :cond_2
    const-string p0, "Service not available."

    goto :goto_0

    :cond_3
    const-string p0, "Request from MainThread. Cancelling."

    goto :goto_0

    :cond_4
    const-string p0, "Invalid public key."

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
